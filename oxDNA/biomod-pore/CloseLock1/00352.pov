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
	<24.122841, 35.412739, 35.369373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.278591, 35.340031, 35.008186>,  <24.372042, 35.296406, 34.791473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.278591, 35.340031, 35.008186>,  <24.122841, 35.412739, 35.369373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.278591, 35.340031, 35.008186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814698, -0.389391, 0.429699,
		-0.429713, -0.902959, -0.003531,
		0.389375, -0.181771, -0.902965,
		24.395405, 35.285500, 34.737297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.325430, 34.677551, 35.294556>,  <24.122841, 35.412739, 35.369373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.325430, 34.677551, 35.294556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.551077, 34.929882, 35.081455>,  <24.686464, 35.081280, 34.953594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.551077, 34.929882, 35.081455>,  <24.325430, 34.677551, 35.294556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.551077, 34.929882, 35.081455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822370, -0.371415, 0.430997,
		0.074011, -0.681255, -0.728295,
		0.564118, 0.630827, -0.532755,
		24.720312, 35.119129, 34.921627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.861933, 34.248444, 34.954891>,  <24.325430, 34.677551, 35.294556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.861933, 34.248444, 34.954891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979513, 34.619827, 35.045708>,  <25.050062, 34.842659, 35.100197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979513, 34.619827, 35.045708>,  <24.861933, 34.248444, 34.954891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.979513, 34.619827, 35.045708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773230, -0.370627, 0.514540,
		0.561880, 0.024306, -0.826862,
		0.293951, 0.928464, 0.227042,
		25.067698, 34.898365, 35.113819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.456421, 33.923000, 34.638844>,  <24.861933, 34.248444, 34.954891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.456421, 33.923000, 34.638844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837313, 34.028458, 34.700493>,  <26.065847, 34.091732, 34.737484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837313, 34.028458, 34.700493>,  <25.456421, 33.923000, 34.638844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837313, 34.028458, 34.700493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110697, 0.172390, -0.978789,
		-0.284620, 0.949091, 0.134970,
		0.952228, 0.263643, 0.154127,
		26.122980, 34.107552, 34.746731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.447193, 34.581322, 34.426048>,  <25.456421, 33.923000, 34.638844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.447193, 34.581322, 34.426048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813482, 34.421535, 34.408710>,  <26.033255, 34.325665, 34.398308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.813482, 34.421535, 34.408710>,  <25.447193, 34.581322, 34.426048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813482, 34.421535, 34.408710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003490, 0.099954, -0.994986,
		0.401798, 0.911281, 0.090136,
		0.915722, -0.399469, -0.043342,
		26.088200, 34.301693, 34.395706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917206, 35.065151, 33.965282>,  <25.447193, 34.581322, 34.426048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917206, 35.065151, 33.965282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070595, 34.695927, 33.977303>,  <26.162628, 34.474392, 33.984516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070595, 34.695927, 33.977303>,  <25.917206, 35.065151, 33.965282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070595, 34.695927, 33.977303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145613, 0.028295, -0.988937,
		0.912001, 0.383605, 0.145260,
		0.383472, -0.923064, 0.030053,
		26.185637, 34.419006, 33.986317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427347, 34.999718, 33.401653>,  <25.917206, 35.065151, 33.965282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427347, 34.999718, 33.401653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374882, 34.610752, 33.478817>,  <26.343403, 34.377373, 33.525116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374882, 34.610752, 33.478817>,  <26.427347, 34.999718, 33.401653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374882, 34.610752, 33.478817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050512, -0.200897, -0.978309,
		0.990073, -0.118575, 0.075469,
		-0.131165, -0.972410, 0.192913,
		26.335533, 34.319031, 33.536690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004114, 34.482479, 32.997253>,  <26.427347, 34.999718, 33.401653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004114, 34.482479, 32.997253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700214, 34.233917, 33.073811>,  <26.517874, 34.084778, 33.119747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700214, 34.233917, 33.073811>,  <27.004114, 34.482479, 32.997253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700214, 34.233917, 33.073811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102873, -0.405527, -0.908276,
		0.642025, -0.670374, 0.372026,
		-0.759751, -0.621407, 0.191395,
		26.472290, 34.047497, 33.131229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193001, 33.854568, 32.664909>,  <27.004114, 34.482479, 32.997253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.193001, 33.854568, 32.664909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813803, 33.743660, 32.727425>,  <26.586285, 33.677113, 32.764935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813803, 33.743660, 32.727425>,  <27.193001, 33.854568, 32.664909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813803, 33.743660, 32.727425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025750, -0.556236, -0.830626,
		0.317247, -0.783403, 0.534447,
		-0.947994, -0.277275, 0.156292,
		26.529406, 33.660477, 32.774311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133606, 33.105076, 32.634880>,  <27.193001, 33.854568, 32.664909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133606, 33.105076, 32.634880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760605, 33.222385, 32.550568>,  <26.536804, 33.292770, 32.499981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.760605, 33.222385, 32.550568>,  <27.133606, 33.105076, 32.634880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.760605, 33.222385, 32.550568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019054, -0.622753, -0.782187,
		-0.360659, -0.725375, 0.586307,
		-0.932503, 0.293274, -0.210780,
		26.480854, 33.310368, 32.487335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775745, 32.486557, 32.458050>,  <27.133606, 33.105076, 32.634880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775745, 32.486557, 32.458050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560637, 32.788643, 32.308144>,  <26.431572, 32.969894, 32.218201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560637, 32.788643, 32.308144>,  <26.775745, 32.486557, 32.458050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.560637, 32.788643, 32.308144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167147, -0.531191, -0.830601,
		-0.826357, -0.384032, 0.411891,
		-0.537770, 0.755219, -0.374763,
		26.399305, 33.015209, 32.195713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203362, 32.125290, 32.258308>,  <26.775745, 32.486557, 32.458050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203362, 32.125290, 32.258308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205736, 32.481575, 32.076500>,  <26.207161, 32.695347, 31.967415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205736, 32.481575, 32.076500>,  <26.203362, 32.125290, 32.258308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205736, 32.481575, 32.076500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211627, -0.443116, -0.871127,
		-0.977332, 0.101362, 0.185869,
		0.005938, 0.890715, -0.454523,
		26.207518, 32.748791, 31.940144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596025, 32.160038, 31.725227>,  <26.203362, 32.125290, 32.258308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596025, 32.160038, 31.725227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835278, 32.449776, 31.588074>,  <25.978828, 32.623619, 31.505781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835278, 32.449776, 31.588074>,  <25.596025, 32.160038, 31.725227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835278, 32.449776, 31.588074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142357, -0.325016, -0.934932,
		-0.788655, 0.608021, -0.091286,
		0.598128, 0.724344, -0.342882,
		26.014715, 32.667080, 31.485209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212015, 32.585728, 31.264780>,  <25.596025, 32.160038, 31.725227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212015, 32.585728, 31.264780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600962, 32.630733, 31.182955>,  <25.834330, 32.657738, 31.133860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600962, 32.630733, 31.182955>,  <25.212015, 32.585728, 31.264780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600962, 32.630733, 31.182955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164113, -0.293774, -0.941681,
		-0.166045, 0.949230, -0.267192,
		0.972366, 0.112512, -0.204561,
		25.892672, 32.664486, 31.121586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.201393, 32.854752, 30.645937>,  <25.212015, 32.585728, 31.264780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.201393, 32.854752, 30.645937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591410, 32.766735, 30.657814>,  <25.825418, 32.713924, 30.664940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.591410, 32.766735, 30.657814>,  <25.201393, 32.854752, 30.645937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.591410, 32.766735, 30.657814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026366, -0.247529, -0.968522,
		0.220462, 0.943564, -0.247152,
		0.975039, -0.220039, 0.029693,
		25.883921, 32.700722, 30.666721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500381, 33.152771, 30.063295>,  <25.201393, 32.854752, 30.645937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.500381, 33.152771, 30.063295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759811, 32.875706, 30.189510>,  <25.915470, 32.709465, 30.265240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759811, 32.875706, 30.189510>,  <25.500381, 33.152771, 30.063295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759811, 32.875706, 30.189510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131333, -0.306493, -0.942769,
		0.749734, 0.652897, -0.107814,
		0.648576, -0.692666, 0.315536,
		25.954384, 32.667908, 30.284170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124010, 33.247784, 29.690779>,  <25.500381, 33.152771, 30.063295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124010, 33.247784, 29.690779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141609, 32.862915, 29.798330>,  <26.152168, 32.631996, 29.862862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141609, 32.862915, 29.798330>,  <26.124010, 33.247784, 29.690779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.141609, 32.862915, 29.798330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197038, -0.255494, -0.946519,
		0.979408, 0.094625, 0.178343,
		0.043999, -0.962169, 0.268877,
		26.154808, 32.574265, 29.878994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611507, 33.010494, 29.310692>,  <26.124010, 33.247784, 29.690779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611507, 33.010494, 29.310692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435141, 32.673557, 29.434660>,  <26.329321, 32.471394, 29.509041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435141, 32.673557, 29.434660>,  <26.611507, 33.010494, 29.310692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435141, 32.673557, 29.434660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293374, -0.461585, -0.837181,
		0.848248, -0.278204, 0.450641,
		-0.440916, -0.842343, 0.309921,
		26.302866, 32.420853, 29.527636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120840, 32.490044, 29.182505>,  <26.611507, 33.010494, 29.310692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120840, 32.490044, 29.182505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771086, 32.296791, 29.200539>,  <26.561234, 32.180840, 29.211359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771086, 32.296791, 29.200539>,  <27.120840, 32.490044, 29.182505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771086, 32.296791, 29.200539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147129, -0.352525, -0.924164,
		0.462386, -0.801443, 0.379326,
		-0.874387, -0.483130, 0.045087,
		26.508770, 32.151852, 29.214064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242599, 31.860901, 28.964766>,  <27.120840, 32.490044, 29.182505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242599, 31.860901, 28.964766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851685, 31.920296, 28.904280>,  <26.617136, 31.955933, 28.867989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851685, 31.920296, 28.904280>,  <27.242599, 31.860901, 28.964766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851685, 31.920296, 28.904280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100664, -0.302644, -0.947773,
		-0.186493, -0.941467, 0.280822,
		-0.977286, 0.148484, -0.151213,
		26.558498, 31.964842, 28.858915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063812, 31.260180, 28.573195>,  <27.242599, 31.860901, 28.964766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063812, 31.260180, 28.573195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805141, 31.553471, 28.489113>,  <26.649939, 31.729445, 28.438663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805141, 31.553471, 28.489113>,  <27.063812, 31.260180, 28.573195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805141, 31.553471, 28.489113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007840, -0.269180, -0.963058,
		-0.762723, -0.624436, 0.168324,
		-0.646678, 0.733226, -0.210205,
		26.611137, 31.773439, 28.426052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.043100, 31.162235, 27.832834>,  <27.063812, 31.260180, 28.573195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.043100, 31.162235, 27.832834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790766, 31.465025, 27.900991>,  <26.639364, 31.646700, 27.941885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790766, 31.465025, 27.900991>,  <27.043100, 31.162235, 27.832834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790766, 31.465025, 27.900991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100278, 0.138223, -0.985312,
		-0.769409, -0.638656, -0.011288,
		-0.630836, 0.756976, 0.170393,
		26.601515, 31.692118, 27.952108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610504, 31.122726, 27.241346>,  <27.043100, 31.162235, 27.832834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610504, 31.122726, 27.241346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612059, 31.504942, 27.359285>,  <26.612991, 31.734270, 27.430048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.612059, 31.504942, 27.359285>,  <26.610504, 31.122726, 27.241346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612059, 31.504942, 27.359285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000754, 0.294846, -0.955544,
		-0.999992, 0.003936, 0.000425,
		0.003886, 0.955536, 0.294847,
		26.613224, 31.791603, 27.447739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.084146, 31.598967, 26.884949>,  <26.610504, 31.122726, 27.241346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.084146, 31.598967, 26.884949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347332, 31.864218, 27.027691>,  <26.505243, 32.023369, 27.113337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.347332, 31.864218, 27.027691>,  <26.084146, 31.598967, 26.884949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347332, 31.864218, 27.027691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068418, 0.419280, -0.905275,
		-0.749935, 0.620054, 0.230501,
		0.657964, 0.663127, 0.356856,
		26.544722, 32.063156, 27.134748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046207, 32.232666, 26.569931>,  <26.084146, 31.598967, 26.884949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046207, 32.232666, 26.569931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423580, 32.216129, 26.701523>,  <26.650003, 32.206207, 26.780478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.423580, 32.216129, 26.701523>,  <26.046207, 32.232666, 26.569931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423580, 32.216129, 26.701523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328873, 0.242912, -0.912599,
		-0.042189, 0.969167, 0.242765,
		0.943431, -0.041337, 0.328981,
		26.706610, 32.203728, 26.800217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390760, 32.867809, 26.396059>,  <26.046207, 32.232666, 26.569931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390760, 32.867809, 26.396059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631512, 32.548374, 26.395626>,  <26.775963, 32.356712, 26.395367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631512, 32.548374, 26.395626>,  <26.390760, 32.867809, 26.396059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631512, 32.548374, 26.395626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355386, 0.269058, -0.895158,
		0.715152, 0.538393, 0.445747,
		0.601879, -0.798587, -0.001080,
		26.812075, 32.308800, 26.395302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170715, 32.982311, 26.316193>,  <26.390760, 32.867809, 26.396059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170715, 32.982311, 26.316193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060099, 32.630970, 26.160231>,  <26.993729, 32.420166, 26.066654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060099, 32.630970, 26.160231>,  <27.170715, 32.982311, 26.316193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060099, 32.630970, 26.160231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622764, 0.145210, -0.768816,
		0.731908, -0.455428, 0.506849,
		-0.276541, -0.878350, -0.389905,
		26.977137, 32.367466, 26.043259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723278, 32.548264, 26.114246>,  <27.170715, 32.982311, 26.316193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723278, 32.548264, 26.114246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407755, 32.440666, 25.893185>,  <27.218441, 32.376106, 25.760548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407755, 32.440666, 25.893185>,  <27.723278, 32.548264, 26.114246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407755, 32.440666, 25.893185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543299, 0.115312, -0.831582,
		0.287419, -0.956214, 0.055185,
		-0.788807, -0.268994, -0.552654,
		27.171112, 32.359970, 25.727388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998751, 32.174076, 25.590387>,  <27.723278, 32.548264, 26.114246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998751, 32.174076, 25.590387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660280, 32.334229, 25.449713>,  <27.457199, 32.430321, 25.365309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.660280, 32.334229, 25.449713>,  <27.998751, 32.174076, 25.590387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660280, 32.334229, 25.449713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410545, 0.069011, -0.909225,
		-0.339767, -0.913746, -0.222769,
		-0.846174, 0.400381, -0.351686,
		27.406427, 32.454342, 25.344206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799694, 31.990704, 25.558510>,  <27.998751, 32.174076, 25.590387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799694, 31.990704, 25.558510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073246, 31.716820, 25.457729>,  <29.237377, 31.552488, 25.397261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073246, 31.716820, 25.457729>,  <28.799694, 31.990704, 25.558510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073246, 31.716820, 25.457729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614591, 0.354546, 0.704681,
		-0.393175, -0.636763, 0.663284,
		0.683879, -0.684712, -0.251950,
		29.278410, 31.511406, 25.382145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982609, 31.769272, 26.122965>,  <28.799694, 31.990704, 25.558510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982609, 31.769272, 26.122965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262327, 31.756220, 25.837330>,  <29.430159, 31.748388, 25.665949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.262327, 31.756220, 25.837330>,  <28.982609, 31.769272, 26.122965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262327, 31.756220, 25.837330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619740, 0.525506, 0.582894,
		0.356237, -0.850164, 0.387707,
		0.699298, -0.032628, -0.714085,
		29.472116, 31.746431, 25.623104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573183, 31.340164, 26.075161>,  <28.982609, 31.769272, 26.122965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573183, 31.340164, 26.075161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657476, 31.701395, 25.925472>,  <29.708052, 31.918133, 25.835659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657476, 31.701395, 25.925472>,  <29.573183, 31.340164, 26.075161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657476, 31.701395, 25.925472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583116, 0.191125, 0.789586,
		0.784581, -0.384607, -0.486322,
		0.210732, 0.903077, -0.374224,
		29.720695, 31.972319, 25.813206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277617, 31.189278, 26.376492>,  <29.573183, 31.340164, 26.075161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277617, 31.189278, 26.376492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088608, 31.513594, 26.514673>,  <29.975203, 31.708183, 26.597582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088608, 31.513594, 26.514673>,  <30.277617, 31.189278, 26.376492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088608, 31.513594, 26.514673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647331, 0.053298, 0.760344,
		0.598068, 0.582904, -0.550034,
		-0.472523, 0.810791, 0.345456,
		29.946852, 31.756830, 26.618309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798431, 31.661547, 26.858150>,  <30.277617, 31.189278, 26.376492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798431, 31.661547, 26.858150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450533, 31.795708, 27.002953>,  <30.241795, 31.876204, 27.089834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450533, 31.795708, 27.002953>,  <30.798431, 31.661547, 26.858150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450533, 31.795708, 27.002953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459888, 0.284759, 0.841080,
		0.179015, 0.898008, -0.401915,
		-0.869745, 0.335401, 0.362007,
		30.189610, 31.896328, 27.111555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960262, 32.351624, 27.012947>,  <30.798431, 31.661547, 26.858150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960262, 32.351624, 27.012947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644789, 32.227158, 27.225044>,  <30.455505, 32.152477, 27.352303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.644789, 32.227158, 27.225044>,  <30.960262, 32.351624, 27.012947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644789, 32.227158, 27.225044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430975, 0.335259, 0.837772,
		-0.438451, 0.889258, -0.130310,
		-0.788684, -0.311161, 0.530242,
		30.408184, 32.133808, 27.384117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140951, 32.488907, 27.679367>,  <30.960262, 32.351624, 27.012947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140951, 32.488907, 27.679367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777138, 32.332790, 27.736536>,  <30.558849, 32.239120, 27.770838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777138, 32.332790, 27.736536>,  <31.140951, 32.488907, 27.679367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777138, 32.332790, 27.736536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048558, 0.241728, 0.969128,
		-0.412787, 0.888394, -0.200908,
		-0.909533, -0.390287, 0.142921,
		30.504278, 32.215706, 27.779413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829762, 32.947830, 28.094677>,  <31.140951, 32.488907, 27.679367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829762, 32.947830, 28.094677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585806, 32.633087, 28.132406>,  <30.439432, 32.444241, 28.155045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585806, 32.633087, 28.132406>,  <30.829762, 32.947830, 28.094677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585806, 32.633087, 28.132406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104352, 0.197725, 0.974687,
		-0.785588, 0.584607, -0.202700,
		-0.609888, -0.786855, 0.094325,
		30.402840, 32.397030, 28.160704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191570, 33.247063, 28.372206>,  <30.829762, 32.947830, 28.094677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191570, 33.247063, 28.372206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195583, 32.851093, 28.428692>,  <30.197992, 32.613510, 28.462584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195583, 32.851093, 28.428692>,  <30.191570, 33.247063, 28.372206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195583, 32.851093, 28.428692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198482, 0.136439, 0.970561,
		-0.980053, -0.037767, -0.195114,
		0.010034, -0.989928, 0.141214,
		30.198593, 32.554115, 28.471056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641562, 33.165375, 28.842442>,  <30.191570, 33.247063, 28.372206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641562, 33.165375, 28.842442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867083, 32.838451, 28.890007>,  <30.002396, 32.642300, 28.918547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867083, 32.838451, 28.890007>,  <29.641562, 33.165375, 28.842442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867083, 32.838451, 28.890007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169552, 0.026372, 0.985168,
		-0.808320, -0.575600, -0.123707,
		0.563800, -0.817306, 0.118911,
		30.036222, 32.593258, 28.925680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271267, 32.625980, 29.200781>,  <29.641562, 33.165375, 28.842442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271267, 32.625980, 29.200781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658510, 32.544441, 29.259037>,  <29.890856, 32.495518, 29.293991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658510, 32.544441, 29.259037>,  <29.271267, 32.625980, 29.200781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658510, 32.544441, 29.259037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146486, 0.011030, 0.989151,
		-0.203241, -0.978941, -0.019182,
		0.968109, -0.203846, 0.145643,
		29.948942, 32.483288, 29.302731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289616, 32.368984, 29.784967>,  <29.271267, 32.625980, 29.200781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289616, 32.368984, 29.784967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687374, 32.397903, 29.754114>,  <29.926029, 32.415257, 29.735601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687374, 32.397903, 29.754114>,  <29.289616, 32.368984, 29.784967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687374, 32.397903, 29.754114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076586, 0.010341, 0.997009,
		0.072884, -0.997329, 0.004745,
		0.994395, 0.072303, -0.077135,
		29.985693, 32.419594, 29.730974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693092, 31.828878, 30.150612>,  <29.289616, 32.368984, 29.784967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693092, 31.828878, 30.150612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942373, 32.141365, 30.136078>,  <30.091942, 32.328857, 30.127357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942373, 32.141365, 30.136078>,  <29.693092, 31.828878, 30.150612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942373, 32.141365, 30.136078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117846, -0.047874, 0.991877,
		0.773133, -0.622420, -0.121898,
		0.623200, 0.781218, -0.036337,
		30.129333, 32.375729, 30.125177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055534, 31.632225, 30.620813>,  <29.693092, 31.828878, 30.150612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055534, 31.632225, 30.620813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155025, 32.015354, 30.563257>,  <30.214720, 32.245232, 30.528723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155025, 32.015354, 30.563257>,  <30.055534, 31.632225, 30.620813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155025, 32.015354, 30.563257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005247, 0.147227, 0.989089,
		0.968559, -0.246769, 0.031594,
		0.248728, 0.957825, -0.143893,
		30.229645, 32.302700, 30.520090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466583, 31.694416, 31.102140>,  <30.055534, 31.632225, 30.620813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466583, 31.694416, 31.102140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361530, 32.068161, 31.005817>,  <30.298498, 32.292408, 30.948023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.361530, 32.068161, 31.005817>,  <30.466583, 31.694416, 31.102140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361530, 32.068161, 31.005817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052843, 0.235265, 0.970494,
		0.963447, 0.267610, -0.012414,
		-0.262635, 0.934363, -0.240807,
		30.282740, 32.348469, 30.933575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777069, 32.189152, 31.621834>,  <30.466583, 31.694416, 31.102140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777069, 32.189152, 31.621834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465845, 32.367992, 31.445324>,  <30.279110, 32.475296, 31.339418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465845, 32.367992, 31.445324>,  <30.777069, 32.189152, 31.621834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465845, 32.367992, 31.445324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239251, 0.438610, 0.866245,
		0.580846, 0.779566, -0.234296,
		-0.778060, 0.447099, -0.441277,
		30.232428, 32.502121, 31.312941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685200, 32.868076, 31.999289>,  <30.777069, 32.189152, 31.621834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685200, 32.868076, 31.999289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328665, 32.808960, 31.827860>,  <30.114744, 32.773491, 31.725002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.328665, 32.808960, 31.827860>,  <30.685200, 32.868076, 31.999289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328665, 32.808960, 31.827860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446916, 0.445028, 0.776026,
		0.076038, 0.883237, -0.462721,
		-0.891339, -0.147790, -0.428571,
		30.061264, 32.764622, 31.699289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325567, 33.509735, 32.018181>,  <30.685200, 32.868076, 31.999289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325567, 33.509735, 32.018181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061169, 33.214016, 31.966764>,  <29.902529, 33.036583, 31.935915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061169, 33.214016, 31.966764>,  <30.325567, 33.509735, 32.018181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061169, 33.214016, 31.966764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577254, 0.391526, 0.716579,
		-0.479437, 0.547858, -0.685560,
		-0.660998, -0.739296, -0.128541,
		29.862869, 32.992226, 31.928202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604971, 33.796192, 32.046749>,  <30.325567, 33.509735, 32.018181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604971, 33.796192, 32.046749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543068, 33.404015, 32.095387>,  <29.505926, 33.168709, 32.124569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.543068, 33.404015, 32.095387>,  <29.604971, 33.796192, 32.046749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543068, 33.404015, 32.095387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491830, 0.183195, 0.851201,
		-0.856828, 0.071926, -0.510561,
		-0.154756, -0.980442, 0.121591,
		29.496641, 33.109882, 32.131863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948721, 33.795174, 32.298695>,  <29.604971, 33.796192, 32.046749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948721, 33.795174, 32.298695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067589, 33.431358, 32.414925>,  <29.138908, 33.213070, 32.484661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.067589, 33.431358, 32.414925>,  <28.948721, 33.795174, 32.298695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.067589, 33.431358, 32.414925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447020, 0.136383, 0.884066,
		-0.843720, -0.392608, -0.366053,
		0.297168, -0.909538, 0.290573,
		29.156738, 33.158497, 32.502098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422920, 33.620640, 32.787861>,  <28.948721, 33.795174, 32.298695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422920, 33.620640, 32.787861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710936, 33.352024, 32.857811>,  <28.883745, 33.190857, 32.899780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710936, 33.352024, 32.857811>,  <28.422920, 33.620640, 32.787861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710936, 33.352024, 32.857811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232557, 0.003913, 0.972575,
		-0.653804, -0.740961, -0.153353,
		0.720040, -0.671537, 0.174874,
		28.926949, 33.150562, 32.910275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136982, 33.108086, 33.226803>,  <28.422920, 33.620640, 32.787861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136982, 33.108086, 33.226803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533867, 33.103035, 33.276363>,  <28.771997, 33.100006, 33.306099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.533867, 33.103035, 33.276363>,  <28.136982, 33.108086, 33.226803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533867, 33.103035, 33.276363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122834, 0.065102, 0.990290,
		-0.020573, -0.997799, 0.063043,
		0.992214, -0.012629, 0.123903,
		28.831532, 33.099247, 33.313534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232462, 32.663467, 33.759319>,  <28.136982, 33.108086, 33.226803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232462, 32.663467, 33.759319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572010, 32.874897, 33.757015>,  <28.775740, 33.001755, 33.755634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572010, 32.874897, 33.757015>,  <28.232462, 32.663467, 33.759319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572010, 32.874897, 33.757015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003210, 0.016046, 0.999866,
		0.528592, -0.848738, 0.015317,
		0.848870, 0.528570, -0.005758,
		28.826672, 33.033466, 33.755287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543789, 32.408264, 34.309658>,  <28.232462, 32.663467, 33.759319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543789, 32.408264, 34.309658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730450, 32.758259, 34.258076>,  <28.842445, 32.968258, 34.227127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730450, 32.758259, 34.258076>,  <28.543789, 32.408264, 34.309658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730450, 32.758259, 34.258076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063985, 0.178822, 0.981799,
		0.882124, -0.449906, 0.139434,
		0.466651, 0.874990, -0.128956,
		28.870445, 33.020756, 34.219387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988831, 32.451748, 34.789379>,  <28.543789, 32.408264, 34.309658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988831, 32.451748, 34.789379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944166, 32.842987, 34.719105>,  <28.917368, 33.077728, 34.676941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944166, 32.842987, 34.719105>,  <28.988831, 32.451748, 34.789379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944166, 32.842987, 34.719105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006222, 0.177473, 0.984106,
		0.993727, 0.108795, -0.025903,
		-0.111663, 0.978094, -0.175683,
		28.910667, 33.136414, 34.666401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486372, 32.770870, 35.176281>,  <28.988831, 32.451748, 34.789379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486372, 32.770870, 35.176281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208078, 33.045784, 35.092766>,  <29.041103, 33.210732, 35.042656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.208078, 33.045784, 35.092766>,  <29.486372, 32.770870, 35.176281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208078, 33.045784, 35.092766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019204, 0.272765, 0.961889,
		0.718045, 0.673226, -0.176573,
		-0.695732, 0.687288, -0.208786,
		28.999359, 33.251972, 35.030128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636097, 33.476791, 35.241291>,  <29.486372, 32.770870, 35.176281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636097, 33.476791, 35.241291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259884, 33.427841, 35.368050>,  <29.034157, 33.398472, 35.444107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259884, 33.427841, 35.368050>,  <29.636097, 33.476791, 35.241291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259884, 33.427841, 35.368050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240008, 0.420802, 0.874827,
		-0.240411, 0.898860, -0.366406,
		-0.940531, -0.122378, 0.316899,
		28.977724, 33.391129, 35.463120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110182, 33.699913, 34.812092>,  <29.636097, 33.476791, 35.241291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110182, 33.699913, 34.812092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452103, 33.682697, 34.605225>,  <30.657255, 33.672367, 34.481106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452103, 33.682697, 34.605225>,  <30.110182, 33.699913, 34.812092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452103, 33.682697, 34.605225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518425, 0.115668, 0.847264,
		0.023352, -0.992355, 0.121187,
		0.854804, -0.043041, -0.517163,
		30.708544, 33.669785, 34.450077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426165, 33.072765, 34.962017>,  <30.110182, 33.699913, 34.812092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426165, 33.072765, 34.962017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695454, 33.353840, 34.869930>,  <30.857027, 33.522484, 34.814678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.695454, 33.353840, 34.869930>,  <30.426165, 33.072765, 34.962017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695454, 33.353840, 34.869930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515372, -0.222642, 0.827540,
		0.530248, -0.675765, -0.512034,
		0.673222, 0.702689, -0.230215,
		30.897421, 33.564648, 34.800865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000959, 32.837555, 35.146561>,  <30.426165, 33.072765, 34.962017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000959, 32.837555, 35.146561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020872, 33.236740, 35.162518>,  <31.032820, 33.476250, 35.172092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020872, 33.236740, 35.162518>,  <31.000959, 32.837555, 35.146561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020872, 33.236740, 35.162518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544043, -0.060590, 0.836867,
		0.837579, -0.019960, -0.545952,
		0.049783, 0.997963, 0.039890,
		31.035807, 33.536129, 35.174484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784039, 33.086113, 35.303188>,  <31.000959, 32.837555, 35.146561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784039, 33.086113, 35.303188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509405, 33.351772, 35.421516>,  <31.344625, 33.511166, 35.492516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509405, 33.351772, 35.421516>,  <31.784039, 33.086113, 35.303188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509405, 33.351772, 35.421516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499622, 0.135401, 0.855596,
		0.528186, 0.735239, -0.424786,
		-0.686584, 0.664146, 0.295825,
		31.303431, 33.551018, 35.510265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196613, 33.434685, 35.818855>,  <31.784039, 33.086113, 35.303188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196613, 33.434685, 35.818855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838774, 33.585091, 35.915443>,  <31.624071, 33.675335, 35.973396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838774, 33.585091, 35.915443>,  <32.196613, 33.434685, 35.818855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838774, 33.585091, 35.915443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339570, 0.220726, 0.914315,
		0.290494, 0.899942, -0.325143,
		-0.894598, 0.376012, 0.241473,
		31.570395, 33.697895, 35.987885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245274, 34.002403, 36.362518>,  <32.196613, 33.434685, 35.818855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245274, 34.002403, 36.362518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861610, 33.890007, 36.375519>,  <31.631413, 33.822571, 36.383320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861610, 33.890007, 36.375519>,  <32.245274, 34.002403, 36.362518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861610, 33.890007, 36.375519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006374, 0.136354, 0.990640,
		-0.282793, 0.949975, -0.132577,
		-0.959160, -0.280991, 0.032505,
		31.573862, 33.805710, 36.385269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823128, 34.499016, 36.789780>,  <32.245274, 34.002403, 36.362518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823128, 34.499016, 36.789780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667269, 34.130684, 36.796074>,  <31.573753, 33.909683, 36.799850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667269, 34.130684, 36.796074>,  <31.823128, 34.499016, 36.789780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667269, 34.130684, 36.796074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043731, -0.001432, 0.999042,
		-0.919925, 0.389963, 0.040826,
		-0.389648, -0.920829, 0.015736,
		31.550375, 33.854435, 36.800797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205477, 34.390656, 37.284077>,  <31.823128, 34.499016, 36.789780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205477, 34.390656, 37.284077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359964, 34.026569, 37.224281>,  <31.452658, 33.808117, 37.188404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359964, 34.026569, 37.224281>,  <31.205477, 34.390656, 37.284077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359964, 34.026569, 37.224281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082912, -0.195665, 0.977160,
		-0.918673, -0.365004, -0.151037,
		0.386220, -0.910213, -0.149489,
		31.475830, 33.753506, 37.179436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711504, 33.897556, 37.651421>,  <31.205477, 34.390656, 37.284077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711504, 33.897556, 37.651421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068508, 33.720093, 37.618938>,  <31.282711, 33.613613, 37.599449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068508, 33.720093, 37.618938>,  <30.711504, 33.897556, 37.651421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068508, 33.720093, 37.618938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093131, -0.357453, 0.929276,
		-0.441311, -0.821823, -0.360348,
		0.892508, -0.443659, -0.081210,
		31.336262, 33.586994, 37.594574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592348, 33.257504, 38.031334>,  <30.711504, 33.897556, 37.651421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592348, 33.257504, 38.031334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989286, 33.259064, 37.981968>,  <31.227449, 33.260002, 37.952347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989286, 33.259064, 37.981968>,  <30.592348, 33.257504, 38.031334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989286, 33.259064, 37.981968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122408, -0.162412, 0.979101,
		-0.016219, -0.986715, -0.161648,
		0.992348, 0.003907, -0.123416,
		31.286991, 33.260235, 37.944942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799887, 32.646549, 38.348602>,  <30.592348, 33.257504, 38.031334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799887, 32.646549, 38.348602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113821, 32.894375, 38.353828>,  <31.302181, 33.043072, 38.356964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113821, 32.894375, 38.353828>,  <30.799887, 32.646549, 38.348602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113821, 32.894375, 38.353828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122933, -0.176314, 0.976627,
		0.607390, -0.764885, -0.214543,
		0.784834, 0.619568, 0.013061,
		31.349272, 33.080246, 38.357746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312449, 32.311447, 38.766956>,  <30.799887, 32.646549, 38.348602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312449, 32.311447, 38.766956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432028, 32.692608, 38.746525>,  <31.503775, 32.921303, 38.734264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432028, 32.692608, 38.746525>,  <31.312449, 32.311447, 38.766956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432028, 32.692608, 38.746525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433578, -0.087949, 0.896814,
		0.850083, -0.290247, -0.439449,
		0.298947, 0.952902, -0.051081,
		31.521711, 32.978477, 38.731201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021839, 32.369736, 38.931213>,  <31.312449, 32.311447, 38.766956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021839, 32.369736, 38.931213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878002, 32.734451, 39.010540>,  <31.791700, 32.953281, 39.058136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878002, 32.734451, 39.010540>,  <32.021839, 32.369736, 38.931213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878002, 32.734451, 39.010540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464484, -0.009424, 0.885531,
		0.809288, 0.410547, -0.420124,
		-0.359593, 0.911791, 0.198320,
		31.770124, 33.007988, 39.070034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696079, 32.728916, 39.122562>,  <32.021839, 32.369736, 38.931213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696079, 32.728916, 39.122562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368092, 32.920399, 39.248093>,  <32.171299, 33.035286, 39.323410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368092, 32.920399, 39.248093>,  <32.696079, 32.728916, 39.122562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368092, 32.920399, 39.248093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434127, 0.162757, 0.886027,
		0.373067, 0.862759, -0.341275,
		-0.819972, 0.478704, 0.313828,
		32.122101, 33.064011, 39.342239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924843, 33.113033, 39.541218>,  <32.696079, 32.728916, 39.122562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924843, 33.113033, 39.541218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539486, 33.147610, 39.642731>,  <32.308273, 33.168354, 39.703640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539486, 33.147610, 39.642731>,  <32.924843, 33.113033, 39.541218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539486, 33.147610, 39.642731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265389, 0.173172, 0.948462,
		0.038036, 0.981091, -0.189773,
		-0.963391, 0.086439, 0.253784,
		32.250469, 33.173542, 39.718864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911488, 33.608223, 40.037022>,  <32.924843, 33.113033, 39.541218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911488, 33.608223, 40.037022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554806, 33.434856, 40.089199>,  <32.340797, 33.330837, 40.120506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554806, 33.434856, 40.089199>,  <32.911488, 33.608223, 40.037022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554806, 33.434856, 40.089199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116504, 0.058689, 0.991455,
		-0.437369, 0.899280, -0.001838,
		-0.891704, -0.433417, 0.130439,
		32.287296, 33.304832, 40.128330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507416, 33.998585, 40.543755>,  <32.911488, 33.608223, 40.037022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507416, 33.998585, 40.543755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342922, 33.634148, 40.532482>,  <32.244225, 33.415485, 40.525719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342922, 33.634148, 40.532482>,  <32.507416, 33.998585, 40.543755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342922, 33.634148, 40.532482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296717, 0.104563, 0.949223,
		-0.861884, 0.398718, -0.313337,
		-0.411236, -0.911093, -0.028185,
		32.219551, 33.360821, 40.524025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852980, 34.033409, 40.922569>,  <32.507416, 33.998585, 40.543755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852980, 34.033409, 40.922569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932379, 33.642727, 40.955166>,  <31.980019, 33.408318, 40.974724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932379, 33.642727, 40.955166>,  <31.852980, 34.033409, 40.922569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932379, 33.642727, 40.955166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130678, 0.056027, 0.989841,
		-0.971351, -0.207130, -0.116513,
		0.198497, -0.976708, 0.081489,
		31.991928, 33.349716, 40.979614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299717, 33.714657, 41.335632>,  <31.852980, 34.033409, 40.922569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299717, 33.714657, 41.335632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618532, 33.474098, 41.357735>,  <31.809820, 33.329762, 41.370995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618532, 33.474098, 41.357735>,  <31.299717, 33.714657, 41.335632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618532, 33.474098, 41.357735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109640, -0.054118, 0.992497,
		-0.593896, -0.797114, -0.109071,
		0.797036, -0.601398, 0.055256,
		31.857643, 33.293678, 41.374310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151222, 33.359695, 41.902554>,  <31.299717, 33.714657, 41.335632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151222, 33.359695, 41.902554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534098, 33.250355, 41.864452>,  <31.763823, 33.184750, 41.841591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.534098, 33.250355, 41.864452>,  <31.151222, 33.359695, 41.902554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534098, 33.250355, 41.864452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006666, -0.308151, 0.951314,
		-0.289396, -0.911220, -0.293136,
		0.957186, -0.273352, -0.095252,
		31.821255, 33.168350, 41.835876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258850, 32.714455, 42.203445>,  <31.151222, 33.359695, 41.902554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258850, 32.714455, 42.203445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631277, 32.860031, 42.193157>,  <31.854733, 32.947376, 42.186985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631277, 32.860031, 42.193157>,  <31.258850, 32.714455, 42.203445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631277, 32.860031, 42.193157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138106, -0.286303, 0.948134,
		0.337702, -0.886327, -0.316829,
		0.931066, 0.363943, -0.025722,
		31.910597, 32.969215, 42.185440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569096, 32.233562, 42.448616>,  <31.258850, 32.714455, 42.203445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569096, 32.233562, 42.448616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815277, 32.542946, 42.509243>,  <31.962986, 32.728577, 42.545620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815277, 32.542946, 42.509243>,  <31.569096, 32.233562, 42.448616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815277, 32.542946, 42.509243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287046, -0.399060, 0.870836,
		0.734044, -0.492451, -0.467622,
		0.615454, 0.773461, 0.151571,
		31.999914, 32.774982, 42.554714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146267, 31.958506, 42.728691>,  <31.569096, 32.233562, 42.448616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146267, 31.958506, 42.728691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130478, 32.345005, 42.830521>,  <32.121006, 32.576904, 42.891617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130478, 32.345005, 42.830521>,  <32.146267, 31.958506, 42.728691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130478, 32.345005, 42.830521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227114, -0.239430, 0.943977,
		0.973068, 0.095080, -0.209997,
		-0.039474, 0.966247, 0.254575,
		32.118637, 32.634880, 42.906895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772839, 32.172600, 42.921848>,  <32.146267, 31.958506, 42.728691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772839, 32.172600, 42.921848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501190, 32.415009, 43.087513>,  <32.338203, 32.560455, 43.186913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501190, 32.415009, 43.087513>,  <32.772839, 32.172600, 42.921848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501190, 32.415009, 43.087513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180183, -0.409334, 0.894416,
		0.711570, 0.682039, 0.168791,
		-0.679119, 0.606026, 0.414162,
		32.297455, 32.596817, 43.211761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911037, 31.966311, 43.559509>,  <32.772839, 32.172600, 42.921848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911037, 31.966311, 43.559509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630707, 32.249752, 43.592308>,  <32.462509, 32.419819, 43.611988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630707, 32.249752, 43.592308>,  <32.911037, 31.966311, 43.559509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630707, 32.249752, 43.592308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043413, -0.072360, 0.996433,
		0.712011, 0.701885, 0.019949,
		-0.700825, 0.708606, 0.081992,
		32.420460, 32.462334, 43.616905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061565, 32.461674, 44.014263>,  <32.911037, 31.966311, 43.559509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061565, 32.461674, 44.014263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663338, 32.497574, 44.025486>,  <32.424400, 32.519112, 44.032219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663338, 32.497574, 44.025486>,  <33.061565, 32.461674, 44.014263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663338, 32.497574, 44.025486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035896, 0.086911, 0.995569,
		0.086911, 0.992165, -0.089747,
		-0.995569, 0.089747, 0.028061,
		32.364666, 32.524498, 44.033905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925304, 32.962452, 44.545803>,  <33.061565, 32.461674, 44.014263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925304, 32.962452, 44.545803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595303, 32.747044, 44.477264>,  <32.397301, 32.617798, 44.436142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595303, 32.747044, 44.477264>,  <32.925304, 32.962452, 44.545803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595303, 32.747044, 44.477264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114666, -0.137373, 0.983860,
		-0.553371, 0.831336, 0.051582,
		-0.825004, -0.538525, -0.171344,
		32.347801, 32.585487, 44.425861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293663, 33.214649, 44.874340>,  <32.925304, 32.962452, 44.545803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293663, 33.214649, 44.874340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227158, 32.820946, 44.850399>,  <32.187252, 32.584724, 44.836033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.227158, 32.820946, 44.850399>,  <32.293663, 33.214649, 44.874340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227158, 32.820946, 44.850399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432971, 0.018335, 0.901222,
		-0.885941, 0.175757, -0.429205,
		-0.166266, -0.984263, -0.059854,
		32.177277, 32.525665, 44.832443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693275, 33.087425, 45.228302>,  <32.293663, 33.214649, 44.874340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693275, 33.087425, 45.228302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864538, 32.725948, 45.226341>,  <31.967297, 32.509064, 45.225166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864538, 32.725948, 45.226341>,  <31.693275, 33.087425, 45.228302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864538, 32.725948, 45.226341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353012, -0.172238, 0.919629,
		-0.831903, -0.392018, -0.392759,
		0.428159, -0.903690, -0.004898,
		31.992987, 32.454842, 45.224873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364466, 32.676407, 45.605671>,  <31.693275, 33.087425, 45.228302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364466, 32.676407, 45.605671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678385, 32.429733, 45.581039>,  <31.866735, 32.281727, 45.566261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678385, 32.429733, 45.581039>,  <31.364466, 32.676407, 45.605671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678385, 32.429733, 45.581039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211079, -0.359381, 0.909005,
		-0.582700, -0.700387, -0.412211,
		0.784797, -0.616686, -0.061575,
		31.913824, 32.244728, 45.562569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098562, 31.996925, 45.865128>,  <31.364466, 32.676407, 45.605671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098562, 31.996925, 45.865128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496460, 32.022484, 45.897137>,  <31.735199, 32.037819, 45.916344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496460, 32.022484, 45.897137>,  <31.098562, 31.996925, 45.865128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496460, 32.022484, 45.897137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040893, -0.468575, 0.882477,
		0.093882, -0.881110, -0.463499,
		0.994743, 0.063895, 0.080022,
		31.794884, 32.041653, 45.921143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271395, 31.418739, 46.291470>,  <31.098562, 31.996925, 45.865128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271395, 31.418739, 46.291470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599176, 31.647055, 46.312225>,  <31.795845, 31.784044, 46.324680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599176, 31.647055, 46.312225>,  <31.271395, 31.418739, 46.291470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599176, 31.647055, 46.312225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241049, -0.425364, 0.872330,
		0.519988, -0.702329, -0.486156,
		0.819456, 0.570788, 0.051888,
		31.845013, 31.818291, 46.327793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714823, 30.985308, 46.485550>,  <31.271395, 31.418739, 46.291470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714823, 30.985308, 46.485550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886759, 31.336826, 46.568451>,  <31.989922, 31.547737, 46.618191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886759, 31.336826, 46.568451>,  <31.714823, 30.985308, 46.485550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886759, 31.336826, 46.568451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279433, -0.347750, 0.894979,
		0.858577, -0.326785, -0.395042,
		0.429841, 0.878795, 0.207256,
		32.015713, 31.600466, 46.630627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409958, 30.845098, 46.677917>,  <31.714823, 30.985308, 46.485550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409958, 30.845098, 46.677917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328621, 31.197977, 46.847801>,  <32.279819, 31.409704, 46.949734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328621, 31.197977, 46.847801>,  <32.409958, 30.845098, 46.677917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328621, 31.197977, 46.847801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148152, -0.401057, 0.903993,
		0.967833, 0.246746, -0.049146,
		-0.203346, 0.882196, 0.424712,
		32.267616, 31.462635, 46.975216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930984, 30.979097, 47.163055>,  <32.409958, 30.845098, 46.677917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930984, 30.979097, 47.163055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629520, 31.211456, 47.286049>,  <32.448643, 31.350872, 47.359844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629520, 31.211456, 47.286049>,  <32.930984, 30.979097, 47.163055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629520, 31.211456, 47.286049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177569, -0.270475, 0.946209,
		0.632820, 0.767723, 0.100697,
		-0.753663, 0.580899, 0.307486,
		32.403423, 31.385727, 47.378296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286835, 31.255283, 47.661579>,  <32.930984, 30.979097, 47.163055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286835, 31.255283, 47.661579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895397, 31.290682, 47.735905>,  <32.660534, 31.311920, 47.780499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895397, 31.290682, 47.735905>,  <33.286835, 31.255283, 47.661579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895397, 31.290682, 47.735905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146592, -0.333992, 0.931107,
		0.144459, 0.938412, 0.313869,
		-0.978592, 0.088496, 0.185812,
		32.601818, 31.317230, 47.791649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170414, 31.523438, 48.379112>,  <33.286835, 31.255283, 47.661579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170414, 31.523438, 48.379112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854679, 31.310595, 48.256599>,  <32.665237, 31.182890, 48.183090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854679, 31.310595, 48.256599>,  <33.170414, 31.523438, 48.379112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854679, 31.310595, 48.256599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039190, -0.454180, 0.890047,
		-0.612707, 0.714551, 0.337649,
		-0.789338, -0.532106, -0.306283,
		32.617878, 31.150963, 48.164715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677769, 31.750134, 48.909237>,  <33.170414, 31.523438, 48.379112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677769, 31.750134, 48.909237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556934, 31.405197, 48.746700>,  <32.484432, 31.198235, 48.649178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556934, 31.405197, 48.746700>,  <32.677769, 31.750134, 48.909237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556934, 31.405197, 48.746700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070843, -0.404764, 0.911673,
		-0.950645, 0.304190, 0.061182,
		-0.302086, -0.862342, -0.406337,
		32.466309, 31.146494, 48.624798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406059, 31.370781, 49.470665>,  <32.677769, 31.750134, 48.909237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406059, 31.370781, 49.470665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399208, 31.061571, 49.217007>,  <32.395096, 30.876045, 49.064812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399208, 31.061571, 49.217007>,  <32.406059, 31.370781, 49.470665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399208, 31.061571, 49.217007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212089, -0.622616, 0.753238,
		-0.977100, -0.121592, 0.174616,
		-0.017131, -0.773023, -0.634147,
		32.394070, 30.829664, 49.026764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977673, 30.824181, 49.707146>,  <32.406059, 31.370781, 49.470665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977673, 30.824181, 49.707146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269508, 30.684381, 49.472012>,  <32.444611, 30.600502, 49.330933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269508, 30.684381, 49.472012>,  <31.977673, 30.824181, 49.707146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269508, 30.684381, 49.472012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287827, -0.622800, 0.727514,
		-0.620350, -0.699990, -0.353808,
		0.729604, -0.349478, -0.587829,
		32.488384, 30.579533, 49.295662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913645, 30.069971, 49.610153>,  <31.977673, 30.824181, 49.707146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913645, 30.069971, 49.610153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293800, 30.185513, 49.563984>,  <32.521893, 30.254837, 49.536282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293800, 30.185513, 49.563984>,  <31.913645, 30.069971, 49.610153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293800, 30.185513, 49.563984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260957, -0.538424, 0.801250,
		0.169295, -0.791621, -0.587091,
		0.950390, 0.288853, -0.115427,
		32.578918, 30.272169, 49.529354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293434, 29.831705, 50.083561>,  <31.913645, 30.069971, 49.610153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293434, 29.831705, 50.083561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630508, 29.965355, 49.914688>,  <32.832752, 30.045546, 49.813362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630508, 29.965355, 49.914688>,  <32.293434, 29.831705, 50.083561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630508, 29.965355, 49.914688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538327, -0.509599, 0.671203,
		0.009122, -0.792886, -0.609302,
		0.842687, 0.334126, -0.422183,
		32.883316, 30.065592, 49.788033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763599, 29.328709, 49.733204>,  <32.293434, 29.831705, 50.083561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763599, 29.328709, 49.733204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978748, 29.641996, 49.857948>,  <33.107838, 29.829969, 49.932796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978748, 29.641996, 49.857948>,  <32.763599, 29.328709, 49.733204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978748, 29.641996, 49.857948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485966, -0.590349, 0.644457,
		0.688859, -0.195082, -0.698152,
		0.537876, 0.783218, 0.311864,
		33.140110, 29.876963, 49.951508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442806, 28.998306, 49.852802>,  <32.763599, 29.328709, 49.733204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442806, 28.998306, 49.852802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443401, 29.355465, 50.032906>,  <33.443760, 29.569759, 50.140968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443401, 29.355465, 50.032906>,  <33.442806, 28.998306, 49.852802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443401, 29.355465, 50.032906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489012, -0.393402, 0.778525,
		0.872276, 0.219025, -0.437222,
		0.001488, 0.892896, 0.450261,
		33.443848, 29.623333, 50.167984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169926, 29.197643, 49.958546>,  <33.442806, 28.998306, 49.852802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169926, 29.197643, 49.958546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959053, 29.412233, 50.222141>,  <33.832527, 29.540987, 50.380299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959053, 29.412233, 50.222141>,  <34.169926, 29.197643, 49.958546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959053, 29.412233, 50.222141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586737, -0.331156, 0.738969,
		0.614668, 0.776228, -0.140190,
		-0.527184, 0.536475, 0.658993,
		33.800900, 29.573175, 50.419838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722977, 29.471113, 50.474247>,  <34.169926, 29.197643, 49.958546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722977, 29.471113, 50.474247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365295, 29.476820, 50.653221>,  <34.150688, 29.480244, 50.760605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365295, 29.476820, 50.653221>,  <34.722977, 29.471113, 50.474247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365295, 29.476820, 50.653221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393406, -0.451920, 0.800625,
		0.213629, 0.891944, 0.398495,
		-0.894201, 0.014266, 0.447439,
		34.097034, 29.481100, 50.787453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932045, 29.590212, 51.155788>,  <34.722977, 29.471113, 50.474247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932045, 29.590212, 51.155788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563004, 29.436546, 51.169739>,  <34.341579, 29.344347, 51.178108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563004, 29.436546, 51.169739>,  <34.932045, 29.590212, 51.155788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563004, 29.436546, 51.169739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296275, -0.647809, 0.701829,
		-0.247024, 0.657845, 0.711491,
		-0.922605, -0.384165, 0.034878,
		34.286221, 29.321297, 51.180202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735542, 29.642715, 51.851543>,  <34.932045, 29.590212, 51.155788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735542, 29.642715, 51.851543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482403, 29.359921, 51.725262>,  <34.330517, 29.190245, 51.649494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482403, 29.359921, 51.725262>,  <34.735542, 29.642715, 51.851543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482403, 29.359921, 51.725262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179332, -0.530492, 0.828504,
		-0.753217, 0.467706, 0.462509,
		-0.632854, -0.706986, -0.315701,
		34.292545, 29.147825, 51.630550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342274, 29.429937, 52.407574>,  <34.735542, 29.642715, 51.851543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342274, 29.429937, 52.407574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301777, 29.114767, 52.164619>,  <34.277477, 28.925665, 52.018845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301777, 29.114767, 52.164619>,  <34.342274, 29.429937, 52.407574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301777, 29.114767, 52.164619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245223, -0.611454, 0.752323,
		-0.964166, -0.072777, 0.255124,
		-0.101244, -0.787926, -0.607389,
		34.271404, 28.878389, 51.982403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838791, 28.927656, 52.665844>,  <34.342274, 29.429937, 52.407574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838791, 28.927656, 52.665844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138275, 28.752132, 52.467098>,  <34.317966, 28.646818, 52.347851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138275, 28.752132, 52.467098>,  <33.838791, 28.927656, 52.665844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138275, 28.752132, 52.467098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024613, -0.767426, 0.640664,
		-0.662438, -0.467444, -0.585382,
		0.748713, -0.438808, -0.496867,
		34.362888, 28.620489, 52.318039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646000, 28.215441, 52.413231>,  <33.838791, 28.927656, 52.665844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646000, 28.215441, 52.413231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044872, 28.196186, 52.436260>,  <34.284195, 28.184633, 52.450077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044872, 28.196186, 52.436260>,  <33.646000, 28.215441, 52.413231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044872, 28.196186, 52.436260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067895, -0.905463, 0.418959,
		0.031961, -0.421686, -0.906178,
		0.997181, -0.048134, 0.057570,
		34.344025, 28.181746, 52.453529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028069, 27.731588, 51.887562>,  <33.646000, 28.215441, 52.413231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028069, 27.731588, 51.887562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228325, 27.730322, 52.233822>,  <34.348480, 27.729561, 52.441578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228325, 27.730322, 52.233822>,  <34.028069, 27.731588, 51.887562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228325, 27.730322, 52.233822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272389, -0.949774, 0.154058,
		0.821682, -0.312922, -0.476360,
		0.500642, -0.003168, 0.865649,
		34.378517, 27.729372, 52.493515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516918, 27.114233, 51.998230>,  <34.028069, 27.731588, 51.887562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516918, 27.114233, 51.998230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359657, 27.267725, 52.332458>,  <34.265301, 27.359821, 52.532997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359657, 27.267725, 52.332458>,  <34.516918, 27.114233, 51.998230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359657, 27.267725, 52.332458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545598, -0.828835, 0.123921,
		0.740103, -0.407165, 0.535224,
		-0.393156, 0.383732, 0.835571,
		34.241711, 27.382845, 52.583130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754593, 26.365208, 52.209175>,  <34.516918, 27.114233, 51.998230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754593, 26.365208, 52.209175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610592, 26.194202, 51.877480>,  <34.524193, 26.091599, 51.678463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610592, 26.194202, 51.877480>,  <34.754593, 26.365208, 52.209175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610592, 26.194202, 51.877480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926914, -0.062948, -0.369956,
		0.105963, -0.901814, 0.418931,
		-0.360002, -0.427514, -0.829234,
		34.502590, 26.065948, 51.628708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031704, 25.768187, 52.059467>,  <34.754593, 26.365208, 52.209175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031704, 25.768187, 52.059467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915493, 25.955057, 51.725441>,  <34.845764, 26.067179, 51.525024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915493, 25.955057, 51.725441>,  <35.031704, 25.768187, 52.059467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915493, 25.955057, 51.725441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948078, 0.022545, -0.317237,
		-0.129378, -0.883878, -0.449468,
		-0.290531, 0.467174, -0.835069,
		34.828335, 26.095209, 51.474922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307865, 25.389299, 51.523285>,  <35.031704, 25.768187, 52.059467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307865, 25.389299, 51.523285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263081, 25.771387, 51.413723>,  <35.236210, 26.000639, 51.347988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263081, 25.771387, 51.413723>,  <35.307865, 25.389299, 51.523285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263081, 25.771387, 51.413723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862731, -0.043342, -0.503803,
		-0.493113, -0.292710, -0.819243,
		-0.111960, 0.955218, -0.273903,
		35.229492, 26.057953, 51.331551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266479, 25.563019, 50.726910>,  <35.307865, 25.389299, 51.523285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266479, 25.563019, 50.726910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429188, 25.843725, 50.960854>,  <35.526814, 26.012150, 51.101219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429188, 25.843725, 50.960854>,  <35.266479, 25.563019, 50.726910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429188, 25.843725, 50.960854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900422, -0.199930, -0.386352,
		-0.154199, 0.683776, -0.713214,
		0.406771, 0.701768, 0.584858,
		35.551220, 26.054256, 51.136311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719177, 25.900372, 50.331371>,  <35.266479, 25.563019, 50.726910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719177, 25.900372, 50.331371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813820, 25.883760, 50.719658>,  <35.870605, 25.873793, 50.952629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813820, 25.883760, 50.719658>,  <35.719177, 25.900372, 50.331371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813820, 25.883760, 50.719658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909767, -0.341263, -0.236355,
		0.341086, 0.939050, -0.042964,
		0.236611, -0.041530, 0.970716,
		35.884804, 25.871302, 51.010872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457249, 26.230608, 50.493313>,  <35.719177, 25.900372, 50.331371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457249, 26.230608, 50.493313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377258, 25.945410, 50.762131>,  <36.329262, 25.774290, 50.923420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.377258, 25.945410, 50.762131>,  <36.457249, 26.230608, 50.493313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377258, 25.945410, 50.762131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947137, -0.316296, -0.053734,
		0.250878, 0.625774, 0.738557,
		-0.199978, -0.712996, 0.672046,
		36.317265, 25.731510, 50.963745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182629, 26.935600, 50.786865>,  <36.457249, 26.230608, 50.493313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182629, 26.935600, 50.786865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802967, 27.060846, 50.773796>,  <35.575169, 27.135994, 50.765953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802967, 27.060846, 50.773796>,  <36.182629, 26.935600, 50.786865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802967, 27.060846, 50.773796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062078, 0.084410, -0.994495,
		-0.308636, -0.945956, -0.099556,
		-0.949152, 0.313117, -0.032672,
		35.518223, 27.154781, 50.763996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674534, 26.632242, 50.268677>,  <36.182629, 26.935600, 50.786865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674534, 26.632242, 50.268677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526432, 27.001881, 50.306538>,  <35.437569, 27.223663, 50.329254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526432, 27.001881, 50.306538>,  <35.674534, 26.632242, 50.268677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526432, 27.001881, 50.306538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051438, 0.122134, -0.991180,
		-0.927504, -0.362123, -0.092754,
		-0.370257, 0.924095, 0.094653,
		35.415356, 27.279108, 50.334934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149693, 26.789930, 49.805763>,  <35.674534, 26.632242, 50.268677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149693, 26.789930, 49.805763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257404, 27.165365, 49.892059>,  <35.322033, 27.390627, 49.943836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257404, 27.165365, 49.892059>,  <35.149693, 26.789930, 49.805763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257404, 27.165365, 49.892059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200817, 0.164363, -0.965742,
		-0.941892, 0.303380, -0.144224,
		0.269282, 0.938587, 0.215736,
		35.338188, 27.446941, 49.956779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756718, 27.385220, 49.458691>,  <35.149693, 26.789930, 49.805763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756718, 27.385220, 49.458691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132229, 27.494825, 49.542217>,  <35.357536, 27.560589, 49.592335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132229, 27.494825, 49.542217>,  <34.756718, 27.385220, 49.458691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132229, 27.494825, 49.542217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048488, 0.494999, -0.867540,
		-0.341083, 0.824556, 0.451409,
		0.938782, 0.274015, 0.208816,
		35.413864, 27.577030, 49.604862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758965, 28.015842, 49.076916>,  <34.756718, 27.385220, 49.458691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758965, 28.015842, 49.076916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145016, 27.962708, 49.167145>,  <35.376648, 27.930826, 49.221283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145016, 27.962708, 49.167145>,  <34.758965, 28.015842, 49.076916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145016, 27.962708, 49.167145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254573, 0.677052, -0.690502,
		-0.061002, 0.723847, 0.687258,
		0.965127, -0.132836, 0.225574,
		35.434555, 27.922857, 49.234818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008518, 28.636318, 49.011082>,  <34.758965, 28.015842, 49.076916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008518, 28.636318, 49.011082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342003, 28.416555, 48.988895>,  <35.542095, 28.284697, 48.975586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342003, 28.416555, 48.988895>,  <35.008518, 28.636318, 49.011082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342003, 28.416555, 48.988895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330248, 0.576583, -0.747321,
		0.442563, 0.604733, 0.662145,
		0.833711, -0.549409, -0.055463,
		35.592117, 28.251732, 48.972256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602352, 28.947889, 49.174759>,  <35.008518, 28.636318, 49.011082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602352, 28.947889, 49.174759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733192, 28.655066, 48.935730>,  <35.811695, 28.479372, 48.792313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733192, 28.655066, 48.935730>,  <35.602352, 28.947889, 49.174759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733192, 28.655066, 48.935730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431623, 0.678283, -0.594671,
		0.840658, -0.063408, 0.537842,
		0.327102, -0.732060, -0.597573,
		35.831322, 28.435448, 48.756458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297344, 29.174828, 48.981262>,  <35.602352, 28.947889, 49.174759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297344, 29.174828, 48.981262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198132, 28.919912, 48.689415>,  <36.138603, 28.766964, 48.514305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198132, 28.919912, 48.689415>,  <36.297344, 29.174828, 48.981262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198132, 28.919912, 48.689415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529987, 0.541185, -0.652865,
		0.810923, -0.548618, 0.203525,
		-0.248029, -0.637289, -0.729620,
		36.123722, 28.728725, 48.470528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783417, 29.291311, 48.483967>,  <36.297344, 29.174828, 48.981262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783417, 29.291311, 48.483967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538342, 29.072016, 48.256268>,  <36.391296, 28.940439, 48.119648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538342, 29.072016, 48.256268>,  <36.783417, 29.291311, 48.483967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538342, 29.072016, 48.256268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407816, 0.397658, -0.821921,
		0.676975, -0.735733, -0.020060,
		-0.612691, -0.548239, -0.569248,
		36.354534, 28.907545, 48.085495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156063, 29.100084, 47.884678>,  <36.783417, 29.291311, 48.483967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156063, 29.100084, 47.884678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778839, 29.048431, 47.762070>,  <36.552505, 29.017439, 47.688503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778839, 29.048431, 47.762070>,  <37.156063, 29.100084, 47.884678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778839, 29.048431, 47.762070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265584, 0.262455, -0.927676,
		0.200239, -0.956265, -0.213217,
		-0.943064, -0.129130, -0.306522,
		36.495918, 29.009691, 47.670113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165897, 28.850616, 47.137321>,  <37.156063, 29.100084, 47.884678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165897, 28.850616, 47.137321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818172, 29.039984, 47.194138>,  <36.609539, 29.153605, 47.228226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818172, 29.039984, 47.194138>,  <37.165897, 28.850616, 47.137321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818172, 29.039984, 47.194138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028634, 0.335131, -0.941736,
		-0.493438, -0.814593, -0.304888,
		-0.869309, 0.473419, 0.142042,
		36.557381, 29.182009, 47.236752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813602, 28.825369, 46.476109>,  <37.165897, 28.850616, 47.137321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813602, 28.825369, 46.476109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616096, 29.104254, 46.683990>,  <36.497593, 29.271585, 46.808720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616096, 29.104254, 46.683990>,  <36.813602, 28.825369, 46.476109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616096, 29.104254, 46.683990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160267, 0.514441, -0.842416,
		-0.854700, -0.499245, -0.142272,
		-0.493763, 0.697212, 0.519705,
		36.467968, 29.313417, 46.839901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181423, 28.875025, 46.179649>,  <36.813602, 28.825369, 46.476109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181423, 28.875025, 46.179649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205482, 29.230659, 46.361156>,  <36.219917, 29.444040, 46.470062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205482, 29.230659, 46.361156>,  <36.181423, 28.875025, 46.179649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205482, 29.230659, 46.361156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342851, 0.445336, -0.827121,
		-0.937462, -0.105826, 0.331611,
		0.060147, 0.889088, 0.453768,
		36.223526, 29.497385, 46.497288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540619, 29.203745, 46.026699>,  <36.181423, 28.875025, 46.179649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540619, 29.203745, 46.026699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792305, 29.498648, 46.125122>,  <35.943317, 29.675589, 46.184177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792305, 29.498648, 46.125122>,  <35.540619, 29.203745, 46.026699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792305, 29.498648, 46.125122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378314, 0.567060, -0.731656,
		-0.678947, 0.367282, 0.635717,
		0.629214, 0.737256, 0.246056,
		35.981068, 29.719824, 46.198940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105713, 29.842402, 46.134472>,  <35.540619, 29.203745, 46.026699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105713, 29.842402, 46.134472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485916, 29.901686, 46.025242>,  <35.714039, 29.937256, 45.959702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485916, 29.901686, 46.025242>,  <35.105713, 29.842402, 46.134472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485916, 29.901686, 46.025242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301561, 0.651716, -0.695936,
		0.074826, 0.743841, 0.664154,
		0.950506, 0.148209, -0.273079,
		35.771069, 29.946148, 45.943317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283287, 30.507269, 46.264828>,  <35.105713, 29.842402, 46.134472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283287, 30.507269, 46.264828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534031, 30.377251, 45.981590>,  <35.684479, 30.299240, 45.811649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534031, 30.377251, 45.981590>,  <35.283287, 30.507269, 46.264828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534031, 30.377251, 45.981590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283027, 0.751737, -0.595640,
		0.725906, 0.573793, 0.379238,
		0.626862, -0.325044, -0.708090,
		35.722088, 30.279737, 45.769165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836636, 31.033110, 46.142136>,  <35.283287, 30.507269, 46.264828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836636, 31.033110, 46.142136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822952, 30.797285, 45.819336>,  <35.814743, 30.655790, 45.625656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.822952, 30.797285, 45.819336>,  <35.836636, 31.033110, 46.142136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822952, 30.797285, 45.819336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116398, 0.804327, -0.582675,
		0.992613, 0.073999, -0.096141,
		-0.034212, -0.589561, -0.806999,
		35.812687, 30.620417, 45.577236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222054, 31.414637, 45.696865>,  <35.836636, 31.033110, 46.142136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222054, 31.414637, 45.696865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039883, 31.135761, 45.475410>,  <35.930580, 30.968435, 45.342537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039883, 31.135761, 45.475410>,  <36.222054, 31.414637, 45.696865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039883, 31.135761, 45.475410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124722, 0.665706, -0.735717,
		0.881495, -0.266012, -0.390133,
		-0.455424, -0.697189, -0.553639,
		35.903255, 30.926605, 45.309319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613995, 31.423246, 45.137707>,  <36.222054, 31.414637, 45.696865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613995, 31.423246, 45.137707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252533, 31.276953, 45.048573>,  <36.035656, 31.189177, 44.995094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.252533, 31.276953, 45.048573>,  <36.613995, 31.423246, 45.137707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252533, 31.276953, 45.048573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030384, 0.573745, -0.818471,
		0.427190, -0.732841, -0.529578,
		-0.903651, -0.365733, -0.222831,
		35.981438, 31.167233, 44.981724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622410, 31.273582, 44.463154>,  <36.613995, 31.423246, 45.137707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622410, 31.273582, 44.463154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231049, 31.302166, 44.540741>,  <35.996231, 31.319315, 44.587292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.231049, 31.302166, 44.540741>,  <36.622410, 31.273582, 44.463154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231049, 31.302166, 44.540741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146942, 0.419561, -0.895755,
		-0.145390, -0.904910, -0.399999,
		-0.978402, 0.071457, 0.193970,
		35.937527, 31.323603, 44.598930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424484, 30.901651, 44.024422>,  <36.622410, 31.273582, 44.463154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424484, 30.901651, 44.024422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093018, 31.098524, 44.131065>,  <35.894138, 31.216648, 44.195049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093018, 31.098524, 44.131065>,  <36.424484, 30.901651, 44.024422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093018, 31.098524, 44.131065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170437, 0.231817, -0.957712,
		-0.533170, -0.839059, -0.108212,
		-0.828662, 0.492180, 0.266605,
		35.844418, 31.246178, 44.211048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992802, 30.754162, 43.475113>,  <36.424484, 30.901651, 44.024422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992802, 30.754162, 43.475113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798840, 31.055052, 43.653561>,  <35.682461, 31.235586, 43.760628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798840, 31.055052, 43.653561>,  <35.992802, 30.754162, 43.475113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798840, 31.055052, 43.653561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506805, 0.174031, -0.844312,
		-0.712752, -0.635506, 0.296843,
		-0.484905, 0.752226, 0.446119,
		35.653366, 31.280720, 43.787395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217663, 30.649469, 43.643288>,  <35.992802, 30.754162, 43.475113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217663, 30.649469, 43.643288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303558, 31.034346, 43.576260>,  <35.355095, 31.265270, 43.536041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303558, 31.034346, 43.576260>,  <35.217663, 30.649469, 43.643288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303558, 31.034346, 43.576260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601665, -0.004828, -0.798733,
		-0.769342, 0.272341, 0.577879,
		0.214737, 0.962189, -0.167573,
		35.367981, 31.323002, 43.525990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633873, 30.875307, 43.232849>,  <35.217663, 30.649469, 43.643288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633873, 30.875307, 43.232849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854801, 31.208647, 43.224171>,  <34.987358, 31.408651, 43.218964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854801, 31.208647, 43.224171>,  <34.633873, 30.875307, 43.232849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854801, 31.208647, 43.224171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485138, 0.300156, -0.821309,
		-0.677927, 0.464147, 0.570072,
		0.552319, 0.833351, -0.021691,
		35.020496, 31.458652, 43.217663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171276, 31.405499, 42.975544>,  <34.633873, 30.875307, 43.232849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171276, 31.405499, 42.975544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542961, 31.544512, 42.925282>,  <34.765972, 31.627920, 42.895123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542961, 31.544512, 42.925282>,  <34.171276, 31.405499, 42.975544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542961, 31.544512, 42.925282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284823, 0.456829, -0.842724,
		-0.235471, 0.818857, 0.523475,
		0.929209, 0.347534, -0.125659,
		34.821724, 31.648771, 42.887585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132839, 32.164780, 42.911213>,  <34.171276, 31.405499, 42.975544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132839, 32.164780, 42.911213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475395, 32.046715, 42.741753>,  <34.680927, 31.975876, 42.640076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475395, 32.046715, 42.741753>,  <34.132839, 32.164780, 42.911213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475395, 32.046715, 42.741753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380865, 0.192881, -0.904289,
		0.348629, 0.935774, 0.052763,
		0.856388, -0.295166, -0.423647,
		34.732311, 31.958164, 42.614658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232113, 32.648968, 42.370468>,  <34.132839, 32.164780, 42.911213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232113, 32.648968, 42.370468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483559, 32.350098, 42.284145>,  <34.634426, 32.170776, 42.232353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.483559, 32.350098, 42.284145>,  <34.232113, 32.648968, 42.370468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483559, 32.350098, 42.284145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171599, 0.137389, -0.975540,
		0.758550, 0.650270, -0.041850,
		0.628614, -0.747177, -0.215802,
		34.672142, 32.125946, 42.219406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738934, 32.896126, 41.868694>,  <34.232113, 32.648968, 42.370468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738934, 32.896126, 41.868694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716843, 32.502556, 41.800758>,  <34.703587, 32.266415, 41.759998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716843, 32.502556, 41.800758>,  <34.738934, 32.896126, 41.868694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716843, 32.502556, 41.800758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173773, 0.176975, -0.968753,
		0.983236, -0.023987, -0.180753,
		-0.055226, -0.983923, -0.169840,
		34.700275, 32.207378, 41.749805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006649, 32.914631, 41.227341>,  <34.738934, 32.896126, 41.868694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006649, 32.914631, 41.227341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827511, 32.559566, 41.270233>,  <34.720028, 32.346527, 41.295971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827511, 32.559566, 41.270233>,  <35.006649, 32.914631, 41.227341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827511, 32.559566, 41.270233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196245, -0.019422, -0.980362,
		0.872310, -0.460093, -0.165501,
		-0.447843, -0.887659, 0.107233,
		34.693157, 32.293270, 41.302402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419098, 32.462265, 40.808022>,  <35.006649, 32.914631, 41.227341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419098, 32.462265, 40.808022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054752, 32.307724, 40.866077>,  <34.836147, 32.215000, 40.900909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054752, 32.307724, 40.866077>,  <35.419098, 32.462265, 40.808022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054752, 32.307724, 40.866077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037054, -0.273698, -0.961102,
		0.411046, -0.880808, 0.234985,
		-0.910861, -0.386350, 0.145140,
		34.781494, 32.191818, 40.909618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415779, 31.739519, 40.641834>,  <35.419098, 32.462265, 40.808022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415779, 31.739519, 40.641834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058430, 31.912380, 40.592625>,  <34.844021, 32.016098, 40.563099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058430, 31.912380, 40.592625>,  <35.415779, 31.739519, 40.641834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058430, 31.912380, 40.592625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014039, -0.300504, -0.953677,
		-0.449104, -0.850258, 0.274528,
		-0.893369, 0.432154, -0.123021,
		34.790421, 32.042027, 40.555717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198254, 31.477839, 40.058254>,  <35.415779, 31.739519, 40.641834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198254, 31.477839, 40.058254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899963, 31.740854, 40.101223>,  <34.720989, 31.898664, 40.127007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899963, 31.740854, 40.101223>,  <35.198254, 31.477839, 40.058254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899963, 31.740854, 40.101223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170459, -0.032424, -0.984831,
		-0.644082, -0.752722, 0.136263,
		-0.745722, 0.657539, 0.107424,
		34.676247, 31.938116, 40.133450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684509, 31.200033, 39.648563>,  <35.198254, 31.477839, 40.058254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684509, 31.200033, 39.648563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571037, 31.580357, 39.698353>,  <34.502953, 31.808550, 39.728226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571037, 31.580357, 39.698353>,  <34.684509, 31.200033, 39.648563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571037, 31.580357, 39.698353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151858, 0.083622, -0.984859,
		-0.946819, -0.298285, 0.120666,
		-0.283678, 0.950807, 0.124472,
		34.485935, 31.865599, 39.735695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971436, 31.280344, 39.311302>,  <34.684509, 31.200033, 39.648563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971436, 31.280344, 39.311302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140247, 31.638510, 39.368046>,  <34.241535, 31.853409, 39.402092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140247, 31.638510, 39.368046>,  <33.971436, 31.280344, 39.311302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140247, 31.638510, 39.368046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289200, 0.281268, -0.915015,
		-0.859216, 0.345141, 0.377658,
		0.422033, 0.895414, 0.141855,
		34.266857, 31.907133, 39.410603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539158, 31.812092, 39.090057>,  <33.971436, 31.280344, 39.311302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539158, 31.812092, 39.090057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902534, 31.977594, 39.066277>,  <34.120560, 32.076897, 39.052006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902534, 31.977594, 39.066277>,  <33.539158, 31.812092, 39.090057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902534, 31.977594, 39.066277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110361, 0.100222, -0.988826,
		-0.403174, 0.904854, 0.136708,
		0.908444, 0.413756, -0.059454,
		34.175068, 32.101723, 39.048439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404839, 32.376984, 38.681320>,  <33.539158, 31.812092, 39.090057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404839, 32.376984, 38.681320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800709, 32.322163, 38.664555>,  <34.038231, 32.289268, 38.654495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800709, 32.322163, 38.664555>,  <33.404839, 32.376984, 38.681320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800709, 32.322163, 38.664555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008966, 0.232663, -0.972516,
		0.143039, 0.962852, 0.229032,
		0.989677, -0.137054, -0.041913,
		34.097610, 32.281048, 38.651981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705296, 33.033428, 38.487236>,  <33.404839, 32.376984, 38.681320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705296, 33.033428, 38.487236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960865, 32.743000, 38.385574>,  <34.114208, 32.568741, 38.324577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960865, 32.743000, 38.385574>,  <33.705296, 33.033428, 38.487236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960865, 32.743000, 38.385574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099704, 0.249441, -0.963243,
		0.762782, 0.640779, 0.086981,
		0.638922, -0.726073, -0.254158,
		34.152542, 32.525177, 38.309326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140099, 33.346359, 37.989086>,  <33.705296, 33.033428, 38.487236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140099, 33.346359, 37.989086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229137, 32.962242, 37.921818>,  <34.282558, 32.731770, 37.881458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229137, 32.962242, 37.921818>,  <34.140099, 33.346359, 37.989086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229137, 32.962242, 37.921818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071360, 0.188083, -0.979557,
		0.972296, 0.206043, 0.110393,
		0.222594, -0.960297, -0.168169,
		34.295914, 32.674152, 37.871368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639496, 33.320553, 37.504192>,  <34.140099, 33.346359, 37.989086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639496, 33.320553, 37.504192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496113, 32.949089, 37.466022>,  <34.410084, 32.726212, 37.443119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496113, 32.949089, 37.466022>,  <34.639496, 33.320553, 37.504192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496113, 32.949089, 37.466022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038526, 0.116848, -0.992402,
		0.932750, -0.352059, -0.077662,
		-0.358459, -0.928655, -0.095426,
		34.388577, 32.670494, 37.437393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035194, 33.041283, 37.022720>,  <34.639496, 33.320553, 37.504192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035194, 33.041283, 37.022720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702137, 32.819851, 37.028973>,  <34.502300, 32.686993, 37.032722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702137, 32.819851, 37.028973>,  <35.035194, 33.041283, 37.022720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702137, 32.819851, 37.028973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120196, 0.153090, -0.980875,
		0.540602, -0.818603, -0.194009,
		-0.832648, -0.553582, 0.015632,
		34.452343, 32.653778, 37.033661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589581, 33.574013, 37.379391>,  <35.035194, 33.041283, 37.022720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589581, 33.574013, 37.379391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595306, 33.795593, 37.712360>,  <35.598743, 33.928543, 37.912144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595306, 33.795593, 37.712360>,  <35.589581, 33.574013, 37.379391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595306, 33.795593, 37.712360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438198, -0.751782, 0.492754,
		0.898765, 0.357713, -0.253503,
		0.014315, 0.553954, 0.832424,
		35.599602, 33.961781, 37.962086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515827, 33.015743, 37.766491>,  <35.589581, 33.574013, 37.379391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515827, 33.015743, 37.766491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805424, 33.290863, 37.745441>,  <35.979183, 33.455933, 37.732811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805424, 33.290863, 37.745441>,  <35.515827, 33.015743, 37.766491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805424, 33.290863, 37.745441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379480, -0.333420, 0.863033,
		0.576046, -0.644799, -0.502399,
		0.723993, 0.687797, -0.052623,
		36.022621, 33.497204, 37.729656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139801, 32.690281, 37.832973>,  <35.515827, 33.015743, 37.766491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139801, 32.690281, 37.832973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162544, 33.064697, 37.971886>,  <36.176189, 33.289345, 38.055233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162544, 33.064697, 37.971886>,  <36.139801, 32.690281, 37.832973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162544, 33.064697, 37.971886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437144, -0.336068, 0.834244,
		0.897592, 0.104374, -0.428293,
		0.056862, 0.936036, 0.347279,
		36.179604, 33.345509, 38.076069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674091, 32.611313, 38.287739>,  <36.139801, 32.690281, 37.832973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674091, 32.611313, 38.287739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549129, 32.983791, 38.362873>,  <36.474152, 33.207279, 38.407955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549129, 32.983791, 38.362873>,  <36.674091, 32.611313, 38.287739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549129, 32.983791, 38.362873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569657, 0.025408, 0.821490,
		0.760193, 0.363640, -0.538398,
		-0.312406, 0.931193, 0.187835,
		36.455406, 33.263149, 38.419224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333229, 33.081318, 38.208038>,  <36.674091, 32.611313, 38.287739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333229, 33.081318, 38.208038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037895, 33.194885, 38.452744>,  <36.860695, 33.263023, 38.599567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037895, 33.194885, 38.452744>,  <37.333229, 33.081318, 38.208038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037895, 33.194885, 38.452744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572264, -0.216264, 0.791039,
		0.356890, 0.934142, -0.002799,
		-0.738338, 0.283916, 0.611759,
		36.816395, 33.280060, 38.636272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567982, 33.579784, 38.648331>,  <37.333229, 33.081318, 38.208038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567982, 33.579784, 38.648331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256397, 33.412846, 38.835541>,  <37.069447, 33.312683, 38.947865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256397, 33.412846, 38.835541>,  <37.567982, 33.579784, 38.648331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256397, 33.412846, 38.835541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603446, -0.295937, 0.740456,
		-0.170523, 0.859210, 0.482369,
		-0.778958, -0.417348, 0.468023,
		37.022709, 33.287640, 38.975948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679958, 33.786442, 39.275642>,  <37.567982, 33.579784, 38.648331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679958, 33.786442, 39.275642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407009, 33.506687, 39.360699>,  <37.243240, 33.338833, 39.411732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407009, 33.506687, 39.360699>,  <37.679958, 33.786442, 39.275642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407009, 33.506687, 39.360699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443588, -0.164965, 0.880918,
		-0.581026, 0.695443, 0.422810,
		-0.682377, -0.699389, 0.212641,
		37.202297, 33.296871, 39.424492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428925, 33.900402, 39.929970>,  <37.679958, 33.786442, 39.275642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428925, 33.900402, 39.929970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308792, 33.520889, 39.890755>,  <37.236713, 33.293182, 39.867226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308792, 33.520889, 39.890755>,  <37.428925, 33.900402, 39.929970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308792, 33.520889, 39.890755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380878, -0.213527, 0.899632,
		-0.874490, 0.232847, 0.425499,
		-0.300332, -0.948783, -0.098041,
		37.218693, 33.236256, 39.861343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154430, 33.664177, 40.538643>,  <37.428925, 33.900402, 39.929970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154430, 33.664177, 40.538643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280922, 33.338570, 40.343758>,  <37.356815, 33.143208, 40.226826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280922, 33.338570, 40.343758>,  <37.154430, 33.664177, 40.538643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280922, 33.338570, 40.343758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290559, -0.405784, 0.866554,
		-0.903092, -0.415594, 0.108199,
		0.316229, -0.814016, -0.487214,
		37.375790, 33.094364, 40.197594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034977, 33.226833, 41.015228>,  <37.154430, 33.664177, 40.538643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034977, 33.226833, 41.015228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292526, 33.055321, 40.761749>,  <37.447056, 32.952412, 40.609661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292526, 33.055321, 40.761749>,  <37.034977, 33.226833, 41.015228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292526, 33.055321, 40.761749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420564, -0.493556, 0.761267,
		-0.639185, -0.756669, -0.137456,
		0.643870, -0.428782, -0.633702,
		37.485687, 32.926685, 40.571640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956238, 32.560955, 41.095318>,  <37.034977, 33.226833, 41.015228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956238, 32.560955, 41.095318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309708, 32.563568, 40.908100>,  <37.521790, 32.565136, 40.795769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309708, 32.563568, 40.908100>,  <36.956238, 32.560955, 41.095318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309708, 32.563568, 40.908100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346984, -0.680278, 0.645619,
		-0.314187, -0.732925, -0.603413,
		0.883679, 0.006530, -0.468048,
		37.574810, 32.565529, 40.767685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219730, 31.850758, 40.905663>,  <36.956238, 32.560955, 41.095318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219730, 31.850758, 40.905663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546818, 32.080364, 40.922855>,  <37.743069, 32.218128, 40.933170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546818, 32.080364, 40.922855>,  <37.219730, 31.850758, 40.905663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546818, 32.080364, 40.922855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406037, -0.628122, 0.663774,
		0.408012, -0.525328, -0.746697,
		0.817716, 0.574014, 0.042979,
		37.792133, 32.252567, 40.935749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827408, 31.413509, 40.637154>,  <37.219730, 31.850758, 40.905663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827408, 31.413509, 40.637154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970898, 31.700403, 40.876114>,  <38.056992, 31.872540, 41.019489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970898, 31.700403, 40.876114>,  <37.827408, 31.413509, 40.637154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970898, 31.700403, 40.876114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471812, -0.691546, 0.546953,
		0.805425, 0.085656, -0.586475,
		0.358725, 0.717236, 0.597402,
		38.078514, 31.915573, 41.055336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463596, 31.048513, 40.962494>,  <37.827408, 31.413509, 40.637154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463596, 31.048513, 40.962494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378361, 31.369900, 41.184860>,  <38.327221, 31.562731, 41.318279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378361, 31.369900, 41.184860>,  <38.463596, 31.048513, 40.962494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378361, 31.369900, 41.184860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556222, -0.368017, 0.745104,
		0.803250, 0.467984, -0.368484,
		-0.213088, 0.803464, 0.555913,
		38.314434, 31.610939, 41.351635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004421, 30.966009, 41.499142>,  <38.463596, 31.048513, 40.962494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004421, 30.966009, 41.499142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770920, 31.256029, 41.645309>,  <38.630817, 31.430040, 41.733009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770920, 31.256029, 41.645309>,  <39.004421, 30.966009, 41.499142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770920, 31.256029, 41.645309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246389, -0.270653, 0.930612,
		0.773642, 0.633286, -0.020649,
		-0.583755, 0.725049, 0.365424,
		38.595795, 31.473543, 41.754936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396122, 31.374367, 42.061165>,  <39.004421, 30.966009, 41.499142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396122, 31.374367, 42.061165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003082, 31.383881, 42.134846>,  <38.767258, 31.389589, 42.179054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003082, 31.383881, 42.134846>,  <39.396122, 31.374367, 42.061165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003082, 31.383881, 42.134846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166079, -0.331468, 0.928734,
		0.083145, 0.943166, 0.321751,
		-0.982601, 0.023783, 0.184200,
		38.708302, 31.391016, 42.190105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396084, 31.481224, 42.733070>,  <39.396122, 31.374367, 42.061165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396084, 31.481224, 42.733070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015087, 31.367037, 42.690624>,  <38.786488, 31.298523, 42.665157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015087, 31.367037, 42.690624>,  <39.396084, 31.481224, 42.733070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015087, 31.367037, 42.690624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017994, -0.400554, 0.916096,
		-0.304021, 0.870668, 0.386662,
		-0.952495, -0.285470, -0.106111,
		38.729340, 31.281395, 42.658791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119495, 31.629770, 43.437012>,  <39.396084, 31.481224, 42.733070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119495, 31.629770, 43.437012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872295, 31.366528, 43.264977>,  <38.723976, 31.208582, 43.161755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872295, 31.366528, 43.264977>,  <39.119495, 31.629770, 43.437012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872295, 31.366528, 43.264977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057815, -0.583618, 0.809968,
		-0.784052, 0.475692, 0.398723,
		-0.617997, -0.658109, -0.430085,
		38.686897, 31.169094, 43.135952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429569, 31.662388, 43.857681>,  <39.119495, 31.629770, 43.437012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429569, 31.662388, 43.857681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439831, 31.315756, 43.658329>,  <38.445988, 31.107777, 43.538719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439831, 31.315756, 43.658329>,  <38.429569, 31.662388, 43.857681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439831, 31.315756, 43.658329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281778, -0.484596, 0.828111,
		-0.959137, 0.119189, -0.256613,
		0.025652, -0.866580, -0.498378,
		38.447525, 31.055782, 43.508816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752094, 31.297153, 44.017788>,  <38.429569, 31.662388, 43.857681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752094, 31.297153, 44.017788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020672, 31.013666, 43.931179>,  <38.181820, 30.843575, 43.879215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020672, 31.013666, 43.931179>,  <37.752094, 31.297153, 44.017788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020672, 31.013666, 43.931179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267590, -0.504339, 0.820998,
		-0.691055, -0.493316, -0.528282,
		0.671445, -0.708718, -0.216519,
		38.222107, 30.801050, 43.866222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420067, 30.607178, 44.048695>,  <37.752094, 31.297153, 44.017788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420067, 30.607178, 44.048695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815102, 30.548334, 44.070721>,  <38.052124, 30.513029, 44.083939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815102, 30.548334, 44.070721>,  <37.420067, 30.607178, 44.048695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815102, 30.548334, 44.070721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128170, -0.552025, 0.823918,
		-0.090804, -0.820748, -0.564027,
		0.987586, -0.147107, 0.055069,
		38.111378, 30.504202, 44.087242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499752, 29.891777, 44.103573>,  <37.420067, 30.607178, 44.048695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499752, 29.891777, 44.103573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834282, 30.054974, 44.250057>,  <38.035000, 30.152891, 44.337948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834282, 30.054974, 44.250057>,  <37.499752, 29.891777, 44.103573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834282, 30.054974, 44.250057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120924, -0.514246, 0.849075,
		0.534739, -0.754382, -0.380738,
		0.836320, 0.407994, 0.366211,
		38.085178, 30.177372, 44.359921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566631, 29.563618, 44.777348>,  <37.499752, 29.891777, 44.103573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566631, 29.563618, 44.777348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848652, 29.844360, 44.817959>,  <38.017864, 30.012806, 44.842327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848652, 29.844360, 44.817959>,  <37.566631, 29.563618, 44.777348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848652, 29.844360, 44.817959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099963, -0.043379, 0.994045,
		0.702080, -0.710998, 0.039575,
		0.705047, 0.701855, 0.101529,
		38.060165, 30.054916, 44.848419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142544, 29.284025, 45.201195>,  <37.566631, 29.563618, 44.777348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142544, 29.284025, 45.201195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160042, 29.683226, 45.219425>,  <38.170540, 29.922747, 45.230362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160042, 29.683226, 45.219425>,  <38.142544, 29.284025, 45.201195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160042, 29.683226, 45.219425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233494, -0.054568, 0.970826,
		0.971374, -0.031832, -0.235414,
		0.043749, 0.998002, 0.045574,
		38.173168, 29.982626, 45.233097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851456, 29.548296, 45.464962>,  <38.142544, 29.284025, 45.201195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851456, 29.548296, 45.464962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579823, 29.829468, 45.549572>,  <38.416843, 29.998171, 45.600338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579823, 29.829468, 45.549572>,  <38.851456, 29.548296, 45.464962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579823, 29.829468, 45.549572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214616, -0.085443, 0.972954,
		0.701991, 0.706109, -0.092838,
		-0.679079, 0.702930, 0.211522,
		38.376099, 30.040346, 45.613029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125481, 29.794186, 46.007500>,  <38.851456, 29.548296, 45.464962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125481, 29.794186, 46.007500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792561, 30.015646, 45.996613>,  <38.592808, 30.148521, 45.990078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792561, 30.015646, 45.996613>,  <39.125481, 29.794186, 46.007500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792561, 30.015646, 45.996613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051026, 0.125425, 0.990790,
		0.551965, 0.823250, -0.132642,
		-0.832305, 0.553649, -0.027223,
		38.542870, 30.181742, 45.988445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212917, 30.478060, 46.324333>,  <39.125481, 29.794186, 46.007500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212917, 30.478060, 46.324333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827930, 30.374166, 46.355824>,  <38.596939, 30.311831, 46.374718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827930, 30.374166, 46.355824>,  <39.212917, 30.478060, 46.324333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827930, 30.374166, 46.355824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071904, 0.035659, 0.996774,
		-0.261700, 0.965023, -0.015645,
		-0.962467, -0.259731, 0.078721,
		38.539192, 30.296247, 46.379440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965988, 30.963905, 46.873264>,  <39.212917, 30.478060, 46.324333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965988, 30.963905, 46.873264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682869, 30.681358, 46.876381>,  <38.512997, 30.511829, 46.878250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682869, 30.681358, 46.876381>,  <38.965988, 30.963905, 46.873264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682869, 30.681358, 46.876381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063811, 0.074912, 0.995147,
		-0.703524, 0.703869, -0.098097,
		-0.707802, -0.706369, 0.007787,
		38.470528, 30.469448, 46.878716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465229, 31.211048, 47.244610>,  <38.965988, 30.963905, 46.873264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465229, 31.211048, 47.244610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402122, 30.816122, 47.251698>,  <38.364258, 30.579166, 47.255951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402122, 30.816122, 47.251698>,  <38.465229, 31.211048, 47.244610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402122, 30.816122, 47.251698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112369, 0.035779, 0.993022,
		-0.981062, 0.154674, -0.116589,
		-0.157766, -0.987318, 0.017721,
		38.354794, 30.519926, 47.257015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746559, 31.081455, 47.623894>,  <38.465229, 31.211048, 47.244610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746559, 31.081455, 47.623894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949776, 30.737892, 47.649719>,  <38.071705, 30.531754, 47.665215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949776, 30.737892, 47.649719>,  <37.746559, 31.081455, 47.623894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949776, 30.737892, 47.649719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187729, -0.037265, 0.981514,
		-0.840624, -0.510773, -0.180174,
		0.508044, -0.858908, 0.064561,
		38.102188, 30.480219, 47.669086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350891, 30.657084, 48.056137>,  <37.746559, 31.081455, 47.623894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350891, 30.657084, 48.056137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720245, 30.503548, 48.054012>,  <37.941856, 30.411427, 48.052738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720245, 30.503548, 48.054012>,  <37.350891, 30.657084, 48.056137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720245, 30.503548, 48.054012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040817, 0.084411, 0.995595,
		-0.381699, -0.919534, 0.093611,
		0.923385, -0.383838, -0.005313,
		37.997261, 30.388395, 48.052418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337273, 30.074724, 48.528328>,  <37.350891, 30.657084, 48.056137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337273, 30.074724, 48.528328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708900, 30.212172, 48.473537>,  <37.931877, 30.294640, 48.440662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708900, 30.212172, 48.473537>,  <37.337273, 30.074724, 48.528328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708900, 30.212172, 48.473537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073378, 0.191745, 0.978698,
		0.362567, -0.919325, 0.152929,
		0.929065, 0.343622, -0.136979,
		37.987621, 30.315258, 48.432446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731812, 29.795874, 49.069889>,  <37.337273, 30.074724, 48.528328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731812, 29.795874, 49.069889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956276, 30.102022, 48.943840>,  <38.090954, 30.285711, 48.868210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956276, 30.102022, 48.943840>,  <37.731812, 29.795874, 49.069889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956276, 30.102022, 48.943840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087213, 0.323920, 0.942056,
		0.823096, -0.556131, 0.115022,
		0.561165, 0.765372, -0.315119,
		38.124626, 30.331635, 48.849304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357227, 29.603277, 49.373306>,  <37.731812, 29.795874, 49.069889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357227, 29.603277, 49.373306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361084, 29.997713, 49.306931>,  <38.363400, 30.234375, 49.267105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361084, 29.997713, 49.306931>,  <38.357227, 29.603277, 49.373306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361084, 29.997713, 49.306931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253779, 0.158102, 0.954253,
		0.967214, -0.051314, -0.248724,
		0.009643, 0.986088, -0.165941,
		38.363976, 30.293539, 49.257149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009357, 29.826935, 49.680508>,  <38.357227, 29.603277, 49.373306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009357, 29.826935, 49.680508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775162, 30.150726, 49.662880>,  <38.634644, 30.345001, 49.652302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775162, 30.150726, 49.662880>,  <39.009357, 29.826935, 49.680508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775162, 30.150726, 49.662880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339223, 0.294009, 0.893581,
		0.736295, 0.508232, -0.446733,
		-0.585490, 0.809481, -0.044073,
		38.599514, 30.393570, 49.649658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383694, 30.407642, 49.787598>,  <39.009357, 29.826935, 49.680508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383694, 30.407642, 49.787598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013844, 30.506897, 49.903179>,  <38.791935, 30.566450, 49.972527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013844, 30.506897, 49.903179>,  <39.383694, 30.407642, 49.787598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013844, 30.506897, 49.903179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354293, 0.281889, 0.891636,
		0.139795, 0.926805, -0.348555,
		-0.924626, 0.248137, 0.288954,
		38.736454, 30.581339, 49.989864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552509, 31.018373, 50.090401>,  <39.383694, 30.407642, 49.787598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552509, 31.018373, 50.090401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178528, 30.932791, 50.203590>,  <38.954140, 30.881441, 50.271503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178528, 30.932791, 50.203590>,  <39.552509, 31.018373, 50.090401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178528, 30.932791, 50.203590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196088, 0.353060, 0.914822,
		-0.295639, 0.910808, -0.288142,
		-0.934958, -0.213956, 0.282977,
		38.898041, 30.868605, 50.288483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114006, 31.623827, 50.401981>,  <39.552509, 31.018373, 50.090401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114006, 31.623827, 50.401981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000965, 31.276423, 50.564869>,  <38.933140, 31.067980, 50.662601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000965, 31.276423, 50.564869>,  <39.114006, 31.623827, 50.401981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000965, 31.276423, 50.564869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163575, 0.374670, 0.912615,
		-0.945189, 0.324514, 0.036185,
		-0.282599, -0.868512, 0.407216,
		38.916187, 31.015869, 50.687035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836349, 31.762800, 51.053642>,  <39.114006, 31.623827, 50.401981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836349, 31.762800, 51.053642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865078, 32.158173, 51.107079>,  <38.882317, 32.395397, 51.139141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865078, 32.158173, 51.107079>,  <38.836349, 31.762800, 51.053642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865078, 32.158173, 51.107079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119078, 0.124480, -0.985051,
		-0.990284, 0.086657, -0.108760,
		0.071823, 0.988431, 0.133589,
		38.886623, 32.454700, 51.147156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467293, 32.131741, 50.464935>,  <38.836349, 31.762800, 51.053642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467293, 32.131741, 50.464935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707195, 32.419636, 50.604805>,  <38.851139, 32.592373, 50.688728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707195, 32.419636, 50.604805>,  <38.467293, 32.131741, 50.464935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707195, 32.419636, 50.604805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212134, 0.278343, -0.936763,
		-0.771549, 0.636010, 0.014259,
		0.599759, 0.719733, 0.349675,
		38.887123, 32.635555, 50.709709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254971, 32.738529, 50.111317>,  <38.467293, 32.131741, 50.464935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254971, 32.738529, 50.111317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629341, 32.788338, 50.243095>,  <38.853962, 32.818222, 50.322163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629341, 32.788338, 50.243095>,  <38.254971, 32.738529, 50.111317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629341, 32.788338, 50.243095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258843, 0.391128, -0.883187,
		-0.238830, 0.911874, 0.333836,
		0.935928, 0.124521, 0.329445,
		38.910118, 32.825695, 50.341930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398529, 33.456268, 49.884727>,  <38.254971, 32.738529, 50.111317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398529, 33.456268, 49.884727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753078, 33.276268, 49.928253>,  <38.965809, 33.168266, 49.954369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753078, 33.276268, 49.928253>,  <38.398529, 33.456268, 49.884727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753078, 33.276268, 49.928253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299634, 0.378421, -0.875795,
		0.352930, 0.808887, 0.470258,
		0.886375, -0.450000, 0.108814,
		39.018990, 33.141270, 49.960899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786999, 33.962780, 49.593674>,  <38.398529, 33.456268, 49.884727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786999, 33.962780, 49.593674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047169, 33.662228, 49.638157>,  <39.203270, 33.481895, 49.664845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.047169, 33.662228, 49.638157>,  <38.786999, 33.962780, 49.593674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047169, 33.662228, 49.638157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408363, 0.222470, -0.885295,
		0.640456, 0.621233, 0.451537,
		0.650428, -0.751383, 0.111206,
		39.242298, 33.436813, 49.671520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502731, 34.191837, 49.575283>,  <38.786999, 33.962780, 49.593674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502731, 34.191837, 49.575283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504684, 33.805679, 49.470978>,  <39.505856, 33.573986, 49.408394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504684, 33.805679, 49.470978>,  <39.502731, 34.191837, 49.575283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504684, 33.805679, 49.470978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426955, 0.237813, -0.872442,
		0.904260, -0.107072, 0.413340,
		0.004884, -0.965391, -0.260760,
		39.506149, 33.516064, 49.392750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116024, 34.020657, 49.327023>,  <39.502731, 34.191837, 49.575283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116024, 34.020657, 49.327023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885918, 33.738873, 49.160744>,  <39.747856, 33.569801, 49.060978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885918, 33.738873, 49.160744>,  <40.116024, 34.020657, 49.327023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885918, 33.738873, 49.160744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433439, 0.168460, -0.885298,
		0.693689, -0.689456, 0.208434,
		-0.575261, -0.704465, -0.415696,
		39.713341, 33.527534, 49.036034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585011, 33.776764, 48.885632>,  <40.116024, 34.020657, 49.327023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585011, 33.776764, 48.885632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217430, 33.663536, 48.775791>,  <39.996883, 33.595600, 48.709885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217430, 33.663536, 48.775791>,  <40.585011, 33.776764, 48.885632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217430, 33.663536, 48.775791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291573, -0.018797, -0.956364,
		0.265554, -0.958916, 0.099809,
		-0.918949, -0.283068, -0.274602,
		39.941746, 33.578617, 48.693409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742996, 33.269539, 48.390961>,  <40.585011, 33.776764, 48.885632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742996, 33.269539, 48.390961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371750, 33.402115, 48.323132>,  <40.149002, 33.481659, 48.282436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371750, 33.402115, 48.323132>,  <40.742996, 33.269539, 48.390961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371750, 33.402115, 48.323132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211422, 0.094317, -0.972834,
		-0.306444, -0.938750, -0.157611,
		-0.928113, 0.331441, -0.169569,
		40.093315, 33.501549, 48.272263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548183, 32.837395, 47.761139>,  <40.742996, 33.269539, 48.390961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548183, 32.837395, 47.761139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293076, 33.144871, 47.780602>,  <40.140011, 33.329357, 47.792278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293076, 33.144871, 47.780602>,  <40.548183, 32.837395, 47.761139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293076, 33.144871, 47.780602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026326, 0.084893, -0.996042,
		-0.769780, -0.633961, -0.074379,
		-0.637766, 0.768692, 0.048659,
		40.101746, 33.375477, 47.795200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996471, 32.784470, 47.217937>,  <40.548183, 32.837395, 47.761139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996471, 32.784470, 47.217937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990845, 33.169079, 47.327682>,  <39.987469, 33.399845, 47.393532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.990845, 33.169079, 47.327682>,  <39.996471, 32.784470, 47.217937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990845, 33.169079, 47.327682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197502, 0.266316, -0.943434,
		-0.980201, -0.067461, 0.186156,
		-0.014068, 0.961522, 0.274367,
		39.986626, 33.457535, 47.409992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396633, 32.993488, 46.879223>,  <39.996471, 32.784470, 47.217937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396633, 32.993488, 46.879223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648052, 33.297344, 46.946018>,  <39.798904, 33.479656, 46.986095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648052, 33.297344, 46.946018>,  <39.396633, 32.993488, 46.879223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648052, 33.297344, 46.946018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010708, 0.206223, -0.978446,
		-0.777700, 0.616786, 0.121486,
		0.628545, 0.759637, 0.166984,
		39.836617, 33.525234, 46.996113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092754, 33.621231, 46.517178>,  <39.396633, 32.993488, 46.879223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092754, 33.621231, 46.517178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478470, 33.719997, 46.555504>,  <39.709900, 33.779259, 46.578499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478470, 33.719997, 46.555504>,  <39.092754, 33.621231, 46.517178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478470, 33.719997, 46.555504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056084, 0.163203, -0.984997,
		-0.258848, 0.955195, 0.143527,
		0.964288, 0.246915, 0.095816,
		39.767757, 33.794071, 46.584248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151428, 34.222511, 46.190948>,  <39.092754, 33.621231, 46.517178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151428, 34.222511, 46.190948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532295, 34.100388, 46.185825>,  <39.760815, 34.027115, 46.182751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532295, 34.100388, 46.185825>,  <39.151428, 34.222511, 46.190948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532295, 34.100388, 46.185825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069610, 0.257514, -0.963764,
		0.297541, 0.916774, 0.266449,
		0.952168, -0.305307, -0.012804,
		39.817947, 34.008797, 46.181984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544868, 34.782597, 45.978283>,  <39.151428, 34.222511, 46.190948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544868, 34.782597, 45.978283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758423, 34.452717, 45.903633>,  <39.886555, 34.254787, 45.858845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758423, 34.452717, 45.903633>,  <39.544868, 34.782597, 45.978283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758423, 34.452717, 45.903633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134945, 0.300984, -0.944033,
		0.834718, 0.478825, 0.271981,
		0.533888, -0.824703, -0.186622,
		39.918591, 34.205307, 45.847645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945545, 35.006401, 45.524357>,  <39.544868, 34.782597, 45.978283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945545, 35.006401, 45.524357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985451, 34.610901, 45.479794>,  <40.009396, 34.373600, 45.453056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.985451, 34.610901, 45.479794>,  <39.945545, 35.006401, 45.524357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985451, 34.610901, 45.479794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102590, 0.121592, -0.987264,
		0.989708, 0.087068, 0.113567,
		0.099768, -0.988754, -0.111408,
		40.015381, 34.314274, 45.446373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564133, 34.895390, 45.132160>,  <39.945545, 35.006401, 45.524357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564133, 34.895390, 45.132160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331932, 34.572613, 45.088581>,  <40.192612, 34.378948, 45.062435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331932, 34.572613, 45.088581>,  <40.564133, 34.895390, 45.132160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331932, 34.572613, 45.088581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113307, 0.052441, -0.992175,
		0.806337, -0.588304, 0.060989,
		-0.580502, -0.806938, -0.108944,
		40.157780, 34.330532, 45.055897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783642, 34.622372, 44.580116>,  <40.564133, 34.895390, 45.132160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783642, 34.622372, 44.580116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451359, 34.400864, 44.602974>,  <40.251991, 34.267960, 44.616688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451359, 34.400864, 44.602974>,  <40.783642, 34.622372, 44.580116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451359, 34.400864, 44.602974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022614, -0.068994, -0.997361,
		0.556255, -0.829804, 0.044791,
		-0.830704, -0.553774, 0.057143,
		40.202148, 34.234730, 44.620117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960091, 33.933647, 44.309132>,  <40.783642, 34.622372, 44.580116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960091, 33.933647, 44.309132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568081, 34.004810, 44.273567>,  <40.332874, 34.047508, 44.252228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568081, 34.004810, 44.273567>,  <40.960091, 33.933647, 44.309132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568081, 34.004810, 44.273567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047094, -0.226756, -0.972812,
		-0.193231, -0.957565, 0.213847,
		-0.980022, 0.177907, -0.088912,
		40.274075, 34.058186, 44.246895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697922, 33.384945, 43.788837>,  <40.960091, 33.933647, 44.309132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697922, 33.384945, 43.788837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414391, 33.666878, 43.799927>,  <40.244270, 33.836037, 43.806580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414391, 33.666878, 43.799927>,  <40.697922, 33.384945, 43.788837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414391, 33.666878, 43.799927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119140, -0.080886, -0.989577,
		-0.695247, -0.704744, 0.141308,
		-0.708828, 0.704836, 0.027727,
		40.201740, 33.878330, 43.808247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045208, 33.119156, 43.624947>,  <40.697922, 33.384945, 43.788837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045208, 33.119156, 43.624947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024258, 33.508160, 43.534184>,  <40.011688, 33.741562, 43.479725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024258, 33.508160, 43.534184>,  <40.045208, 33.119156, 43.624947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024258, 33.508160, 43.534184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552073, -0.217537, -0.804918,
		-0.832149, 0.083114, 0.548288,
		-0.052373, 0.972507, -0.226908,
		40.008545, 33.799911, 43.466110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402100, 33.222252, 43.204044>,  <40.045208, 33.119156, 43.624947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402100, 33.222252, 43.204044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613640, 33.553120, 43.128029>,  <39.740562, 33.751640, 43.082420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613640, 33.553120, 43.128029>,  <39.402100, 33.222252, 43.204044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613640, 33.553120, 43.128029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377142, 0.028450, -0.925718,
		-0.760317, 0.561236, 0.327005,
		0.528850, 0.827167, -0.190034,
		39.772293, 33.801270, 43.071018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907566, 33.676979, 43.018364>,  <39.402100, 33.222252, 43.204044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907566, 33.676979, 43.018364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245560, 33.822990, 42.862030>,  <39.448357, 33.910599, 42.768230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245560, 33.822990, 42.862030>,  <38.907566, 33.676979, 43.018364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245560, 33.822990, 42.862030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481673, 0.201937, -0.852768,
		-0.232364, 0.908830, 0.346460,
		0.844984, 0.365033, -0.390836,
		39.499054, 33.932499, 42.744778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743202, 34.383656, 42.714748>,  <38.907566, 33.676979, 43.018364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743202, 34.383656, 42.714748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082802, 34.255005, 42.547050>,  <39.286560, 34.177814, 42.446434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082802, 34.255005, 42.547050>,  <38.743202, 34.383656, 42.714748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082802, 34.255005, 42.547050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312572, 0.334020, -0.889230,
		0.426037, 0.885994, 0.183049,
		0.848994, -0.321629, -0.419241,
		39.337502, 34.158516, 42.421280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958366, 34.915165, 42.261024>,  <38.743202, 34.383656, 42.714748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958366, 34.915165, 42.261024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167946, 34.604893, 42.120285>,  <39.293694, 34.418728, 42.035843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167946, 34.604893, 42.120285>,  <38.958366, 34.915165, 42.261024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167946, 34.604893, 42.120285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242124, 0.260407, -0.934646,
		0.816610, 0.574900, -0.051370,
		0.523951, -0.775679, -0.351848,
		39.325130, 34.372189, 42.014732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435070, 35.209030, 41.754555>,  <38.958366, 34.915165, 42.261024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435070, 35.209030, 41.754555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401928, 34.817177, 41.681393>,  <39.382042, 34.582066, 41.637497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401928, 34.817177, 41.681393>,  <39.435070, 35.209030, 41.754555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401928, 34.817177, 41.681393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211678, 0.196646, -0.957352,
		0.973821, -0.040607, -0.223660,
		-0.082857, -0.979633, -0.182902,
		39.377071, 34.523285, 41.626522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964233, 35.025246, 41.243603>,  <39.435070, 35.209030, 41.754555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964233, 35.025246, 41.243603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668259, 34.756443, 41.231571>,  <39.490673, 34.595161, 41.224354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668259, 34.756443, 41.231571>,  <39.964233, 35.025246, 41.243603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668259, 34.756443, 41.231571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094611, 0.148237, -0.984416,
		0.665990, -0.725559, -0.173266,
		-0.739936, -0.672004, -0.030079,
		39.446278, 34.554840, 41.222549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108379, 34.521393, 40.666759>,  <39.964233, 35.025246, 41.243603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108379, 34.521393, 40.666759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717419, 34.504288, 40.749569>,  <39.482841, 34.494026, 40.799255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717419, 34.504288, 40.749569>,  <40.108379, 34.521393, 40.666759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717419, 34.504288, 40.749569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211276, 0.164569, -0.963473,
		0.007127, -0.985439, -0.169883,
		-0.977401, -0.042759, 0.207026,
		39.424198, 34.491459, 40.811676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877647, 34.222092, 40.080166>,  <40.108379, 34.521393, 40.666759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877647, 34.222092, 40.080166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555660, 34.373196, 40.263172>,  <39.362469, 34.463856, 40.372978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.555660, 34.373196, 40.263172>,  <39.877647, 34.222092, 40.080166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555660, 34.373196, 40.263172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404756, 0.214189, -0.888986,
		-0.433815, -0.900791, -0.019517,
		-0.804971, 0.377756, 0.457519,
		39.314171, 34.486523, 40.400429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416340, 33.893490, 39.669239>,  <39.877647, 34.222092, 40.080166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416340, 33.893490, 39.669239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244812, 34.186646, 39.880520>,  <39.141895, 34.362537, 40.007286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.244812, 34.186646, 39.880520>,  <39.416340, 33.893490, 39.669239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244812, 34.186646, 39.880520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305560, 0.432556, -0.848250,
		-0.850145, -0.525143, 0.038452,
		-0.428820, 0.732885, 0.528198,
		39.116165, 34.406509, 40.038979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655266, 33.998905, 39.358074>,  <39.416340, 33.893490, 39.669239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655266, 33.998905, 39.358074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816345, 34.314362, 39.543926>,  <38.912991, 34.503635, 39.655437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.816345, 34.314362, 39.543926>,  <38.655266, 33.998905, 39.358074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816345, 34.314362, 39.543926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399017, 0.608084, -0.686309,
		-0.823785, 0.090980, 0.559555,
		0.402696, 0.788643, 0.464628,
		38.937153, 34.550953, 39.683315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068348, 34.415565, 39.445808>,  <38.655266, 33.998905, 39.358074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068348, 34.415565, 39.445808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378277, 34.664543, 39.490013>,  <38.564236, 34.813927, 39.516537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378277, 34.664543, 39.490013>,  <38.068348, 34.415565, 39.445808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378277, 34.664543, 39.490013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378560, 0.596845, -0.707438,
		-0.506297, 0.506305, 0.698082,
		0.774826, 0.622439, 0.110514,
		38.610725, 34.851276, 39.523167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753941, 34.999229, 39.253284>,  <38.068348, 34.415565, 39.445808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753941, 34.999229, 39.253284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147018, 35.069752, 39.230530>,  <38.382866, 35.112064, 39.216877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147018, 35.069752, 39.230530>,  <37.753941, 34.999229, 39.253284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147018, 35.069752, 39.230530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168551, 0.723467, -0.669467,
		-0.076879, 0.667466, 0.740661,
		0.982690, 0.176307, -0.056882,
		38.441826, 35.122643, 39.213467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810413, 35.635376, 39.330338>,  <37.753941, 34.999229, 39.253284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810413, 35.635376, 39.330338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137096, 35.535046, 39.122459>,  <38.333107, 35.474850, 38.997734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137096, 35.535046, 39.122459>,  <37.810413, 35.635376, 39.330338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137096, 35.535046, 39.122459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131896, 0.795614, -0.591271,
		0.561777, 0.551440, 0.616701,
		0.816706, -0.250822, -0.519691,
		38.382107, 35.459801, 38.966553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016605, 36.289875, 39.090054>,  <37.810413, 35.635376, 39.330338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016605, 36.289875, 39.090054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245686, 36.048923, 38.867649>,  <38.383133, 35.904350, 38.734207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245686, 36.048923, 38.867649>,  <38.016605, 36.289875, 39.090054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245686, 36.048923, 38.867649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063827, 0.643433, -0.762837,
		0.817277, 0.472365, 0.330045,
		0.572699, -0.602383, -0.556013,
		38.417496, 35.868210, 38.700844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480602, 36.705528, 38.758373>,  <38.016605, 36.289875, 39.090054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480602, 36.705528, 38.758373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467243, 36.380665, 38.525383>,  <38.459229, 36.185745, 38.385590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467243, 36.380665, 38.525383>,  <38.480602, 36.705528, 38.758373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467243, 36.380665, 38.525383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006430, 0.582964, -0.812473,
		0.999421, -0.023391, -0.024693,
		-0.033399, -0.812161, -0.582476,
		38.457222, 36.137016, 38.350639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953384, 36.753052, 38.211731>,  <38.480602, 36.705528, 38.758373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953384, 36.753052, 38.211731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700706, 36.482544, 38.060143>,  <38.549099, 36.320240, 37.969189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700706, 36.482544, 38.060143>,  <38.953384, 36.753052, 38.211731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700706, 36.482544, 38.060143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075478, 0.540190, -0.838151,
		0.771534, -0.500852, -0.392279,
		-0.631695, -0.676271, -0.378972,
		38.511196, 36.279663, 37.946449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151142, 36.614483, 37.491375>,  <38.953384, 36.753052, 38.211731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151142, 36.614483, 37.491375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783775, 36.456753, 37.504086>,  <38.563354, 36.362114, 37.511711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783775, 36.456753, 37.504086>,  <39.151142, 36.614483, 37.491375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783775, 36.456753, 37.504086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162084, 0.301804, -0.939491,
		0.360873, -0.868000, -0.341097,
		-0.918422, -0.394323, 0.031776,
		38.508247, 36.338455, 37.513618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021618, 36.058331, 36.905514>,  <39.151142, 36.614483, 37.491375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021618, 36.058331, 36.905514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675941, 36.233036, 37.005447>,  <38.468536, 36.337860, 37.065407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675941, 36.233036, 37.005447>,  <39.021618, 36.058331, 36.905514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675941, 36.233036, 37.005447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214390, 0.129587, -0.968114,
		-0.455209, -0.890195, -0.018351,
		-0.864188, 0.436760, 0.249838,
		38.416683, 36.364063, 37.080399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547909, 35.661140, 36.609608>,  <39.021618, 36.058331, 36.905514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547909, 35.661140, 36.609608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428482, 36.039192, 36.662659>,  <38.356827, 36.266022, 36.694489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428482, 36.039192, 36.662659>,  <38.547909, 35.661140, 36.609608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428482, 36.039192, 36.662659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007277, 0.141219, -0.989952,
		-0.954362, -0.294599, -0.049040,
		-0.298564, 0.945129, 0.132630,
		38.338913, 36.322731, 36.702446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988838, 35.304707, 36.134048>,  <38.547909, 35.661140, 36.609608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988838, 35.304707, 36.134048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064758, 34.953526, 35.958241>,  <39.110310, 34.742817, 35.852757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064758, 34.953526, 35.958241>,  <38.988838, 35.304707, 36.134048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064758, 34.953526, 35.958241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883165, -0.042915, 0.467095,
		-0.428948, -0.476825, 0.767230,
		0.189797, -0.877950, -0.439523,
		39.121696, 34.690140, 35.826382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135780, 34.829227, 36.680798>,  <38.988838, 35.304707, 36.134048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135780, 34.829227, 36.680798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326496, 34.725784, 36.344749>,  <39.440926, 34.663719, 36.143120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326496, 34.725784, 36.344749>,  <39.135780, 34.829227, 36.680798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326496, 34.725784, 36.344749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825487, -0.196704, 0.529036,
		-0.302066, -0.945744, 0.119689,
		0.476789, -0.258605, -0.840117,
		39.469532, 34.648201, 36.092716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446312, 34.197361, 36.694691>,  <39.135780, 34.829227, 36.680798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446312, 34.197361, 36.694691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683270, 34.388889, 36.435524>,  <39.825443, 34.503807, 36.280025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683270, 34.388889, 36.435524>,  <39.446312, 34.197361, 36.694691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683270, 34.388889, 36.435524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800353, -0.257705, 0.541316,
		0.092224, -0.839234, -0.535892,
		0.592393, 0.478825, -0.647917,
		39.860989, 34.532536, 36.241150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844364, 33.649136, 36.469425>,  <39.446312, 34.197361, 36.694691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844364, 33.649136, 36.469425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019581, 34.007797, 36.443748>,  <40.124710, 34.222996, 36.428341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019581, 34.007797, 36.443748>,  <39.844364, 33.649136, 36.469425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019581, 34.007797, 36.443748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731066, -0.313773, 0.605879,
		0.523124, -0.312332, -0.792963,
		0.438046, 0.896658, -0.064193,
		40.150993, 34.276794, 36.424492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532162, 33.438194, 36.294083>,  <39.844364, 33.649136, 36.469425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532162, 33.438194, 36.294083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513180, 33.791985, 36.479752>,  <40.501789, 34.004257, 36.591152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513180, 33.791985, 36.479752>,  <40.532162, 33.438194, 36.294083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513180, 33.791985, 36.479752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742908, -0.279381, 0.608304,
		0.667709, 0.373704, -0.643824,
		-0.047454, 0.884473, 0.464173,
		40.498943, 34.057327, 36.619003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127731, 33.766438, 36.223652>,  <40.532162, 33.438194, 36.294083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127731, 33.766438, 36.223652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955070, 33.823265, 36.579964>,  <40.851475, 33.857361, 36.793751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955070, 33.823265, 36.579964>,  <41.127731, 33.766438, 36.223652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955070, 33.823265, 36.579964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865214, -0.214073, 0.453406,
		0.255107, 0.966431, -0.030514,
		-0.431653, 0.142068, 0.890782,
		40.825573, 33.865887, 36.847198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651840, 34.086109, 36.625866>,  <41.127731, 33.766438, 36.223652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651840, 34.086109, 36.625866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418911, 33.965328, 36.927788>,  <41.279156, 33.892860, 37.108940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418911, 33.965328, 36.927788>,  <41.651840, 34.086109, 36.625866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418911, 33.965328, 36.927788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806762, -0.100199, 0.582318,
		-0.100199, 0.948044, 0.301948,
		-0.582318, -0.301948, 0.754806,
		41.244217, 33.874744, 37.154228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185478, 34.663647, 36.434566>,  <41.651840, 34.086109, 36.625866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185478, 34.663647, 36.434566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522167, 34.792446, 36.607922>,  <42.724178, 34.869728, 36.711933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522167, 34.792446, 36.607922>,  <42.185478, 34.663647, 36.434566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522167, 34.792446, 36.607922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527769, 0.321387, 0.786238,
		0.113886, -0.890519, 0.440460,
		0.841718, 0.322002, 0.433387,
		42.774681, 34.889046, 36.737938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165043, 34.517555, 37.171627>,  <42.185478, 34.663647, 36.434566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165043, 34.517555, 37.171627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437756, 34.809040, 37.145866>,  <42.601383, 34.983932, 37.130409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437756, 34.809040, 37.145866>,  <42.165043, 34.517555, 37.171627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437756, 34.809040, 37.145866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289973, 0.350014, 0.890733,
		0.671633, -0.588610, 0.449942,
		0.681781, 0.728717, -0.064400,
		42.642288, 35.027657, 37.126545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500671, 34.587658, 37.870842>,  <42.165043, 34.517555, 37.171627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500671, 34.587658, 37.870842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596107, 34.924854, 37.677998>,  <42.653370, 35.127174, 37.562290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596107, 34.924854, 37.677998>,  <42.500671, 34.587658, 37.870842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596107, 34.924854, 37.677998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308789, 0.536542, 0.785348,
		0.920719, -0.038507, 0.388322,
		0.238593, 0.842994, -0.482114,
		42.667686, 35.177753, 37.533363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668312, 35.012890, 38.363247>,  <42.500671, 34.587658, 37.870842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668312, 35.012890, 38.363247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582886, 35.252956, 38.054913>,  <42.531631, 35.396996, 37.869911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582886, 35.252956, 38.054913>,  <42.668312, 35.012890, 38.363247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582886, 35.252956, 38.054913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460922, 0.633796, 0.621170,
		0.861359, 0.487957, 0.141272,
		-0.213567, 0.600167, -0.770837,
		42.518814, 35.433006, 37.823662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977974, 35.574604, 38.520073>,  <42.668312, 35.012890, 38.363247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977974, 35.574604, 38.520073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668591, 35.687302, 38.292957>,  <42.482960, 35.754921, 38.156689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668591, 35.687302, 38.292957>,  <42.977974, 35.574604, 38.520073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668591, 35.687302, 38.292957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187056, 0.754430, 0.629162,
		0.605618, 0.592839, -0.530819,
		-0.773458, 0.281739, -0.567790,
		42.436554, 35.771824, 38.122620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950710, 36.309547, 38.543518>,  <42.977974, 35.574604, 38.520073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950710, 36.309547, 38.543518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584316, 36.214668, 38.414085>,  <42.364479, 36.157742, 38.336426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584316, 36.214668, 38.414085>,  <42.950710, 36.309547, 38.543518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584316, 36.214668, 38.414085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387527, 0.731880, 0.560513,
		0.103873, 0.638820, -0.762311,
		-0.915988, -0.237194, -0.323583,
		42.309521, 36.143509, 38.317009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676235, 36.960571, 38.426090>,  <42.950710, 36.309547, 38.543518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676235, 36.960571, 38.426090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363689, 36.711849, 38.447357>,  <42.176163, 36.562614, 38.460117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363689, 36.711849, 38.447357>,  <42.676235, 36.960571, 38.426090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363689, 36.711849, 38.447357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470953, 0.643398, 0.603525,
		-0.409483, 0.446534, -0.795570,
		-0.781362, -0.621809, 0.053164,
		42.129280, 36.525307, 38.463306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135296, 37.307590, 38.235790>,  <42.676235, 36.960571, 38.426090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135296, 37.307590, 38.235790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971638, 37.012928, 38.451176>,  <41.873444, 36.836132, 38.580406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971638, 37.012928, 38.451176>,  <42.135296, 37.307590, 38.235790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971638, 37.012928, 38.451176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345516, 0.671248, 0.655778,
		-0.844522, 0.082263, -0.529165,
		-0.409147, -0.736654, 0.538460,
		41.848892, 36.791931, 38.612713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564720, 37.533962, 38.445679>,  <42.135296, 37.307590, 38.235790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564720, 37.533962, 38.445679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583668, 37.231758, 38.707047>,  <41.595036, 37.050434, 38.863869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583668, 37.231758, 38.707047>,  <41.564720, 37.533962, 38.445679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583668, 37.231758, 38.707047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332702, 0.604869, 0.723493,
		-0.941842, -0.251664, -0.222709,
		0.047367, -0.755512, 0.653420,
		41.597878, 37.005104, 38.903072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931194, 37.526745, 38.799324>,  <41.564720, 37.533962, 38.445679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931194, 37.526745, 38.799324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187546, 37.342594, 39.045033>,  <41.341358, 37.232105, 39.192459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187546, 37.342594, 39.045033>,  <40.931194, 37.526745, 38.799324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187546, 37.342594, 39.045033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321305, 0.565860, 0.759319,
		-0.697165, -0.683999, 0.214725,
		0.640877, -0.460378, 0.614270,
		41.379810, 37.204479, 39.229313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536041, 37.296345, 39.341389>,  <40.931194, 37.526745, 38.799324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536041, 37.296345, 39.341389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909153, 37.289814, 39.485416>,  <41.133022, 37.285896, 39.571835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909153, 37.289814, 39.485416>,  <40.536041, 37.296345, 39.341389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909153, 37.289814, 39.485416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272301, 0.622605, 0.733631,
		-0.236158, -0.782366, 0.576310,
		0.932782, -0.016323, 0.360072,
		41.188988, 37.284916, 39.593437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438698, 37.158459, 39.999622>,  <40.536041, 37.296345, 39.341389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438698, 37.158459, 39.999622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802967, 37.323498, 39.991291>,  <41.021530, 37.422523, 39.986290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802967, 37.323498, 39.991291>,  <40.438698, 37.158459, 39.999622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802967, 37.323498, 39.991291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171210, 0.422818, 0.889894,
		0.375973, -0.806840, 0.455691,
		0.910677, 0.412595, -0.020829,
		41.076168, 37.447277, 39.985043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695545, 36.993061, 40.685165>,  <40.438698, 37.158459, 39.999622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695545, 36.993061, 40.685165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897884, 37.304436, 40.536491>,  <41.019287, 37.491261, 40.447289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897884, 37.304436, 40.536491>,  <40.695545, 36.993061, 40.685165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897884, 37.304436, 40.536491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031726, 0.413799, 0.909815,
		0.862037, -0.472023, 0.184623,
		0.505851, 0.778437, -0.371685,
		41.049641, 37.537968, 40.424984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377625, 37.036518, 41.035828>,  <40.695545, 36.993061, 40.685165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377625, 37.036518, 41.035828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322575, 37.408981, 40.900772>,  <41.289547, 37.632462, 40.819740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322575, 37.408981, 40.900772>,  <41.377625, 37.036518, 41.035828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322575, 37.408981, 40.900772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237858, 0.361974, 0.901331,
		0.961501, 0.043734, -0.271300,
		-0.137622, 0.931162, -0.337636,
		41.281288, 37.688332, 40.799480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543728, 37.331764, 41.590538>,  <41.377625, 37.036518, 41.035828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543728, 37.331764, 41.590538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431358, 37.628094, 41.346485>,  <41.363937, 37.805893, 41.200054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431358, 37.628094, 41.346485>,  <41.543728, 37.331764, 41.590538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431358, 37.628094, 41.346485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202721, 0.667190, 0.716771,
		0.938076, 0.077670, -0.337609,
		-0.280921, 0.740827, -0.610130,
		41.347084, 37.850342, 41.163445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069576, 37.819866, 41.602184>,  <41.543728, 37.331764, 41.590538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069576, 37.819866, 41.602184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717930, 37.989075, 41.514351>,  <41.506943, 38.090599, 41.461651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.717930, 37.989075, 41.514351>,  <42.069576, 37.819866, 41.602184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717930, 37.989075, 41.514351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125687, 0.650160, 0.749329,
		0.459742, 0.631147, -0.624733,
		-0.879113, 0.423019, -0.219579,
		41.454197, 38.115982, 41.448479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195923, 38.592632, 41.680359>,  <42.069576, 37.819866, 41.602184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195923, 38.592632, 41.680359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797024, 38.581085, 41.653015>,  <41.557686, 38.574158, 41.636608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797024, 38.581085, 41.653015>,  <42.195923, 38.592632, 41.680359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797024, 38.581085, 41.653015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063310, 0.811526, 0.580877,
		0.038707, 0.583603, -0.811116,
		-0.997243, -0.028867, -0.068359,
		41.497852, 38.572426, 41.632507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896267, 39.259785, 41.421482>,  <42.195923, 38.592632, 41.680359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896267, 39.259785, 41.421482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617661, 39.070797, 41.637497>,  <41.450497, 38.957405, 41.767105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617661, 39.070797, 41.637497>,  <41.896267, 39.259785, 41.421482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617661, 39.070797, 41.637497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049551, 0.719152, 0.693084,
		-0.715829, 0.509503, -0.477489,
		-0.696516, -0.472470, 0.540036,
		41.408707, 38.929054, 41.799507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348431, 39.824623, 41.672169>,  <41.896267, 39.259785, 41.421482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.348431, 39.824623, 41.672169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300026, 39.487453, 41.881866>,  <41.270985, 39.285152, 42.007683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300026, 39.487453, 41.881866>,  <41.348431, 39.824623, 41.672169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300026, 39.487453, 41.881866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040761, 0.531896, 0.845828,
		-0.991814, 0.080984, -0.098723,
		-0.121008, -0.842928, 0.524241,
		41.263725, 39.234573, 42.039139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790874, 39.929203, 42.175728>,  <41.348431, 39.824623, 41.672169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790874, 39.929203, 42.175728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004280, 39.637581, 42.347237>,  <41.132324, 39.462608, 42.450142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004280, 39.637581, 42.347237>,  <40.790874, 39.929203, 42.175728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004280, 39.637581, 42.347237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112268, 0.441417, 0.890251,
		-0.838307, -0.523099, 0.153653,
		0.533514, -0.729053, 0.428770,
		41.164333, 39.418865, 42.475868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857750, 40.183346, 42.860424>,  <40.790874, 39.929203, 42.175728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857750, 40.183346, 42.860424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072544, 39.847229, 42.890274>,  <41.201420, 39.645561, 42.908184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072544, 39.847229, 42.890274>,  <40.857750, 40.183346, 42.860424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072544, 39.847229, 42.890274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218317, 0.223867, 0.949853,
		-0.814855, -0.493762, 0.303661,
		0.536981, -0.840287, 0.074623,
		41.233639, 39.595142, 42.912663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654896, 39.852688, 43.494064>,  <40.857750, 40.183346, 42.860424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654896, 39.852688, 43.494064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026783, 39.738338, 43.401203>,  <41.249916, 39.669727, 43.345486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.026783, 39.738338, 43.401203>,  <40.654896, 39.852688, 43.494064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026783, 39.738338, 43.401203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288438, 0.173360, 0.941674,
		-0.228955, -0.942455, 0.243633,
		0.929722, -0.285874, -0.232148,
		41.305698, 39.652576, 43.331558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907478, 39.681007, 44.174141>,  <40.654896, 39.852688, 43.494064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907478, 39.681007, 44.174141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223492, 39.663277, 43.929558>,  <41.413101, 39.652637, 43.782810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223492, 39.663277, 43.929558>,  <40.907478, 39.681007, 44.174141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223492, 39.663277, 43.929558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612564, 0.016985, 0.790238,
		-0.024648, -0.998872, 0.040575,
		0.790036, -0.044332, -0.611455,
		41.460503, 39.649979, 43.746120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454441, 39.092476, 44.277580>,  <40.907478, 39.681007, 44.174141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454441, 39.092476, 44.277580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649937, 39.421997, 44.162701>,  <41.767235, 39.619709, 44.093773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.649937, 39.421997, 44.162701>,  <41.454441, 39.092476, 44.277580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649937, 39.421997, 44.162701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485635, 0.016585, 0.874004,
		0.724771, -0.566633, -0.391962,
		0.488739, 0.823803, -0.287198,
		41.796558, 39.669140, 44.076542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810989, 38.761944, 44.469715>,  <41.454441, 39.092476, 44.277580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810989, 38.761944, 44.469715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874962, 38.421043, 44.270477>,  <40.913345, 38.216503, 44.150936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874962, 38.421043, 44.270477>,  <40.810989, 38.761944, 44.469715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874962, 38.421043, 44.270477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979229, 0.200682, -0.028945,
		0.124626, -0.483117, 0.866641,
		0.159935, -0.852247, -0.498092,
		40.922943, 38.165371, 44.121048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476730, 38.417339, 44.687145>,  <40.810989, 38.761944, 44.469715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476730, 38.417339, 44.687145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401329, 38.300312, 44.312153>,  <41.356087, 38.230095, 44.087158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401329, 38.300312, 44.312153>,  <41.476730, 38.417339, 44.687145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401329, 38.300312, 44.312153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981530, -0.024410, -0.189747,
		0.032630, -0.955932, 0.291770,
		-0.188508, -0.292572, -0.937479,
		41.344776, 38.212540, 44.030910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758430, 37.766190, 44.531654>,  <41.476730, 38.417339, 44.687145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758430, 37.766190, 44.531654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762363, 38.006393, 44.211830>,  <41.764725, 38.150517, 44.019936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762363, 38.006393, 44.211830>,  <41.758430, 37.766190, 44.531654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762363, 38.006393, 44.211830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994967, -0.085618, -0.052062,
		-0.099720, -0.795022, -0.598328,
		0.009837, 0.600508, -0.799558,
		41.765316, 38.186546, 43.971962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362564, 37.636623, 44.167423>,  <41.758430, 37.766190, 44.531654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362564, 37.636623, 44.167423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289406, 37.977287, 43.970966>,  <42.245510, 38.181686, 43.853092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.289406, 37.977287, 43.970966>,  <42.362564, 37.636623, 44.167423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289406, 37.977287, 43.970966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974627, 0.091490, -0.204281,
		-0.129044, -0.516044, -0.846786,
		-0.182891, 0.851662, -0.491145,
		42.234539, 38.232784, 43.823624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452988, 38.275951, 44.386200>,  <42.362564, 37.636623, 44.167423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452988, 38.275951, 44.386200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658188, 38.004265, 44.596153>,  <42.781307, 37.841255, 44.722126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658188, 38.004265, 44.596153>,  <42.452988, 38.275951, 44.386200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658188, 38.004265, 44.596153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570878, -0.186679, -0.799531,
		0.641035, 0.709803, 0.291981,
		0.513003, -0.679213, 0.524879,
		42.812088, 37.800499, 44.753616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144154, 38.399216, 44.322815>,  <42.452988, 38.275951, 44.386200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144154, 38.399216, 44.322815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099968, 38.005718, 44.379436>,  <43.073456, 37.769619, 44.413410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099968, 38.005718, 44.379436>,  <43.144154, 38.399216, 44.322815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099968, 38.005718, 44.379436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705981, -0.177918, -0.685519,
		0.699563, 0.024208, 0.714161,
		-0.110467, -0.983748, 0.141555,
		43.066830, 37.710594, 44.421902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882626, 38.078251, 44.338997>,  <43.144154, 38.399216, 44.322815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882626, 38.078251, 44.338997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586388, 37.837570, 44.219345>,  <43.408646, 37.693161, 44.147556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586388, 37.837570, 44.219345>,  <43.882626, 38.078251, 44.338997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586388, 37.837570, 44.219345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526433, -0.242903, -0.814780,
		0.417593, -0.760893, 0.496647,
		-0.740597, -0.601698, -0.299125,
		43.364208, 37.657063, 44.129608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.022106, 37.304386, 44.420113>,  <43.882626, 38.078251, 44.338997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.022106, 37.304386, 44.420113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785225, 37.442337, 44.128811>,  <43.643097, 37.525108, 43.954029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785225, 37.442337, 44.128811>,  <44.022106, 37.304386, 44.420113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785225, 37.442337, 44.128811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565488, -0.465965, -0.680514,
		-0.574036, -0.814822, 0.080922,
		-0.592205, 0.344879, -0.728253,
		43.607563, 37.545799, 43.910336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903347, 36.750206, 43.915379>,  <44.022106, 37.304386, 44.420113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903347, 36.750206, 43.915379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815701, 37.055004, 43.671623>,  <43.763111, 37.237885, 43.525372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815701, 37.055004, 43.671623>,  <43.903347, 36.750206, 43.915379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815701, 37.055004, 43.671623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531772, -0.430383, -0.729375,
		-0.818050, -0.483874, -0.310902,
		-0.219119, 0.761995, -0.609386,
		43.749966, 37.283604, 43.488808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699505, 36.440987, 43.349068>,  <43.903347, 36.750206, 43.915379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.699505, 36.440987, 43.349068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750893, 36.811520, 43.207420>,  <43.781727, 37.033840, 43.122433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750893, 36.811520, 43.207420>,  <43.699505, 36.440987, 43.349068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750893, 36.811520, 43.207420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384880, -0.375662, -0.843057,
		-0.913982, -0.027986, -0.404789,
		0.128470, 0.926334, -0.354120,
		43.789433, 37.089420, 43.101185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267689, 36.436211, 42.766998>,  <43.699505, 36.440987, 43.349068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267689, 36.436211, 42.766998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566219, 36.701237, 42.741665>,  <43.745338, 36.860252, 42.726463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566219, 36.701237, 42.741665>,  <43.267689, 36.436211, 42.766998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566219, 36.701237, 42.741665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328231, -0.449165, -0.830973,
		-0.579019, 0.599387, -0.552696,
		0.746326, 0.662561, -0.063338,
		43.790115, 36.900005, 42.722664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281799, 36.495052, 42.020409>,  <43.267689, 36.436211, 42.766998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281799, 36.495052, 42.020409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623512, 36.652645, 42.156044>,  <43.828541, 36.747200, 42.237427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.623512, 36.652645, 42.156044>,  <43.281799, 36.495052, 42.020409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.623512, 36.652645, 42.156044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494381, -0.414286, -0.764169,
		-0.160587, 0.820456, -0.548693,
		0.854283, 0.393979, 0.339089,
		43.879799, 36.770840, 42.257771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571308, 37.052345, 41.668213>,  <43.281799, 36.495052, 42.020409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571308, 37.052345, 41.668213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909340, 36.906506, 41.824631>,  <44.112160, 36.819000, 41.918480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909340, 36.906506, 41.824631>,  <43.571308, 37.052345, 41.668213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.909340, 36.906506, 41.824631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359292, -0.154354, -0.920372,
		0.395926, 0.918282, 0.000557,
		0.845075, -0.364599, 0.391044,
		44.162861, 36.797127, 41.941944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046642, 37.270409, 41.225510>,  <43.571308, 37.052345, 41.668213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046642, 37.270409, 41.225510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277153, 36.994335, 41.400574>,  <44.415459, 36.828690, 41.505611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277153, 36.994335, 41.400574>,  <44.046642, 37.270409, 41.225510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277153, 36.994335, 41.400574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371644, -0.255638, -0.892485,
		0.727863, 0.676974, 0.109185,
		0.576277, -0.690185, 0.437663,
		44.450035, 36.787281, 41.531872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.671585, 37.452587, 41.055290>,  <44.046642, 37.270409, 41.225510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.671585, 37.452587, 41.055290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693485, 37.063412, 41.145077>,  <44.706623, 36.829906, 41.198948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.693485, 37.063412, 41.145077>,  <44.671585, 37.452587, 41.055290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693485, 37.063412, 41.145077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402499, -0.184228, -0.896691,
		0.913782, 0.139440, 0.381522,
		0.054748, -0.972942, 0.224469,
		44.709911, 36.771530, 41.212418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274445, 37.250568, 40.769989>,  <44.671585, 37.452587, 41.055290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274445, 37.250568, 40.769989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106335, 36.893681, 40.836090>,  <45.005470, 36.679546, 40.875751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106335, 36.893681, 40.836090>,  <45.274445, 37.250568, 40.769989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.106335, 36.893681, 40.836090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517838, -0.385383, -0.763757,
		0.745129, -0.235408, 0.623992,
		-0.420270, -0.892223, 0.165257,
		44.980255, 36.626015, 40.885666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.789886, 36.823456, 40.569443>,  <45.274445, 37.250568, 40.769989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.789886, 36.823456, 40.569443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464783, 36.590527, 40.576653>,  <45.269722, 36.450771, 40.580978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464783, 36.590527, 40.576653>,  <45.789886, 36.823456, 40.569443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464783, 36.590527, 40.576653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327779, -0.482631, -0.812175,
		0.481644, -0.654196, 0.583135,
		-0.812761, -0.582319, 0.018025,
		45.220955, 36.415833, 40.582062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.009995, 36.128738, 40.548771>,  <45.789886, 36.823456, 40.569443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.009995, 36.128738, 40.548771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638695, 36.156773, 40.402649>,  <45.415916, 36.173592, 40.314976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638695, 36.156773, 40.402649>,  <46.009995, 36.128738, 40.548771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638695, 36.156773, 40.402649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327879, -0.309612, -0.892545,
		-0.175653, -0.948277, 0.264418,
		-0.928247, 0.070081, -0.365304,
		45.360222, 36.177795, 40.293056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.883263, 35.421806, 40.212517>,  <46.009995, 36.128738, 40.548771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.883263, 35.421806, 40.212517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593239, 35.659988, 40.074108>,  <45.419224, 35.802898, 39.991062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593239, 35.659988, 40.074108>,  <45.883263, 35.421806, 40.212517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593239, 35.659988, 40.074108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040757, -0.464457, -0.884657,
		-0.687484, -0.655527, 0.312488,
		-0.725054, 0.595452, -0.346024,
		45.375721, 35.838623, 39.970303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.298973, 34.973190, 39.919621>,  <45.883263, 35.421806, 40.212517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.298973, 34.973190, 39.919621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.290283, 35.338455, 39.756817>,  <45.285069, 35.557613, 39.659134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.290283, 35.338455, 39.756817>,  <45.298973, 34.973190, 39.919621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290283, 35.338455, 39.756817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156625, -0.405191, -0.900716,
		-0.987419, 0.044179, 0.151827,
		-0.021727, 0.913164, -0.407013,
		45.283764, 35.612404, 39.634712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842518, 34.871677, 39.437817>,  <45.298973, 34.973190, 39.919621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842518, 34.871677, 39.437817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987492, 35.223644, 39.314930>,  <45.074474, 35.434826, 39.241199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987492, 35.223644, 39.314930>,  <44.842518, 34.871677, 39.437817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987492, 35.223644, 39.314930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069721, -0.303108, -0.950402,
		-0.929399, 0.365875, -0.048506,
		0.362431, 0.879921, -0.307218,
		45.096222, 35.487621, 39.222763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386284, 35.128296, 38.932808>,  <44.842518, 34.871677, 39.437817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386284, 35.128296, 38.932808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747238, 35.291801, 38.878246>,  <44.963810, 35.389904, 38.845509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747238, 35.291801, 38.878246>,  <44.386284, 35.128296, 38.932808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747238, 35.291801, 38.878246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050561, -0.213909, -0.975544,
		-0.427946, 0.887217, -0.172362,
		0.902389, 0.408766, -0.136400,
		45.017956, 35.414433, 38.837326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288570, 35.477283, 38.398113>,  <44.386284, 35.128296, 38.932808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288570, 35.477283, 38.398113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685692, 35.432243, 38.414410>,  <44.923965, 35.405220, 38.424187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.685692, 35.432243, 38.414410>,  <44.288570, 35.477283, 38.398113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.685692, 35.432243, 38.414410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008445, -0.273555, -0.961820,
		0.119442, 0.955244, -0.270636,
		0.992805, -0.112596, 0.040741,
		44.983532, 35.398464, 38.426632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442123, 35.877346, 37.826462>,  <44.288570, 35.477283, 38.398113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442123, 35.877346, 37.826462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770767, 35.667774, 37.916317>,  <44.967953, 35.542030, 37.970230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770767, 35.667774, 37.916317>,  <44.442123, 35.877346, 37.826462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770767, 35.667774, 37.916317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229311, -0.057021, -0.971682,
		0.521901, 0.849851, 0.073294,
		0.821606, -0.523929, 0.224639,
		45.017250, 35.510597, 37.983707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.134159, 36.174568, 37.659534>,  <44.442123, 35.877346, 37.826462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.134159, 36.174568, 37.659534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149559, 35.775230, 37.642433>,  <45.158798, 35.535629, 37.632172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149559, 35.775230, 37.642433>,  <45.134159, 36.174568, 37.659534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149559, 35.775230, 37.642433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325007, 0.052972, -0.944227,
		0.944928, 0.022455, 0.326508,
		0.038498, -0.998344, -0.042756,
		45.161110, 35.475727, 37.629608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.600983, 35.997860, 37.079678>,  <45.134159, 36.174568, 37.659534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.600983, 35.997860, 37.079678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.432041, 35.645599, 37.165531>,  <45.330677, 35.434242, 37.217045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.432041, 35.645599, 37.165531>,  <45.600983, 35.997860, 37.079678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.432041, 35.645599, 37.165531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304460, -0.360867, -0.881521,
		0.853767, -0.306969, 0.420537,
		-0.422357, -0.880651, 0.214637,
		45.305332, 35.381405, 37.229923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.134991, 35.465927, 36.846432>,  <45.600983, 35.997860, 37.079678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.134991, 35.465927, 36.846432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.755665, 35.339115, 36.852089>,  <45.528069, 35.263027, 36.855484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.755665, 35.339115, 36.852089>,  <46.134991, 35.465927, 36.846432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.755665, 35.339115, 36.852089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080533, -0.283509, -0.955582,
		0.306957, -0.905049, 0.294386,
		-0.948310, -0.317030, 0.014139,
		45.471172, 35.244007, 36.856331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.105034, 34.830578, 36.489182>,  <46.134991, 35.465927, 36.846432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.105034, 34.830578, 36.489182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.728436, 34.965122, 36.497536>,  <45.502476, 35.045849, 36.502548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.728436, 34.965122, 36.497536>,  <46.105034, 34.830578, 36.489182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.728436, 34.965122, 36.497536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149542, -0.361425, -0.920331,
		-0.302014, -0.869616, 0.390582,
		-0.941501, 0.336362, 0.020889,
		45.445984, 35.066032, 36.503803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.085747, 35.144352, 35.825314>,  <46.105034, 34.830578, 36.489182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.085747, 35.144352, 35.825314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.254120, 35.398422, 35.566280>,  <46.355145, 35.550865, 35.410858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.254120, 35.398422, 35.566280>,  <46.085747, 35.144352, 35.825314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.254120, 35.398422, 35.566280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819502, -0.572356, -0.028712,
		-0.388887, -0.518612, -0.761452,
		0.420931, 0.635177, -0.647585,
		46.380398, 35.588974, 35.372005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.373341, 34.814232, 35.158569>,  <46.085747, 35.144352, 35.825314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.373341, 34.814232, 35.158569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.584766, 35.148754, 35.216831>,  <46.711620, 35.349468, 35.251789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.584766, 35.148754, 35.216831>,  <46.373341, 34.814232, 35.158569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.584766, 35.148754, 35.216831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848828, -0.522805, -0.078517,
		0.010486, 0.165139, -0.986215,
		0.528565, 0.836304, 0.145657,
		46.743336, 35.399647, 35.260529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.966797, 34.633095, 34.772099>,  <46.373341, 34.814232, 35.158569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.966797, 34.633095, 34.772099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.047920, 34.918812, 35.040024>,  <47.096596, 35.090244, 35.200779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.047920, 34.918812, 35.040024>,  <46.966797, 34.633095, 34.772099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.047920, 34.918812, 35.040024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807065, -0.509303, 0.298759,
		0.554540, 0.479994, -0.679773,
		0.202808, 0.714294, 0.669815,
		47.108761, 35.133099, 35.240967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.597122, 34.940090, 34.598293>,  <46.966797, 34.633095, 34.772099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.597122, 34.940090, 34.598293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547672, 34.946228, 34.995178>,  <47.518002, 34.949913, 35.233307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.547672, 34.946228, 34.995178>,  <47.597122, 34.940090, 34.598293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.547672, 34.946228, 34.995178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868859, -0.481349, 0.115704,
		0.479375, 0.876395, 0.046172,
		-0.123627, 0.015349, 0.992210,
		47.510586, 34.950832, 35.292843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.313950, 34.937305, 46.422924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.040268, 34.646236, 46.403507>,  <33.876060, 34.471596, 46.391857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.040268, 34.646236, 46.403507>,  <34.313950, 34.937305, 46.422924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040268, 34.646236, 46.403507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087411, 0.147906, -0.985131,
		0.724035, -0.669786, -0.164805,
		-0.684203, -0.727675, -0.048542,
		33.835007, 34.427933, 46.388943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528351, 34.522106, 45.851177>,  <34.313950, 34.937305, 46.422924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528351, 34.522106, 45.851177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.143894, 34.436142, 45.920494>,  <33.913219, 34.384563, 45.962086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.143894, 34.436142, 45.920494>,  <34.528351, 34.522106, 45.851177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143894, 34.436142, 45.920494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152366, -0.110507, -0.982127,
		0.230216, -0.970362, 0.073468,
		-0.961137, -0.214907, 0.173291,
		33.855553, 34.371670, 45.972481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463505, 33.989902, 45.392540>,  <34.528351, 34.522106, 45.851177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463505, 33.989902, 45.392540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.093849, 34.121307, 45.470551>,  <33.872055, 34.200150, 45.517357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.093849, 34.121307, 45.470551>,  <34.463505, 33.989902, 45.392540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093849, 34.121307, 45.470551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149311, 0.159318, -0.975871,
		-0.351661, -0.930964, -0.098182,
		-0.924143, 0.328517, 0.195030,
		33.816605, 34.219864, 45.529060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957233, 33.597057, 44.988506>,  <34.463505, 33.989902, 45.392540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957233, 33.597057, 44.988506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.791328, 33.954788, 45.055630>,  <33.691784, 34.169426, 45.095905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.791328, 33.954788, 45.055630>,  <33.957233, 33.597057, 44.988506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791328, 33.954788, 45.055630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135069, 0.121867, -0.983313,
		-0.899850, -0.430506, 0.070249,
		-0.414761, 0.894323, 0.167810,
		33.666901, 34.223083, 45.105972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320763, 33.619038, 44.560822>,  <33.957233, 33.597057, 44.988506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320763, 33.619038, 44.560822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.413857, 33.991901, 44.671757>,  <33.469711, 34.215618, 44.738319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.413857, 33.991901, 44.671757>,  <33.320763, 33.619038, 44.560822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413857, 33.991901, 44.671757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168541, 0.319515, -0.932472,
		-0.957826, 0.170272, 0.231468,
		0.232731, 0.932158, 0.277342,
		33.483677, 34.271549, 44.754959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870850, 33.999725, 44.052219>,  <33.320763, 33.619038, 44.560822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870850, 33.999725, 44.052219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.143074, 34.259380, 44.188133>,  <33.306408, 34.415173, 44.269684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.143074, 34.259380, 44.188133>,  <32.870850, 33.999725, 44.052219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143074, 34.259380, 44.188133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081508, 0.393800, -0.915575,
		-0.728142, 0.650802, 0.215095,
		0.680562, 0.649137, 0.339788,
		33.347244, 34.454121, 44.290070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576366, 34.592052, 43.858391>,  <32.870850, 33.999725, 44.052219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576366, 34.592052, 43.858391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.954048, 34.708534, 43.919949>,  <33.180656, 34.778423, 43.956886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.954048, 34.708534, 43.919949>,  <32.576366, 34.592052, 43.858391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954048, 34.708534, 43.919949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010861, 0.439473, -0.898190,
		-0.329191, 0.849743, 0.411788,
		0.944201, 0.291204, 0.153899,
		33.237309, 34.795895, 43.966118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723335, 35.259556, 43.362446>,  <32.576366, 34.592052, 43.858391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723335, 35.259556, 43.362446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.082905, 35.151825, 43.500668>,  <33.298645, 35.087185, 43.583599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.082905, 35.151825, 43.500668>,  <32.723335, 35.259556, 43.362446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082905, 35.151825, 43.500668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434125, 0.441382, -0.785314,
		0.058990, 0.855946, 0.513690,
		0.898919, -0.269331, 0.345550,
		33.352581, 35.071026, 43.604332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285686, 35.823273, 43.323463>,  <32.723335, 35.259556, 43.362446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285686, 35.823273, 43.323463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.502541, 35.488655, 43.291744>,  <33.632652, 35.287884, 43.272713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.502541, 35.488655, 43.291744>,  <33.285686, 35.823273, 43.323463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502541, 35.488655, 43.291744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058424, 0.131667, -0.989571,
		0.838260, 0.531845, 0.120255,
		0.542132, -0.836543, -0.079299,
		33.665180, 35.237694, 43.267956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948452, 35.910885, 42.932636>,  <33.285686, 35.823273, 43.323463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948452, 35.910885, 42.932636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.866119, 35.521908, 42.888851>,  <33.816719, 35.288521, 42.862579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.866119, 35.521908, 42.888851>,  <33.948452, 35.910885, 42.932636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866119, 35.521908, 42.888851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239772, 0.058329, -0.969075,
		0.948758, -0.225716, 0.221159,
		-0.205836, -0.972445, -0.109461,
		33.804367, 35.230175, 42.856014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559666, 35.583694, 42.575214>,  <33.948452, 35.910885, 42.932636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559666, 35.583694, 42.575214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.259621, 35.327301, 42.510136>,  <34.079594, 35.173466, 42.471088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.259621, 35.327301, 42.510136>,  <34.559666, 35.583694, 42.575214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259621, 35.327301, 42.510136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176830, 0.042652, -0.983317,
		0.637231, -0.766367, 0.081351,
		-0.750112, -0.640986, -0.162696,
		34.034588, 35.135006, 42.461327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820019, 35.076908, 42.143696>,  <34.559666, 35.583694, 42.575214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820019, 35.076908, 42.143696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.431396, 35.014236, 42.072670>,  <34.198223, 34.976631, 42.030056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.431396, 35.014236, 42.072670>,  <34.820019, 35.076908, 42.143696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431396, 35.014236, 42.072670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186212, -0.042261, -0.981600,
		0.146297, -0.986744, 0.070235,
		-0.971556, -0.156684, -0.177561,
		34.139931, 34.967232, 42.019402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796036, 34.539600, 41.652504>,  <34.820019, 35.076908, 42.143696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796036, 34.539600, 41.652504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.442314, 34.721832, 41.611599>,  <34.230083, 34.831173, 41.587055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.442314, 34.721832, 41.611599>,  <34.796036, 34.539600, 41.652504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442314, 34.721832, 41.611599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169871, 0.109907, -0.979318,
		-0.434919, -0.883384, -0.174580,
		-0.884302, 0.455580, -0.102261,
		34.177025, 34.858505, 41.580921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467751, 34.133457, 41.212231>,  <34.796036, 34.539600, 41.652504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467751, 34.133457, 41.212231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.289490, 34.491314, 41.199478>,  <34.182533, 34.706028, 41.191826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.289490, 34.491314, 41.199478>,  <34.467751, 34.133457, 41.212231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289490, 34.491314, 41.199478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075223, 0.001940, -0.997165,
		-0.892040, -0.446787, -0.068162,
		-0.445652, 0.894639, -0.031878,
		34.155792, 34.759705, 41.189915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924564, 34.132172, 40.693127>,  <34.467751, 34.133457, 41.212231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924564, 34.132172, 40.693127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.979511, 34.527317, 40.722103>,  <34.012478, 34.764404, 40.739487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.979511, 34.527317, 40.722103>,  <33.924564, 34.132172, 40.693127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979511, 34.527317, 40.722103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140122, 0.053014, -0.988714,
		-0.980559, 0.145965, -0.131140,
		0.137365, 0.987868, 0.072436,
		34.020721, 34.823677, 40.743835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620861, 34.416489, 40.199692>,  <33.924564, 34.132172, 40.693127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620861, 34.416489, 40.199692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.889168, 34.699829, 40.287613>,  <34.050152, 34.869835, 40.340366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.889168, 34.699829, 40.287613>,  <33.620861, 34.416489, 40.199692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889168, 34.699829, 40.287613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130868, 0.178667, -0.975168,
		-0.730030, 0.682875, 0.027144,
		0.670768, 0.708350, 0.219799,
		34.090397, 34.912334, 40.353554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447578, 34.995415, 39.737171>,  <33.620861, 34.416489, 40.199692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447578, 34.995415, 39.737171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.811733, 35.111641, 39.855000>,  <34.030224, 35.181377, 39.925697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.811733, 35.111641, 39.855000>,  <33.447578, 34.995415, 39.737171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811733, 35.111641, 39.855000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210860, 0.286747, -0.934513,
		-0.356003, 0.912879, 0.199782,
		0.910385, 0.290563, 0.294572,
		34.084850, 35.198811, 39.943371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593922, 35.656788, 39.411129>,  <33.447578, 34.995415, 39.737171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593922, 35.656788, 39.411129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.952576, 35.521141, 39.524998>,  <34.167770, 35.439754, 39.593319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.952576, 35.521141, 39.524998>,  <33.593922, 35.656788, 39.411129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952576, 35.521141, 39.524998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380407, 0.261026, -0.887218,
		0.226563, 0.903806, 0.363048,
		0.896638, -0.339116, 0.284676,
		34.221565, 35.419407, 39.610401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100597, 36.241844, 39.440239>,  <33.593922, 35.656788, 39.411129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100597, 36.241844, 39.440239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.280880, 35.893223, 39.363037>,  <34.389050, 35.684048, 39.316715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.280880, 35.893223, 39.363037>,  <34.100597, 36.241844, 39.440239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280880, 35.893223, 39.363037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432635, 0.402393, -0.806787,
		0.780825, 0.280126, 0.558429,
		0.450710, -0.871556, -0.193006,
		34.416092, 35.631756, 39.305134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814041, 36.428242, 39.227901>,  <34.100597, 36.241844, 39.440239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814041, 36.428242, 39.227901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.767918, 36.055958, 39.089054>,  <34.740242, 35.832588, 39.005745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.767918, 36.055958, 39.089054>,  <34.814041, 36.428242, 39.227901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767918, 36.055958, 39.089054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435575, 0.266682, -0.859741,
		0.892736, -0.250335, 0.374640,
		-0.115313, -0.930706, -0.347116,
		34.733322, 35.776745, 38.984921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389301, 36.379459, 38.836754>,  <34.814041, 36.428242, 39.227901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389301, 36.379459, 38.836754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.186829, 36.069519, 38.685287>,  <35.065346, 35.883556, 38.594406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.186829, 36.069519, 38.685287>,  <35.389301, 36.379459, 38.836754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186829, 36.069519, 38.685287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284003, 0.264823, -0.921526,
		0.814324, -0.574002, 0.086011,
		-0.506180, -0.774849, -0.378670,
		35.034973, 35.837063, 38.571686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796448, 36.728333, 38.319519>,  <35.389301, 36.379459, 38.836754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796448, 36.728333, 38.319519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.092983, 36.977901, 38.220612>,  <36.270905, 37.127644, 38.161266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.092983, 36.977901, 38.220612>,  <35.796448, 36.728333, 38.319519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092983, 36.977901, 38.220612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101594, 0.259864, 0.960286,
		0.663399, -0.737016, 0.129261,
		0.741337, 0.623921, -0.247270,
		36.315384, 37.165077, 38.146431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446579, 36.580177, 38.497246>,  <35.796448, 36.728333, 38.319519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446579, 36.580177, 38.497246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.426220, 36.979652, 38.495308>,  <36.414005, 37.219337, 38.494144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.426220, 36.979652, 38.495308>,  <36.446579, 36.580177, 38.497246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426220, 36.979652, 38.495308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228060, 0.016347, 0.973510,
		0.972316, 0.048439, -0.228593,
		-0.050893, 0.998692, -0.004847,
		36.410954, 37.279259, 38.493855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958420, 36.759315, 38.851044>,  <36.446579, 36.580177, 38.497246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958420, 36.759315, 38.851044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766117, 37.109768, 38.865307>,  <36.650734, 37.320038, 38.873867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766117, 37.109768, 38.865307>,  <36.958420, 36.759315, 38.851044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766117, 37.109768, 38.865307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216681, 0.079293, 0.973017,
		0.849661, 0.475511, -0.227961,
		-0.480756, 0.876129, 0.035662,
		36.621891, 37.372608, 38.876007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401711, 37.190651, 39.181698>,  <36.958420, 36.759315, 38.851044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401711, 37.190651, 39.181698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.045483, 37.366356, 39.228912>,  <36.831745, 37.471779, 39.257240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.045483, 37.366356, 39.228912>,  <37.401711, 37.190651, 39.181698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045483, 37.366356, 39.228912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218019, 0.184502, 0.958346,
		0.399191, 0.879207, -0.260080,
		-0.890569, 0.439266, 0.118032,
		36.778313, 37.498135, 39.264320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526192, 37.731716, 39.571037>,  <37.401711, 37.190651, 39.181698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526192, 37.731716, 39.571037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.127960, 37.726154, 39.608189>,  <36.889023, 37.722816, 39.630482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.127960, 37.726154, 39.608189>,  <37.526192, 37.731716, 39.571037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127960, 37.726154, 39.608189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088389, 0.195521, 0.976708,
		-0.031737, 0.980601, -0.193428,
		-0.995580, -0.013901, 0.092880,
		36.829285, 37.721985, 39.636051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362492, 38.296761, 40.056293>,  <37.526192, 37.731716, 39.571037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362492, 38.296761, 40.056293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.043514, 38.055515, 40.063652>,  <36.852127, 37.910770, 40.068069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.043514, 38.055515, 40.063652>,  <37.362492, 38.296761, 40.056293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043514, 38.055515, 40.063652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052727, 0.100028, 0.993587,
		-0.601083, 0.791361, -0.111567,
		-0.797445, -0.603111, 0.018399,
		36.804279, 37.874580, 40.069172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926617, 38.699738, 40.347134>,  <37.362492, 38.296761, 40.056293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926617, 38.699738, 40.347134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.822483, 38.315533, 40.386410>,  <36.760002, 38.085011, 40.409977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.822483, 38.315533, 40.386410>,  <36.926617, 38.699738, 40.347134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822483, 38.315533, 40.386410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122350, 0.133693, 0.983441,
		-0.957736, 0.244007, -0.152323,
		-0.260331, -0.960514, 0.098189,
		36.744385, 38.027378, 40.415867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420235, 38.732643, 40.884457>,  <36.926617, 38.699738, 40.347134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420235, 38.732643, 40.884457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.495998, 38.339890, 40.886341>,  <36.541458, 38.104237, 40.887470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.495998, 38.339890, 40.886341>,  <36.420235, 38.732643, 40.884457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495998, 38.339890, 40.886341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015254, 0.007738, 0.999854,
		-0.981780, -0.189311, 0.016443,
		0.189410, -0.981887, 0.004709,
		36.552822, 38.045322, 40.887753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971001, 38.455372, 41.320557>,  <36.420235, 38.732643, 40.884457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971001, 38.455372, 41.320557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.270535, 38.192642, 41.285175>,  <36.450256, 38.035004, 41.263947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.270535, 38.192642, 41.285175>,  <35.971001, 38.455372, 41.320557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270535, 38.192642, 41.285175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105173, -0.249538, 0.962636,
		-0.654358, -0.711553, -0.255944,
		0.748835, -0.656827, -0.088451,
		36.495186, 37.995594, 41.258640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697506, 37.893532, 41.515747>,  <35.971001, 38.455372, 41.320557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697506, 37.893532, 41.515747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.091061, 37.842705, 41.566044>,  <36.327194, 37.812210, 41.596222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.091061, 37.842705, 41.566044>,  <35.697506, 37.893532, 41.515747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091061, 37.842705, 41.566044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153273, -0.237608, 0.959192,
		-0.092004, -0.963014, -0.253256,
		0.983891, -0.127066, 0.125744,
		36.386227, 37.804585, 41.603767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835907, 37.188446, 41.801376>,  <35.697506, 37.893532, 41.515747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835907, 37.188446, 41.801376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.169914, 37.393482, 41.881371>,  <36.370319, 37.516502, 41.929367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.169914, 37.393482, 41.881371>,  <35.835907, 37.188446, 41.801376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169914, 37.393482, 41.881371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044953, -0.425810, 0.903696,
		0.548384, -0.745611, -0.378601,
		0.835018, 0.512591, 0.199990,
		36.420418, 37.547260, 41.941368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355171, 36.703861, 42.015049>,  <35.835907, 37.188446, 41.801376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355171, 36.703861, 42.015049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.454010, 37.065765, 42.153816>,  <36.513313, 37.282909, 42.237076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.454010, 37.065765, 42.153816>,  <36.355171, 36.703861, 42.015049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454010, 37.065765, 42.153816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056226, -0.344031, 0.937273,
		0.967358, -0.251103, -0.034137,
		0.247096, 0.904760, 0.346920,
		36.528137, 37.337193, 42.257893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679298, 36.467525, 42.567875>,  <36.355171, 36.703861, 42.015049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679298, 36.467525, 42.567875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.605400, 36.855427, 42.631691>,  <36.561062, 37.088165, 42.669983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.605400, 36.855427, 42.631691>,  <36.679298, 36.467525, 42.567875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605400, 36.855427, 42.631691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134310, -0.185728, 0.973379,
		0.973565, 0.158403, 0.164560,
		-0.184749, 0.969749, 0.159543,
		36.549976, 37.146351, 42.679554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105705, 36.740200, 43.197315>,  <36.679298, 36.467525, 42.567875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105705, 36.740200, 43.197315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801697, 36.999443, 43.178013>,  <36.619293, 37.154987, 43.166431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.801697, 36.999443, 43.178013>,  <37.105705, 36.740200, 43.197315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801697, 36.999443, 43.178013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100541, -0.043901, 0.993964,
		0.642075, 0.760284, 0.098527,
		-0.760021, 0.648105, -0.048252,
		36.573692, 37.193874, 43.163536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135796, 37.135574, 43.878040>,  <37.105705, 36.740200, 43.197315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135796, 37.135574, 43.878040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.765808, 37.161407, 43.728230>,  <36.543816, 37.176907, 43.638344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.765808, 37.161407, 43.728230>,  <37.135796, 37.135574, 43.878040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765808, 37.161407, 43.728230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377028, -0.280009, 0.882861,
		-0.047855, 0.957823, 0.283347,
		-0.924965, 0.064580, -0.374526,
		36.488319, 37.180782, 43.615871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894077, 37.470425, 44.405655>,  <37.135796, 37.135574, 43.878040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894077, 37.470425, 44.405655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.570011, 37.335930, 44.213581>,  <36.375572, 37.255234, 44.098335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.570011, 37.335930, 44.213581>,  <36.894077, 37.470425, 44.405655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570011, 37.335930, 44.213581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354658, -0.371076, 0.858208,
		-0.466746, 0.865591, 0.181383,
		-0.810164, -0.336236, -0.480187,
		36.326962, 37.235058, 44.069527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355522, 37.731823, 44.752079>,  <36.894077, 37.470425, 44.405655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355522, 37.731823, 44.752079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165413, 37.424484, 44.580608>,  <36.051346, 37.240082, 44.477726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165413, 37.424484, 44.580608>,  <36.355522, 37.731823, 44.752079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165413, 37.424484, 44.580608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327357, -0.297815, 0.896741,
		-0.816672, 0.566525, -0.109980,
		-0.475272, -0.768346, -0.428673,
		36.022831, 37.193981, 44.452007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609478, 37.682087, 45.041332>,  <36.355522, 37.731823, 44.752079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609478, 37.682087, 45.041332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.688248, 37.317581, 44.896660>,  <35.735508, 37.098877, 44.809856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.688248, 37.317581, 44.896660>,  <35.609478, 37.682087, 45.041332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688248, 37.317581, 44.896660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261793, -0.404385, 0.876321,
		-0.944821, -0.077882, -0.318196,
		0.196923, -0.911267, -0.361682,
		35.747326, 37.044201, 44.788155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054085, 37.242229, 45.175659>,  <35.609478, 37.682087, 45.041332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054085, 37.242229, 45.175659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.355396, 36.989227, 45.103542>,  <35.536182, 36.837425, 45.060272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.355396, 36.989227, 45.103542>,  <35.054085, 37.242229, 45.175659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355396, 36.989227, 45.103542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382707, -0.644473, 0.661959,
		-0.534889, -0.429639, -0.727533,
		0.753279, -0.632507, -0.180295,
		35.581379, 36.799477, 45.049454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.734409, 36.580139, 45.032227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.104721, 36.525272, 45.173153>,  <35.326908, 36.492352, 45.257710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.104721, 36.525272, 45.173153>,  <34.734409, 36.580139, 45.032227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104721, 36.525272, 45.173153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373543, -0.475670, 0.796369,
		0.058349, -0.868863, -0.491602,
		0.925776, -0.137167, 0.352313,
		35.382454, 36.484123, 45.278847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720467, 35.920700, 45.342224>,  <34.734409, 36.580139, 45.032227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720467, 35.920700, 45.342224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.058777, 36.082600, 45.481274>,  <35.261765, 36.179741, 45.564705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.058777, 36.082600, 45.481274>,  <34.720467, 35.920700, 45.342224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058777, 36.082600, 45.481274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138836, -0.462144, 0.875869,
		0.515160, -0.789051, -0.334676,
		0.845774, 0.404748, 0.347627,
		35.312508, 36.204025, 45.585564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979858, 35.471653, 45.684776>,  <34.720467, 35.920700, 45.342224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979858, 35.471653, 45.684776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.149685, 35.806446, 45.822880>,  <35.251579, 36.007324, 45.905743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.149685, 35.806446, 45.822880>,  <34.979858, 35.471653, 45.684776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149685, 35.806446, 45.822880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049695, -0.359212, 0.931932,
		0.904034, -0.412821, -0.110915,
		0.424562, 0.836986, 0.345255,
		35.277054, 36.057541, 45.926456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491589, 35.270180, 46.074657>,  <34.979858, 35.471653, 45.684776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491589, 35.270180, 46.074657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447540, 35.637154, 46.227592>,  <35.421112, 35.857338, 46.319351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447540, 35.637154, 46.227592>,  <35.491589, 35.270180, 46.074657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447540, 35.637154, 46.227592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192415, -0.357719, 0.913791,
		0.975115, 0.174196, -0.137136,
		-0.110123, 0.917438, 0.382335,
		35.414505, 35.912384, 46.342293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005672, 35.291267, 46.458866>,  <35.491589, 35.270180, 46.074657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005672, 35.291267, 46.458866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.756519, 35.567165, 46.606525>,  <35.607029, 35.732704, 46.695122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.756519, 35.567165, 46.606525>,  <36.005672, 35.291267, 46.458866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756519, 35.567165, 46.606525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189275, -0.324984, 0.926585,
		0.759072, 0.647026, 0.071876,
		-0.622883, 0.689741, 0.369153,
		35.569653, 35.774086, 46.717270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308144, 35.364410, 47.057690>,  <36.005672, 35.291267, 46.458866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308144, 35.364410, 47.057690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.957047, 35.553894, 47.086452>,  <35.746387, 35.667583, 47.103710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.957047, 35.553894, 47.086452>,  <36.308144, 35.364410, 47.057690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957047, 35.553894, 47.086452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061508, -0.260236, 0.963584,
		0.475171, 0.841354, 0.257556,
		-0.877741, 0.473709, 0.071907,
		35.693726, 35.696007, 47.108025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452255, 35.776890, 47.625992>,  <36.308144, 35.364410, 47.057690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452255, 35.776890, 47.625992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.054123, 35.756802, 47.593018>,  <35.815243, 35.744751, 47.573231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.054123, 35.756802, 47.593018>,  <36.452255, 35.776890, 47.625992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054123, 35.756802, 47.593018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072629, -0.172942, 0.982251,
		-0.063582, 0.983651, 0.168487,
		-0.995330, -0.050216, -0.082438,
		35.755524, 35.741737, 47.568287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097370, 36.347664, 47.944942>,  <36.452255, 35.776890, 47.625992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097370, 36.347664, 47.944942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851650, 36.032162, 47.935986>,  <35.704216, 35.842861, 47.930611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851650, 36.032162, 47.935986>,  <36.097370, 36.347664, 47.944942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851650, 36.032162, 47.935986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039883, 0.002693, 0.999201,
		-0.788061, 0.614706, -0.033112,
		-0.614304, -0.788752, -0.022394,
		35.667358, 35.795536, 47.929268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618984, 36.387569, 48.525688>,  <36.097370, 36.347664, 47.944942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618984, 36.387569, 48.525688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.596550, 35.997883, 48.438271>,  <35.583088, 35.764072, 48.385822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.596550, 35.997883, 48.438271>,  <35.618984, 36.387569, 48.525688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596550, 35.997883, 48.438271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174677, -0.225084, 0.958554,
		-0.983027, 0.015590, 0.182797,
		-0.056089, -0.974215, -0.218540,
		35.579723, 35.705620, 48.372707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164768, 36.060802, 49.021908>,  <35.618984, 36.387569, 48.525688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164768, 36.060802, 49.021908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375187, 35.759949, 48.863129>,  <35.501438, 35.579437, 48.767860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375187, 35.759949, 48.863129>,  <35.164768, 36.060802, 49.021908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375187, 35.759949, 48.863129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117930, -0.397721, 0.909896,
		-0.842239, -0.525460, -0.120521,
		0.526048, -0.752136, -0.396944,
		35.533001, 35.534309, 48.744045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813892, 35.522007, 49.270126>,  <35.164768, 36.060802, 49.021908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813892, 35.522007, 49.270126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.187862, 35.427994, 49.163788>,  <35.412243, 35.371586, 49.099983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.187862, 35.427994, 49.163788>,  <34.813892, 35.522007, 49.270126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187862, 35.427994, 49.163788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100736, -0.542567, 0.833950,
		-0.340249, -0.806461, -0.483582,
		0.934924, -0.235036, -0.265848,
		35.468338, 35.357483, 49.084034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919193, 34.854496, 49.665089>,  <34.813892, 35.522007, 49.270126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919193, 34.854496, 49.665089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.292221, 34.955788, 49.562183>,  <35.516037, 35.016563, 49.500443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.292221, 34.955788, 49.562183>,  <34.919193, 34.854496, 49.665089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292221, 34.955788, 49.562183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357231, -0.544950, 0.758561,
		0.051894, -0.799315, -0.598667,
		0.932573, 0.253227, -0.257260,
		35.571995, 35.031757, 49.485004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360970, 34.230160, 49.698242>,  <34.919193, 34.854496, 49.665089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360970, 34.230160, 49.698242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.619232, 34.535042, 49.716923>,  <35.774189, 34.717972, 49.728130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.619232, 34.535042, 49.716923>,  <35.360970, 34.230160, 49.698242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619232, 34.535042, 49.716923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557401, -0.512206, 0.653413,
		0.521955, -0.395846, -0.755559,
		0.645653, 0.762202, 0.046703,
		35.812927, 34.763702, 49.730934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080929, 33.926453, 49.622234>,  <35.360970, 34.230160, 49.698242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080929, 33.926453, 49.622234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.120728, 34.286201, 49.792515>,  <36.144608, 34.502052, 49.894684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.120728, 34.286201, 49.792515>,  <36.080929, 33.926453, 49.622234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120728, 34.286201, 49.792515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523841, -0.411087, 0.746055,
		0.845985, 0.148768, -0.512033,
		0.099501, 0.899375, 0.425704,
		36.150578, 34.556015, 49.920227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755692, 33.906456, 49.768970>,  <36.080929, 33.926453, 49.622234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755692, 33.906456, 49.768970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.582935, 34.197552, 49.982086>,  <36.479282, 34.372211, 50.109955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.582935, 34.197552, 49.982086>,  <36.755692, 33.906456, 49.768970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582935, 34.197552, 49.982086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499250, -0.299070, 0.813208,
		0.751147, 0.617209, -0.234161,
		-0.431889, 0.727744, 0.532787,
		36.453369, 34.415874, 50.141922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357376, 34.208027, 50.087429>,  <36.755692, 33.906456, 49.768970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357376, 34.208027, 50.087429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.033134, 34.274105, 50.312157>,  <36.838589, 34.313751, 50.446991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.033134, 34.274105, 50.312157>,  <37.357376, 34.208027, 50.087429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033134, 34.274105, 50.312157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409188, -0.526524, 0.745209,
		0.418917, 0.833955, 0.359203,
		-0.810601, 0.165199, 0.561815,
		36.789955, 34.323666, 50.480701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593727, 34.335804, 50.862583>,  <37.357376, 34.208027, 50.087429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593727, 34.335804, 50.862583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.206356, 34.261318, 50.928871>,  <36.973934, 34.216625, 50.968643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.206356, 34.261318, 50.928871>,  <37.593727, 34.335804, 50.862583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206356, 34.261318, 50.928871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235730, -0.467913, 0.851756,
		-0.081065, 0.863934, 0.497038,
		-0.968432, -0.186215, 0.165724,
		36.915825, 34.205452, 50.978588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474941, 34.446873, 51.598400>,  <37.593727, 34.335804, 50.862583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474941, 34.446873, 51.598400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.169273, 34.214668, 51.485943>,  <36.985870, 34.075344, 51.418468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.169273, 34.214668, 51.485943>,  <37.474941, 34.446873, 51.598400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169273, 34.214668, 51.485943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114020, -0.307434, 0.944713,
		-0.634853, 0.753981, 0.168743,
		-0.764174, -0.580514, -0.281145,
		36.940022, 34.040516, 51.401600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906406, 34.588070, 52.083313>,  <37.474941, 34.446873, 51.598400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906406, 34.588070, 52.083313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.842224, 34.230938, 51.914974>,  <36.803715, 34.016659, 51.813969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.842224, 34.230938, 51.914974>,  <36.906406, 34.588070, 52.083313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842224, 34.230938, 51.914974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137924, -0.401911, 0.905232,
		-0.977360, 0.203292, -0.058655,
		-0.160452, -0.892827, -0.420850,
		36.794090, 33.963089, 51.788719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366734, 34.326607, 52.440247>,  <36.906406, 34.588070, 52.083313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366734, 34.326607, 52.440247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.557587, 34.020500, 52.267406>,  <36.672096, 33.836834, 52.163704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.557587, 34.020500, 52.267406>,  <36.366734, 34.326607, 52.440247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557587, 34.020500, 52.267406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092771, -0.532783, 0.841152,
		-0.873922, -0.361253, -0.325202,
		0.477131, -0.765270, -0.432097,
		36.700726, 33.790920, 52.137775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114052, 33.766384, 52.729321>,  <36.366734, 34.326607, 52.440247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114052, 33.766384, 52.729321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.449905, 33.610126, 52.578373>,  <36.651417, 33.516373, 52.487804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.449905, 33.610126, 52.578373>,  <36.114052, 33.766384, 52.729321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449905, 33.610126, 52.578373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087068, -0.588995, 0.803433,
		-0.536119, -0.707451, -0.460532,
		0.839640, -0.390638, -0.377368,
		36.701797, 33.492935, 52.465160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055069, 33.075886, 52.940907>,  <36.114052, 33.766384, 52.729321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055069, 33.075886, 52.940907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.444527, 33.133606, 52.870247>,  <36.678200, 33.168236, 52.827850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.444527, 33.133606, 52.870247>,  <36.055069, 33.075886, 52.940907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444527, 33.133606, 52.870247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226493, -0.703138, 0.674016,
		-0.026947, -0.696258, -0.717286,
		0.973640, 0.144297, -0.176645,
		36.736618, 33.176895, 52.817253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400024, 32.435379, 52.819836>,  <36.055069, 33.075886, 52.940907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400024, 32.435379, 52.819836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691902, 32.678249, 52.945618>,  <36.867031, 32.823971, 53.021088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691902, 32.678249, 52.945618>,  <36.400024, 32.435379, 52.819836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691902, 32.678249, 52.945618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259136, -0.671144, 0.694561,
		0.632766, -0.425331, -0.647071,
		0.729696, 0.607173, 0.314459,
		36.910812, 32.860401, 53.039955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037502, 32.041595, 52.666828>,  <36.400024, 32.435379, 52.819836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037502, 32.041595, 52.666828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.055553, 32.305691, 52.966709>,  <37.066383, 32.464149, 53.146637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.055553, 32.305691, 52.966709>,  <37.037502, 32.041595, 52.666828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055553, 32.305691, 52.966709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059323, -0.750910, 0.657735,
		0.997218, 0.014791, -0.073055,
		0.045129, 0.660239, 0.749698,
		37.069092, 32.503761, 53.191620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450104, 31.762287, 53.142628>,  <37.037502, 32.041595, 52.666828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450104, 31.762287, 53.142628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.098732, 31.607336, 53.254562>,  <35.887909, 31.514366, 53.321724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.098732, 31.607336, 53.254562>,  <36.450104, 31.762287, 53.142628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098732, 31.607336, 53.254562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392347, 0.250305, -0.885105,
		0.272833, -0.887288, -0.371863,
		-0.878422, -0.387386, 0.279833,
		35.835205, 31.491123, 53.338512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240463, 31.250233, 52.577351>,  <36.450104, 31.762287, 53.142628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240463, 31.250233, 52.577351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.916874, 31.355614, 52.787552>,  <35.722721, 31.418842, 52.913673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.916874, 31.355614, 52.787552>,  <36.240463, 31.250233, 52.577351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916874, 31.355614, 52.787552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552422, -0.035065, -0.832827,
		-0.200985, -0.964034, 0.173905,
		-0.808972, 0.263455, 0.525506,
		35.674183, 31.434650, 52.945206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862118, 30.885437, 52.179363>,  <36.240463, 31.250233, 52.577351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862118, 30.885437, 52.179363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.589138, 31.094643, 52.383606>,  <35.425350, 31.220167, 52.506149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.589138, 31.094643, 52.383606>,  <35.862118, 30.885437, 52.179363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589138, 31.094643, 52.383606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453539, 0.244820, -0.856951,
		-0.573205, -0.816405, 0.070130,
		-0.682450, 0.523015, 0.510604,
		35.384403, 31.251547, 52.536789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220268, 30.633457, 52.016850>,  <35.862118, 30.885437, 52.179363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220268, 30.633457, 52.016850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173607, 31.015182, 52.126884>,  <35.145611, 31.244219, 52.192905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173607, 31.015182, 52.126884>,  <35.220268, 30.633457, 52.016850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173607, 31.015182, 52.126884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494390, 0.184430, -0.849450,
		-0.861378, -0.235090, 0.450290,
		-0.116651, 0.954316, 0.275090,
		35.138611, 31.301477, 52.209412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566689, 30.862532, 51.812572>,  <35.220268, 30.633457, 52.016850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566689, 30.862532, 51.812572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.752468, 31.216007, 51.835827>,  <34.863937, 31.428093, 51.849781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.752468, 31.216007, 51.835827>,  <34.566689, 30.862532, 51.812572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752468, 31.216007, 51.835827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517676, 0.324172, -0.791786,
		-0.718540, 0.337646, 0.608026,
		0.464448, 0.883690, 0.058140,
		34.891804, 31.481113, 51.853268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065491, 31.254665, 51.606247>,  <34.566689, 30.862532, 51.812572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065491, 31.254665, 51.606247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.371082, 31.512499, 51.594627>,  <34.554436, 31.667200, 51.587658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.371082, 31.512499, 51.594627>,  <34.065491, 31.254665, 51.606247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371082, 31.512499, 51.594627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402618, 0.441049, -0.802106,
		-0.504215, 0.624488, 0.596474,
		0.763980, 0.644585, -0.029046,
		34.600277, 31.705875, 51.585915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777920, 31.913843, 51.467926>,  <34.065491, 31.254665, 51.606247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777920, 31.913843, 51.467926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.161728, 31.956539, 51.363674>,  <34.392014, 31.982157, 51.301125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.161728, 31.956539, 51.363674>,  <33.777920, 31.913843, 51.467926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161728, 31.956539, 51.363674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279286, 0.480011, -0.831618,
		0.036337, 0.870745, 0.490391,
		0.959520, 0.106740, -0.260629,
		34.449585, 31.988562, 51.285484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920856, 32.652042, 51.272480>,  <33.777920, 31.913843, 51.467926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920856, 32.652042, 51.272480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.211468, 32.425278, 51.117165>,  <34.385834, 32.289219, 51.023975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.211468, 32.425278, 51.117165>,  <33.920856, 32.652042, 51.272480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211468, 32.425278, 51.117165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114054, 0.457748, -0.881736,
		0.677600, 0.684896, 0.267911,
		0.726533, -0.566908, -0.388285,
		34.429428, 32.255207, 51.000679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338337, 33.052956, 50.908302>,  <33.920856, 32.652042, 51.272480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338337, 33.052956, 50.908302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400867, 32.686600, 50.760410>,  <34.438385, 32.466785, 50.671673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400867, 32.686600, 50.760410>,  <34.338337, 33.052956, 50.908302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400867, 32.686600, 50.760410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023780, 0.377718, -0.925615,
		0.987419, 0.135909, 0.080829,
		0.156330, -0.915892, -0.369734,
		34.447765, 32.411831, 50.649490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881058, 33.114269, 50.469196>,  <34.338337, 33.052956, 50.908302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881058, 33.114269, 50.469196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.703602, 32.777382, 50.346657>,  <34.597130, 32.575249, 50.273132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.703602, 32.777382, 50.346657>,  <34.881058, 33.114269, 50.469196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703602, 32.777382, 50.346657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006785, 0.338662, -0.940884,
		0.896179, -0.419493, -0.144530,
		-0.443641, -0.842219, -0.306348,
		34.570511, 32.524715, 50.254753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183605, 32.952442, 49.888454>,  <34.881058, 33.114269, 50.469196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183605, 32.952442, 49.888454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.841419, 32.746502, 49.866161>,  <34.636108, 32.622936, 49.852787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.841419, 32.746502, 49.866161>,  <35.183605, 32.952442, 49.888454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841419, 32.746502, 49.866161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134140, 0.324249, -0.936413,
		0.500189, -0.793591, -0.346445,
		-0.855464, -0.514855, -0.055734,
		34.584782, 32.592045, 49.849442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221279, 32.524940, 49.338963>,  <35.183605, 32.952442, 49.888454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221279, 32.524940, 49.338963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.832809, 32.592518, 49.406231>,  <34.599728, 32.633064, 49.446590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.832809, 32.592518, 49.406231>,  <35.221279, 32.524940, 49.338963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832809, 32.592518, 49.406231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127748, 0.226750, -0.965539,
		-0.201254, -0.959189, -0.198631,
		-0.971173, 0.168944, 0.168169,
		34.541458, 32.643200, 49.456680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967041, 32.365921, 48.756889>,  <35.221279, 32.524940, 49.338963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967041, 32.365921, 48.756889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.671417, 32.569023, 48.933964>,  <34.494045, 32.690884, 49.040211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.671417, 32.569023, 48.933964>,  <34.967041, 32.365921, 48.756889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671417, 32.569023, 48.933964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287393, 0.356694, -0.888918,
		-0.609262, -0.784187, -0.117691,
		-0.739057, 0.507760, 0.442690,
		34.449699, 32.721352, 49.066772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365734, 32.288338, 48.326420>,  <34.967041, 32.365921, 48.756889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365734, 32.288338, 48.326420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.293678, 32.618725, 48.540081>,  <34.250443, 32.816959, 48.668278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.293678, 32.618725, 48.540081>,  <34.365734, 32.288338, 48.326420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293678, 32.618725, 48.540081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335680, 0.458818, -0.822681,
		-0.924591, -0.327505, 0.194610,
		-0.180142, 0.825970, 0.534156,
		34.239635, 32.866516, 48.700329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827156, 32.500221, 48.215813>,  <34.365734, 32.288338, 48.326420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827156, 32.500221, 48.215813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.939545, 32.864071, 48.338219>,  <34.006977, 33.082378, 48.411663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.939545, 32.864071, 48.338219>,  <33.827156, 32.500221, 48.215813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939545, 32.864071, 48.338219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427835, 0.404137, -0.808474,
		-0.859076, 0.096235, 0.502719,
		0.280971, 0.909622, 0.306012,
		34.023834, 33.136959, 48.430023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331966, 32.899265, 48.148956>,  <33.827156, 32.500221, 48.215813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331966, 32.899265, 48.148956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.627285, 33.168423, 48.167400>,  <33.804478, 33.329918, 48.178467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.627285, 33.168423, 48.167400>,  <33.331966, 32.899265, 48.148956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627285, 33.168423, 48.167400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428215, 0.520458, -0.738752,
		-0.521104, 0.525672, 0.672398,
		0.738297, 0.672898, 0.046112,
		33.848774, 33.370293, 48.181232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036247, 33.486771, 48.046066>,  <33.331966, 32.899265, 48.148956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036247, 33.486771, 48.046066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.413937, 33.589062, 47.963070>,  <33.640549, 33.650436, 47.913273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.413937, 33.589062, 47.963070>,  <33.036247, 33.486771, 48.046066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413937, 33.589062, 47.963070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307746, 0.460903, -0.832382,
		-0.117225, 0.849808, 0.513892,
		0.944220, 0.255724, -0.207496,
		33.697201, 33.665779, 47.900822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059875, 34.202942, 47.863853>,  <33.036247, 33.486771, 48.046066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059875, 34.202942, 47.863853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.398525, 34.062111, 47.704216>,  <33.601715, 33.977612, 47.608433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.398525, 34.062111, 47.704216>,  <33.059875, 34.202942, 47.863853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398525, 34.062111, 47.704216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192803, 0.496045, -0.846621,
		0.496045, 0.793712, 0.352080,
		0.846621, -0.352080, -0.399091,
		33.652512, 33.956486, 47.584488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229122, 34.804100, 47.480679>,  <33.059875, 34.202942, 47.863853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229122, 34.804100, 47.480679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.440434, 34.500549, 47.328350>,  <33.567219, 34.318417, 47.236954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.440434, 34.500549, 47.328350>,  <33.229122, 34.804100, 47.480679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440434, 34.500549, 47.328350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011972, 0.441814, -0.897027,
		0.848989, 0.478435, 0.224313,
		0.528274, -0.758881, -0.380823,
		33.598915, 34.272884, 47.214104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683182, 35.109272, 46.946232>,  <33.229122, 34.804100, 47.480679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683182, 35.109272, 46.946232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.681129, 34.718037, 46.862976>,  <33.679897, 34.483295, 46.813023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.681129, 34.718037, 46.862976>,  <33.683182, 35.109272, 46.946232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681129, 34.718037, 46.862976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027261, 0.208204, -0.977705,
		0.999615, 0.000654, -0.027733,
		-0.005134, -0.978085, -0.208142,
		33.679588, 34.424610, 46.800533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.096561, 38.895031, 43.126602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.712280, 39.002411, 43.154846>,  <41.481712, 39.066837, 43.171791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.712280, 39.002411, 43.154846>,  <42.096561, 38.895031, 43.126602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712280, 39.002411, 43.154846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189218, -0.447229, -0.874175,
		-0.203095, -0.853183, 0.480450,
		-0.960702, 0.268450, 0.070607,
		41.424068, 39.082947, 43.176029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687347, 38.300331, 42.979488>,  <42.096561, 38.895031, 43.126602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687347, 38.300331, 42.979488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.508625, 38.628468, 42.836716>,  <41.401394, 38.825352, 42.751053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.508625, 38.628468, 42.836716>,  <41.687347, 38.300331, 42.979488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508625, 38.628468, 42.836716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079404, -0.433764, -0.897521,
		-0.891102, -0.372673, 0.258946,
		-0.446803, 0.820344, -0.356936,
		41.374584, 38.874569, 42.729633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957741, 38.301460, 42.840000>,  <41.687347, 38.300331, 42.979488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957741, 38.301460, 42.840000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.040981, 38.606411, 42.594894>,  <41.090923, 38.789383, 42.447830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.040981, 38.606411, 42.594894>,  <40.957741, 38.301460, 42.840000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040981, 38.606411, 42.594894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193736, -0.581936, -0.789820,
		-0.958729, 0.283075, 0.026599,
		0.208099, 0.762377, -0.612761,
		41.103413, 38.835125, 42.411068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393402, 38.360794, 42.300587>,  <40.957741, 38.301460, 42.840000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393402, 38.360794, 42.300587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.726940, 38.525341, 42.153358>,  <40.927063, 38.624069, 42.065022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.726940, 38.525341, 42.153358>,  <40.393402, 38.360794, 42.300587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726940, 38.525341, 42.153358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057790, -0.598077, -0.799353,
		-0.548959, 0.687810, -0.474933,
		0.833849, 0.411365, -0.368068,
		40.977097, 38.648750, 42.042938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230289, 38.507946, 41.681973>,  <40.393402, 38.360794, 42.300587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230289, 38.507946, 41.681973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.627724, 38.533318, 41.644524>,  <40.866184, 38.548542, 41.622055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.627724, 38.533318, 41.644524>,  <40.230289, 38.507946, 41.681973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627724, 38.533318, 41.644524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055178, -0.450741, -0.890948,
		-0.098713, 0.890398, -0.444350,
		0.993585, 0.063429, -0.093625,
		40.925800, 38.552345, 41.616436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341988, 38.722660, 41.027767>,  <40.230289, 38.507946, 41.681973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341988, 38.722660, 41.027767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.688835, 38.568077, 41.153465>,  <40.896946, 38.475327, 41.228886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.688835, 38.568077, 41.153465>,  <40.341988, 38.722660, 41.027767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688835, 38.568077, 41.153465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064690, -0.538170, -0.840350,
		0.493878, 0.749014, -0.441659,
		0.867122, -0.386459, 0.314244,
		40.948971, 38.452141, 41.247738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918392, 38.882465, 40.534695>,  <40.341988, 38.722660, 41.027767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918392, 38.882465, 40.534695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.040688, 38.577499, 40.762814>,  <41.114063, 38.394520, 40.899685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.040688, 38.577499, 40.762814>,  <40.918392, 38.882465, 40.534695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040688, 38.577499, 40.762814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182822, -0.540826, -0.821026,
		0.934399, 0.355282, -0.025964,
		0.305738, -0.762419, 0.570300,
		41.132408, 38.348774, 40.933903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477882, 38.829201, 40.284531>,  <40.918392, 38.882465, 40.534695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477882, 38.829201, 40.284531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.384094, 38.480240, 40.456081>,  <41.327824, 38.270863, 40.559013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.384094, 38.480240, 40.456081>,  <41.477882, 38.829201, 40.284531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384094, 38.480240, 40.456081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417303, -0.488786, -0.766125,
		0.878000, -0.000658, 0.478660,
		-0.234466, -0.872404, 0.428879,
		41.313755, 38.218517, 40.584743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888729, 38.434982, 40.024281>,  <41.477882, 38.829201, 40.284531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888729, 38.434982, 40.024281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.643429, 38.147205, 40.154713>,  <41.496246, 37.974541, 40.232971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.643429, 38.147205, 40.154713>,  <41.888729, 38.434982, 40.024281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643429, 38.147205, 40.154713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312942, -0.600329, -0.735984,
		0.725250, -0.349302, 0.593297,
		-0.613254, -0.719440, 0.326077,
		41.459454, 37.931374, 40.252537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275169, 37.865360, 40.115562>,  <41.888729, 38.434982, 40.024281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275169, 37.865360, 40.115562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.899189, 37.742191, 40.056660>,  <41.673603, 37.668289, 40.021320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.899189, 37.742191, 40.056660>,  <42.275169, 37.865360, 40.115562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.899189, 37.742191, 40.056660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337929, -0.778850, -0.528392,
		0.048015, -0.546421, 0.836133,
		-0.939946, -0.307924, -0.147255,
		41.617207, 37.649815, 40.012482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342957, 37.254551, 40.161728>,  <42.275169, 37.865360, 40.115562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342957, 37.254551, 40.161728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.986759, 37.268845, 39.980289>,  <41.773041, 37.277420, 39.871426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.986759, 37.268845, 39.980289>,  <42.342957, 37.254551, 40.161728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986759, 37.268845, 39.980289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255913, -0.784949, -0.564237,
		-0.376215, -0.618529, 0.689844,
		-0.890489, 0.035735, -0.453599,
		41.719612, 37.279564, 39.844212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191738, 36.552895, 40.006283>,  <42.342957, 37.254551, 40.161728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191738, 36.552895, 40.006283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.939213, 36.759407, 39.774803>,  <41.787697, 36.883316, 39.635914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.939213, 36.759407, 39.774803>,  <42.191738, 36.552895, 40.006283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939213, 36.759407, 39.774803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030021, -0.729377, -0.683453,
		-0.774946, -0.448847, 0.444966,
		-0.631314, 0.516280, -0.578703,
		41.749817, 36.914291, 39.601192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745579, 36.003132, 39.786232>,  <42.191738, 36.552895, 40.006283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745579, 36.003132, 39.786232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719601, 36.303074, 39.522869>,  <41.704014, 36.483040, 39.364853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.719601, 36.303074, 39.522869>,  <41.745579, 36.003132, 39.786232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719601, 36.303074, 39.522869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147873, -0.645281, -0.749497,
		-0.986872, -0.146039, -0.068974,
		-0.064948, 0.749857, -0.658404,
		41.700115, 36.528030, 39.325348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.421291, 35.635307, 39.172588>,  <41.745579, 36.003132, 39.786232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.421291, 35.635307, 39.172588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.550102, 35.987923, 39.034489>,  <41.627388, 36.199490, 38.951630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.550102, 35.987923, 39.034489>,  <41.421291, 35.635307, 39.172588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550102, 35.987923, 39.034489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213590, -0.422920, -0.880635,
		-0.922321, 0.209851, -0.324480,
		0.322031, 0.881534, -0.345246,
		41.646713, 36.252384, 38.930916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170650, 35.692410, 38.490746>,  <41.421291, 35.635307, 39.172588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170650, 35.692410, 38.490746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.472034, 35.955379, 38.494678>,  <41.652863, 36.113159, 38.497040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.472034, 35.955379, 38.494678>,  <41.170650, 35.692410, 38.490746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472034, 35.955379, 38.494678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366371, -0.407379, -0.836549,
		-0.545961, 0.633907, -0.547804,
		0.753458, 0.657423, 0.009832,
		41.698071, 36.152607, 38.497627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149178, 36.011261, 37.798302>,  <41.170650, 35.692410, 38.490746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149178, 36.011261, 37.798302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.518875, 36.042648, 37.947762>,  <41.740696, 36.061481, 38.037437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.518875, 36.042648, 37.947762>,  <41.149178, 36.011261, 37.798302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518875, 36.042648, 37.947762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366598, -0.455766, -0.811100,
		0.106651, 0.886634, -0.450006,
		0.924247, 0.078466, 0.373646,
		41.796150, 36.066189, 38.059856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562122, 36.238426, 37.244171>,  <41.149178, 36.011261, 37.798302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562122, 36.238426, 37.244171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.824184, 36.080101, 37.501575>,  <41.981422, 35.985107, 37.656017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.824184, 36.080101, 37.501575>,  <41.562122, 36.238426, 37.244171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824184, 36.080101, 37.501575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532899, -0.361662, -0.764996,
		0.535527, 0.844117, -0.026018,
		0.655156, -0.395811, 0.643509,
		42.020733, 35.961357, 37.694630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182434, 36.237141, 36.846066>,  <41.562122, 36.238426, 37.244171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182434, 36.237141, 36.846066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.307144, 36.007862, 37.149181>,  <42.381969, 35.870296, 37.331051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.307144, 36.007862, 37.149181>,  <42.182434, 36.237141, 36.846066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.307144, 36.007862, 37.149181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595077, -0.503958, -0.626026,
		0.740731, 0.646120, 0.183977,
		0.311771, -0.573198, 0.757788,
		42.400677, 35.835903, 37.376518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957359, 36.302231, 36.859188>,  <42.182434, 36.237141, 36.846066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957359, 36.302231, 36.859188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.872021, 35.966965, 37.059975>,  <42.820820, 35.765804, 37.180447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.872021, 35.966965, 37.059975>,  <42.957359, 36.302231, 36.859188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872021, 35.966965, 37.059975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653255, -0.504428, -0.564632,
		0.726459, 0.207450, 0.655150,
		-0.213344, -0.838163, 0.501964,
		42.808018, 35.715515, 37.210564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592369, 35.901100, 36.910774>,  <42.957359, 36.302231, 36.859188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592369, 35.901100, 36.910774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309071, 35.629501, 36.988075>,  <43.139091, 35.466541, 37.034458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309071, 35.629501, 36.988075>,  <43.592369, 35.901100, 36.910774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309071, 35.629501, 36.988075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516099, -0.684769, -0.514521,
		0.481697, -0.264666, 0.835416,
		-0.708244, -0.679001, 0.193257,
		43.096596, 35.425800, 37.046051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824585, 35.411896, 37.386612>,  <43.592369, 35.901100, 36.910774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824585, 35.411896, 37.386612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.535789, 35.248905, 37.162933>,  <43.362514, 35.151112, 37.028725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.535789, 35.248905, 37.162933>,  <43.824585, 35.411896, 37.386612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535789, 35.248905, 37.162933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635702, -0.709723, -0.303605,
		-0.273163, -0.574681, 0.771442,
		-0.721986, -0.407474, -0.559196,
		43.319195, 35.126663, 36.995174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763634, 34.739357, 37.613583>,  <43.824585, 35.411896, 37.386612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763634, 34.739357, 37.613583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.656857, 34.794235, 37.232025>,  <43.592789, 34.827164, 37.003090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.656857, 34.794235, 37.232025>,  <43.763634, 34.739357, 37.613583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656857, 34.794235, 37.232025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728767, -0.618929, -0.292962,
		-0.630587, -0.773372, 0.065235,
		-0.266944, 0.137197, -0.953896,
		43.576771, 34.835392, 36.945858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.244255, 34.787373, 37.096481>,  <43.763634, 34.739357, 37.613583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.244255, 34.787373, 37.096481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.629223, 34.868389, 37.024124>,  <44.860203, 34.917000, 36.980709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.629223, 34.868389, 37.024124>,  <44.244255, 34.787373, 37.096481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629223, 34.868389, 37.024124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171308, 0.064025, 0.983135,
		0.210709, -0.977178, 0.026922,
		0.962421, 0.202544, -0.180889,
		44.917950, 34.929153, 36.969856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.750389, 34.257687, 37.398975>,  <44.244255, 34.787373, 37.096481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.750389, 34.257687, 37.398975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.953876, 34.598804, 37.351727>,  <45.075970, 34.803474, 37.323376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.953876, 34.598804, 37.351727>,  <44.750389, 34.257687, 37.398975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953876, 34.598804, 37.351727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156554, 0.043287, 0.986720,
		0.846581, -0.520453, -0.111487,
		0.508715, 0.852793, -0.118125,
		45.106491, 34.854641, 37.316288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352333, 34.287422, 37.851044>,  <44.750389, 34.257687, 37.398975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352333, 34.287422, 37.851044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.310940, 34.681774, 37.798393>,  <45.286102, 34.918385, 37.766804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.310940, 34.681774, 37.798393>,  <45.352333, 34.287422, 37.851044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.310940, 34.681774, 37.798393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257438, 0.154378, 0.953883,
		0.960738, 0.064825, -0.269779,
		-0.103483, 0.985883, -0.131629,
		45.279896, 34.977539, 37.758904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.009953, 34.663139, 38.152054>,  <45.352333, 34.287422, 37.851044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.009953, 34.663139, 38.152054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.727024, 34.942860, 38.110737>,  <45.557266, 35.110691, 38.085945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.727024, 34.942860, 38.110737>,  <46.009953, 34.663139, 38.152054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.727024, 34.942860, 38.110737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153719, 0.294786, 0.943118,
		0.689974, 0.651211, -0.316006,
		-0.707323, 0.699303, -0.103291,
		45.514828, 35.152649, 38.079750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.286312, 35.319752, 38.508995>,  <46.009953, 34.663139, 38.152054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.286312, 35.319752, 38.508995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.889378, 35.355438, 38.474800>,  <45.651218, 35.376850, 38.454285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.889378, 35.355438, 38.474800>,  <46.286312, 35.319752, 38.508995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.889378, 35.355438, 38.474800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034790, 0.462118, 0.886136,
		0.118564, 0.882319, -0.455473,
		-0.992337, 0.089218, -0.085486,
		45.591675, 35.382202, 38.449154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.142021, 36.059895, 38.649223>,  <46.286312, 35.319752, 38.508995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.142021, 36.059895, 38.649223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.807434, 35.846809, 38.700672>,  <45.606682, 35.718960, 38.731541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.807434, 35.846809, 38.700672>,  <46.142021, 36.059895, 38.649223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.807434, 35.846809, 38.700672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232873, 0.557976, 0.796513,
		-0.496080, 0.636303, -0.590782,
		-0.836466, -0.532712, 0.128623,
		45.556496, 35.686996, 38.739258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635040, 36.596714, 38.833286>,  <46.142021, 36.059895, 38.649223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635040, 36.596714, 38.833286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.471626, 36.255669, 38.963608>,  <45.373577, 36.051041, 39.041801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.471626, 36.255669, 38.963608>,  <45.635040, 36.596714, 38.833286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.471626, 36.255669, 38.963608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354465, 0.477138, 0.804173,
		-0.841105, 0.213043, -0.497148,
		-0.408531, -0.852615, 0.325806,
		45.349068, 35.999886, 39.061348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.960030, 36.781239, 39.074486>,  <45.635040, 36.596714, 38.833286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.960030, 36.781239, 39.074486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.095470, 36.442520, 39.238571>,  <45.176735, 36.239288, 39.337025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.095470, 36.442520, 39.238571>,  <44.960030, 36.781239, 39.074486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095470, 36.442520, 39.238571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314685, 0.308951, 0.897509,
		-0.886747, -0.432991, -0.161863,
		0.338606, -0.846799, 0.410217,
		45.197052, 36.188480, 39.361637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.493088, 36.761166, 39.588654>,  <44.960030, 36.781239, 39.074486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.493088, 36.761166, 39.588654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.748020, 36.471302, 39.693481>,  <44.900982, 36.297386, 39.756378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.748020, 36.471302, 39.693481>,  <44.493088, 36.761166, 39.588654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748020, 36.471302, 39.693481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312823, 0.067499, 0.947410,
		-0.704235, -0.685798, -0.183669,
		0.637335, -0.724655, 0.262068,
		44.939220, 36.253906, 39.772102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149853, 36.156227, 39.928875>,  <44.493088, 36.761166, 39.588654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149853, 36.156227, 39.928875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.532673, 36.161892, 40.044712>,  <44.762363, 36.165291, 40.114212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.532673, 36.161892, 40.044712>,  <44.149853, 36.156227, 39.928875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532673, 36.161892, 40.044712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284199, -0.151864, 0.946662,
		0.057390, -0.988300, -0.141314,
		0.957046, 0.014168, 0.289589,
		44.819786, 36.166142, 40.131588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169319, 35.664242, 40.424526>,  <44.149853, 36.156227, 39.928875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169319, 35.664242, 40.424526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.496449, 35.884102, 40.492691>,  <44.692726, 36.016018, 40.533592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.496449, 35.884102, 40.492691>,  <44.169319, 35.664242, 40.424526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496449, 35.884102, 40.492691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285201, 0.129930, 0.949620,
		0.499820, -0.825227, 0.263021,
		0.817827, 0.549653, 0.170414,
		44.741798, 36.048996, 40.543816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.504391, 35.422703, 41.062141>,  <44.169319, 35.664242, 40.424526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.504391, 35.422703, 41.062141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.647236, 35.791840, 41.004391>,  <44.732941, 36.013321, 40.969742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.647236, 35.791840, 41.004391>,  <44.504391, 35.422703, 41.062141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647236, 35.791840, 41.004391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144827, 0.207401, 0.967476,
		0.922767, -0.324586, 0.207717,
		0.357109, 0.922837, -0.144374,
		44.754368, 36.068691, 40.961079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910160, 35.500217, 41.598122>,  <44.504391, 35.422703, 41.062141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910160, 35.500217, 41.598122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.831871, 35.871742, 41.472271>,  <44.784897, 36.094658, 41.396759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.831871, 35.871742, 41.472271>,  <44.910160, 35.500217, 41.598122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831871, 35.871742, 41.472271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033822, 0.314252, 0.948737,
		0.980076, 0.196332, -0.030092,
		-0.195724, 0.928816, -0.314631,
		44.773155, 36.150387, 41.377880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175045, 35.870029, 42.108753>,  <44.910160, 35.500217, 41.598122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.175045, 35.870029, 42.108753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.956093, 36.160130, 41.941719>,  <44.824722, 36.334190, 41.841499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.956093, 36.160130, 41.941719>,  <45.175045, 35.870029, 42.108753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.956093, 36.160130, 41.941719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283726, 0.308606, 0.907888,
		0.787321, 0.615441, 0.036849,
		-0.547380, 0.725255, -0.417589,
		44.791878, 36.377705, 41.816441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.197788, 36.388245, 42.727184>,  <45.175045, 35.870029, 42.108753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.197788, 36.388245, 42.727184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.898632, 36.510704, 42.491577>,  <44.719139, 36.584179, 42.350212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.898632, 36.510704, 42.491577>,  <45.197788, 36.388245, 42.727184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898632, 36.510704, 42.491577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424749, 0.461195, 0.779030,
		0.510152, 0.832808, -0.214883,
		-0.747886, 0.306153, -0.589014,
		44.674267, 36.602551, 42.314873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.047771, 37.192234, 42.760715>,  <45.197788, 36.388245, 42.727184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.047771, 37.192234, 42.760715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.688015, 37.078217, 42.628139>,  <44.472160, 37.009804, 42.548595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.688015, 37.078217, 42.628139>,  <45.047771, 37.192234, 42.760715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688015, 37.078217, 42.628139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436782, 0.617232, 0.654405,
		0.018040, 0.733330, -0.679633,
		-0.899387, -0.285046, -0.331440,
		44.418198, 36.992702, 42.528709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.723946, 37.829239, 42.462177>,  <45.047771, 37.192234, 42.760715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.723946, 37.829239, 42.462177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.441788, 37.556576, 42.539906>,  <44.272491, 37.392979, 42.586544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.441788, 37.556576, 42.539906>,  <44.723946, 37.829239, 42.462177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441788, 37.556576, 42.539906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508419, 0.677602, 0.531380,
		-0.493891, 0.276037, -0.824545,
		-0.705395, -0.681658, 0.194319,
		44.230167, 37.352077, 42.598202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.154644, 38.192089, 42.538227>,  <44.723946, 37.829239, 42.462177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.154644, 38.192089, 42.538227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.040386, 37.861115, 42.731621>,  <43.971832, 37.662529, 42.847656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.040386, 37.861115, 42.731621>,  <44.154644, 38.192089, 42.538227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.040386, 37.861115, 42.731621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593935, 0.548780, 0.588287,
		-0.752096, -0.119117, -0.648200,
		-0.285644, -0.827437, 0.483483,
		43.954693, 37.612885, 42.876667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497841, 38.355465, 42.713215>,  <44.154644, 38.192089, 42.538227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497841, 38.355465, 42.713215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.554020, 38.027130, 42.934662>,  <43.587727, 37.830128, 43.067532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.554020, 38.027130, 42.934662>,  <43.497841, 38.355465, 42.713215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554020, 38.027130, 42.934662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588431, 0.380493, 0.713424,
		-0.796256, -0.425964, -0.429571,
		0.140444, -0.820841, 0.553620,
		43.596153, 37.780876, 43.100746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858940, 38.047684, 42.969845>,  <43.497841, 38.355465, 42.713215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858940, 38.047684, 42.969845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.097378, 37.895557, 43.252697>,  <43.240440, 37.804283, 43.422409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.097378, 37.895557, 43.252697>,  <42.858940, 38.047684, 42.969845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097378, 37.895557, 43.252697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562394, 0.430800, 0.705779,
		-0.573051, -0.818395, 0.042909,
		0.596092, -0.380316, 0.707131,
		43.276207, 37.781464, 43.464836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.237511, 38.412327, 43.018394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303616, 38.031956, 42.913757>,  <36.343281, 37.803734, 42.850975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303616, 38.031956, 42.913757>,  <36.237511, 38.412327, 43.018394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303616, 38.031956, 42.913757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403952, 0.307240, -0.861642,
		0.899728, 0.036727, 0.434903,
		0.165265, -0.950923, -0.261597,
		36.353195, 37.746677, 42.835278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873871, 38.502480, 42.668602>,  <36.237511, 38.412327, 43.018394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873871, 38.502480, 42.668602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786354, 38.129093, 42.554924>,  <36.733845, 37.905060, 42.486717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786354, 38.129093, 42.554924>,  <36.873871, 38.502480, 42.668602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786354, 38.129093, 42.554924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261895, 0.224391, -0.938648,
		0.939969, -0.279798, 0.195375,
		-0.218791, -0.933467, -0.284199,
		36.720718, 37.849052, 42.469666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468769, 38.147358, 42.268841>,  <36.873871, 38.502480, 42.668602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468769, 38.147358, 42.268841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119247, 37.989403, 42.155331>,  <36.909534, 37.894630, 42.087227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119247, 37.989403, 42.155331>,  <37.468769, 38.147358, 42.268841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119247, 37.989403, 42.155331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283381, 0.060712, -0.957084,
		0.395168, -0.916722, 0.058852,
		-0.873806, -0.394886, -0.283773,
		36.857105, 37.870937, 42.070198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726967, 37.811142, 41.715424>,  <37.468769, 38.147358, 42.268841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726967, 37.811142, 41.715424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327728, 37.821419, 41.692982>,  <37.088184, 37.827583, 41.679516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327728, 37.821419, 41.692982>,  <37.726967, 37.811142, 41.715424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327728, 37.821419, 41.692982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049733, -0.203396, -0.977833,
		-0.036534, -0.978759, 0.201731,
		-0.998094, 0.025691, -0.056107,
		37.028301, 37.829128, 41.676151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518158, 37.210419, 41.303860>,  <37.726967, 37.811142, 41.715424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518158, 37.210419, 41.303860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205070, 37.458847, 41.287724>,  <37.017220, 37.607903, 41.278042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205070, 37.458847, 41.287724>,  <37.518158, 37.210419, 41.303860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205070, 37.458847, 41.287724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078978, -0.163406, -0.983393,
		-0.617348, -0.766531, 0.176951,
		-0.782716, 0.621070, -0.040339,
		36.970257, 37.645168, 41.275623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087238, 36.860695, 40.816681>,  <37.518158, 37.210419, 41.303860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087238, 36.860695, 40.816681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898521, 37.212929, 40.834515>,  <36.785290, 37.424267, 40.845215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898521, 37.212929, 40.834515>,  <37.087238, 36.860695, 40.816681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898521, 37.212929, 40.834515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285601, -0.104790, -0.952603,
		-0.834173, -0.462163, 0.300934,
		-0.471793, 0.880582, 0.044581,
		36.756985, 37.477104, 40.847889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391003, 36.759346, 40.562599>,  <37.087238, 36.860695, 40.816681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391003, 36.759346, 40.562599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491402, 37.144329, 40.521282>,  <36.551640, 37.375320, 40.496494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491402, 37.144329, 40.521282>,  <36.391003, 36.759346, 40.562599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491402, 37.144329, 40.521282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239067, -0.041764, -0.970104,
		-0.938003, 0.268183, 0.219610,
		0.250994, 0.962462, -0.103289,
		36.566700, 37.433067, 40.490295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832256, 36.966507, 40.138103>,  <36.391003, 36.759346, 40.562599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832256, 36.966507, 40.138103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123703, 37.239513, 40.115177>,  <36.298573, 37.403316, 40.101421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123703, 37.239513, 40.115177>,  <35.832256, 36.966507, 40.138103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123703, 37.239513, 40.115177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193762, 0.125138, -0.973035,
		-0.656943, 0.720074, 0.223424,
		0.728616, 0.682520, -0.057314,
		36.342289, 37.444271, 40.097984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548157, 37.548527, 39.830631>,  <35.832256, 36.966507, 40.138103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548157, 37.548527, 39.830631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938663, 37.608822, 39.768421>,  <36.172966, 37.644997, 39.731094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938663, 37.608822, 39.768421>,  <35.548157, 37.548527, 39.830631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938663, 37.608822, 39.768421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188616, 0.238760, -0.952585,
		-0.106455, 0.959308, 0.261524,
		0.976264, 0.150735, -0.155524,
		36.231544, 37.654041, 39.721764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633339, 38.152843, 39.388111>,  <35.548157, 37.548527, 39.830631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633339, 38.152843, 39.388111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976398, 37.951069, 39.348141>,  <36.182232, 37.830006, 39.324158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976398, 37.951069, 39.348141>,  <35.633339, 38.152843, 39.388111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976398, 37.951069, 39.348141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066351, 0.084140, -0.994242,
		0.509940, 0.859339, 0.038693,
		0.857647, -0.504437, -0.099925,
		36.233692, 37.799736, 39.318165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023685, 38.453342, 38.870750>,  <35.633339, 38.152843, 39.388111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023685, 38.453342, 38.870750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197723, 38.093250, 38.877373>,  <36.302147, 37.877193, 38.881344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197723, 38.093250, 38.877373>,  <36.023685, 38.453342, 38.870750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197723, 38.093250, 38.877373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015529, -0.010877, -0.999820,
		0.900251, 0.435273, 0.009247,
		0.435094, -0.900233, 0.016552,
		36.328251, 37.823181, 38.882339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518883, 38.578442, 38.428986>,  <36.023685, 38.453342, 38.870750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518883, 38.578442, 38.428986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477959, 38.180782, 38.442818>,  <36.453403, 37.942184, 38.451118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477959, 38.180782, 38.442818>,  <36.518883, 38.578442, 38.428986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477959, 38.180782, 38.442818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094802, -0.044349, -0.994508,
		0.990225, -0.098471, 0.098785,
		-0.102311, -0.994151, 0.034580,
		36.447266, 37.882538, 38.453194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086552, 38.352371, 38.090996>,  <36.518883, 38.578442, 38.428986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086552, 38.352371, 38.090996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797455, 38.076473, 38.073578>,  <36.623997, 37.910934, 38.063126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797455, 38.076473, 38.073578>,  <37.086552, 38.352371, 38.090996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797455, 38.076473, 38.073578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173852, -0.120466, -0.977376,
		0.668896, -0.713959, 0.206979,
		-0.722740, -0.689747, -0.043544,
		36.580631, 37.869549, 38.060516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368771, 37.841938, 37.653751>,  <37.086552, 38.352371, 38.090996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368771, 37.841938, 37.653751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972275, 37.793190, 37.674137>,  <36.734379, 37.763939, 37.686367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972275, 37.793190, 37.674137>,  <37.368771, 37.841938, 37.653751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972275, 37.793190, 37.674137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028846, -0.176772, -0.983829,
		0.128912, -0.976677, 0.171707,
		-0.991236, -0.121875, 0.050961,
		36.674904, 37.756626, 37.689426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445847, 37.235165, 37.102329>,  <37.368771, 37.841938, 37.653751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445847, 37.235165, 37.102329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673176, 36.951660, 36.935158>,  <37.809574, 36.781555, 36.834854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673176, 36.951660, 36.935158>,  <37.445847, 37.235165, 37.102329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673176, 36.951660, 36.935158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006277, -0.511649, 0.859172,
		-0.822783, -0.485662, -0.295229,
		0.568321, -0.708765, -0.417928,
		37.843674, 36.739029, 36.809780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217636, 36.568546, 37.388985>,  <37.445847, 37.235165, 37.102329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217636, 36.568546, 37.388985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594784, 36.497646, 37.276150>,  <37.821072, 36.455109, 37.208450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594784, 36.497646, 37.276150>,  <37.217636, 36.568546, 37.388985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594784, 36.497646, 37.276150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193315, -0.398514, 0.896558,
		-0.271327, -0.899873, -0.341484,
		0.942874, -0.177246, -0.282086,
		37.877647, 36.444473, 37.191525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308910, 35.930630, 37.593678>,  <37.217636, 36.568546, 37.388985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308910, 35.930630, 37.593678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681709, 36.069195, 37.551022>,  <37.905388, 36.152336, 37.525429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681709, 36.069195, 37.551022>,  <37.308910, 35.930630, 37.593678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681709, 36.069195, 37.551022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318437, -0.642044, 0.697408,
		0.173127, -0.683942, -0.708697,
		0.932001, 0.346415, -0.106637,
		37.961311, 36.173119, 37.519032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718674, 35.364994, 37.502636>,  <37.308910, 35.930630, 37.593678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718674, 35.364994, 37.502636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962723, 35.649632, 37.641998>,  <38.109150, 35.820415, 37.725616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962723, 35.649632, 37.641998>,  <37.718674, 35.364994, 37.502636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962723, 35.649632, 37.641998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383268, -0.649930, 0.656275,
		0.693441, -0.266874, -0.669267,
		0.610119, 0.711597, 0.348403,
		38.145760, 35.863110, 37.746521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256680, 35.020206, 37.707054>,  <37.718674, 35.364994, 37.502636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256680, 35.020206, 37.707054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304115, 35.364819, 37.904522>,  <38.332577, 35.571587, 38.023003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304115, 35.364819, 37.904522>,  <38.256680, 35.020206, 37.707054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304115, 35.364819, 37.904522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281974, -0.505926, 0.815187,
		0.952064, 0.042527, -0.302927,
		0.118591, 0.861528, 0.493666,
		38.339691, 35.623276, 38.052620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863235, 34.869942, 37.961220>,  <38.256680, 35.020206, 37.707054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863235, 34.869942, 37.961220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712803, 35.180355, 38.163734>,  <38.622543, 35.366604, 38.285244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712803, 35.180355, 38.163734>,  <38.863235, 34.869942, 37.961220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712803, 35.180355, 38.163734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430773, -0.337329, 0.837045,
		0.820363, 0.532895, -0.207431,
		-0.376085, 0.776036, 0.506289,
		38.599979, 35.413166, 38.315620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409576, 35.076233, 38.371403>,  <38.863235, 34.869942, 37.961220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409576, 35.076233, 38.371403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081619, 35.221203, 38.548679>,  <38.884846, 35.308186, 38.655045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081619, 35.221203, 38.548679>,  <39.409576, 35.076233, 38.371403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081619, 35.221203, 38.548679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340873, -0.312923, 0.886501,
		0.459977, 0.877910, 0.133022,
		-0.819894, 0.362427, 0.443193,
		38.835651, 35.329929, 38.681637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680916, 35.443768, 38.951572>,  <39.409576, 35.076233, 38.371403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680916, 35.443768, 38.951572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307758, 35.335396, 39.046494>,  <39.083866, 35.270370, 39.103447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307758, 35.335396, 39.046494>,  <39.680916, 35.443768, 38.951572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307758, 35.335396, 39.046494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318908, -0.315195, 0.893840,
		-0.167374, 0.909532, 0.380445,
		-0.932890, -0.270932, 0.237302,
		39.027893, 35.254116, 39.117683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589256, 35.657696, 39.714249>,  <39.680916, 35.443768, 38.951572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589256, 35.657696, 39.714249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276920, 35.417183, 39.646416>,  <39.089520, 35.272877, 39.605717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276920, 35.417183, 39.646416>,  <39.589256, 35.657696, 39.714249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276920, 35.417183, 39.646416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138015, -0.430762, 0.891850,
		-0.609298, 0.672985, 0.419341,
		-0.780838, -0.601278, -0.169581,
		39.042667, 35.236801, 39.595543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184963, 35.662613, 40.336792>,  <39.589256, 35.657696, 39.714249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184963, 35.662613, 40.336792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140068, 35.324093, 40.128494>,  <39.113132, 35.120979, 40.003517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140068, 35.324093, 40.128494>,  <39.184963, 35.662613, 40.336792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140068, 35.324093, 40.128494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009951, -0.524986, 0.851053,
		-0.993632, 0.090336, 0.067343,
		-0.112235, -0.846303, -0.520744,
		39.106400, 35.070202, 39.972271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564537, 35.431953, 40.633945>,  <39.184963, 35.662613, 40.336792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564537, 35.431953, 40.633945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721474, 35.108913, 40.457832>,  <38.815636, 34.915089, 40.352165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721474, 35.108913, 40.457832>,  <38.564537, 35.431953, 40.633945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721474, 35.108913, 40.457832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036765, -0.492043, 0.869794,
		-0.919085, -0.325068, -0.222739,
		0.392340, -0.807604, -0.440279,
		38.839176, 34.866631, 40.325748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160801, 34.827831, 40.863003>,  <38.564537, 35.431953, 40.633945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160801, 34.827831, 40.863003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515388, 34.695652, 40.733406>,  <38.728142, 34.616344, 40.655647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515388, 34.695652, 40.733406>,  <38.160801, 34.827831, 40.863003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515388, 34.695652, 40.733406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124182, -0.504563, 0.854398,
		-0.445807, -0.797634, -0.406246,
		0.886473, -0.330448, -0.323989,
		38.781330, 34.596516, 40.636208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217667, 34.120277, 41.122555>,  <38.160801, 34.827831, 40.863003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217667, 34.120277, 41.122555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587227, 34.234314, 41.020473>,  <38.808964, 34.302738, 40.959225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587227, 34.234314, 41.020473>,  <38.217667, 34.120277, 41.122555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587227, 34.234314, 41.020473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362661, -0.439815, 0.821608,
		0.121997, -0.851636, -0.509738,
		0.923901, 0.285095, -0.255199,
		38.864399, 34.319843, 40.943913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662128, 33.542614, 41.241829>,  <38.217667, 34.120277, 41.122555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662128, 33.542614, 41.241829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914230, 33.852707, 41.224865>,  <39.065491, 34.038761, 41.214687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914230, 33.852707, 41.224865>,  <38.662128, 33.542614, 41.241829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914230, 33.852707, 41.224865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559034, -0.415227, 0.717682,
		0.538761, -0.476028, -0.695079,
		0.630252, 0.775231, -0.042408,
		39.103306, 34.085278, 41.212143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885685, 32.914356, 40.859875>,  <38.662128, 33.542614, 41.241829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885685, 32.914356, 40.859875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561394, 32.680313, 40.867470>,  <38.366817, 32.539886, 40.872028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561394, 32.680313, 40.867470>,  <38.885685, 32.914356, 40.859875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561394, 32.680313, 40.867470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391750, 0.518132, -0.760309,
		0.435023, -0.623848, -0.649283,
		-0.810732, -0.585109, 0.018994,
		38.318172, 32.504780, 40.873169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780548, 32.692764, 40.205643>,  <38.885685, 32.914356, 40.859875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780548, 32.692764, 40.205643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423710, 32.650738, 40.381428>,  <38.209606, 32.625523, 40.486900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423710, 32.650738, 40.381428>,  <38.780548, 32.692764, 40.205643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423710, 32.650738, 40.381428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441906, 0.405819, -0.800019,
		-0.094287, -0.907894, -0.408459,
		-0.892092, -0.105070, 0.439467,
		38.156082, 32.619217, 40.513268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404865, 32.306538, 39.744091>,  <38.780548, 32.692764, 40.205643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404865, 32.306538, 39.744091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162991, 32.518101, 39.982288>,  <38.017868, 32.645039, 40.125206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162991, 32.518101, 39.982288>,  <38.404865, 32.306538, 39.744091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162991, 32.518101, 39.982288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559640, 0.249838, -0.790180,
		-0.566711, -0.811070, 0.144927,
		-0.604683, 0.528911, 0.595493,
		37.981586, 32.676773, 40.160934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717308, 32.103233, 39.493721>,  <38.404865, 32.306538, 39.744091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717308, 32.103233, 39.493721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624287, 32.416229, 39.724766>,  <37.568474, 32.604027, 39.863392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624287, 32.416229, 39.724766>,  <37.717308, 32.103233, 39.493721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624287, 32.416229, 39.724766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632667, 0.329353, -0.700899,
		-0.738681, -0.528434, 0.418460,
		-0.232557, 0.782486, 0.577609,
		37.554520, 32.650974, 39.898048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053524, 31.991629, 39.467091>,  <37.717308, 32.103233, 39.493721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053524, 31.991629, 39.467091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114182, 32.363979, 39.600040>,  <37.150574, 32.587391, 39.679810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114182, 32.363979, 39.600040>,  <37.053524, 31.991629, 39.467091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114182, 32.363979, 39.600040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662777, 0.345222, -0.664491,
		-0.733302, -0.119524, 0.669314,
		0.151639, 0.930879, 0.332370,
		37.159672, 32.643242, 39.699753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361271, 32.327625, 39.756638>,  <37.053524, 31.991629, 39.467091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361271, 32.327625, 39.756638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603844, 32.621765, 39.635639>,  <36.749386, 32.798248, 39.563042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603844, 32.621765, 39.635639>,  <36.361271, 32.327625, 39.756638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603844, 32.621765, 39.635639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682072, 0.285555, -0.673228,
		-0.408679, 0.614590, 0.674730,
		0.606432, 0.735348, -0.302495,
		36.785774, 32.842369, 39.544891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952766, 32.990479, 39.651623>,  <36.361271, 32.327625, 39.756638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952766, 32.990479, 39.651623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292320, 33.066788, 39.454445>,  <36.496052, 33.112576, 39.336136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292320, 33.066788, 39.454445>,  <35.952766, 32.990479, 39.651623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292320, 33.066788, 39.454445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526207, 0.393243, -0.753967,
		0.050008, 0.899424, 0.434206,
		0.848885, 0.190778, -0.492949,
		36.546986, 33.124020, 39.306561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842857, 33.747517, 39.327194>,  <35.952766, 32.990479, 39.651623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842857, 33.747517, 39.327194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149021, 33.572071, 39.138824>,  <36.332718, 33.466805, 39.025803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149021, 33.572071, 39.138824>,  <35.842857, 33.747517, 39.327194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149021, 33.572071, 39.138824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233985, 0.492013, -0.838555,
		0.599504, 0.752025, 0.273960,
		0.765406, -0.438614, -0.470926,
		36.378643, 33.440487, 38.997547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903214, 34.315002, 38.917801>,  <35.842857, 33.747517, 39.327194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903214, 34.315002, 38.917801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091114, 33.997814, 38.762604>,  <36.203854, 33.807503, 38.669487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091114, 33.997814, 38.762604>,  <35.903214, 34.315002, 38.917801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091114, 33.997814, 38.762604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165698, 0.352488, -0.921030,
		0.867111, 0.496941, 0.034187,
		0.469748, -0.792970, -0.387989,
		36.232037, 33.759922, 38.646206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348717, 34.585232, 38.511581>,  <35.903214, 34.315002, 38.917801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348717, 34.585232, 38.511581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259796, 34.219704, 38.375633>,  <36.206444, 34.000385, 38.294064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259796, 34.219704, 38.375633>,  <36.348717, 34.585232, 38.511581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259796, 34.219704, 38.375633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011778, 0.346053, -0.938141,
		0.974908, -0.212549, -0.066163,
		-0.222297, -0.913822, -0.339873,
		36.193108, 33.945557, 38.273670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704693, 34.412136, 37.877777>,  <36.348717, 34.585232, 38.511581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704693, 34.412136, 37.877777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400009, 34.156761, 37.833603>,  <36.217201, 34.003536, 37.807098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400009, 34.156761, 37.833603>,  <36.704693, 34.412136, 37.877777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400009, 34.156761, 37.833603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109754, 0.295126, -0.949134,
		0.638560, -0.710839, -0.294870,
		-0.761705, -0.638442, -0.110439,
		36.171497, 33.965229, 37.800472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813889, 34.079769, 37.228714>,  <36.704693, 34.412136, 37.877777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813889, 34.079769, 37.228714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432556, 34.022835, 37.335224>,  <36.203758, 33.988674, 37.399128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432556, 34.022835, 37.335224>,  <36.813889, 34.079769, 37.228714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432556, 34.022835, 37.335224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294937, 0.250340, -0.922140,
		0.064596, -0.957638, -0.280638,
		-0.953331, -0.142337, 0.266272,
		36.146557, 33.980133, 37.415108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.349716, 30.218010, 44.090649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.956188, 30.289616, 44.093658>,  <38.720074, 30.332579, 44.095467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.956188, 30.289616, 44.093658>,  <39.349716, 30.218010, 44.090649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956188, 30.289616, 44.093658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019398, 0.148185, -0.988769,
		-0.178122, -0.972622, -0.149259,
		-0.983817, 0.179017, 0.007528,
		38.661041, 30.343321, 44.095917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088455, 29.866776, 43.457420>,  <39.349716, 30.218010, 44.090649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088455, 29.866776, 43.457420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.858273, 30.170572, 43.578758>,  <38.720161, 30.352850, 43.651562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.858273, 30.170572, 43.578758>,  <39.088455, 29.866776, 43.457420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858273, 30.170572, 43.578758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163218, 0.256795, -0.952584,
		-0.801378, -0.597684, -0.023812,
		-0.575459, 0.759493, 0.303342,
		38.685635, 30.398420, 43.669762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573849, 29.915819, 42.791435>,  <39.088455, 29.866776, 43.457420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573849, 29.915819, 42.791435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.524323, 30.248365, 43.008141>,  <38.494606, 30.447893, 43.138165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.524323, 30.248365, 43.008141>,  <38.573849, 29.915819, 42.791435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524323, 30.248365, 43.008141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263834, 0.498730, -0.825627,
		-0.956589, -0.245157, 0.157594,
		-0.123812, 0.831365, 0.541760,
		38.487179, 30.497774, 43.170670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099529, 30.210699, 42.460983>,  <38.573849, 29.915819, 42.791435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099529, 30.210699, 42.460983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.270943, 30.496584, 42.682087>,  <38.373791, 30.668114, 42.814751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.270943, 30.496584, 42.682087>,  <38.099529, 30.210699, 42.460983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270943, 30.496584, 42.682087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106340, 0.647428, -0.754671,
		-0.897244, 0.264625, 0.353449,
		0.428538, 0.714710, 0.552761,
		38.399506, 30.710997, 42.847916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604874, 30.774494, 42.417259>,  <38.099529, 30.210699, 42.460983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604874, 30.774494, 42.417259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.954056, 30.939709, 42.521072>,  <38.163563, 31.038837, 42.583363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.954056, 30.939709, 42.521072>,  <37.604874, 30.774494, 42.417259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954056, 30.939709, 42.521072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162242, 0.747592, -0.644037,
		-0.460038, 0.520105, 0.719622,
		0.872951, 0.413034, 0.259538,
		38.215942, 31.063620, 42.598934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429485, 31.490719, 42.381126>,  <37.604874, 30.774494, 42.417259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429485, 31.490719, 42.381126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.826344, 31.457312, 42.343891>,  <38.064461, 31.437267, 42.321548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.826344, 31.457312, 42.343891>,  <37.429485, 31.490719, 42.381126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826344, 31.457312, 42.343891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012323, 0.675416, -0.737334,
		0.124454, 0.732692, 0.669084,
		0.992149, -0.083519, -0.093088,
		38.123989, 31.432257, 42.315964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688011, 32.149792, 42.434631>,  <37.429485, 31.490719, 42.381126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688011, 32.149792, 42.434631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.951820, 31.941513, 42.217777>,  <38.110104, 31.816547, 42.087666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.951820, 31.941513, 42.217777>,  <37.688011, 32.149792, 42.434631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951820, 31.941513, 42.217777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037117, 0.697787, -0.715343,
		0.750769, 0.491907, 0.440878,
		0.659521, -0.520693, -0.542135,
		38.149677, 31.785305, 42.055138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088402, 32.680828, 42.030434>,  <37.688011, 32.149792, 42.434631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088402, 32.680828, 42.030434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.164616, 32.338501, 41.838066>,  <38.210342, 32.133106, 41.722645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.164616, 32.338501, 41.838066>,  <38.088402, 32.680828, 42.030434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164616, 32.338501, 41.838066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028376, 0.494486, -0.868722,
		0.981271, 0.151873, 0.118500,
		0.190532, -0.855815, -0.480915,
		38.221775, 32.081757, 41.693790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676922, 32.869480, 41.609169>,  <38.088402, 32.680828, 42.030434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676922, 32.869480, 41.609169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.476231, 32.558075, 41.458336>,  <38.355816, 32.371231, 41.367836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.476231, 32.558075, 41.458336>,  <38.676922, 32.869480, 41.609169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476231, 32.558075, 41.458336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237003, 0.542959, -0.805621,
		0.831926, -0.314831, -0.456925,
		-0.501726, -0.778510, -0.377086,
		38.325714, 32.324524, 41.345211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326130, 33.217243, 41.388233>,  <38.676922, 32.869480, 41.609169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326130, 33.217243, 41.388233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.346909, 33.610645, 41.457546>,  <39.359375, 33.846687, 41.499134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.346909, 33.610645, 41.457546>,  <39.326130, 33.217243, 41.388233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346909, 33.610645, 41.457546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612621, -0.168412, 0.772226,
		0.788668, 0.066045, -0.611261,
		0.051942, 0.983502, 0.173282,
		39.362492, 33.905697, 41.509529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996513, 33.354504, 41.595936>,  <39.326130, 33.217243, 41.388233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.996513, 33.354504, 41.595936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.789856, 33.674591, 41.717739>,  <39.665863, 33.866646, 41.790821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.789856, 33.674591, 41.717739>,  <39.996513, 33.354504, 41.595936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789856, 33.674591, 41.717739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435866, -0.060301, 0.897989,
		0.736953, 0.596664, -0.317636,
		-0.516644, 0.800222, 0.304505,
		39.634861, 33.914658, 41.809090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435909, 33.856873, 41.848003>,  <39.996513, 33.354504, 41.595936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435909, 33.856873, 41.848003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.095863, 33.949360, 42.037254>,  <39.891838, 34.004852, 42.150803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.095863, 33.949360, 42.037254>,  <40.435909, 33.856873, 41.848003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095863, 33.949360, 42.037254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473326, -0.058284, 0.878957,
		0.230804, 0.971155, -0.059893,
		-0.850113, 0.231216, 0.473125,
		39.840828, 34.018726, 42.179192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572483, 34.479767, 42.331833>,  <40.435909, 33.856873, 41.848003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572483, 34.479767, 42.331833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.249249, 34.272697, 42.444267>,  <40.055309, 34.148457, 42.511730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.249249, 34.272697, 42.444267>,  <40.572483, 34.479767, 42.331833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249249, 34.272697, 42.444267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243221, 0.141390, 0.959611,
		-0.536512, 0.843812, 0.011655,
		-0.808083, -0.517677, 0.281090,
		40.006824, 34.117393, 42.528595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264465, 34.960068, 42.848717>,  <40.572483, 34.479767, 42.331833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264465, 34.960068, 42.848717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.102306, 34.602654, 42.925922>,  <40.005013, 34.388206, 42.972248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.102306, 34.602654, 42.925922>,  <40.264465, 34.960068, 42.848717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102306, 34.602654, 42.925922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142481, 0.146802, 0.978851,
		-0.902968, 0.424325, 0.067798,
		-0.405398, -0.893531, 0.193016,
		39.980686, 34.334595, 42.983826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836765, 35.079247, 43.357441>,  <40.264465, 34.960068, 42.848717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836765, 35.079247, 43.357441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.883999, 34.682667, 43.379684>,  <39.912338, 34.444721, 43.393028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.883999, 34.682667, 43.379684>,  <39.836765, 35.079247, 43.357441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883999, 34.682667, 43.379684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045285, 0.050561, 0.997694,
		-0.991970, -0.120332, -0.038927,
		0.118086, -0.991445, 0.055604,
		39.919426, 34.385235, 43.396366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282806, 34.766930, 43.808258>,  <39.836765, 35.079247, 43.357441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282806, 34.766930, 43.808258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.551876, 34.471157, 43.819214>,  <39.713318, 34.293694, 43.825787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.551876, 34.471157, 43.819214>,  <39.282806, 34.766930, 43.808258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551876, 34.471157, 43.819214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014632, 0.023717, 0.999612,
		-0.739797, -0.672810, 0.005135,
		0.672671, -0.739435, 0.027390,
		39.753677, 34.249325, 43.827431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025135, 34.285122, 44.288883>,  <39.282806, 34.766930, 43.808258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025135, 34.285122, 44.288883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.413811, 34.197323, 44.253918>,  <39.647015, 34.144646, 44.232941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.413811, 34.197323, 44.253918>,  <39.025135, 34.285122, 44.288883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413811, 34.197323, 44.253918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085167, -0.019679, 0.996172,
		-0.220375, -0.975415, -0.000428,
		0.971690, -0.219495, -0.087410,
		39.705318, 34.131474, 44.227695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045307, 33.692879, 44.702961>,  <39.025135, 34.285122, 44.288883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045307, 33.692879, 44.702961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.410294, 33.851147, 44.661285>,  <39.629284, 33.946110, 44.636280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.410294, 33.851147, 44.661285>,  <39.045307, 33.692879, 44.702961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410294, 33.851147, 44.661285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187184, -0.177237, 0.966204,
		0.363834, -0.901127, -0.235786,
		0.912462, 0.395673, -0.104191,
		39.684032, 33.969849, 44.630028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451210, 33.212761, 44.964600>,  <39.045307, 33.692879, 44.702961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451210, 33.212761, 44.964600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.648640, 33.558895, 44.999432>,  <39.767097, 33.766575, 45.020332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.648640, 33.558895, 44.999432>,  <39.451210, 33.212761, 44.964600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648640, 33.558895, 44.999432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218304, -0.220191, 0.950715,
		0.841860, -0.450238, -0.297586,
		0.493574, 0.865334, 0.087081,
		39.796711, 33.818497, 45.025555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152878, 33.064152, 45.238762>,  <39.451210, 33.212761, 44.964600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152878, 33.064152, 45.238762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.097542, 33.452328, 45.317871>,  <40.064339, 33.685234, 45.365337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.097542, 33.452328, 45.317871>,  <40.152878, 33.064152, 45.238762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097542, 33.452328, 45.317871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163238, -0.174618, 0.971011,
		0.976840, 0.166613, -0.134256,
		-0.138339, 0.970438, 0.197772,
		40.056042, 33.743458, 45.377201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686966, 33.167126, 45.743130>,  <40.152878, 33.064152, 45.238762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686966, 33.167126, 45.743130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.438351, 33.479946, 45.761364>,  <40.289181, 33.667641, 45.772305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.438351, 33.479946, 45.761364>,  <40.686966, 33.167126, 45.743130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438351, 33.479946, 45.761364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095123, 0.017581, 0.995310,
		0.777586, 0.622961, -0.085318,
		-0.621539, 0.782055, 0.045587,
		40.251888, 33.714561, 45.775040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072536, 33.643227, 46.210651>,  <40.686966, 33.167126, 45.743130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072536, 33.643227, 46.210651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.686165, 33.745914, 46.197475>,  <40.454342, 33.807526, 46.189571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.686165, 33.745914, 46.197475>,  <41.072536, 33.643227, 46.210651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686165, 33.745914, 46.197475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014860, 0.182048, 0.983177,
		0.258396, 0.949186, -0.179660,
		-0.965925, 0.256719, -0.032935,
		40.396389, 33.822929, 46.187595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969982, 34.203270, 46.761822>,  <41.072536, 33.643227, 46.210651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969982, 34.203270, 46.761822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.597126, 34.073635, 46.697220>,  <40.373413, 33.995853, 46.658459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.597126, 34.073635, 46.697220>,  <40.969982, 34.203270, 46.761822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597126, 34.073635, 46.697220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243782, 0.231869, 0.941705,
		-0.267749, 0.917171, -0.295141,
		-0.932138, -0.324090, -0.161507,
		40.317486, 33.976406, 46.648769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.367443, 32.034176, 47.821812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.675488, 31.833647, 47.664024>,  <31.860315, 31.713329, 47.569351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.675488, 31.833647, 47.664024>,  <31.367443, 32.034176, 47.821812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675488, 31.833647, 47.664024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057628, 0.670521, -0.739649,
		0.635300, 0.546881, 0.545266,
		0.770112, -0.501321, -0.394466,
		31.906521, 31.683250, 47.545685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899330, 32.560101, 47.491039>,  <31.367443, 32.034176, 47.821812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899330, 32.560101, 47.491039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.006432, 32.216534, 47.316422>,  <32.070694, 32.010395, 47.211651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.006432, 32.216534, 47.316422>,  <31.899330, 32.560101, 47.491039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006432, 32.216534, 47.316422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052649, 0.439371, -0.896761,
		0.962048, 0.263095, 0.072422,
		0.267754, -0.858914, -0.436548,
		32.086758, 31.958858, 47.185455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501678, 32.755856, 47.029922>,  <31.899330, 32.560101, 47.491039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501678, 32.755856, 47.029922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.366924, 32.403988, 46.895645>,  <32.286072, 32.192867, 46.815079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.366924, 32.403988, 46.895645>,  <32.501678, 32.755856, 47.029922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366924, 32.403988, 46.895645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120336, 0.313386, -0.941970,
		0.933824, -0.357733, 0.000280,
		-0.336886, -0.879668, -0.335695,
		32.265858, 32.140087, 46.794937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940292, 32.533783, 46.467442>,  <32.501678, 32.755856, 47.029922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940292, 32.533783, 46.467442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.599178, 32.332630, 46.411076>,  <32.394508, 32.211937, 46.377254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.599178, 32.332630, 46.411076>,  <32.940292, 32.533783, 46.467442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599178, 32.332630, 46.411076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131818, 0.053823, -0.989812,
		0.505346, -0.862676, 0.020390,
		-0.852789, -0.502885, -0.140915,
		32.343342, 32.181767, 46.368801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131454, 32.103523, 46.009617>,  <32.940292, 32.533783, 46.467442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131454, 32.103523, 46.009617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.732876, 32.108799, 45.976349>,  <32.493729, 32.111965, 45.956390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.732876, 32.108799, 45.976349>,  <33.131454, 32.103523, 46.009617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732876, 32.108799, 45.976349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077942, -0.229329, -0.970223,
		-0.031871, -0.973260, 0.227487,
		-0.996448, 0.013191, -0.083167,
		32.433941, 32.112755, 45.951397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982395, 31.545654, 45.504173>,  <33.131454, 32.103523, 46.009617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982395, 31.545654, 45.504173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.639717, 31.750731, 45.526867>,  <32.434109, 31.873777, 45.540485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.639717, 31.750731, 45.526867>,  <32.982395, 31.545654, 45.504173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639717, 31.750731, 45.526867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202255, -0.232686, -0.951289,
		-0.474518, -0.826439, 0.303036,
		-0.856695, 0.512694, 0.056737,
		32.382710, 31.904539, 45.543888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355816, 31.233652, 45.084614>,  <32.982395, 31.545654, 45.504173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355816, 31.233652, 45.084614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.271366, 31.617390, 45.159542>,  <32.220695, 31.847631, 45.204498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.271366, 31.617390, 45.159542>,  <32.355816, 31.233652, 45.084614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271366, 31.617390, 45.159542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180239, 0.150143, -0.972096,
		-0.960698, -0.238997, 0.141212,
		-0.211126, 0.959342, 0.187318,
		32.208027, 31.905191, 45.215736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782240, 31.342646, 44.568306>,  <32.355816, 31.233652, 45.084614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782240, 31.342646, 44.568306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.947369, 31.691555, 44.673164>,  <32.046448, 31.900900, 44.736080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.947369, 31.691555, 44.673164>,  <31.782240, 31.342646, 44.568306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947369, 31.691555, 44.673164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010260, 0.283339, -0.958965,
		-0.910753, 0.398574, 0.108019,
		0.412824, 0.872272, 0.262141,
		32.071217, 31.953238, 44.751808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457079, 31.716654, 44.033173>,  <31.782240, 31.342646, 44.568306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457079, 31.716654, 44.033173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.721710, 31.987141, 44.162815>,  <31.880489, 32.149433, 44.240601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.721710, 31.987141, 44.162815>,  <31.457079, 31.716654, 44.033173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721710, 31.987141, 44.162815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013257, 0.442696, -0.896574,
		-0.749758, 0.588858, 0.301843,
		0.661579, 0.676215, 0.324108,
		31.920183, 32.190006, 44.260048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095133, 32.361343, 43.927868>,  <31.457079, 31.716654, 44.033173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095133, 32.361343, 43.927868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.493753, 32.391300, 43.942146>,  <31.732925, 32.409275, 43.950714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.493753, 32.391300, 43.942146>,  <31.095133, 32.361343, 43.927868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493753, 32.391300, 43.942146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014106, 0.576952, -0.816656,
		-0.081752, 0.813337, 0.576020,
		0.996553, 0.074889, 0.035694,
		31.792719, 32.413765, 43.952854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315769, 33.093174, 43.899395>,  <31.095133, 32.361343, 43.927868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315769, 33.093174, 43.899395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.637079, 32.878937, 43.795170>,  <31.829865, 32.750397, 43.732635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.637079, 32.878937, 43.795170>,  <31.315769, 33.093174, 43.899395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637079, 32.878937, 43.795170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195471, 0.650305, -0.734094,
		0.562622, 0.538745, 0.627065,
		0.803273, -0.535590, -0.260567,
		31.878061, 32.718258, 43.716999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822750, 33.600468, 43.768681>,  <31.315769, 33.093174, 43.899395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822750, 33.600468, 43.768681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.897406, 33.262768, 43.567719>,  <31.942198, 33.060150, 43.447140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.897406, 33.262768, 43.567719>,  <31.822750, 33.600468, 43.768681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897406, 33.262768, 43.567719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061321, 0.520406, -0.851714,
		0.980513, 0.128153, 0.148897,
		0.186637, -0.844248, -0.502407,
		31.953396, 33.009495, 43.416996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263584, 33.846855, 43.263145>,  <31.822750, 33.600468, 43.768681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263584, 33.846855, 43.263145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.206482, 33.478916, 43.116989>,  <32.172222, 33.258152, 43.029297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.206482, 33.478916, 43.116989>,  <32.263584, 33.846855, 43.263145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206482, 33.478916, 43.116989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309355, 0.309207, -0.899272,
		0.940171, -0.241410, 0.240418,
		-0.142754, -0.919844, -0.365389,
		32.163654, 33.202965, 43.007374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738216, 33.806202, 42.804958>,  <32.263584, 33.846855, 43.263145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738216, 33.806202, 42.804958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.505333, 33.493111, 42.716980>,  <32.365604, 33.305256, 42.664192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.505333, 33.493111, 42.716980>,  <32.738216, 33.806202, 42.804958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505333, 33.493111, 42.716980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101926, 0.198116, -0.974864,
		0.806626, -0.589992, -0.035564,
		-0.582208, -0.782726, -0.219941,
		32.330669, 33.258293, 42.650997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538307, 34.023674, 42.631119>,  <32.738216, 33.806202, 42.804958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538307, 34.023674, 42.631119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.626247, 34.402538, 42.724545>,  <33.679012, 34.629856, 42.780602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.626247, 34.402538, 42.724545>,  <33.538307, 34.023674, 42.631119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626247, 34.402538, 42.724545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035058, -0.246943, 0.968396,
		0.974902, -0.204718, -0.087498,
		0.219855, 0.947159, 0.233568,
		33.692204, 34.686687, 42.794617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122204, 34.011723, 43.043579>,  <33.538307, 34.023674, 42.631119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122204, 34.011723, 43.043579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.962925, 34.370296, 43.121399>,  <33.867355, 34.585442, 43.168091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.962925, 34.370296, 43.121399>,  <34.122204, 34.011723, 43.043579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962925, 34.370296, 43.121399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162413, -0.139835, 0.976764,
		0.902807, 0.420543, -0.089910,
		-0.398199, 0.896432, 0.194546,
		33.843464, 34.639225, 43.179764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470909, 34.444572, 43.596992>,  <34.122204, 34.011723, 43.043579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470909, 34.444572, 43.596992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121181, 34.638702, 43.598579>,  <33.911343, 34.755180, 43.599533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121181, 34.638702, 43.598579>,  <34.470909, 34.444572, 43.596992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121181, 34.638702, 43.598579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016624, -0.038120, 0.999135,
		0.485060, 0.873500, 0.041397,
		-0.874323, 0.485329, 0.003969,
		33.858883, 34.784302, 43.599770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525776, 34.933018, 44.182972>,  <34.470909, 34.444572, 43.596992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525776, 34.933018, 44.182972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.142254, 34.850224, 44.105152>,  <33.912140, 34.800545, 44.058460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.142254, 34.850224, 44.105152>,  <34.525776, 34.933018, 44.182972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142254, 34.850224, 44.105152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183340, -0.072216, 0.980394,
		-0.216979, 0.975675, 0.031292,
		-0.958805, -0.206988, -0.194549,
		33.854614, 34.788128, 44.046787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218697, 35.279854, 44.718971>,  <34.525776, 34.933018, 44.182972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218697, 35.279854, 44.718971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.937271, 35.028221, 44.586754>,  <33.768417, 34.877243, 44.507423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.937271, 35.028221, 44.586754>,  <34.218697, 35.279854, 44.718971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937271, 35.028221, 44.586754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364351, -0.080028, 0.927817,
		-0.610122, 0.773212, -0.172900,
		-0.703562, -0.629077, -0.330547,
		33.726204, 34.839497, 44.487591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761284, 35.548809, 45.097538>,  <34.218697, 35.279854, 44.718971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761284, 35.548809, 45.097538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.663868, 35.173771, 44.998253>,  <33.605419, 34.948750, 44.938683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.663868, 35.173771, 44.998253>,  <33.761284, 35.548809, 45.097538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663868, 35.173771, 44.998253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173796, -0.209586, 0.962220,
		-0.954191, 0.277481, -0.111906,
		-0.243544, -0.937591, -0.248211,
		33.590805, 34.892494, 44.923790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175980, 35.365314, 45.473366>,  <33.761284, 35.548809, 45.097538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175980, 35.365314, 45.473366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.326828, 35.015999, 45.349979>,  <33.417339, 34.806412, 45.275948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.326828, 35.015999, 45.349979>,  <33.175980, 35.365314, 45.473366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326828, 35.015999, 45.349979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301742, -0.430734, 0.850541,
		-0.875631, -0.227683, -0.425948,
		0.377124, -0.873286, -0.308463,
		33.439964, 34.754013, 45.257442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653770, 34.749313, 45.680767>,  <33.175980, 35.365314, 45.473366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653770, 34.749313, 45.680767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.013645, 34.579559, 45.639877>,  <33.229572, 34.477707, 45.615345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.013645, 34.579559, 45.639877>,  <32.653770, 34.749313, 45.680767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013645, 34.579559, 45.639877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112719, -0.452090, 0.884821,
		-0.421718, -0.784546, -0.454579,
		0.899694, -0.424385, -0.102221,
		33.283554, 34.452244, 45.609211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642181, 34.002537, 45.907265>,  <32.653770, 34.749313, 45.680767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642181, 34.002537, 45.907265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.030094, 34.097172, 45.931087>,  <33.262840, 34.153954, 45.945381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.030094, 34.097172, 45.931087>,  <32.642181, 34.002537, 45.907265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030094, 34.097172, 45.931087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040673, -0.397491, 0.916704,
		0.240556, -0.886581, -0.395103,
		0.969782, 0.236589, 0.059559,
		33.321030, 34.168148, 45.948956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923500, 33.481812, 46.267979>,  <32.642181, 34.002537, 45.907265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923500, 33.481812, 46.267979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.213669, 33.755718, 46.295853>,  <33.387772, 33.920063, 46.312576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.213669, 33.755718, 46.295853>,  <32.923500, 33.481812, 46.267979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213669, 33.755718, 46.295853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162927, -0.269199, 0.949203,
		0.668743, -0.677219, -0.306850,
		0.725422, 0.684767, 0.069688,
		33.431297, 33.961147, 46.316757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653252, 33.143009, 46.437046>,  <32.923500, 33.481812, 46.267979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653252, 33.143009, 46.437046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.675407, 33.526768, 46.547668>,  <33.688702, 33.757023, 46.614040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.675407, 33.526768, 46.547668>,  <33.653252, 33.143009, 46.437046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675407, 33.526768, 46.547668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414780, -0.274059, 0.867669,
		0.908234, 0.066645, -0.413121,
		0.055394, 0.959401, 0.276553,
		33.692024, 33.814587, 46.630634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354267, 33.241299, 46.757828>,  <33.653252, 33.143009, 46.437046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354267, 33.241299, 46.757828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.145023, 33.557579, 46.885044>,  <34.019478, 33.747349, 46.961372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.145023, 33.557579, 46.885044>,  <34.354267, 33.241299, 46.757828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145023, 33.557579, 46.885044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290250, -0.185578, 0.938784,
		0.801319, 0.583397, -0.132423,
		-0.523109, 0.790701, 0.318038,
		33.988091, 33.794788, 46.980457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827671, 33.548813, 47.282829>,  <34.354267, 33.241299, 46.757828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827671, 33.548813, 47.282829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.452244, 33.673096, 47.342903>,  <34.226990, 33.747665, 47.378948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.452244, 33.673096, 47.342903>,  <34.827671, 33.548813, 47.282829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452244, 33.673096, 47.342903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188843, 0.098153, 0.977090,
		0.288852, 0.945423, -0.150799,
		-0.938564, 0.310712, 0.150185,
		34.170673, 33.766308, 47.387959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913006, 34.094551, 47.652313>,  <34.827671, 33.548813, 47.282829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913006, 34.094551, 47.652313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.555489, 33.932762, 47.729801>,  <34.340977, 33.835690, 47.776295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.555489, 33.932762, 47.729801>,  <34.913006, 34.094551, 47.652313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555489, 33.932762, 47.729801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229916, -0.042394, 0.972287,
		-0.385053, 0.913566, 0.130887,
		-0.893797, -0.404475, 0.193719,
		34.287350, 33.811420, 47.787918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750683, 34.876518, 47.795017>,  <34.913006, 34.094551, 47.652313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750683, 34.876518, 47.795017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.051746, 35.138107, 47.825539>,  <35.232384, 35.295063, 47.843849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.051746, 35.138107, 47.825539>,  <34.750683, 34.876518, 47.795017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051746, 35.138107, 47.825539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305288, 0.449313, -0.839594,
		-0.583355, 0.608634, 0.537830,
		0.752659, 0.653974, 0.076300,
		35.277546, 35.334301, 47.848431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485016, 35.448658, 47.515141>,  <34.750683, 34.876518, 47.795017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485016, 35.448658, 47.515141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.872746, 35.546410, 47.525669>,  <35.105385, 35.605061, 47.531986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.872746, 35.546410, 47.525669>,  <34.485016, 35.448658, 47.515141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872746, 35.546410, 47.525669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105244, 0.509429, -0.854053,
		-0.222116, 0.825084, 0.519521,
		0.969324, 0.244375, 0.026317,
		35.163544, 35.619720, 47.533566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453842, 36.146713, 47.436302>,  <34.485016, 35.448658, 47.515141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453842, 36.146713, 47.436302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.813442, 36.011101, 47.325409>,  <35.029202, 35.929733, 47.258873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.813442, 36.011101, 47.325409>,  <34.453842, 36.146713, 47.436302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813442, 36.011101, 47.325409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014878, 0.609027, -0.793010,
		0.437696, 0.717041, 0.542471,
		0.899000, -0.339027, -0.277236,
		35.083141, 35.909393, 47.242237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821861, 36.715874, 47.262821>,  <34.453842, 36.146713, 47.436302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821861, 36.715874, 47.262821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.031414, 36.425499, 47.084583>,  <35.157146, 36.251274, 46.977638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.031414, 36.425499, 47.084583>,  <34.821861, 36.715874, 47.262821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031414, 36.425499, 47.084583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098249, 0.571139, -0.814952,
		0.846106, 0.383158, 0.370533,
		0.523881, -0.725940, -0.445599,
		35.188580, 36.207718, 46.950905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148090, 37.103367, 46.857430>,  <34.821861, 36.715874, 47.262821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148090, 37.103367, 46.857430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.255943, 36.744198, 46.718273>,  <35.320656, 36.528694, 46.634781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.255943, 36.744198, 46.718273>,  <35.148090, 37.103367, 46.857430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255943, 36.744198, 46.718273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479189, 0.438480, -0.760337,
		0.835269, 0.038309, 0.548506,
		0.269636, -0.897924, -0.347892,
		35.336834, 36.474819, 46.613907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820370, 37.102737, 46.491413>,  <35.148090, 37.103367, 46.857430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820370, 37.102737, 46.491413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.725494, 36.741093, 46.349247>,  <35.668568, 36.524105, 46.263947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.725494, 36.741093, 46.349247>,  <35.820370, 37.102737, 46.491413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725494, 36.741093, 46.349247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453673, 0.220426, -0.863477,
		0.859024, -0.366050, 0.357890,
		-0.237188, -0.904113, -0.355418,
		35.654339, 36.469860, 46.242622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334763, 36.855816, 46.068108>,  <35.820370, 37.102737, 46.491413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334763, 36.855816, 46.068108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.027336, 36.639729, 45.931011>,  <35.842880, 36.510075, 45.848751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.027336, 36.639729, 45.931011>,  <36.334763, 36.855816, 46.068108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027336, 36.639729, 45.931011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229589, 0.267155, -0.935904,
		0.597159, -0.797992, -0.081297,
		-0.768564, -0.540219, -0.342745,
		35.796768, 36.477661, 45.828186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609650, 36.386829, 45.669243>,  <36.334763, 36.855816, 46.068108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609650, 36.386829, 45.669243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.230431, 36.432526, 45.550480>,  <36.002899, 36.459942, 45.479221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.230431, 36.432526, 45.550480>,  <36.609650, 36.386829, 45.669243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230431, 36.432526, 45.550480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310904, 0.135026, -0.940801,
		-0.067384, -0.984235, -0.163528,
		-0.948050, 0.114237, -0.296904,
		35.946014, 36.466797, 45.461411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707474, 36.157219, 45.020115>,  <36.609650, 36.386829, 45.669243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707474, 36.157219, 45.020115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.342106, 36.319820, 45.011887>,  <36.122887, 36.417381, 45.006950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.342106, 36.319820, 45.011887>,  <36.707474, 36.157219, 45.020115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342106, 36.319820, 45.011887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147633, 0.283783, -0.947455,
		-0.379309, -0.868458, -0.319225,
		-0.913416, 0.406506, -0.020571,
		36.068081, 36.441772, 45.005714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263664, 35.940014, 44.351906>,  <36.707474, 36.157219, 45.020115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263664, 35.940014, 44.351906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.093708, 36.276917, 44.484612>,  <35.991734, 36.479057, 44.564236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.093708, 36.276917, 44.484612>,  <36.263664, 35.940014, 44.351906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093708, 36.276917, 44.484612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082437, 0.400971, -0.912374,
		-0.901482, -0.360311, -0.239803,
		-0.424893, 0.842257, 0.331765,
		35.966240, 36.529594, 44.584141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617538, 36.014267, 43.973568>,  <36.263664, 35.940014, 44.351906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617538, 36.014267, 43.973568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.738770, 36.369873, 44.110851>,  <35.811508, 36.583237, 44.193222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.738770, 36.369873, 44.110851>,  <35.617538, 36.014267, 43.973568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738770, 36.369873, 44.110851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108458, 0.389992, -0.914408,
		-0.946772, 0.239916, 0.214621,
		0.303082, 0.889014, 0.343213,
		35.829693, 36.636578, 44.213814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373806, 36.520996, 43.490803>,  <35.617538, 36.014267, 43.973568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373806, 36.520996, 43.490803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.647602, 36.755737, 43.663815>,  <35.811878, 36.896584, 43.767620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.647602, 36.755737, 43.663815>,  <35.373806, 36.520996, 43.490803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647602, 36.755737, 43.663815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114905, 0.499031, -0.858932,
		-0.719913, 0.637627, 0.274147,
		0.684487, 0.586856, 0.432526,
		35.852947, 36.931793, 43.793571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207367, 37.247040, 43.401134>,  <35.373806, 36.520996, 43.490803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207367, 37.247040, 43.401134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.604771, 37.237244, 43.445557>,  <35.843212, 37.231365, 43.472210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.604771, 37.237244, 43.445557>,  <35.207367, 37.247040, 43.401134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604771, 37.237244, 43.445557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106582, 0.541057, -0.834205,
		-0.039653, 0.840629, 0.540157,
		0.993513, -0.024493, 0.111051,
		35.902824, 37.229897, 43.478870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544033, 37.935654, 43.191471>,  <35.207367, 37.247040, 43.401134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544033, 37.935654, 43.191471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.864296, 37.697243, 43.167145>,  <36.056454, 37.554195, 43.152550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.864296, 37.697243, 43.167145>,  <35.544033, 37.935654, 43.191471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864296, 37.697243, 43.167145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313313, 0.503063, -0.805458,
		0.510667, 0.625843, 0.589524,
		0.800658, -0.596027, -0.060813,
		36.104492, 37.518436, 43.148899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.838945, 32.387470, 27.189472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.460402, 32.391987, 27.060307>,  <27.233274, 32.394695, 26.982807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.460402, 32.391987, 27.060307>,  <27.838945, 32.387470, 27.189472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460402, 32.391987, 27.060307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323011, -0.058195, 0.944604,
		-0.008128, 0.998242, 0.058720,
		-0.946360, 0.011290, -0.322916,
		27.176493, 32.395374, 26.963432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413393, 32.947144, 27.511425>,  <27.838945, 32.387470, 27.189472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413393, 32.947144, 27.511425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.156282, 32.661449, 27.400639>,  <27.002016, 32.490032, 27.334167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.156282, 32.661449, 27.400639>,  <27.413393, 32.947144, 27.511425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156282, 32.661449, 27.400639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456678, 0.066986, 0.887107,
		-0.615049, 0.696694, -0.369231,
		-0.642775, -0.714234, -0.276965,
		26.963449, 32.447178, 27.317549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824972, 33.019741, 27.884075>,  <27.413393, 32.947144, 27.511425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824972, 33.019741, 27.884075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.770994, 32.639343, 27.772795>,  <26.738607, 32.411102, 27.706026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.770994, 32.639343, 27.772795>,  <26.824972, 33.019741, 27.884075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770994, 32.639343, 27.772795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392646, -0.206460, 0.896216,
		-0.909735, 0.230175, -0.345544,
		-0.134946, -0.950996, -0.278201,
		26.730511, 32.354046, 27.689335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.128195, 32.893501, 27.942417>,  <26.824972, 33.019741, 27.884075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.128195, 32.893501, 27.942417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.313709, 32.540936, 27.978228>,  <26.425018, 32.329395, 27.999714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.313709, 32.540936, 27.978228>,  <26.128195, 32.893501, 27.942417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313709, 32.540936, 27.978228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482821, -0.166734, 0.859700,
		-0.742823, -0.441942, -0.502893,
		0.463787, -0.881412, 0.089525,
		26.452845, 32.276512, 28.005085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.546576, 32.552685, 28.287048>,  <26.128195, 32.893501, 27.942417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.546576, 32.552685, 28.287048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.871107, 32.326294, 28.345581>,  <26.065826, 32.190460, 28.380701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.871107, 32.326294, 28.345581>,  <25.546576, 32.552685, 28.287048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871107, 32.326294, 28.345581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336010, -0.246653, 0.908988,
		-0.478375, -0.786657, -0.390291,
		0.811329, -0.565979, 0.146331,
		26.114506, 32.156502, 28.389481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302786, 32.163353, 28.696886>,  <25.546576, 32.552685, 28.287048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.302786, 32.163353, 28.696886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.691938, 32.080738, 28.738541>,  <25.925430, 32.031170, 28.763535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.691938, 32.080738, 28.738541>,  <25.302786, 32.163353, 28.696886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691938, 32.080738, 28.738541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124764, -0.089458, 0.988145,
		-0.194778, -0.974339, -0.112801,
		0.972880, -0.206543, 0.104138,
		25.983803, 32.018776, 28.769783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310612, 31.687933, 29.234264>,  <25.302786, 32.163353, 28.696886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310612, 31.687933, 29.234264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.683382, 31.832985, 29.232533>,  <25.907043, 31.920015, 29.231493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.683382, 31.832985, 29.232533>,  <25.310612, 31.687933, 29.234264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683382, 31.832985, 29.232533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011296, -0.017097, 0.999790,
		0.362479, -0.931777, -0.020029,
		0.931923, 0.362630, -0.004329,
		25.962959, 31.941774, 29.231234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680779, 31.343296, 29.725016>,  <25.310612, 31.687933, 29.234264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.680779, 31.343296, 29.725016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.903370, 31.672188, 29.677231>,  <26.036924, 31.869522, 29.648560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.903370, 31.672188, 29.677231>,  <25.680779, 31.343296, 29.725016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.903370, 31.672188, 29.677231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018162, 0.131708, 0.991122,
		0.830663, -0.553708, 0.058359,
		0.556479, 0.822229, -0.119462,
		26.070314, 31.918856, 29.641392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048252, 31.406664, 30.337307>,  <25.680779, 31.343296, 29.725016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048252, 31.406664, 30.337307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.088440, 31.773233, 30.182352>,  <26.112553, 31.993176, 30.089378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.088440, 31.773233, 30.182352>,  <26.048252, 31.406664, 30.337307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.088440, 31.773233, 30.182352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128431, 0.374156, 0.918429,
		0.986616, -0.142026, -0.080107,
		0.100468, 0.916426, -0.387389,
		26.118580, 32.048161, 30.066135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680792, 31.655964, 30.635763>,  <26.048252, 31.406664, 30.337307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680792, 31.655964, 30.635763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.467693, 31.978914, 30.534311>,  <26.339834, 32.172684, 30.473440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.467693, 31.978914, 30.534311>,  <26.680792, 31.655964, 30.635763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467693, 31.978914, 30.534311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186218, 0.404193, 0.895517,
		0.825533, 0.429852, -0.365680,
		-0.532745, 0.807376, -0.253628,
		26.307869, 32.221127, 30.458223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049719, 32.183945, 30.772932>,  <26.680792, 31.655964, 30.635763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049719, 32.183945, 30.772932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.685570, 32.347511, 30.747593>,  <26.467081, 32.445652, 30.732389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.685570, 32.347511, 30.747593>,  <27.049719, 32.183945, 30.772932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685570, 32.347511, 30.747593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248163, 0.662038, 0.707192,
		0.331119, 0.628087, -0.704178,
		-0.910371, 0.408916, -0.063345,
		26.412458, 32.470184, 30.728590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129841, 32.857277, 30.816736>,  <27.049719, 32.183945, 30.772932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129841, 32.857277, 30.816736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.746233, 32.801762, 30.915543>,  <26.516068, 32.768452, 30.974827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.746233, 32.801762, 30.915543>,  <27.129841, 32.857277, 30.816736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746233, 32.801762, 30.915543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072368, 0.722924, 0.687127,
		-0.273937, 0.676846, -0.683255,
		-0.959021, -0.138784, 0.247018,
		26.458527, 32.760128, 30.989649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839296, 33.505592, 31.024319>,  <27.129841, 32.857277, 30.816736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839296, 33.505592, 31.024319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.576977, 33.254177, 31.191587>,  <26.419584, 33.103329, 31.291948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.576977, 33.254177, 31.191587>,  <26.839296, 33.505592, 31.024319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.576977, 33.254177, 31.191587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145511, 0.648769, 0.746944,
		-0.740779, 0.428997, -0.516921,
		-0.655799, -0.628539, 0.418171,
		26.380238, 33.065617, 31.317039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.287575, 33.950127, 31.351671>,  <26.839296, 33.505592, 31.024319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.287575, 33.950127, 31.351671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.248512, 33.587372, 31.515635>,  <26.225075, 33.369720, 31.614014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.248512, 33.587372, 31.515635>,  <26.287575, 33.950127, 31.351671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248512, 33.587372, 31.515635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185152, 0.421244, 0.887847,
		-0.977846, 0.010807, -0.209047,
		-0.097655, -0.906883, 0.409910,
		26.219215, 33.315308, 31.638607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645622, 33.936310, 31.753309>,  <26.287575, 33.950127, 31.351671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.645622, 33.936310, 31.753309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.879208, 33.642754, 31.892099>,  <26.019360, 33.466621, 31.975374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.879208, 33.642754, 31.892099>,  <25.645622, 33.936310, 31.753309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879208, 33.642754, 31.892099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222928, 0.266013, 0.937838,
		-0.780569, -0.625015, -0.008262,
		0.583965, -0.733890, 0.346975,
		26.054398, 33.422588, 31.996191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.232897, 33.655159, 32.305260>,  <25.645622, 33.936310, 31.753309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.232897, 33.655159, 32.305260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.615358, 33.553967, 32.364273>,  <25.844835, 33.493252, 32.399681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.615358, 33.553967, 32.364273>,  <25.232897, 33.655159, 32.305260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.615358, 33.553967, 32.364273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061585, 0.318815, 0.945814,
		-0.286310, -0.913431, 0.289257,
		0.956155, -0.252982, 0.147534,
		25.902205, 33.478073, 32.408535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292759, 33.466633, 33.003735>,  <25.232897, 33.655159, 32.305260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292759, 33.466633, 33.003735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.683050, 33.519306, 32.933750>,  <25.917225, 33.550911, 32.891758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.683050, 33.519306, 32.933750>,  <25.292759, 33.466633, 33.003735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683050, 33.519306, 32.933750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117022, 0.361769, 0.924894,
		0.185088, -0.922921, 0.337579,
		0.975730, 0.131683, -0.174961,
		25.975769, 33.558811, 32.881260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658010, 33.176693, 33.524624>,  <25.292759, 33.466633, 33.003735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658010, 33.176693, 33.524624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.931057, 33.442814, 33.403690>,  <26.094885, 33.602486, 33.331131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.931057, 33.442814, 33.403690>,  <25.658010, 33.176693, 33.524624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931057, 33.442814, 33.403690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237608, 0.189169, 0.952763,
		0.691069, -0.722208, -0.028952,
		0.682617, 0.665304, -0.302332,
		26.135841, 33.642406, 33.312992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.305727, 33.013542, 33.760395>,  <25.658010, 33.176693, 33.524624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.305727, 33.013542, 33.760395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.261459, 33.407978, 33.710781>,  <26.234900, 33.644638, 33.681015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.261459, 33.407978, 33.710781>,  <26.305727, 33.013542, 33.760395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261459, 33.407978, 33.710781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277171, 0.150469, 0.948966,
		0.954426, 0.070643, -0.289967,
		-0.110669, 0.986088, -0.124031,
		26.228258, 33.703804, 33.673573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740961, 33.273308, 34.205189>,  <26.305727, 33.013542, 33.760395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740961, 33.273308, 34.205189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.582680, 33.632183, 34.126736>,  <26.487711, 33.847507, 34.079666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.582680, 33.632183, 34.126736>,  <26.740961, 33.273308, 34.205189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582680, 33.632183, 34.126736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215490, 0.298307, 0.929826,
		0.892739, 0.325672, -0.311377,
		-0.395704, 0.897191, -0.196131,
		26.463968, 33.901340, 34.067898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254431, 33.697086, 34.457813>,  <26.740961, 33.273308, 34.205189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254431, 33.697086, 34.457813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.913170, 33.901962, 34.418228>,  <26.708414, 34.024887, 34.394478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.913170, 33.901962, 34.418228>,  <27.254431, 33.697086, 34.457813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913170, 33.901962, 34.418228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085776, 0.324868, 0.941862,
		0.514561, 0.795063, -0.321095,
		-0.853153, 0.512188, -0.098967,
		26.657225, 34.055618, 34.388538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380136, 34.491756, 34.578129>,  <27.254431, 33.697086, 34.457813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380136, 34.491756, 34.578129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.010126, 34.362808, 34.658531>,  <26.788120, 34.285439, 34.706772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.010126, 34.362808, 34.658531>,  <27.380136, 34.491756, 34.578129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.010126, 34.362808, 34.658531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092930, 0.321008, 0.942506,
		-0.368360, 0.890523, -0.266983,
		-0.925027, -0.322371, 0.201003,
		26.732618, 34.266098, 34.718834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118746, 34.134319, 34.648487>,  <27.380136, 34.491756, 34.578129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118746, 34.134319, 34.648487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414003, 33.894089, 34.771423>,  <28.591158, 33.749950, 34.845184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414003, 33.894089, 34.771423>,  <28.118746, 34.134319, 34.648487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414003, 33.894089, 34.771423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132804, -0.317289, -0.938984,
		0.661445, 0.733919, -0.154445,
		0.738142, -0.600575, 0.307337,
		28.635447, 33.713917, 34.863625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712633, 34.337158, 34.315613>,  <28.118746, 34.134319, 34.648487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712633, 34.337158, 34.315613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.791304, 33.963814, 34.435715>,  <28.838505, 33.739807, 34.507778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.791304, 33.963814, 34.435715>,  <28.712633, 34.337158, 34.315613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791304, 33.963814, 34.435715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309190, -0.231572, -0.922375,
		0.930441, 0.274245, 0.243041,
		0.196675, -0.933362, 0.300258,
		28.850306, 33.683804, 34.525791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447388, 34.192547, 34.047573>,  <28.712633, 34.337158, 34.315613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447388, 34.192547, 34.047573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.269556, 33.839542, 34.108929>,  <29.162857, 33.627739, 34.145741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.269556, 33.839542, 34.108929>,  <29.447388, 34.192547, 34.047573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269556, 33.839542, 34.108929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257814, -0.290064, -0.921626,
		0.857836, -0.370188, 0.356479,
		-0.444577, -0.882510, 0.153388,
		29.136183, 33.574791, 34.154945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954744, 33.673214, 33.968121>,  <29.447388, 34.192547, 34.047573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954744, 33.673214, 33.968121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.611769, 33.483135, 33.889133>,  <29.405983, 33.369087, 33.841743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.611769, 33.483135, 33.889133>,  <29.954744, 33.673214, 33.968121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611769, 33.483135, 33.889133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344688, -0.245444, -0.906062,
		0.382089, -0.844954, 0.374246,
		-0.857437, -0.475195, -0.197464,
		29.354538, 33.340576, 33.829895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043320, 32.979794, 33.726700>,  <29.954744, 33.673214, 33.968121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043320, 32.979794, 33.726700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.672268, 33.015701, 33.581676>,  <29.449636, 33.037247, 33.494663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.672268, 33.015701, 33.581676>,  <30.043320, 32.979794, 33.726700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672268, 33.015701, 33.581676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295821, -0.416041, -0.859884,
		-0.228027, -0.904904, 0.359377,
		-0.927628, 0.089766, -0.362558,
		29.393980, 33.042633, 33.472908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103905, 32.637794, 33.105137>,  <30.043320, 32.979794, 33.726700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103905, 32.637794, 33.105137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.712261, 32.710407, 33.068497>,  <29.477276, 32.753975, 33.046513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.712261, 32.710407, 33.068497>,  <30.103905, 32.637794, 33.105137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712261, 32.710407, 33.068497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036590, -0.285854, -0.957574,
		-0.200016, -0.940922, 0.273240,
		-0.979109, 0.181532, -0.091604,
		29.418530, 32.764866, 33.041016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721855, 32.051437, 32.793671>,  <30.103905, 32.637794, 33.105137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721855, 32.051437, 32.793671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.525721, 32.393433, 32.726067>,  <29.408041, 32.598629, 32.685505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.525721, 32.393433, 32.726067>,  <29.721855, 32.051437, 32.793671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525721, 32.393433, 32.726067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040007, -0.171642, -0.984347,
		-0.870615, -0.489422, 0.049956,
		-0.490335, 0.854989, -0.169014,
		29.378620, 32.649929, 32.675362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154821, 31.922403, 32.280220>,  <29.721855, 32.051437, 32.793671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154821, 31.922403, 32.280220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.253164, 32.308025, 32.239914>,  <29.312170, 32.539398, 32.215729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.253164, 32.308025, 32.239914>,  <29.154821, 31.922403, 32.280220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253164, 32.308025, 32.239914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309037, -0.176489, -0.934530,
		-0.918722, 0.198620, -0.341320,
		0.245855, 0.964055, -0.100764,
		29.326921, 32.597240, 32.209686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930862, 32.115799, 31.626087>,  <29.154821, 31.922403, 32.280220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930862, 32.115799, 31.626087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.205896, 32.387436, 31.728895>,  <29.370916, 32.550419, 31.790581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.205896, 32.387436, 31.728895>,  <28.930862, 32.115799, 31.626087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205896, 32.387436, 31.728895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333408, 0.019170, -0.942588,
		-0.645034, 0.733800, -0.213235,
		0.687583, 0.679095, 0.257021,
		29.412170, 32.591164, 31.806002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892120, 32.641331, 31.088999>,  <28.930862, 32.115799, 31.626087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892120, 32.641331, 31.088999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.249636, 32.671661, 31.265812>,  <29.464144, 32.689861, 31.371901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.249636, 32.671661, 31.265812>,  <28.892120, 32.641331, 31.088999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249636, 32.671661, 31.265812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443544, -0.003457, -0.896246,
		-0.066434, 0.997115, -0.036724,
		0.893787, 0.075830, 0.442034,
		29.517773, 32.694412, 31.398422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203215, 33.065697, 30.757095>,  <28.892120, 32.641331, 31.088999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203215, 33.065697, 30.757095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.522102, 32.887165, 30.919693>,  <29.713434, 32.780048, 31.017252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.522102, 32.887165, 30.919693>,  <29.203215, 33.065697, 30.757095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522102, 32.887165, 30.919693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433190, -0.046043, -0.900126,
		0.420465, 0.893686, 0.156637,
		0.797217, -0.446325, 0.406495,
		29.761267, 32.753269, 31.041641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779224, 33.545380, 30.632410>,  <29.203215, 33.065697, 30.757095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779224, 33.545380, 30.632410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.933676, 33.188675, 30.726778>,  <30.026346, 32.974651, 30.783400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.933676, 33.188675, 30.726778>,  <29.779224, 33.545380, 30.632410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933676, 33.188675, 30.726778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586808, 0.040132, -0.808731,
		0.711730, 0.450714, 0.538792,
		0.386129, -0.891766, 0.235920,
		30.049515, 32.921146, 30.797554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412930, 33.605309, 30.380493>,  <29.779224, 33.545380, 30.632410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412930, 33.605309, 30.380493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.370916, 33.208916, 30.413782>,  <30.345709, 32.971081, 30.433756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.370916, 33.208916, 30.413782>,  <30.412930, 33.605309, 30.380493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370916, 33.208916, 30.413782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340529, -0.114465, -0.933240,
		0.934349, -0.069679, 0.349480,
		-0.105031, -0.990981, 0.083222,
		30.339407, 32.911621, 30.438749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052158, 33.268143, 30.057550>,  <30.412930, 33.605309, 30.380493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052158, 33.268143, 30.057550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.753496, 33.003025, 30.080202>,  <30.574299, 32.843952, 30.093794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.753496, 33.003025, 30.080202>,  <31.052158, 33.268143, 30.057550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753496, 33.003025, 30.080202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191458, -0.295646, -0.935915,
		0.637064, -0.687964, 0.347643,
		-0.746655, -0.662797, 0.056629,
		30.529499, 32.804188, 30.097191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294456, 32.709251, 29.806438>,  <31.052158, 33.268143, 30.057550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294456, 32.709251, 29.806438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.902342, 32.634064, 29.782089>,  <30.667072, 32.588951, 29.767479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.902342, 32.634064, 29.782089>,  <31.294456, 32.709251, 29.806438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902342, 32.634064, 29.782089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108486, -0.254578, -0.960948,
		0.165128, -0.948609, 0.269951,
		-0.980287, -0.187965, -0.060873,
		30.608255, 32.577675, 29.763828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178362, 32.069550, 29.399719>,  <31.294456, 32.709251, 29.806438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178362, 32.069550, 29.399719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.808662, 32.220554, 29.376905>,  <30.586843, 32.311157, 29.363216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.808662, 32.220554, 29.376905>,  <31.178362, 32.069550, 29.399719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808662, 32.220554, 29.376905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079585, -0.336603, -0.938277,
		-0.373409, -0.862661, 0.341149,
		-0.924247, 0.377512, -0.057035,
		30.531387, 32.333805, 29.359795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800802, 31.581491, 29.069258>,  <31.178362, 32.069550, 29.399719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800802, 31.581491, 29.069258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.579882, 31.910809, 29.016870>,  <30.447329, 32.108398, 28.985437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.579882, 31.910809, 29.016870>,  <30.800802, 31.581491, 29.069258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579882, 31.910809, 29.016870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204707, -0.286231, -0.936038,
		-0.808120, -0.490165, 0.326619,
		-0.552301, 0.823292, -0.130969,
		30.414190, 32.157795, 28.977579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239994, 31.254263, 28.733345>,  <30.800802, 31.581491, 29.069258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239994, 31.254263, 28.733345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.184629, 31.645334, 28.670116>,  <30.151411, 31.879976, 28.632179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.184629, 31.645334, 28.670116>,  <30.239994, 31.254263, 28.733345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184629, 31.645334, 28.670116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131617, -0.176351, -0.975488,
		-0.981590, -0.114215, 0.153088,
		-0.138413, 0.977678, -0.158072,
		30.143106, 31.938639, 28.622694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656178, 31.354200, 28.281734>,  <30.239994, 31.254263, 28.733345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656178, 31.354200, 28.281734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.876532, 31.685982, 28.244793>,  <30.008743, 31.885052, 28.222628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.876532, 31.685982, 28.244793>,  <29.656178, 31.354200, 28.281734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876532, 31.685982, 28.244793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017342, -0.099260, -0.994910,
		-0.834401, 0.549683, -0.040296,
		0.550885, 0.829455, -0.092355,
		30.041798, 31.934818, 28.217087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299330, 31.812962, 27.884724>,  <29.656178, 31.354200, 28.281734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299330, 31.812962, 27.884724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.684336, 31.914213, 27.845753>,  <29.915339, 31.974964, 27.822371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.684336, 31.914213, 27.845753>,  <29.299330, 31.812962, 27.884724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684336, 31.914213, 27.845753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063273, -0.139737, -0.988165,
		-0.263747, 0.957288, -0.118482,
		0.962515, 0.253129, -0.097426,
		29.973089, 31.990152, 27.816525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.572380, 34.601147, 47.250134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.332111, 34.292381, 47.166859>,  <40.187950, 34.107121, 47.116894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.332111, 34.292381, 47.166859>,  <40.572380, 34.601147, 47.250134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332111, 34.292381, 47.166859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272439, -0.047186, 0.961015,
		-0.751647, 0.633970, -0.181957,
		-0.600669, -0.771917, -0.208185,
		40.151909, 34.060806, 47.104404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962898, 34.727016, 47.545300>,  <40.572380, 34.601147, 47.250134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962898, 34.727016, 47.545300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.939083, 34.329250, 47.510468>,  <39.924793, 34.090591, 47.489567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.939083, 34.329250, 47.510468>,  <39.962898, 34.727016, 47.545300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939083, 34.329250, 47.510468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376882, -0.058388, 0.924419,
		-0.924346, 0.087862, -0.371302,
		-0.059541, -0.994420, -0.087084,
		39.921219, 34.030926, 47.484341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288792, 34.392025, 47.796192>,  <39.962898, 34.727016, 47.545300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288792, 34.392025, 47.796192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.531834, 34.074818, 47.813797>,  <39.677658, 33.884491, 47.824360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.531834, 34.074818, 47.813797>,  <39.288792, 34.392025, 47.796192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531834, 34.074818, 47.813797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275337, -0.158329, 0.948220,
		-0.744990, -0.588259, -0.314550,
		0.607602, -0.793022, 0.044016,
		39.714115, 33.836910, 47.827003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871906, 33.791225, 47.992489>,  <39.288792, 34.392025, 47.796192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871906, 33.791225, 47.992489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.250828, 33.703873, 48.086235>,  <39.478180, 33.651463, 48.142483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.250828, 33.703873, 48.086235>,  <38.871906, 33.791225, 47.992489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250828, 33.703873, 48.086235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304967, -0.390902, 0.868442,
		-0.098038, -0.894151, -0.436901,
		0.947304, -0.218380, 0.234363,
		39.535019, 33.638359, 48.156544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818455, 33.158409, 48.226185>,  <38.871906, 33.791225, 47.992489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818455, 33.158409, 48.226185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.174999, 33.286697, 48.354321>,  <39.388924, 33.363670, 48.431202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.174999, 33.286697, 48.354321>,  <38.818455, 33.158409, 48.226185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174999, 33.286697, 48.354321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145862, -0.466178, 0.872584,
		0.429190, -0.824511, -0.368752,
		0.891359, 0.320717, 0.320344,
		39.442406, 33.382912, 48.450424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123299, 32.527096, 48.553391>,  <38.818455, 33.158409, 48.226185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123299, 32.527096, 48.553391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.305965, 32.849682, 48.703625>,  <39.415565, 33.043236, 48.793766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.305965, 32.849682, 48.703625>,  <39.123299, 32.527096, 48.553391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305965, 32.849682, 48.703625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061662, -0.392471, 0.917695,
		0.887498, -0.442241, -0.129501,
		0.456668, 0.806467, 0.375587,
		39.442966, 33.091621, 48.816299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592213, 32.304317, 49.003685>,  <39.123299, 32.527096, 48.553391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592213, 32.304317, 49.003685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.532692, 32.676651, 49.137192>,  <39.496979, 32.900051, 49.217297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.532692, 32.676651, 49.137192>,  <39.592213, 32.304317, 49.003685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532692, 32.676651, 49.137192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176116, -0.307180, 0.935213,
		0.973057, 0.197946, -0.118225,
		-0.148805, 0.930837, 0.333766,
		39.488049, 32.955902, 49.237320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053871, 32.405712, 49.505653>,  <39.592213, 32.304317, 49.003685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053871, 32.405712, 49.505653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.803131, 32.711624, 49.565208>,  <39.652687, 32.895172, 49.600941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.803131, 32.711624, 49.565208>,  <40.053871, 32.405712, 49.505653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803131, 32.711624, 49.565208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064984, -0.241741, 0.968162,
		0.776425, 0.597218, 0.201234,
		-0.626850, 0.764782, 0.148884,
		39.615078, 32.941059, 49.609875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240669, 32.870800, 50.081181>,  <40.053871, 32.405712, 49.505653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240669, 32.870800, 50.081181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.851124, 32.951752, 50.039925>,  <39.617397, 33.000324, 50.015171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.851124, 32.951752, 50.039925>,  <40.240669, 32.870800, 50.081181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851124, 32.951752, 50.039925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112654, -0.036039, 0.992981,
		0.197241, 0.978644, 0.057896,
		-0.973861, 0.202379, -0.103140,
		39.558964, 33.012466, 50.008984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089031, 32.900021, 50.790375>,  <40.240669, 32.870800, 50.081181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089031, 32.900021, 50.790375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.726589, 32.918629, 50.622177>,  <39.509125, 32.929794, 50.521259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.726589, 32.918629, 50.622177>,  <40.089031, 32.900021, 50.790375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726589, 32.918629, 50.622177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422902, -0.126338, 0.897325,
		-0.011379, 0.990896, 0.134149,
		-0.906104, 0.046522, -0.420490,
		39.454758, 32.932587, 50.496029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731800, 33.410606, 51.248814>,  <40.089031, 32.900021, 50.790375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731800, 33.410606, 51.248814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.453270, 33.188778, 51.066570>,  <39.286152, 33.055679, 50.957222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.453270, 33.188778, 51.066570>,  <39.731800, 33.410606, 51.248814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453270, 33.188778, 51.066570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539208, -0.014754, 0.842044,
		-0.473695, 0.832005, -0.288756,
		-0.696324, -0.554571, -0.455613,
		39.244373, 33.022408, 50.929886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040363, 33.788685, 51.286179>,  <39.731800, 33.410606, 51.248814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040363, 33.788685, 51.286179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.013523, 33.390186, 51.264290>,  <38.997421, 33.151089, 51.251156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.013523, 33.390186, 51.264290>,  <39.040363, 33.788685, 51.286179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013523, 33.390186, 51.264290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384844, -0.024763, 0.922649,
		-0.920539, 0.082968, -0.381737,
		-0.067097, -0.996244, -0.054725,
		38.993393, 33.091312, 51.247871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313499, 33.618980, 51.531342>,  <39.040363, 33.788685, 51.286179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313499, 33.618980, 51.531342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.612511, 33.381344, 51.650181>,  <38.791916, 33.238762, 51.721485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.612511, 33.381344, 51.650181>,  <38.313499, 33.618980, 51.531342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612511, 33.381344, 51.650181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351598, 0.025586, 0.935801,
		-0.563550, -0.803993, -0.189753,
		0.747523, -0.594087, 0.297102,
		38.836769, 33.203117, 51.739311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449024, 34.006866, 52.258514>,  <38.313499, 33.618980, 51.531342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449024, 34.006866, 52.258514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.337402, 34.237217, 51.951141>,  <38.270428, 34.375427, 51.766716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.337402, 34.237217, 51.951141>,  <38.449024, 34.006866, 52.258514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337402, 34.237217, 51.951141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931080, -0.358083, 0.069765,
		-0.234987, 0.734942, 0.636114,
		-0.279055, 0.575879, -0.768434,
		38.253685, 34.409981, 51.720612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964951, 33.442902, 52.496243>,  <38.449024, 34.006866, 52.258514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964951, 33.442902, 52.496243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.594360, 33.315922, 52.577114>,  <37.372005, 33.239735, 52.625637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.594360, 33.315922, 52.577114>,  <37.964951, 33.442902, 52.496243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594360, 33.315922, 52.577114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346159, 0.507859, -0.788830,
		0.147731, -0.800816, -0.580404,
		-0.926471, -0.317447, 0.202183,
		37.316418, 33.220688, 52.637768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773663, 32.941345, 51.992569>,  <37.964951, 33.442902, 52.496243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773663, 32.941345, 51.992569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.445621, 33.118603, 52.137375>,  <37.248795, 33.224957, 52.224258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.445621, 33.118603, 52.137375>,  <37.773663, 32.941345, 51.992569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445621, 33.118603, 52.137375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164993, 0.422655, -0.891145,
		-0.547908, -0.790563, -0.273507,
		-0.820106, 0.443139, 0.362014,
		37.199589, 33.251545, 52.245979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205681, 32.715130, 51.604095>,  <37.773663, 32.941345, 51.992569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205681, 32.715130, 51.604095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.046726, 33.043938, 51.767250>,  <36.951355, 33.241222, 51.865143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.046726, 33.043938, 51.767250>,  <37.205681, 32.715130, 51.604095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046726, 33.043938, 51.767250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131545, 0.388866, -0.911855,
		-0.908176, -0.416010, -0.046396,
		-0.397383, 0.822021, 0.407883,
		36.927513, 33.290543, 51.889614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588909, 32.809372, 51.275871>,  <37.205681, 32.715130, 51.604095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588909, 32.809372, 51.275871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660782, 33.163944, 51.446499>,  <36.703907, 33.376686, 51.548878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.660782, 33.163944, 51.446499>,  <36.588909, 32.809372, 51.275871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660782, 33.163944, 51.446499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150456, 0.453290, -0.878573,
		-0.972151, 0.093683, 0.214816,
		0.179682, 0.886426, 0.426572,
		36.714687, 33.429871, 51.574471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007919, 33.209995, 51.138496>,  <36.588909, 32.809372, 51.275871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007919, 33.209995, 51.138496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297504, 33.475403, 51.213993>,  <36.471256, 33.634647, 51.259289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297504, 33.475403, 51.213993>,  <36.007919, 33.209995, 51.138496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297504, 33.475403, 51.213993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293715, 0.544037, -0.785975,
		-0.624192, 0.513578, 0.588746,
		0.723959, 0.663522, 0.188738,
		36.514690, 33.674461, 51.270615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686954, 33.850765, 51.003319>,  <36.007919, 33.209995, 51.138496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686954, 33.850765, 51.003319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074448, 33.949528, 50.993595>,  <36.306942, 34.008785, 50.987762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.074448, 33.949528, 50.993595>,  <35.686954, 33.850765, 51.003319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074448, 33.949528, 50.993595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203121, 0.733024, -0.649167,
		-0.142465, 0.633808, 0.760257,
		0.968734, 0.246908, -0.024310,
		36.365067, 34.023602, 50.986301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744186, 34.526951, 51.228760>,  <35.686954, 33.850765, 51.003319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744186, 34.526951, 51.228760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.047276, 34.469517, 50.974125>,  <36.229130, 34.435055, 50.821346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.047276, 34.469517, 50.974125>,  <35.744186, 34.526951, 51.228760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047276, 34.469517, 50.974125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390789, 0.681401, -0.618851,
		0.522628, 0.717688, 0.460201,
		0.757723, -0.143587, -0.636584,
		36.274593, 34.426441, 50.783150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920830, 35.241871, 50.985825>,  <35.744186, 34.526951, 51.228760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920830, 35.241871, 50.985825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.086422, 34.997154, 50.716209>,  <36.185776, 34.850323, 50.554440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.086422, 34.997154, 50.716209>,  <35.920830, 35.241871, 50.985825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086422, 34.997154, 50.716209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099276, 0.705712, -0.701509,
		0.904857, 0.357325, 0.231412,
		0.413977, -0.611792, -0.674042,
		36.210617, 34.813618, 50.513996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415569, 35.654911, 50.537682>,  <35.920830, 35.241871, 50.985825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415569, 35.654911, 50.537682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.316555, 35.320663, 50.341530>,  <36.257149, 35.120113, 50.223839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.316555, 35.320663, 50.341530>,  <36.415569, 35.654911, 50.537682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316555, 35.320663, 50.341530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339429, 0.548844, -0.763910,
		0.907478, -0.022644, -0.419489,
		-0.247532, -0.835618, -0.490378,
		36.242294, 35.069977, 50.194416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586185, 35.788582, 49.876640>,  <36.415569, 35.654911, 50.537682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586185, 35.788582, 49.876640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.334171, 35.480999, 49.833279>,  <36.182961, 35.296448, 49.807262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.334171, 35.480999, 49.833279>,  <36.586185, 35.788582, 49.876640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334171, 35.480999, 49.833279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249745, 0.332812, -0.909320,
		0.735308, -0.545835, -0.401729,
		-0.630039, -0.768960, -0.108400,
		36.145161, 35.250313, 49.800758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789341, 35.541859, 49.208622>,  <36.586185, 35.788582, 49.876640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789341, 35.541859, 49.208622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.424164, 35.402897, 49.294277>,  <36.205059, 35.319519, 49.345669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.424164, 35.402897, 49.294277>,  <36.789341, 35.541859, 49.208622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424164, 35.402897, 49.294277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318159, 0.277288, -0.906579,
		0.255555, -0.895787, -0.363672,
		-0.912944, -0.347387, 0.214140,
		36.150284, 35.298676, 49.358517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607357, 34.887466, 48.737774>,  <36.789341, 35.541859, 49.208622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607357, 34.887466, 48.737774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.281540, 35.081825, 48.864532>,  <36.086048, 35.198441, 48.940586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.281540, 35.081825, 48.864532>,  <36.607357, 34.887466, 48.737774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281540, 35.081825, 48.864532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269092, 0.167461, -0.948444,
		-0.513918, -0.857820, -0.005652,
		-0.814541, 0.485902, 0.316894,
		36.037178, 35.227596, 48.959602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133472, 34.493076, 48.441868>,  <36.607357, 34.887466, 48.737774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133472, 34.493076, 48.441868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.971451, 34.845192, 48.540684>,  <35.874237, 35.056461, 48.599972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.971451, 34.845192, 48.540684>,  <36.133472, 34.493076, 48.441868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971451, 34.845192, 48.540684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347124, 0.101904, -0.932266,
		-0.845836, -0.463369, 0.264293,
		-0.405051, 0.880287, 0.247041,
		35.849934, 35.109280, 48.614796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395573, 34.467419, 48.149734>,  <36.133472, 34.493076, 48.441868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395573, 34.467419, 48.149734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466087, 34.855320, 48.217274>,  <35.508396, 35.088058, 48.257797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466087, 34.855320, 48.217274>,  <35.395573, 34.467419, 48.149734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466087, 34.855320, 48.217274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448907, 0.231857, -0.862975,
		-0.876018, 0.076333, 0.476200,
		0.176284, 0.969750, 0.168844,
		35.518974, 35.146244, 48.267925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677315, 34.301254, 48.310650>,  <35.395573, 34.467419, 48.149734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677315, 34.301254, 48.310650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.389408, 34.026714, 48.268955>,  <34.216663, 33.861992, 48.243938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.389408, 34.026714, 48.268955>,  <34.677315, 34.301254, 48.310650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389408, 34.026714, 48.268955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091272, -0.242402, 0.965873,
		-0.688193, 0.685687, 0.237116,
		-0.719764, -0.686349, -0.104235,
		34.173477, 33.820808, 48.237686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268021, 34.315563, 48.922611>,  <34.677315, 34.301254, 48.310650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268021, 34.315563, 48.922611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.195206, 33.952568, 48.771175>,  <34.151516, 33.734772, 48.680313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.195206, 33.952568, 48.771175>,  <34.268021, 34.315563, 48.922611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195206, 33.952568, 48.771175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078899, -0.370303, 0.925554,
		-0.980122, 0.198352, -0.004192,
		-0.182034, -0.907487, -0.378592,
		34.140594, 33.680321, 48.657597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929092, 33.970615, 49.448246>,  <34.268021, 34.315563, 48.922611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929092, 33.970615, 49.448246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021034, 33.648434, 49.229736>,  <34.076199, 33.455124, 49.098629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021034, 33.648434, 49.229736>,  <33.929092, 33.970615, 49.448246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021034, 33.648434, 49.229736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123580, -0.532606, 0.837293,
		-0.965347, -0.259963, -0.022883,
		0.229853, -0.805450, -0.546276,
		34.089989, 33.406799, 49.065853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536091, 33.448475, 49.749882>,  <33.929092, 33.970615, 49.448246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536091, 33.448475, 49.749882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.804871, 33.237667, 49.541756>,  <33.966141, 33.111183, 49.416882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.804871, 33.237667, 49.541756>,  <33.536091, 33.448475, 49.749882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804871, 33.237667, 49.541756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149011, -0.591984, 0.792054,
		-0.725449, -0.609755, -0.319253,
		0.671951, -0.527023, -0.520315,
		34.006454, 33.079559, 49.385662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353661, 32.697823, 49.780682>,  <33.536091, 33.448475, 49.749882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353661, 32.697823, 49.780682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.740643, 32.731716, 49.685303>,  <33.972832, 32.752052, 49.628075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.740643, 32.731716, 49.685303>,  <33.353661, 32.697823, 49.780682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740643, 32.731716, 49.685303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236470, -0.638203, 0.732652,
		-0.090093, -0.765191, -0.637468,
		0.967453, 0.084735, -0.238443,
		34.030880, 32.757137, 49.613770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477856, 32.017963, 49.749065>,  <33.353661, 32.697823, 49.780682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477856, 32.017963, 49.749065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824291, 32.213867, 49.789131>,  <34.032150, 32.331409, 49.813171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824291, 32.213867, 49.789131>,  <33.477856, 32.017963, 49.749065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824291, 32.213867, 49.789131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315198, -0.690534, 0.651009,
		0.388001, -0.532260, -0.752433,
		0.866087, 0.489757, 0.100161,
		34.084118, 32.360794, 49.819180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921425, 31.505033, 49.798470>,  <33.477856, 32.017963, 49.749065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921425, 31.505033, 49.798470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105648, 31.826496, 49.949211>,  <34.216183, 32.019375, 50.039658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105648, 31.826496, 49.949211>,  <33.921425, 31.505033, 49.798470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105648, 31.826496, 49.949211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307094, -0.542610, 0.781836,
		0.832815, -0.244349, -0.496702,
		0.460556, 0.803659, 0.376856,
		34.243816, 32.067593, 50.062267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982693, 30.886698, 49.533394>,  <33.921425, 31.505033, 49.798470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982693, 30.886698, 49.533394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676796, 30.638756, 49.603775>,  <33.493259, 30.489990, 49.646004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.676796, 30.638756, 49.603775>,  <33.982693, 30.886698, 49.533394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676796, 30.638756, 49.603775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355699, 0.178424, -0.917411,
		0.537268, -0.764164, -0.356928,
		-0.764737, -0.619854, 0.175951,
		33.447376, 30.452799, 49.656559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769646, 30.513260, 48.988640>,  <33.982693, 30.886698, 49.533394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769646, 30.513260, 48.988640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.413094, 30.450214, 49.158627>,  <33.199162, 30.412388, 49.260620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.413094, 30.450214, 49.158627>,  <33.769646, 30.513260, 48.988640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413094, 30.450214, 49.158627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435470, 0.037721, -0.899413,
		0.125733, -0.986780, -0.102261,
		-0.891380, -0.157617, 0.424970,
		33.145679, 30.402931, 49.286118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399448, 29.944557, 48.640957>,  <33.769646, 30.513260, 48.988640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399448, 29.944557, 48.640957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.112492, 30.157064, 48.821224>,  <32.940319, 30.284569, 48.929386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.112492, 30.157064, 48.821224>,  <33.399448, 29.944557, 48.640957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112492, 30.157064, 48.821224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422730, 0.182241, -0.887743,
		-0.553761, -0.827370, 0.093846,
		-0.717389, 0.531269, 0.450673,
		32.897274, 30.316444, 48.956425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769882, 29.836031, 48.305336>,  <33.399448, 29.944557, 48.640957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769882, 29.836031, 48.305336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.658417, 30.164047, 48.505287>,  <32.591537, 30.360857, 48.625259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.658417, 30.164047, 48.505287>,  <32.769882, 29.836031, 48.305336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658417, 30.164047, 48.505287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489187, 0.326714, -0.808674,
		-0.826463, -0.469883, 0.310110,
		-0.278665, 0.820042, 0.499878,
		32.574818, 30.410059, 48.655251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997046, 30.096138, 48.052853>,  <32.769882, 29.836031, 48.305336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997046, 30.096138, 48.052853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.185181, 30.400295, 48.231998>,  <32.298061, 30.582790, 48.339485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.185181, 30.400295, 48.231998>,  <31.997046, 30.096138, 48.052853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185181, 30.400295, 48.231998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354609, 0.627578, -0.693108,
		-0.808107, 0.167176, 0.564815,
		0.470336, 0.760393, 0.447868,
		32.326283, 30.628414, 48.366360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479338, 30.675638, 47.942551>,  <31.997046, 30.096138, 48.052853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479338, 30.675638, 47.942551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.840433, 30.832266, 48.013809>,  <32.057091, 30.926243, 48.056564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.840433, 30.832266, 48.013809>,  <31.479338, 30.675638, 47.942551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840433, 30.832266, 48.013809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128126, 0.640053, -0.757573,
		-0.410665, 0.661065, 0.627971,
		0.902739, 0.391568, 0.178147,
		32.111256, 30.949736, 48.067253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307178, 31.349842, 47.972649>,  <31.479338, 30.675638, 47.942551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307178, 31.349842, 47.972649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.697668, 31.318974, 47.891621>,  <31.931961, 31.300453, 47.843002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.697668, 31.318974, 47.891621>,  <31.307178, 31.349842, 47.972649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697668, 31.318974, 47.891621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082024, 0.733505, -0.674717,
		0.200656, 0.675289, 0.709733,
		0.976222, -0.077171, -0.202572,
		31.990534, 31.295822, 47.830849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.040379, 30.098217, 50.834023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.196594, 30.465094, 50.865616>,  <38.290325, 30.685219, 50.884571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.196594, 30.465094, 50.865616>,  <38.040379, 30.098217, 50.834023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196594, 30.465094, 50.865616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150826, 0.148385, -0.977360,
		-0.908146, 0.369787, 0.196287,
		0.390541, 0.917191, 0.078981,
		38.313755, 30.740252, 50.889309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640446, 30.802238, 50.705090>,  <38.040379, 30.098217, 50.834023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640446, 30.802238, 50.705090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.010918, 30.849894, 50.561981>,  <38.233200, 30.878487, 50.476116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.010918, 30.849894, 50.561981>,  <37.640446, 30.802238, 50.705090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010918, 30.849894, 50.561981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359155, -0.010383, -0.933220,
		-0.114895, 0.992823, 0.033172,
		0.926179, 0.119136, -0.357770,
		38.288773, 30.885635, 50.454651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669868, 31.331102, 50.145691>,  <37.640446, 30.802238, 50.705090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669868, 31.331102, 50.145691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.980038, 31.082981, 50.098454>,  <38.166138, 30.934109, 50.070110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.980038, 31.082981, 50.098454>,  <37.669868, 31.331102, 50.145691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980038, 31.082981, 50.098454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118277, 0.041033, -0.992132,
		0.620270, 0.783287, -0.041550,
		0.775420, -0.620304, -0.118097,
		38.212662, 30.896891, 50.063023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893581, 31.488377, 49.470917>,  <37.669868, 31.331102, 50.145691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893581, 31.488377, 49.470917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.109165, 31.158937, 49.541576>,  <38.238518, 30.961273, 49.583973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.109165, 31.158937, 49.541576>,  <37.893581, 31.488377, 49.470917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109165, 31.158937, 49.541576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101030, -0.144996, -0.984261,
		0.836250, 0.548325, 0.005061,
		0.538961, -0.823599, 0.176650,
		38.270855, 30.911858, 49.594570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565094, 31.570831, 49.145329>,  <37.893581, 31.488377, 49.470917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565094, 31.570831, 49.145329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.478546, 31.180941, 49.167553>,  <38.426617, 30.947006, 49.180889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.478546, 31.180941, 49.167553>,  <38.565094, 31.570831, 49.145329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478546, 31.180941, 49.167553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073271, -0.072959, -0.994640,
		0.973558, -0.211142, 0.087206,
		-0.216373, -0.974729, 0.055560,
		38.413635, 30.888521, 49.184219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983406, 31.244217, 48.599319>,  <38.565094, 31.570831, 49.145329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983406, 31.244217, 48.599319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.699448, 30.972208, 48.672661>,  <38.529072, 30.809002, 48.716663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.699448, 30.972208, 48.672661>,  <38.983406, 31.244217, 48.599319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699448, 30.972208, 48.672661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095367, -0.350739, -0.931605,
		0.697820, -0.643857, 0.313839,
		-0.709896, -0.680023, 0.183350,
		38.486481, 30.768202, 48.727665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307953, 30.574438, 48.306065>,  <38.983406, 31.244217, 48.599319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307953, 30.574438, 48.306065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.914650, 30.510538, 48.341125>,  <38.678669, 30.472198, 48.362164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.914650, 30.510538, 48.341125>,  <39.307953, 30.574438, 48.306065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914650, 30.510538, 48.341125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022463, -0.371096, -0.928323,
		0.180827, -0.914750, 0.361295,
		-0.983259, -0.159750, 0.087652,
		38.619671, 30.462614, 48.367420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226006, 30.003258, 48.039822>,  <39.307953, 30.574438, 48.306065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226006, 30.003258, 48.039822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.845181, 30.125444, 48.046265>,  <38.616684, 30.198757, 48.050129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.845181, 30.125444, 48.046265>,  <39.226006, 30.003258, 48.039822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845181, 30.125444, 48.046265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134038, -0.369274, -0.919603,
		-0.274962, -0.877682, 0.392518,
		-0.952066, 0.305468, 0.016106,
		38.559559, 30.217085, 48.051098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859459, 29.432705, 47.642857>,  <39.226006, 30.003258, 48.039822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859459, 29.432705, 47.642857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.626396, 29.757751, 47.647907>,  <38.486557, 29.952780, 47.650936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.626396, 29.757751, 47.647907>,  <38.859459, 29.432705, 47.642857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626396, 29.757751, 47.647907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270164, -0.179014, -0.946026,
		-0.766498, -0.554621, 0.323845,
		-0.582659, 0.812618, 0.012625,
		38.451599, 30.001537, 47.651695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236801, 29.236498, 47.280361>,  <38.859459, 29.432705, 47.642857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236801, 29.236498, 47.280361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.274403, 29.634647, 47.272446>,  <38.296963, 29.873537, 47.267696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.274403, 29.634647, 47.272446>,  <38.236801, 29.236498, 47.280361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274403, 29.634647, 47.272446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155815, -0.004927, -0.987774,
		-0.983303, 0.095938, 0.154631,
		0.094003, 0.995375, -0.019793,
		38.302605, 29.933260, 47.266506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663578, 29.472078, 46.956779>,  <38.236801, 29.236498, 47.280361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663578, 29.472078, 46.956779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.892075, 29.797647, 46.914421>,  <38.029175, 29.992989, 46.889008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.892075, 29.797647, 46.914421>,  <37.663578, 29.472078, 46.956779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892075, 29.797647, 46.914421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229319, 0.034387, -0.972744,
		-0.788095, 0.579957, 0.206291,
		0.571243, 0.813921, -0.105895,
		38.063446, 30.041824, 46.882652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329205, 30.097172, 46.662533>,  <37.663578, 29.472078, 46.956779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329205, 30.097172, 46.662533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.709873, 30.133829, 46.545284>,  <37.938274, 30.155825, 46.474934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.709873, 30.133829, 46.545284>,  <37.329205, 30.097172, 46.662533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709873, 30.133829, 46.545284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303354, 0.131578, -0.943750,
		-0.047922, 0.987061, 0.153020,
		0.951672, 0.091645, -0.293124,
		37.995377, 30.161324, 46.457348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729618, 30.641058, 46.682064>,  <37.329205, 30.097172, 46.662533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729618, 30.641058, 46.682064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.505600, 30.351990, 46.520027>,  <36.371189, 30.178549, 46.422806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.505600, 30.351990, 46.520027>,  <36.729618, 30.641058, 46.682064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505600, 30.351990, 46.520027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115721, -0.415936, 0.902001,
		-0.820342, 0.552037, 0.149314,
		-0.560043, -0.722670, -0.405092,
		36.337585, 30.135189, 46.398499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193253, 30.654129, 47.067604>,  <36.729618, 30.641058, 46.682064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193253, 30.654129, 47.067604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.183781, 30.292225, 46.897499>,  <36.178097, 30.075083, 46.795437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.183781, 30.292225, 46.897499>,  <36.193253, 30.654129, 47.067604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183781, 30.292225, 46.897499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093113, -0.425530, 0.900141,
		-0.995374, -0.018282, 0.094322,
		-0.023681, -0.904759, -0.425264,
		36.176678, 30.020798, 46.769920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697857, 30.209112, 47.457359>,  <36.193253, 30.654129, 47.067604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697857, 30.209112, 47.457359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.941624, 29.966824, 47.252728>,  <36.087883, 29.821449, 47.129948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.941624, 29.966824, 47.252728>,  <35.697857, 30.209112, 47.457359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941624, 29.966824, 47.252728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008760, -0.640054, 0.768280,
		-0.792800, -0.472686, -0.384755,
		0.609419, -0.605722, -0.511575,
		36.124451, 29.785107, 47.099255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352184, 29.637442, 47.293217>,  <35.697857, 30.209112, 47.457359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352184, 29.637442, 47.293217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.743694, 29.556635, 47.307049>,  <35.978600, 29.508150, 47.315350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.743694, 29.556635, 47.307049>,  <35.352184, 29.637442, 47.293217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743694, 29.556635, 47.307049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169559, -0.703338, 0.690337,
		-0.115137, -0.681546, -0.722661,
		0.978772, -0.202017, 0.034582,
		36.037327, 29.496029, 47.317425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329212, 28.934023, 47.198521>,  <35.352184, 29.637442, 47.293217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329212, 28.934023, 47.198521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.689083, 28.985563, 47.365360>,  <35.905006, 29.016487, 47.465466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.689083, 28.985563, 47.365360>,  <35.329212, 28.934023, 47.198521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689083, 28.985563, 47.365360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174934, -0.768969, 0.614886,
		0.399967, -0.626166, -0.669285,
		0.899680, 0.128853, 0.417100,
		35.958988, 29.024220, 47.490490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526642, 28.204786, 47.414246>,  <35.329212, 28.934023, 47.198521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526642, 28.204786, 47.414246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.774410, 28.421705, 47.641308>,  <35.923069, 28.551857, 47.777546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.774410, 28.421705, 47.641308>,  <35.526642, 28.204786, 47.414246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774410, 28.421705, 47.641308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113686, -0.653490, 0.748349,
		0.776787, -0.528075, -0.343132,
		0.619418, 0.542298, 0.567657,
		35.960236, 28.584394, 47.811604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998840, 27.703266, 47.659637>,  <35.526642, 28.204786, 47.414246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998840, 27.703266, 47.659637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.001820, 28.027325, 47.894108>,  <36.003609, 28.221760, 48.034790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.001820, 28.027325, 47.894108>,  <35.998840, 27.703266, 47.659637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001820, 28.027325, 47.894108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199663, -0.573185, 0.794729,
		0.979836, -0.122961, 0.157485,
		0.007453, 0.810148, 0.586178,
		36.004055, 28.270369, 48.069962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197678, 27.359749, 48.214909>,  <35.998840, 27.703266, 47.659637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197678, 27.359749, 48.214909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.107323, 27.714201, 48.376774>,  <36.053108, 27.926872, 48.473892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.107323, 27.714201, 48.376774>,  <36.197678, 27.359749, 48.214909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107323, 27.714201, 48.376774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196614, -0.448322, 0.871980,
		0.954106, 0.117407, 0.275496,
		-0.225888, 0.886128, 0.404663,
		36.039555, 27.980040, 48.498173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623211, 27.462704, 48.871780>,  <36.197678, 27.359749, 48.214909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623211, 27.462704, 48.871780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.312134, 27.713142, 48.894386>,  <36.125488, 27.863405, 48.907948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.312134, 27.713142, 48.894386>,  <36.623211, 27.462704, 48.871780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312134, 27.713142, 48.894386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168213, -0.293871, 0.940927,
		0.605719, 0.722248, 0.333860,
		-0.777695, 0.626097, 0.056512,
		36.078827, 27.900972, 48.911339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679775, 27.746481, 49.558411>,  <36.623211, 27.462704, 48.871780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679775, 27.746481, 49.558411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.290733, 27.767914, 49.467934>,  <36.057308, 27.780773, 49.413647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.290733, 27.767914, 49.467934>,  <36.679775, 27.746481, 49.558411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290733, 27.767914, 49.467934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226865, -0.430862, 0.873436,
		-0.050655, 0.900826, 0.431216,
		-0.972608, 0.053584, -0.226191,
		35.998951, 27.783989, 49.400078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405914, 28.249765, 50.043427>,  <36.679775, 27.746481, 49.558411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405914, 28.249765, 50.043427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.101669, 28.031754, 49.902340>,  <35.919121, 27.900946, 49.817688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.101669, 28.031754, 49.902340>,  <36.405914, 28.249765, 50.043427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101669, 28.031754, 49.902340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272412, -0.225209, 0.935453,
		-0.589286, 0.807602, 0.022824,
		-0.760614, -0.545032, -0.352713,
		35.873486, 27.868244, 49.796528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884121, 28.497509, 50.455227>,  <36.405914, 28.249765, 50.043427>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884121, 28.497509, 50.455227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.755650, 28.162994, 50.277477>,  <35.678566, 27.962286, 50.170830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.755650, 28.162994, 50.277477>,  <35.884121, 28.497509, 50.455227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755650, 28.162994, 50.277477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425035, -0.292020, 0.856778,
		-0.846278, 0.464055, -0.261661,
		-0.321182, -0.836288, -0.444370,
		35.659294, 27.912107, 50.144165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201118, 28.499237, 50.703308>,  <35.884121, 28.497509, 50.455227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201118, 28.499237, 50.703308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.356838, 28.151962, 50.580215>,  <35.450272, 27.943598, 50.506359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.356838, 28.151962, 50.580215>,  <35.201118, 28.499237, 50.703308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356838, 28.151962, 50.580215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277773, -0.429184, 0.859444,
		-0.878229, -0.249104, -0.408241,
		0.389302, -0.868187, -0.307728,
		35.473629, 27.891506, 50.487896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714828, 27.826082, 50.834843>,  <35.201118, 28.499237, 50.703308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714828, 27.826082, 50.834843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.107285, 27.750046, 50.848892>,  <35.342758, 27.704424, 50.857323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.107285, 27.750046, 50.848892>,  <34.714828, 27.826082, 50.834843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107285, 27.750046, 50.848892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096114, -0.322071, 0.941824,
		-0.167721, -0.927435, -0.334266,
		0.981138, -0.190091, 0.035121,
		35.401627, 27.693018, 50.859428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075092, 27.913567, 51.139690>,  <34.714828, 27.826082, 50.834843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075092, 27.913567, 51.139690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.095940, 28.202087, 51.415955>,  <34.108448, 28.375200, 51.581711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.095940, 28.202087, 51.415955>,  <34.075092, 27.913567, 51.139690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095940, 28.202087, 51.415955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387440, 0.652031, -0.651726,
		-0.920421, -0.233621, 0.313444,
		0.052118, 0.721303, 0.690657,
		34.111576, 28.418478, 51.623150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456509, 28.318899, 51.111786>,  <34.075092, 27.913567, 51.139690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456509, 28.318899, 51.111786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.712883, 28.571180, 51.286793>,  <33.866707, 28.722549, 51.391796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.712883, 28.571180, 51.286793>,  <33.456509, 28.318899, 51.111786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712883, 28.571180, 51.286793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259858, 0.714607, -0.649469,
		-0.722273, 0.302574, 0.621909,
		0.640933, 0.630702, 0.437516,
		33.905163, 28.760391, 51.418049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036030, 28.899387, 51.383919>,  <33.456509, 28.318899, 51.111786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036030, 28.899387, 51.383919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.415604, 29.003391, 51.312458>,  <33.643349, 29.065794, 51.269581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.415604, 29.003391, 51.312458>,  <33.036030, 28.899387, 51.383919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415604, 29.003391, 51.312458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314811, 0.743954, -0.589428,
		-0.020351, 0.615570, 0.787819,
		0.948936, 0.260010, -0.178648,
		33.700283, 29.081394, 51.258865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936420, 29.575209, 51.392063>,  <33.036030, 28.899387, 51.383919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936420, 29.575209, 51.392063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.291172, 29.533205, 51.212101>,  <33.504025, 29.508003, 51.104122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.291172, 29.533205, 51.212101>,  <32.936420, 29.575209, 51.392063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291172, 29.533205, 51.212101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325508, 0.549033, -0.769810,
		0.327851, 0.829178, 0.452746,
		0.886881, -0.105011, -0.449905,
		33.557236, 29.501701, 51.077129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126099, 30.265951, 51.233326>,  <32.936420, 29.575209, 51.392063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126099, 30.265951, 51.233326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.342720, 30.041368, 50.983047>,  <33.472691, 29.906620, 50.832882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.342720, 30.041368, 50.983047>,  <33.126099, 30.265951, 51.233326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342720, 30.041368, 50.983047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242691, 0.608177, -0.755792,
		0.804875, 0.561150, 0.193100,
		0.541552, -0.561454, -0.625692,
		33.505184, 29.872932, 50.795341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423355, 30.850304, 50.749416>,  <33.126099, 30.265951, 51.233326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423355, 30.850304, 50.749416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.443325, 30.481451, 50.595959>,  <33.455307, 30.260139, 50.503883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.443325, 30.481451, 50.595959>,  <33.423355, 30.850304, 50.749416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443325, 30.481451, 50.595959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005023, 0.384351, -0.923174,
		0.998740, 0.044166, 0.023823,
		0.049930, -0.922130, -0.383645,
		33.458305, 30.204811, 50.480865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800694, 30.940500, 50.223984>,  <33.423355, 30.850304, 50.749416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800694, 30.940500, 50.223984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.615856, 30.595491, 50.141495>,  <33.504955, 30.388487, 50.091999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.615856, 30.595491, 50.141495>,  <33.800694, 30.940500, 50.223984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615856, 30.595491, 50.141495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341166, 0.387538, -0.856399,
		0.818583, -0.325377, -0.473341,
		-0.462091, -0.862522, -0.206225,
		33.477230, 30.336735, 50.079628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515842, 31.267460, 50.089451>,  <33.800694, 30.940500, 50.223984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515842, 31.267460, 50.089451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.493324, 31.624533, 50.268311>,  <34.479813, 31.838778, 50.375626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.493324, 31.624533, 50.268311>,  <34.515842, 31.267460, 50.089451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493324, 31.624533, 50.268311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385318, -0.393741, 0.834565,
		0.921065, 0.219278, -0.321802,
		-0.056295, 0.892684, 0.447153,
		34.476437, 31.892338, 50.402458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266815, 31.384138, 50.464172>,  <34.515842, 31.267460, 50.089451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266815, 31.384138, 50.464172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.016815, 31.647766, 50.631504>,  <34.866814, 31.805943, 50.731903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.016815, 31.647766, 50.631504>,  <35.266815, 31.384138, 50.464172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016815, 31.647766, 50.631504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421278, -0.166385, 0.891539,
		0.657190, 0.733446, -0.173660,
		-0.625001, 0.659070, 0.418331,
		34.829315, 31.845488, 50.757004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670914, 31.970877, 50.870762>,  <35.266815, 31.384138, 50.464172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670914, 31.970877, 50.870762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.292885, 31.985430, 51.000690>,  <35.066067, 31.994162, 51.078648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.292885, 31.985430, 51.000690>,  <35.670914, 31.970877, 50.870762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292885, 31.985430, 51.000690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325463, 0.013119, 0.945464,
		0.030135, 0.999252, -0.024239,
		-0.945074, 0.036381, 0.324824,
		35.009361, 31.996344, 51.098137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648472, 32.536846, 51.375538>,  <35.670914, 31.970877, 50.870762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648472, 32.536846, 51.375538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.358078, 32.271683, 51.448757>,  <35.183842, 32.112587, 51.492687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.358078, 32.271683, 51.448757>,  <35.648472, 32.536846, 51.375538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358078, 32.271683, 51.448757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349683, -0.126638, 0.928270,
		-0.592174, 0.737916, 0.323744,
		-0.725983, -0.662905, 0.183044,
		35.140282, 32.072811, 51.503670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548199, 32.541351, 52.091511>,  <35.648472, 32.536846, 51.375538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548199, 32.541351, 52.091511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.296993, 32.240616, 52.011169>,  <35.146271, 32.060173, 51.962967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.296993, 32.240616, 52.011169>,  <35.548199, 32.541351, 52.091511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296993, 32.240616, 52.011169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156881, -0.375109, 0.913609,
		-0.762228, 0.542247, 0.353521,
		-0.628010, -0.751839, -0.200850,
		35.108589, 32.015064, 51.950912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910179, 32.503914, 52.609108>,  <35.548199, 32.541351, 52.091511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910179, 32.503914, 52.609108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.995518, 32.134670, 52.481133>,  <35.046719, 31.913124, 52.404346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.995518, 32.134670, 52.481133>,  <34.910179, 32.503914, 52.609108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995518, 32.134670, 52.481133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347659, -0.234310, 0.907872,
		-0.913027, -0.304918, 0.270937,
		0.213343, -0.923105, -0.319939,
		35.059521, 31.857738, 52.385151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631992, 32.155815, 53.152908>,  <34.910179, 32.503914, 52.609108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631992, 32.155815, 53.152908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.871872, 31.893927, 52.968864>,  <35.015800, 31.736795, 52.858437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.871872, 31.893927, 52.968864>,  <34.631992, 32.155815, 53.152908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871872, 31.893927, 52.968864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397035, -0.255772, 0.881444,
		-0.694780, -0.711285, 0.106559,
		0.599703, -0.654717, -0.460110,
		35.051785, 31.697512, 52.830830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547447, 31.536211, 53.500328>,  <34.631992, 32.155815, 53.152908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547447, 31.536211, 53.500328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.908611, 31.485334, 53.336094>,  <35.125309, 31.454809, 53.237553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.908611, 31.485334, 53.336094>,  <34.547447, 31.536211, 53.500328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908611, 31.485334, 53.336094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360827, -0.294799, 0.884815,
		-0.233579, -0.947057, -0.220283,
		0.902909, -0.127190, -0.410582,
		35.179485, 31.447178, 53.212921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835552, 30.910233, 53.835327>,  <34.547447, 31.536211, 53.500328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835552, 30.910233, 53.835327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.135689, 31.132406, 53.691956>,  <35.315773, 31.265711, 53.605930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.135689, 31.132406, 53.691956>,  <34.835552, 30.910233, 53.835327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135689, 31.132406, 53.691956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572942, -0.275985, 0.771732,
		0.329726, -0.784426, -0.525316,
		0.750345, 0.555436, -0.358431,
		35.360794, 31.299036, 53.584427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.077324, 35.683456, 38.004868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472305, 35.622925, 38.022907>,  <34.709293, 35.586605, 38.033733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472305, 35.622925, 38.022907>,  <34.077324, 35.683456, 38.004868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472305, 35.622925, 38.022907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112812, -0.476222, 0.872059,
		-0.110489, -0.866206, -0.487319,
		0.987455, -0.151328, 0.045102,
		34.768543, 35.577526, 38.036438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333893, 34.852943, 38.070621>,  <34.077324, 35.683456, 38.004868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333893, 34.852943, 38.070621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546997, 35.149868, 38.233177>,  <34.674858, 35.328022, 38.330711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546997, 35.149868, 38.233177>,  <34.333893, 34.852943, 38.070621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546997, 35.149868, 38.233177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094402, -0.425082, 0.900219,
		0.840985, -0.517963, -0.156391,
		0.532759, 0.742307, 0.406385,
		34.706825, 35.372559, 38.355091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725918, 34.536633, 38.570442>,  <34.333893, 34.852943, 38.070621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725918, 34.536633, 38.570442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728138, 34.910847, 38.711720>,  <34.729469, 35.135376, 38.796486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728138, 34.910847, 38.711720>,  <34.725918, 34.536633, 38.570442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728138, 34.910847, 38.711720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117948, -0.350117, 0.929250,
		0.993004, -0.046814, 0.108402,
		0.005548, 0.935535, 0.353189,
		34.729801, 35.191505, 38.817677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115635, 34.542904, 39.194889>,  <34.725918, 34.536633, 38.570442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115635, 34.542904, 39.194889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924660, 34.891087, 39.242828>,  <34.810074, 35.099995, 39.271591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924660, 34.891087, 39.242828>,  <35.115635, 34.542904, 39.194889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924660, 34.891087, 39.242828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092211, -0.185278, 0.978350,
		0.873816, 0.456047, 0.168723,
		-0.477434, 0.870456, 0.119846,
		34.781429, 35.152222, 39.278782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390274, 34.895409, 39.777126>,  <35.115635, 34.542904, 39.194889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390274, 34.895409, 39.777126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031212, 35.067165, 39.737446>,  <34.815777, 35.170219, 39.713638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031212, 35.067165, 39.737446>,  <35.390274, 34.895409, 39.777126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031212, 35.067165, 39.737446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183513, -0.159554, 0.969982,
		0.400676, 0.888912, 0.222024,
		-0.897654, 0.429393, -0.099197,
		34.761917, 35.195984, 39.707687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345776, 35.346611, 40.275875>,  <35.390274, 34.895409, 39.777126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345776, 35.346611, 40.275875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959690, 35.288792, 40.188732>,  <34.728039, 35.254101, 40.136444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959690, 35.288792, 40.188732>,  <35.345776, 35.346611, 40.275875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959690, 35.288792, 40.188732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209818, -0.068921, 0.975308,
		-0.155995, 0.987094, 0.036194,
		-0.965216, -0.144549, -0.217861,
		34.670124, 35.245426, 40.123375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950031, 35.802544, 40.612953>,  <35.345776, 35.346611, 40.275875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950031, 35.802544, 40.612953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669140, 35.532066, 40.523834>,  <34.500603, 35.369781, 40.470364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669140, 35.532066, 40.523834>,  <34.950031, 35.802544, 40.612953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669140, 35.532066, 40.523834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368284, 0.077200, 0.926503,
		-0.609291, 0.732673, -0.303242,
		-0.702233, -0.676189, -0.222794,
		34.458469, 35.329208, 40.456997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278160, 36.095577, 40.913765>,  <34.950031, 35.802544, 40.612953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278160, 36.095577, 40.913765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235073, 35.701710, 40.858883>,  <34.209221, 35.465389, 40.825954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235073, 35.701710, 40.858883>,  <34.278160, 36.095577, 40.913765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235073, 35.701710, 40.858883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673313, -0.029285, 0.738777,
		-0.731468, 0.171961, -0.659836,
		-0.107717, -0.984668, -0.137204,
		34.202759, 35.406311, 40.817722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680660, 35.946907, 41.163765>,  <34.278160, 36.095577, 40.913765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680660, 35.946907, 41.163765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827465, 35.574863, 41.158154>,  <33.915546, 35.351639, 41.154789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827465, 35.574863, 41.158154>,  <33.680660, 35.946907, 41.163765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827465, 35.574863, 41.158154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480797, -0.202583, 0.853109,
		-0.796327, -0.306357, -0.521544,
		0.367012, -0.930110, -0.014027,
		33.937569, 35.295830, 41.153946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074131, 35.464653, 41.330990>,  <33.680660, 35.946907, 41.163765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074131, 35.464653, 41.330990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414921, 35.271637, 41.412273>,  <33.619396, 35.155827, 41.461044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414921, 35.271637, 41.412273>,  <33.074131, 35.464653, 41.330990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414921, 35.271637, 41.412273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342480, -0.220043, 0.913394,
		-0.396034, -0.847784, -0.352731,
		0.851977, -0.482538, 0.203205,
		33.670513, 35.126877, 41.473236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858501, 34.819851, 41.811409>,  <33.074131, 35.464653, 41.330990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858501, 34.819851, 41.811409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249645, 34.874359, 41.874939>,  <33.484329, 34.907063, 41.913055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249645, 34.874359, 41.874939>,  <32.858501, 34.819851, 41.811409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249645, 34.874359, 41.874939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096887, -0.377915, 0.920757,
		0.185492, -0.915757, -0.356344,
		0.977858, 0.136267, 0.158825,
		33.543003, 34.915237, 41.922588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992065, 34.372032, 42.267952>,  <32.858501, 34.819851, 41.811409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992065, 34.372032, 42.267952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313313, 34.604824, 42.319035>,  <33.506062, 34.744499, 42.349686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313313, 34.604824, 42.319035>,  <32.992065, 34.372032, 42.267952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313313, 34.604824, 42.319035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044220, -0.271962, 0.961291,
		0.594183, -0.766379, -0.244151,
		0.803113, 0.581980, 0.127706,
		33.554245, 34.779419, 42.357346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036808, 33.605877, 42.035069>,  <32.992065, 34.372032, 42.267952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036808, 33.605877, 42.035069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724201, 33.368019, 42.110561>,  <32.536636, 33.225304, 42.155857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724201, 33.368019, 42.110561>,  <33.036808, 33.605877, 42.035069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724201, 33.368019, 42.110561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054235, -0.236617, -0.970088,
		0.621518, -0.768379, 0.152670,
		-0.781520, -0.594647, 0.188735,
		32.489746, 33.189625, 42.167183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126278, 33.109303, 41.541054>,  <33.036808, 33.605877, 42.035069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126278, 33.109303, 41.541054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736134, 33.092625, 41.627705>,  <32.502045, 33.082619, 41.679695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736134, 33.092625, 41.627705>,  <33.126278, 33.109303, 41.541054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736134, 33.092625, 41.627705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186686, -0.367193, -0.911218,
		0.117537, -0.929210, 0.350363,
		-0.975363, -0.041694, 0.216629,
		32.443523, 33.080116, 41.692692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870300, 32.494698, 41.255035>,  <33.126278, 33.109303, 41.541054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870300, 32.494698, 41.255035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563728, 32.744602, 41.314713>,  <32.379784, 32.894547, 41.350517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563728, 32.744602, 41.314713>,  <32.870300, 32.494698, 41.255035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563728, 32.744602, 41.314713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292295, -0.132405, -0.947118,
		-0.571969, -0.769508, 0.284094,
		-0.766431, 0.624761, 0.149192,
		32.333797, 32.932030, 41.359470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372066, 32.113117, 40.980770>,  <32.870300, 32.494698, 41.255035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372066, 32.113117, 40.980770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245296, 32.492401, 40.989346>,  <32.169235, 32.719971, 40.994492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245296, 32.492401, 40.989346>,  <32.372066, 32.113117, 40.980770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245296, 32.492401, 40.989346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339930, -0.092451, -0.935896,
		-0.885442, -0.303894, 0.351624,
		-0.316922, 0.948210, 0.021442,
		32.150219, 32.776863, 40.995777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677595, 32.227749, 40.526463>,  <32.372066, 32.113117, 40.980770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677595, 32.227749, 40.526463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828300, 32.598270, 40.525745>,  <31.918724, 32.820583, 40.525314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828300, 32.598270, 40.525745>,  <31.677595, 32.227749, 40.526463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828300, 32.598270, 40.525745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314179, 0.125968, -0.940970,
		-0.871401, 0.355088, 0.338486,
		0.376765, 0.926307, -0.001792,
		31.941330, 32.876163, 40.525208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175892, 32.659492, 40.192261>,  <31.677595, 32.227749, 40.526463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175892, 32.659492, 40.192261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520889, 32.861877, 40.188019>,  <31.727888, 32.983307, 40.185474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520889, 32.861877, 40.188019>,  <31.175892, 32.659492, 40.192261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520889, 32.861877, 40.188019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219041, 0.354338, -0.909101,
		-0.456210, 0.786416, 0.416440,
		0.862493, 0.505959, -0.010605,
		31.779636, 33.013664, 40.184837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032665, 33.274948, 40.066051>,  <31.175892, 32.659492, 40.192261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032665, 33.274948, 40.066051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417669, 33.245213, 39.961708>,  <31.648672, 33.227371, 39.899101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417669, 33.245213, 39.961708>,  <31.032665, 33.274948, 40.066051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417669, 33.245213, 39.961708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192547, 0.490088, -0.850141,
		0.191042, 0.868497, 0.457401,
		0.962512, -0.074342, -0.260854,
		31.706423, 33.222912, 39.883453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127476, 33.878666, 39.776424>,  <31.032665, 33.274948, 40.066051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127476, 33.878666, 39.776424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391895, 33.612957, 39.636852>,  <31.550547, 33.453533, 39.553108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391895, 33.612957, 39.636852>,  <31.127476, 33.878666, 39.776424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391895, 33.612957, 39.636852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171181, 0.319259, -0.932079,
		0.730556, 0.675880, 0.097335,
		0.661049, -0.664274, -0.348934,
		31.590210, 33.413673, 39.532173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372700, 34.233158, 39.225513>,  <31.127476, 33.878666, 39.776424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372700, 34.233158, 39.225513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485739, 33.851456, 39.186451>,  <31.553562, 33.622433, 39.163013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485739, 33.851456, 39.186451>,  <31.372700, 34.233158, 39.225513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485739, 33.851456, 39.186451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012477, 0.098138, -0.995095,
		0.959158, 0.282429, 0.015827,
		0.282597, -0.954255, -0.097654,
		31.570518, 33.565178, 39.157154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880749, 34.235451, 38.724331>,  <31.372700, 34.233158, 39.225513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880749, 34.235451, 38.724331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754852, 33.855904, 38.714657>,  <31.679316, 33.628174, 38.708851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754852, 33.855904, 38.714657>,  <31.880749, 34.235451, 38.724331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754852, 33.855904, 38.714657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163888, -0.029226, -0.986046,
		0.934923, -0.314311, 0.164707,
		-0.314739, -0.948870, -0.024188,
		31.660431, 33.571243, 38.707401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312305, 33.923321, 38.244442>,  <31.880749, 34.235451, 38.724331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312305, 33.923321, 38.244442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006680, 33.666893, 38.273407>,  <31.823305, 33.513039, 38.290787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006680, 33.666893, 38.273407>,  <32.312305, 33.923321, 38.244442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006680, 33.666893, 38.273407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010869, -0.099433, -0.994985,
		0.645050, -0.761018, 0.069005,
		-0.764063, -0.641065, 0.072411,
		31.777460, 33.474575, 38.295132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574257, 33.301006, 37.908531>,  <32.312305, 33.923321, 38.244442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574257, 33.301006, 37.908531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174583, 33.285870, 37.914280>,  <31.934780, 33.276787, 37.917728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174583, 33.285870, 37.914280>,  <32.574257, 33.301006, 37.908531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174583, 33.285870, 37.914280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015374, 0.026368, -0.999534,
		0.037468, -0.998935, -0.026928,
		-0.999180, -0.037865, 0.014370,
		31.874828, 33.274517, 37.918591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483971, 32.975384, 37.300980>,  <32.574257, 33.301006, 37.908531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483971, 32.975384, 37.300980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132557, 33.132648, 37.409500>,  <31.921709, 33.227005, 37.474613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132557, 33.132648, 37.409500>,  <32.483971, 32.975384, 37.300980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132557, 33.132648, 37.409500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271501, 0.056314, -0.960789,
		-0.393021, -0.917744, 0.057270,
		-0.878534, 0.393159, 0.271301,
		31.868998, 33.250595, 37.490891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966955, 32.558929, 37.023258>,  <32.483971, 32.975384, 37.300980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966955, 32.558929, 37.023258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825441, 32.931561, 37.056732>,  <31.740532, 33.155140, 37.076817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825441, 32.931561, 37.056732>,  <31.966955, 32.558929, 37.023258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825441, 32.931561, 37.056732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242517, -0.004956, -0.970135,
		-0.903339, -0.363514, 0.227676,
		-0.353786, 0.931576, 0.083681,
		31.719305, 33.211033, 37.081837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555298, 32.381088, 36.567013>,  <31.966955, 32.558929, 37.023258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555298, 32.381088, 36.567013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379822, 32.021641, 36.564396>,  <32.274536, 31.805973, 36.562828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379822, 32.021641, 36.564396>,  <32.555298, 32.381088, 36.567013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379822, 32.021641, 36.564396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711968, -0.343111, -0.612680,
		0.548319, -0.273432, 0.790305,
		-0.438689, -0.898615, -0.006540,
		32.248215, 31.752056, 36.562435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239956, 32.479847, 36.848049>,  <32.555298, 32.381088, 36.567013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239956, 32.479847, 36.848049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617039, 32.430981, 36.723873>,  <33.843288, 32.401661, 36.649368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617039, 32.430981, 36.723873>,  <33.239956, 32.479847, 36.848049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617039, 32.430981, 36.723873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281105, -0.210240, 0.936365,
		-0.179651, -0.969988, -0.163856,
		0.942712, -0.122158, -0.310438,
		33.899853, 32.394329, 36.630741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496536, 31.777563, 37.021030>,  <33.239956, 32.479847, 36.848049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496536, 31.777563, 37.021030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774502, 32.065067, 37.029797>,  <33.941280, 32.237572, 37.035057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774502, 32.065067, 37.029797>,  <33.496536, 31.777563, 37.021030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774502, 32.065067, 37.029797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303499, -0.320790, 0.897208,
		0.651910, -0.616827, -0.441064,
		0.694911, 0.718762, 0.021920,
		33.982975, 32.280697, 37.036373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907555, 31.500807, 37.452400>,  <33.496536, 31.777563, 37.021030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907555, 31.500807, 37.452400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075893, 31.862917, 37.429195>,  <34.176895, 32.080181, 37.415272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075893, 31.862917, 37.429195>,  <33.907555, 31.500807, 37.452400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075893, 31.862917, 37.429195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444388, -0.149987, 0.883189,
		0.790827, -0.397468, -0.465415,
		0.420846, 0.905275, -0.058016,
		34.202148, 32.134499, 37.411789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617130, 31.385588, 37.611176>,  <33.907555, 31.500807, 37.452400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617130, 31.385588, 37.611176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512985, 31.762066, 37.697300>,  <34.450500, 31.987953, 37.748974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512985, 31.762066, 37.697300>,  <34.617130, 31.385588, 37.611176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512985, 31.762066, 37.697300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351139, -0.115431, 0.929181,
		0.899396, 0.317527, -0.300438,
		-0.260360, 0.941197, 0.215314,
		34.434875, 32.044426, 37.761894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122009, 31.713320, 38.045525>,  <34.617130, 31.385588, 37.611176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122009, 31.713320, 38.045525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813805, 31.955301, 38.125870>,  <34.628883, 32.100491, 38.174076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813805, 31.955301, 38.125870>,  <35.122009, 31.713320, 38.045525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813805, 31.955301, 38.125870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277521, 0.034685, 0.960093,
		0.573845, 0.795505, -0.194613,
		-0.770509, 0.604954, 0.200865,
		34.582653, 32.136787, 38.186131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382801, 32.046696, 38.645126>,  <35.122009, 31.713320, 38.045525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382801, 32.046696, 38.645126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992065, 32.132282, 38.646328>,  <34.757626, 32.183636, 38.647049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992065, 32.132282, 38.646328>,  <35.382801, 32.046696, 38.645126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992065, 32.132282, 38.646328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033280, 0.138044, 0.989867,
		0.211386, 0.967037, -0.141967,
		-0.976836, 0.213969, 0.003002,
		34.699013, 32.196472, 38.647228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317844, 32.653702, 39.007530>,  <35.382801, 32.046696, 38.645126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317844, 32.653702, 39.007530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961140, 32.472866, 39.015312>,  <34.747116, 32.364365, 39.019981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961140, 32.472866, 39.015312>,  <35.317844, 32.653702, 39.007530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961140, 32.472866, 39.015312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001515, 0.045979, 0.998941,
		-0.452501, 0.890789, -0.041687,
		-0.891763, -0.452085, 0.019456,
		34.693611, 32.337242, 39.021149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905354, 33.101425, 39.514248>,  <35.317844, 32.653702, 39.007530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905354, 33.101425, 39.514248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732479, 32.743511, 39.469383>,  <34.628754, 32.528763, 39.442463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732479, 32.743511, 39.469383>,  <34.905354, 33.101425, 39.514248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732479, 32.743511, 39.469383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211685, -0.020240, 0.977129,
		-0.876587, 0.446045, -0.180664,
		-0.432186, -0.894782, -0.112163,
		34.602821, 32.475075, 39.435734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282349, 33.143013, 39.748669>,  <34.905354, 33.101425, 39.514248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282349, 33.143013, 39.748669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359013, 32.750759, 39.764820>,  <34.405010, 32.515408, 39.774509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359013, 32.750759, 39.764820>,  <34.282349, 33.143013, 39.748669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359013, 32.750759, 39.764820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301783, -0.019738, 0.953172,
		-0.933913, -0.194867, -0.299721,
		0.191658, -0.980631, 0.040374,
		34.416512, 32.456570, 39.776932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808567, 32.858391, 40.344929>,  <34.282349, 33.143013, 39.748669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808567, 32.858391, 40.344929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091499, 32.584381, 40.275158>,  <34.261257, 32.419975, 40.233295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091499, 32.584381, 40.275158>,  <33.808567, 32.858391, 40.344929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091499, 32.584381, 40.275158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105257, -0.346071, 0.932285,
		-0.699005, -0.641071, -0.316890,
		0.707328, -0.685027, -0.174428,
		34.303699, 32.378872, 40.222828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528999, 32.187050, 40.673058>,  <33.808567, 32.858391, 40.344929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528999, 32.187050, 40.673058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925728, 32.155651, 40.632786>,  <34.163765, 32.136810, 40.608624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925728, 32.155651, 40.632786>,  <33.528999, 32.187050, 40.673058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925728, 32.155651, 40.632786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067783, -0.344490, 0.936340,
		-0.108183, -0.935502, -0.336351,
		0.991817, -0.078497, -0.100679,
		34.223274, 32.132103, 40.602581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613914, 31.607283, 41.103756>,  <33.528999, 32.187050, 40.673058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613914, 31.607283, 41.103756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966705, 31.784140, 41.038494>,  <34.178379, 31.890253, 40.999336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966705, 31.784140, 41.038494>,  <33.613914, 31.607283, 41.103756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966705, 31.784140, 41.038494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227995, -0.097301, 0.968788,
		0.412466, -0.891652, -0.186624,
		0.881981, 0.442141, -0.163159,
		34.231300, 31.916782, 40.989548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087605, 31.202553, 41.365070>,  <33.613914, 31.607283, 41.103756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087605, 31.202553, 41.365070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253311, 31.566536, 41.357471>,  <34.352737, 31.784925, 41.352913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.253311, 31.566536, 41.357471>,  <34.087605, 31.202553, 41.365070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253311, 31.566536, 41.357471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312135, -0.122434, 0.942116,
		0.854958, -0.396219, -0.334750,
		0.414268, 0.909957, -0.018998,
		34.377590, 31.839523, 41.351772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713242, 30.984808, 41.640316>,  <34.087605, 31.202553, 41.365070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713242, 30.984808, 41.640316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751610, 31.382408, 41.661335>,  <34.774632, 31.620968, 41.673946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751610, 31.382408, 41.661335>,  <34.713242, 30.984808, 41.640316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751610, 31.382408, 41.661335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205179, -0.071400, 0.976117,
		0.974013, -0.082849, -0.210797,
		0.095921, 0.994001, 0.052545,
		34.780388, 31.680609, 41.677097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413143, 31.070379, 41.909733>,  <34.713242, 30.984808, 41.640316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413143, 31.070379, 41.909733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192196, 31.395979, 41.981617>,  <35.059628, 31.591339, 42.024746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192196, 31.395979, 41.981617>,  <35.413143, 31.070379, 41.909733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192196, 31.395979, 41.981617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331354, 0.016588, 0.943361,
		0.764914, 0.580629, -0.278885,
		-0.552369, 0.813999, 0.179706,
		35.026485, 31.640179, 42.035530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939404, 31.578520, 42.183899>,  <35.413143, 31.070379, 41.909733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939404, 31.578520, 42.183899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579792, 31.710609, 42.298931>,  <35.364025, 31.789864, 42.367950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579792, 31.710609, 42.298931>,  <35.939404, 31.578520, 42.183899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579792, 31.710609, 42.298931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337502, 0.104090, 0.935552,
		0.279006, 0.938146, -0.205031,
		-0.899026, 0.330223, 0.287585,
		35.310085, 31.809677, 42.385208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009708, 32.107506, 42.618843>,  <35.939404, 31.578520, 42.183899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009708, 32.107506, 42.618843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649643, 31.953928, 42.701111>,  <35.433605, 31.861782, 42.750473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649643, 31.953928, 42.701111>,  <36.009708, 32.107506, 42.618843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649643, 31.953928, 42.701111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210237, 0.030551, 0.977173,
		-0.381459, 0.922853, 0.053218,
		-0.900161, -0.383940, 0.205671,
		35.379593, 31.838745, 42.762814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820892, 32.560215, 43.093319>,  <36.009708, 32.107506, 42.618843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820892, 32.560215, 43.093319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612808, 32.221127, 43.134777>,  <35.487957, 32.017673, 43.159653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612808, 32.221127, 43.134777>,  <35.820892, 32.560215, 43.093319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612808, 32.221127, 43.134777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259978, -0.041583, 0.964719,
		-0.813507, 0.528803, 0.242022,
		-0.520210, -0.847725, 0.103649,
		35.456745, 31.966808, 43.165871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526600, 32.598080, 43.668129>,  <35.820892, 32.560215, 43.093319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526600, 32.598080, 43.668129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516640, 32.203880, 43.600998>,  <35.510662, 31.967360, 43.560719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516640, 32.203880, 43.600998>,  <35.526600, 32.598080, 43.668129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516640, 32.203880, 43.600998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022806, -0.167271, 0.985647,
		-0.999430, 0.028374, -0.018309,
		-0.024904, -0.985503, -0.167823,
		35.509167, 31.908230, 43.550652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300140, 32.439301, 44.293320>,  <35.526600, 32.598080, 43.668129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300140, 32.439301, 44.293320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423805, 32.087753, 44.147991>,  <35.498005, 31.876825, 44.060795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423805, 32.087753, 44.147991>,  <35.300140, 32.439301, 44.293320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423805, 32.087753, 44.147991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059514, -0.399173, 0.914942,
		-0.949144, -0.261246, -0.175715,
		0.309166, -0.878870, -0.363325,
		35.516556, 31.824093, 44.038994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839966, 31.975845, 44.505165>,  <35.300140, 32.439301, 44.293320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839966, 31.975845, 44.505165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138813, 31.730934, 44.401680>,  <35.318123, 31.583988, 44.339588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138813, 31.730934, 44.401680>,  <34.839966, 31.975845, 44.505165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138813, 31.730934, 44.401680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066442, -0.456065, 0.887463,
		-0.661362, -0.645850, -0.381415,
		0.747118, -0.612277, -0.258712,
		35.362949, 31.547251, 44.324066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662575, 31.328381, 44.713497>,  <34.839966, 31.975845, 44.505165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662575, 31.328381, 44.713497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061363, 31.311668, 44.687267>,  <35.300636, 31.301641, 44.671528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.061363, 31.311668, 44.687267>,  <34.662575, 31.328381, 44.713497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061363, 31.311668, 44.687267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030231, -0.568757, 0.821950,
		-0.071637, -0.821444, -0.565772,
		0.996973, -0.041779, -0.065577,
		35.360455, 31.299135, 44.667595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794178, 30.656771, 44.754730>,  <34.662575, 31.328381, 44.713497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794178, 30.656771, 44.754730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158932, 30.812948, 44.805347>,  <35.377785, 30.906654, 44.835716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158932, 30.812948, 44.805347>,  <34.794178, 30.656771, 44.754730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158932, 30.812948, 44.805347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286765, -0.826654, 0.484158,
		0.293644, -0.405210, -0.865782,
		0.911888, 0.390446, 0.126543,
		35.432499, 30.930082, 44.843311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306950, 30.214628, 44.424324>,  <34.794178, 30.656771, 44.754730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306950, 30.214628, 44.424324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520386, 30.422115, 44.691521>,  <35.648449, 30.546608, 44.851841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520386, 30.422115, 44.691521>,  <35.306950, 30.214628, 44.424324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520386, 30.422115, 44.691521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301445, -0.854602, 0.422830,
		0.790198, -0.024255, -0.612372,
		0.533590, 0.518716, 0.667993,
		35.680462, 30.577730, 44.891918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764576, 29.811699, 44.554768>,  <35.306950, 30.214628, 44.424324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764576, 29.811699, 44.554768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797127, 30.058945, 44.867512>,  <35.816658, 30.207293, 45.055161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797127, 30.058945, 44.867512>,  <35.764576, 29.811699, 44.554768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797127, 30.058945, 44.867512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296966, -0.763873, 0.572983,
		0.951414, 0.185558, -0.245722,
		0.081379, 0.618116, 0.781864,
		35.821541, 30.244379, 45.102070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463169, 29.815052, 44.773548>,  <35.764576, 29.811699, 44.554768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463169, 29.815052, 44.773548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234600, 29.941919, 45.076305>,  <36.097458, 30.018040, 45.257957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234600, 29.941919, 45.076305>,  <36.463169, 29.815052, 44.773548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234600, 29.941919, 45.076305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421457, -0.677966, 0.602276,
		0.704168, 0.663150, 0.253732,
		-0.571421, 0.317166, 0.756891,
		36.063175, 30.037069, 45.303371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943077, 30.133320, 45.441723>,  <36.463169, 29.815052, 44.773548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943077, 30.133320, 45.441723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579895, 30.032675, 45.575768>,  <36.361984, 29.972288, 45.656197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579895, 30.032675, 45.575768>,  <36.943077, 30.133320, 45.441723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579895, 30.032675, 45.575768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414653, -0.423766, 0.805286,
		-0.060612, 0.870122, 0.489095,
		-0.907959, -0.251615, 0.335113,
		36.307507, 29.957190, 45.676300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273907, 30.533209, 45.992226>,  <36.943077, 30.133320, 45.441723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273907, 30.533209, 45.992226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652081, 30.403444, 46.004284>,  <37.878986, 30.325584, 46.011520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652081, 30.403444, 46.004284>,  <37.273907, 30.533209, 45.992226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652081, 30.403444, 46.004284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134958, 0.305730, -0.942505,
		0.296545, 0.895145, 0.332830,
		0.945435, -0.324413, 0.030144,
		37.935711, 30.306120, 46.013329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576744, 31.049150, 45.710171>,  <37.273907, 30.533209, 45.992226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576744, 31.049150, 45.710171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797226, 30.716946, 45.678116>,  <37.929516, 30.517622, 45.658882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797226, 30.716946, 45.678116>,  <37.576744, 31.049150, 45.710171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797226, 30.716946, 45.678116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098886, 0.160390, -0.982088,
		0.828488, 0.533410, 0.170534,
		0.551207, -0.830512, -0.080134,
		37.962589, 30.467793, 45.654076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079865, 31.317854, 45.253502>,  <37.576744, 31.049150, 45.710171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079865, 31.317854, 45.253502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183960, 30.931889, 45.267445>,  <38.246418, 30.700310, 45.275810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183960, 30.931889, 45.267445>,  <38.079865, 31.317854, 45.253502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183960, 30.931889, 45.267445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345624, 0.059390, -0.936492,
		0.901564, 0.255761, 0.348954,
		0.260242, -0.964914, 0.034854,
		38.262032, 30.642414, 45.277901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685314, 31.176924, 44.910881>,  <38.079865, 31.317854, 45.253502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685314, 31.176924, 44.910881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548710, 30.801544, 44.890171>,  <38.466747, 30.576317, 44.877743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548710, 30.801544, 44.890171>,  <38.685314, 31.176924, 44.910881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548710, 30.801544, 44.890171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442989, -0.112133, -0.889487,
		0.828932, -0.326710, 0.454018,
		-0.341514, -0.938449, -0.051778,
		38.446255, 30.520010, 44.874638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214062, 30.676502, 44.809631>,  <38.685314, 31.176924, 44.910881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214062, 30.676502, 44.809631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869633, 30.541443, 44.657551>,  <38.662975, 30.460407, 44.566303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.869633, 30.541443, 44.657551>,  <39.214062, 30.676502, 44.809631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869633, 30.541443, 44.657551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370482, 0.095541, -0.923913,
		0.348282, -0.936411, 0.042825,
		-0.861071, -0.337648, -0.380198,
		38.611313, 30.440149, 44.543491>
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
