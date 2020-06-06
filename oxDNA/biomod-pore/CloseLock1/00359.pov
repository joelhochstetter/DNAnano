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
	<24.348528, 34.509922, 34.662964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.356400, 34.858418, 34.859150>,  <24.361122, 35.067516, 34.976860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.356400, 34.858418, 34.859150>,  <24.348528, 34.509922, 34.662964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.356400, 34.858418, 34.859150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998320, -0.043859, 0.037855,
		0.054492, 0.488895, -0.870639,
		0.019678, 0.871240, 0.490463,
		24.362303, 35.119789, 35.006290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.877636, 34.935642, 34.389729>,  <24.348528, 34.509922, 34.662964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.877636, 34.935642, 34.389729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.805479, 35.092014, 34.750755>,  <24.762184, 35.185837, 34.967373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.805479, 35.092014, 34.750755>,  <24.877636, 34.935642, 34.389729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.805479, 35.092014, 34.750755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974096, 0.198225, 0.108830,
		-0.136367, 0.898822, -0.416562,
		-0.180392, 0.390930, 0.902570,
		24.751362, 35.209293, 35.021526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.204386, 35.621101, 34.495152>,  <24.877636, 34.935642, 34.389729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.204386, 35.621101, 34.495152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203053, 35.395226, 34.825272>,  <25.202251, 35.259701, 35.023342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203053, 35.395226, 34.825272>,  <25.204386, 35.621101, 34.495152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203053, 35.395226, 34.825272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999960, 0.004973, 0.007442,
		-0.008307, 0.825288, 0.564651,
		-0.003334, -0.564690, 0.825297,
		25.202053, 35.225819, 35.072861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582851, 35.021763, 34.721786>,  <25.204386, 35.621101, 34.495152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582851, 35.021763, 34.721786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935310, 34.894745, 34.861927>,  <26.146786, 34.818535, 34.946011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935310, 34.894745, 34.861927>,  <25.582851, 35.021763, 34.721786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935310, 34.894745, 34.861927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218606, -0.383419, -0.897330,
		0.419275, 0.867268, -0.268431,
		0.881147, -0.317547, 0.350348,
		26.199654, 34.799480, 34.967033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099445, 35.238018, 34.265106>,  <25.582851, 35.021763, 34.721786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099445, 35.238018, 34.265106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222630, 34.913624, 34.464092>,  <26.296539, 34.718987, 34.583485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222630, 34.913624, 34.464092>,  <26.099445, 35.238018, 34.265106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222630, 34.913624, 34.464092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164183, -0.469729, -0.867409,
		0.937126, 0.348801, -0.011508,
		0.307958, -0.810982, 0.497463,
		26.315018, 34.670330, 34.613331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729187, 34.963867, 33.947239>,  <26.099445, 35.238018, 34.265106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729187, 34.963867, 33.947239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568497, 34.657906, 34.148647>,  <26.472082, 34.474327, 34.269493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568497, 34.657906, 34.148647>,  <26.729187, 34.963867, 33.947239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568497, 34.657906, 34.148647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042394, -0.564788, -0.824146,
		0.914779, -0.309732, 0.259316,
		-0.401724, -0.764905, 0.503526,
		26.447979, 34.428432, 34.299706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031401, 34.340698, 33.667004>,  <26.729187, 34.963867, 33.947239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.031401, 34.340698, 33.667004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713303, 34.214748, 33.874249>,  <26.522444, 34.139179, 33.998596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713303, 34.214748, 33.874249>,  <27.031401, 34.340698, 33.667004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.713303, 34.214748, 33.874249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018886, -0.841283, -0.540265,
		0.605992, -0.439429, 0.663081,
		-0.795246, -0.314874, 0.518110,
		26.474730, 34.120285, 34.029682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232519, 33.657528, 33.921627>,  <27.031401, 34.340698, 33.667004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232519, 33.657528, 33.921627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835817, 33.673622, 33.872963>,  <26.597795, 33.683277, 33.843765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.835817, 33.673622, 33.872963>,  <27.232519, 33.657528, 33.921627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.835817, 33.673622, 33.872963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045196, -0.778605, -0.625884,
		-0.119908, -0.626223, 0.770368,
		-0.991756, 0.040231, -0.121664,
		26.538290, 33.685692, 33.836464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085709, 33.021290, 33.874645>,  <27.232519, 33.657528, 33.921627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085709, 33.021290, 33.874645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752741, 33.182968, 33.723011>,  <26.552959, 33.279976, 33.632030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752741, 33.182968, 33.723011>,  <27.085709, 33.021290, 33.874645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752741, 33.182968, 33.723011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022998, -0.708698, -0.705137,
		-0.553666, -0.578253, 0.599231,
		-0.832421, 0.404192, -0.379084,
		26.503016, 33.304226, 33.609287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564619, 32.442539, 33.776676>,  <27.085709, 33.021290, 33.874645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564619, 32.442539, 33.776676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445801, 32.746559, 33.545479>,  <26.374510, 32.928970, 33.406761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445801, 32.746559, 33.545479>,  <26.564619, 32.442539, 33.776676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445801, 32.746559, 33.545479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086751, -0.624297, -0.776355,
		-0.950914, -0.180472, 0.251381,
		-0.297048, 0.760054, -0.577997,
		26.356686, 32.974575, 33.372078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061586, 32.175179, 33.313553>,  <26.564619, 32.442539, 33.776676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061586, 32.175179, 33.313553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157434, 32.521835, 33.138504>,  <26.214943, 32.729828, 33.033474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.157434, 32.521835, 33.138504>,  <26.061586, 32.175179, 33.313553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.157434, 32.521835, 33.138504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028092, -0.456759, -0.889147,
		-0.970460, 0.200763, -0.133794,
		0.239619, 0.866640, -0.437626,
		26.229321, 32.781826, 33.007217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582504, 32.240257, 32.788143>,  <26.061586, 32.175179, 33.313553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582504, 32.240257, 32.788143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916624, 32.440807, 32.697903>,  <26.117096, 32.561138, 32.643761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916624, 32.440807, 32.697903>,  <25.582504, 32.240257, 32.788143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916624, 32.440807, 32.697903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023212, -0.442124, -0.896653,
		-0.549304, 0.743738, -0.380945,
		0.835300, 0.501378, -0.225597,
		26.167213, 32.591221, 32.630222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470247, 32.349609, 32.023777>,  <25.582504, 32.240257, 32.788143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470247, 32.349609, 32.023777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852833, 32.452953, 32.078075>,  <26.082384, 32.514961, 32.110653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852833, 32.452953, 32.078075>,  <25.470247, 32.349609, 32.023777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852833, 32.452953, 32.078075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251750, -0.495064, -0.831585,
		-0.147649, 0.829554, -0.538554,
		0.956463, 0.258364, 0.135744,
		26.139772, 32.530464, 32.118797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701588, 32.635361, 31.336475>,  <25.470247, 32.349609, 32.023777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701588, 32.635361, 31.336475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.010483, 32.504414, 31.554276>,  <26.195820, 32.425846, 31.684956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.010483, 32.504414, 31.554276>,  <25.701588, 32.635361, 31.336475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.010483, 32.504414, 31.554276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292129, -0.578098, -0.761882,
		0.564189, 0.747418, -0.350796,
		0.772238, -0.327367, 0.544499,
		26.242155, 32.406204, 31.717625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403700, 32.686867, 30.911102>,  <25.701588, 32.635361, 31.336475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403700, 32.686867, 30.911102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428862, 32.398071, 31.186718>,  <26.443958, 32.224792, 31.352087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428862, 32.398071, 31.186718>,  <26.403700, 32.686867, 30.911102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428862, 32.398071, 31.186718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270538, -0.652219, -0.708109,
		0.960652, 0.230953, 0.154300,
		0.062902, -0.721991, 0.689038,
		26.447733, 32.181473, 31.393429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995264, 32.351398, 30.683098>,  <26.403700, 32.686867, 30.911102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995264, 32.351398, 30.683098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878872, 32.100937, 30.972446>,  <26.809036, 31.950661, 31.146055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878872, 32.100937, 30.972446>,  <26.995264, 32.351398, 30.683098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878872, 32.100937, 30.972446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378310, -0.769771, -0.514135,
		0.878755, 0.124055, 0.460868,
		-0.290982, -0.626150, 0.723371,
		26.791578, 31.913092, 31.189457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608656, 32.012516, 30.872032>,  <26.995264, 32.351398, 30.683098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608656, 32.012516, 30.872032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.292580, 31.781805, 30.954899>,  <27.102934, 31.643377, 31.004620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.292580, 31.781805, 30.954899>,  <27.608656, 32.012516, 30.872032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.292580, 31.781805, 30.954899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372912, -0.720767, -0.584321,
		0.486346, -0.384471, 0.784634,
		-0.790192, -0.576782, 0.207169,
		27.055521, 31.608770, 31.017050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833618, 31.400547, 30.571024>,  <27.608656, 32.012516, 30.872032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833618, 31.400547, 30.571024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467257, 31.291759, 30.689112>,  <27.247440, 31.226486, 30.759964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467257, 31.291759, 30.689112>,  <27.833618, 31.400547, 30.571024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467257, 31.291759, 30.689112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089100, -0.854877, -0.511122,
		0.391386, -0.441834, 0.807217,
		-0.915903, -0.271969, 0.295220,
		27.192486, 31.210169, 30.777678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863487, 30.657518, 30.906635>,  <27.833618, 31.400547, 30.571024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863487, 30.657518, 30.906635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497311, 30.749432, 30.774471>,  <27.277605, 30.804579, 30.695173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497311, 30.749432, 30.774471>,  <27.863487, 30.657518, 30.906635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497311, 30.749432, 30.774471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005021, -0.827441, -0.561530,
		-0.402425, -0.512387, 0.758626,
		-0.915440, 0.229782, -0.330410,
		27.222679, 30.818367, 30.675348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562428, 29.966967, 30.758839>,  <27.863487, 30.657518, 30.906635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562428, 29.966967, 30.758839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341228, 30.246096, 30.576746>,  <27.208509, 30.413574, 30.467491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.341228, 30.246096, 30.576746>,  <27.562428, 29.966967, 30.758839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.341228, 30.246096, 30.576746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149462, -0.620596, -0.769754,
		-0.819667, -0.357633, 0.447487,
		-0.552999, 0.697824, -0.455229,
		27.175329, 30.455442, 30.440178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990139, 29.635063, 30.517977>,  <27.562428, 29.966967, 30.758839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990139, 29.635063, 30.517977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.021591, 29.955839, 30.281094>,  <27.040462, 30.148306, 30.138964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.021591, 29.955839, 30.281094>,  <26.990139, 29.635063, 30.517977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.021591, 29.955839, 30.281094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103382, -0.584283, -0.804938,
		-0.991529, 0.124516, 0.036963,
		0.078631, 0.801941, -0.592206,
		27.045181, 30.196421, 30.103432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.425119, 29.583477, 30.006262>,  <26.990139, 29.635063, 30.517977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.425119, 29.583477, 30.006262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719002, 29.808035, 29.853924>,  <26.895330, 29.942770, 29.762522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719002, 29.808035, 29.853924>,  <26.425119, 29.583477, 30.006262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719002, 29.808035, 29.853924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112443, -0.452854, -0.884466,
		-0.669002, 0.692646, -0.269589,
		0.734706, 0.561396, -0.380843,
		26.939413, 29.976454, 29.739672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.122652, 29.862589, 29.378435>,  <26.425119, 29.583477, 30.006262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.122652, 29.862589, 29.378435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520544, 29.888727, 29.346828>,  <26.759279, 29.904409, 29.327864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520544, 29.888727, 29.346828>,  <26.122652, 29.862589, 29.378435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520544, 29.888727, 29.346828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069097, -0.142193, -0.987424,
		-0.075759, 0.987680, -0.136929,
		0.994729, 0.065345, -0.079019,
		26.818962, 29.908331, 29.323122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229176, 30.076166, 28.703640>,  <26.122652, 29.862589, 29.378435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.229176, 30.076166, 28.703640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590958, 29.938231, 28.804075>,  <26.808027, 29.855469, 28.864336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590958, 29.938231, 28.804075>,  <26.229176, 30.076166, 28.703640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590958, 29.938231, 28.804075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121124, -0.356783, -0.926302,
		0.409008, 0.868212, -0.280927,
		0.904456, -0.344838, 0.251088,
		26.862295, 29.834780, 28.879402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573263, 30.334867, 28.206278>,  <26.229176, 30.076166, 28.703640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573263, 30.334867, 28.206278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772652, 30.022663, 28.357183>,  <26.892284, 29.835340, 28.447727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772652, 30.022663, 28.357183>,  <26.573263, 30.334867, 28.206278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772652, 30.022663, 28.357183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129314, -0.363369, -0.922627,
		0.857209, 0.508686, -0.080197,
		0.498469, -0.780513, 0.377263,
		26.922192, 29.788509, 28.470362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408689, 30.131857, 27.944752>,  <26.573263, 30.334867, 28.206278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408689, 30.131857, 27.944752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221256, 29.802540, 28.072889>,  <27.108795, 29.604950, 28.149771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221256, 29.802540, 28.072889>,  <27.408689, 30.131857, 27.944752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221256, 29.802540, 28.072889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150681, -0.431788, -0.889300,
		0.870473, -0.368443, 0.326384,
		-0.468585, -0.823291, 0.320342,
		27.080681, 29.555552, 28.168991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811926, 29.568546, 27.683142>,  <27.408689, 30.131857, 27.944752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811926, 29.568546, 27.683142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427929, 29.475754, 27.745874>,  <27.197531, 29.420078, 27.783514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427929, 29.475754, 27.745874>,  <27.811926, 29.568546, 27.683142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427929, 29.475754, 27.745874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095400, -0.255610, -0.962061,
		0.263268, -0.938535, 0.223254,
		-0.959994, -0.231981, 0.156830,
		27.139931, 29.406160, 27.792923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328695, 29.417854, 28.219698>,  <27.811926, 29.568546, 27.683142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328695, 29.417854, 28.219698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495808, 29.075829, 28.096849>,  <28.596075, 28.870613, 28.023140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.495808, 29.075829, 28.096849>,  <28.328695, 29.417854, 28.219698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495808, 29.075829, 28.096849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362971, 0.466970, -0.806344,
		0.832893, 0.225399, 0.505455,
		0.417782, -0.855064, -0.307123,
		28.621141, 28.819309, 28.004713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078531, 29.227116, 28.318161>,  <28.328695, 29.417854, 28.219698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078531, 29.227116, 28.318161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388552, 29.330835, 28.087664>,  <29.574564, 29.393066, 27.949366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388552, 29.330835, 28.087664>,  <29.078531, 29.227116, 28.318161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388552, 29.330835, 28.087664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631479, -0.350967, 0.691416,
		-0.022959, -0.899770, -0.435760,
		0.775053, 0.259299, -0.576243,
		29.621067, 29.408625, 27.914791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491430, 28.617342, 28.220673>,  <29.078531, 29.227116, 28.318161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491430, 28.617342, 28.220673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746643, 28.923904, 28.190897>,  <29.899771, 29.107841, 28.173031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746643, 28.923904, 28.190897>,  <29.491430, 28.617342, 28.220673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746643, 28.923904, 28.190897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523773, -0.361100, 0.771536,
		0.564428, -0.531253, -0.631815,
		0.638030, 0.766405, -0.074441,
		29.938051, 29.153826, 28.168564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082968, 28.399578, 28.129993>,  <29.491430, 28.617342, 28.220673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082968, 28.399578, 28.129993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137157, 28.749584, 28.315895>,  <30.169670, 28.959587, 28.427437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137157, 28.749584, 28.315895>,  <30.082968, 28.399578, 28.129993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137157, 28.749584, 28.315895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523506, -0.461469, 0.716231,
		0.841183, 0.146272, -0.520592,
		0.135472, 0.875014, 0.464755,
		30.177799, 29.012089, 28.455322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801102, 28.558855, 28.224119>,  <30.082968, 28.399578, 28.129993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801102, 28.558855, 28.224119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551800, 28.680618, 28.512255>,  <30.402218, 28.753677, 28.685137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.551800, 28.680618, 28.512255>,  <30.801102, 28.558855, 28.224119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551800, 28.680618, 28.512255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663711, -0.281235, 0.693105,
		0.413572, 0.910078, -0.026759,
		-0.623254, 0.304409, 0.720340,
		30.364824, 28.771940, 28.728357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927217, 29.252010, 28.639931>,  <30.801102, 28.558855, 28.224119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927217, 29.252010, 28.639931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777023, 28.937021, 28.835438>,  <30.686907, 28.748028, 28.952742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777023, 28.937021, 28.835438>,  <30.927217, 29.252010, 28.639931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777023, 28.937021, 28.835438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886927, -0.152223, 0.436107,
		-0.269020, 0.597255, 0.755589,
		-0.375485, -0.787474, 0.488770,
		30.664377, 28.700779, 28.982069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271605, 29.219677, 29.309618>,  <30.927217, 29.252010, 28.639931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271605, 29.219677, 29.309618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119713, 28.853352, 29.257318>,  <31.028578, 28.633556, 29.225939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119713, 28.853352, 29.257318>,  <31.271605, 29.219677, 29.309618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119713, 28.853352, 29.257318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760512, -0.389507, 0.519524,
		-0.526714, 0.097843, 0.844393,
		-0.379729, -0.915812, -0.130748,
		31.005795, 28.578608, 29.218094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909344, 29.371481, 29.838285>,  <31.271605, 29.219677, 29.309618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909344, 29.371481, 29.838285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758017, 29.107254, 30.097679>,  <30.667221, 28.948719, 30.253315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758017, 29.107254, 30.097679>,  <30.909344, 29.371481, 29.838285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758017, 29.107254, 30.097679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554313, 0.722721, 0.412809,
		-0.741359, -0.203289, -0.639578,
		-0.378317, -0.660566, 0.648482,
		30.644522, 28.909084, 30.292223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308912, 29.743879, 30.046804>,  <30.909344, 29.371481, 29.838285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308912, 29.743879, 30.046804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312370, 29.430094, 30.294851>,  <30.314445, 29.241823, 30.443680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312370, 29.430094, 30.294851>,  <30.308912, 29.743879, 30.046804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312370, 29.430094, 30.294851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756347, 0.400526, 0.517221,
		-0.654113, -0.473496, -0.589862,
		0.008647, -0.784462, 0.620117,
		30.314964, 29.194756, 30.480886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580700, 29.609947, 30.160904>,  <30.308912, 29.743879, 30.046804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580700, 29.609947, 30.160904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795525, 29.460339, 30.463341>,  <29.924419, 29.370573, 30.644802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795525, 29.460339, 30.463341>,  <29.580700, 29.609947, 30.160904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795525, 29.460339, 30.463341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602904, 0.456697, 0.654168,
		-0.589976, -0.807178, 0.019776,
		0.537061, -0.374020, 0.756091,
		29.956644, 29.348133, 30.690168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069590, 29.202103, 30.660627>,  <29.580700, 29.609947, 30.160904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069590, 29.202103, 30.660627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398476, 29.310957, 30.860588>,  <29.595808, 29.376270, 30.980564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398476, 29.310957, 30.860588>,  <29.069590, 29.202103, 30.660627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398476, 29.310957, 30.860588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566944, 0.469273, 0.677021,
		-0.050350, -0.840075, 0.540129,
		0.822216, 0.272135, 0.499904,
		29.645140, 29.392597, 31.010559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916006, 28.985245, 31.300758>,  <29.069590, 29.202103, 30.660627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916006, 28.985245, 31.300758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219055, 29.238871, 31.362690>,  <29.400885, 29.391047, 31.399849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219055, 29.238871, 31.362690>,  <28.916006, 28.985245, 31.300758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219055, 29.238871, 31.362690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530310, 0.459701, 0.712353,
		0.380501, -0.621802, 0.684530,
		0.757621, 0.634064, 0.154831,
		29.446341, 29.429090, 31.409140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.860754, 29.006126, 31.908865>,  <28.916006, 28.985245, 31.300758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.860754, 29.006126, 31.908865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111694, 29.306772, 31.827372>,  <29.262259, 29.487160, 31.778475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111694, 29.306772, 31.827372>,  <28.860754, 29.006126, 31.908865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111694, 29.306772, 31.827372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375561, 0.521199, 0.766359,
		0.682194, -0.404259, 0.609250,
		0.627348, 0.751616, -0.203735,
		29.299898, 29.532257, 31.766251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103704, 29.171824, 32.557892>,  <28.860754, 29.006126, 31.908865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103704, 29.171824, 32.557892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166138, 29.503975, 32.343933>,  <29.203598, 29.703266, 32.215557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166138, 29.503975, 32.343933>,  <29.103704, 29.171824, 32.557892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166138, 29.503975, 32.343933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392302, 0.549103, 0.737961,
		0.906498, 0.094658, 0.411463,
		0.156082, 0.830377, -0.534895,
		29.212963, 29.753088, 32.183464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365486, 29.693743, 32.937828>,  <29.103704, 29.171824, 32.557892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365486, 29.693743, 32.937828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247787, 29.927721, 32.635502>,  <29.177168, 30.068108, 32.454105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247787, 29.927721, 32.635502>,  <29.365486, 29.693743, 32.937828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247787, 29.927721, 32.635502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404318, 0.640386, 0.653018,
		0.865994, 0.497738, 0.048074,
		-0.294246, 0.584947, -0.755815,
		29.159513, 30.103205, 32.408756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611963, 30.322306, 33.129848>,  <29.365486, 29.693743, 32.937828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611963, 30.322306, 33.129848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336245, 30.425198, 32.858940>,  <29.170813, 30.486933, 32.696396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336245, 30.425198, 32.858940>,  <29.611963, 30.322306, 33.129848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336245, 30.425198, 32.858940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100332, 0.891942, 0.440877,
		0.717497, 0.371848, -0.589005,
		-0.689298, 0.257232, -0.677274,
		29.129456, 30.502367, 32.655758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791798, 30.984621, 32.844353>,  <29.611963, 30.322306, 33.129848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791798, 30.984621, 32.844353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396170, 30.943333, 32.802231>,  <29.158792, 30.918560, 32.776958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.396170, 30.943333, 32.802231>,  <29.791798, 30.984621, 32.844353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396170, 30.943333, 32.802231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142319, 0.855116, 0.498519,
		0.038592, 0.508056, -0.860459,
		-0.989068, -0.103221, -0.105307,
		29.099449, 30.912367, 32.770638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590183, 31.580172, 32.652130>,  <29.791798, 30.984621, 32.844353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590183, 31.580172, 32.652130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256802, 31.407007, 32.789505>,  <29.056772, 31.303108, 32.871929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256802, 31.407007, 32.789505>,  <29.590183, 31.580172, 32.652130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256802, 31.407007, 32.789505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288185, 0.870806, 0.398305,
		-0.471494, 0.232996, -0.850533,
		-0.833452, -0.432910, 0.343433,
		29.006765, 31.277134, 32.892536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121597, 32.143456, 32.663364>,  <29.590183, 31.580172, 32.652130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121597, 32.143456, 32.663364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963051, 31.853987, 32.889351>,  <28.867924, 31.680304, 33.024944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963051, 31.853987, 32.889351>,  <29.121597, 32.143456, 32.663364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963051, 31.853987, 32.889351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311501, 0.684872, 0.658724,
		-0.863633, 0.085108, -0.496886,
		-0.396366, -0.723676, 0.564966,
		28.844141, 31.636885, 33.058842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368832, 32.211948, 32.793888>,  <29.121597, 32.143456, 32.663364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368832, 32.211948, 32.793888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511902, 32.004509, 33.104530>,  <28.597744, 31.880045, 33.290916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511902, 32.004509, 33.104530>,  <28.368832, 32.211948, 32.793888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511902, 32.004509, 33.104530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189271, 0.774104, 0.604102,
		-0.914463, -0.363063, 0.178723,
		0.357677, -0.518602, 0.776608,
		28.619205, 31.848928, 33.337513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942308, 32.481400, 33.370411>,  <28.368832, 32.211948, 32.793888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942308, 32.481400, 33.370411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226486, 32.276730, 33.563683>,  <28.396994, 32.153927, 33.679646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226486, 32.276730, 33.563683>,  <27.942308, 32.481400, 33.370411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226486, 32.276730, 33.563683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008708, 0.680127, 0.733043,
		-0.703698, -0.524995, 0.478738,
		0.710446, -0.511672, 0.483175,
		28.439621, 32.123230, 33.708633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732372, 32.461182, 34.073151>,  <27.942308, 32.481400, 33.370411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732372, 32.461182, 34.073151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129234, 32.411797, 34.080978>,  <28.367352, 32.382168, 34.085674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129234, 32.411797, 34.080978>,  <27.732372, 32.461182, 34.073151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129234, 32.411797, 34.080978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083323, 0.769919, 0.632678,
		-0.093179, -0.626085, 0.774167,
		0.992157, -0.123459, 0.019573,
		28.426882, 32.374760, 34.086849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825718, 32.390739, 34.762417>,  <27.732372, 32.461182, 34.073151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825718, 32.390739, 34.762417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160866, 32.498192, 34.572338>,  <28.361954, 32.562664, 34.458290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160866, 32.498192, 34.572338>,  <27.825718, 32.390739, 34.762417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160866, 32.498192, 34.572338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045962, 0.832725, 0.551776,
		0.543933, -0.484157, 0.685367,
		0.837869, 0.268628, -0.475200,
		28.412226, 32.578781, 34.429779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291229, 32.610970, 35.388790>,  <27.825718, 32.390739, 34.762417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291229, 32.610970, 35.388790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460852, 32.765961, 35.061367>,  <28.562624, 32.858955, 34.864914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460852, 32.765961, 35.061367>,  <28.291229, 32.610970, 35.388790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460852, 32.765961, 35.061367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158518, 0.858141, 0.488330,
		0.891656, -0.336834, 0.302475,
		0.424053, 0.387475, -0.818561,
		28.588068, 32.882202, 34.815800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924423, 32.912376, 35.596241>,  <28.291229, 32.610970, 35.388790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924423, 32.912376, 35.596241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864862, 33.084927, 35.240322>,  <28.829126, 33.188457, 35.026772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864862, 33.084927, 35.240322>,  <28.924423, 32.912376, 35.596241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864862, 33.084927, 35.240322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274143, 0.882570, 0.381990,
		0.950091, -0.187054, -0.249674,
		-0.148902, 0.431372, -0.889801,
		28.820192, 33.214336, 34.973381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451607, 33.457645, 35.458809>,  <28.924423, 32.912376, 35.596241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451607, 33.457645, 35.458809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160511, 33.577122, 35.211849>,  <28.985853, 33.648808, 35.063675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160511, 33.577122, 35.211849>,  <29.451607, 33.457645, 35.458809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160511, 33.577122, 35.211849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215730, 0.954186, 0.207340,
		0.651042, 0.017699, -0.758836,
		-0.727740, 0.298690, -0.617397,
		28.942188, 33.666729, 35.026630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693676, 34.102924, 35.148277>,  <29.451607, 33.457645, 35.458809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693676, 34.102924, 35.148277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306250, 34.137684, 35.055038>,  <29.073793, 34.158539, 34.999096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306250, 34.137684, 35.055038>,  <29.693676, 34.102924, 35.148277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306250, 34.137684, 35.055038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042160, 0.980790, 0.190456,
		0.245165, 0.174641, -0.953622,
		-0.968564, 0.086898, -0.233092,
		29.015680, 34.163754, 34.985111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693958, 34.652973, 34.699013>,  <29.693676, 34.102924, 35.148277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693958, 34.652973, 34.699013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330357, 34.606327, 34.859070>,  <29.112196, 34.578339, 34.955105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330357, 34.606327, 34.859070>,  <29.693958, 34.652973, 34.699013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330357, 34.606327, 34.859070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041877, 0.980758, 0.190685,
		-0.414676, 0.156577, -0.896397,
		-0.909005, -0.116611, 0.400140,
		29.057655, 34.571342, 34.979111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210775, 34.955997, 34.321178>,  <29.693958, 34.652973, 34.699013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210775, 34.955997, 34.321178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.151026, 34.953060, 34.716679>,  <29.115175, 34.951298, 34.953979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.151026, 34.953060, 34.716679>,  <29.210775, 34.955997, 34.321178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151026, 34.953060, 34.716679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104400, 0.994500, -0.008387,
		-0.983254, -0.104479, -0.149321,
		-0.149376, -0.007342, 0.988753,
		29.106213, 34.950859, 35.013306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.625937, 35.372097, 34.537636>,  <29.210775, 34.955997, 34.321178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.625937, 35.372097, 34.537636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946032, 35.326569, 34.773148>,  <29.138088, 35.299252, 34.914455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946032, 35.326569, 34.773148>,  <28.625937, 35.372097, 34.537636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946032, 35.326569, 34.773148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196338, 0.977437, -0.077896,
		-0.566630, 0.177936, 0.804530,
		0.800238, -0.113822, 0.588781,
		29.186104, 35.292423, 34.949783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507711, 35.872452, 35.150517>,  <28.625937, 35.372097, 34.537636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507711, 35.872452, 35.150517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.865332, 35.781410, 34.996181>,  <29.079905, 35.726788, 34.903580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.865332, 35.781410, 34.996181>,  <28.507711, 35.872452, 35.150517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.865332, 35.781410, 34.996181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173307, 0.969980, -0.170599,
		0.413084, 0.085655, 0.906656,
		0.894050, -0.227602, -0.385839,
		29.133547, 35.713131, 34.880428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232786, 35.718323, 35.806309>,  <28.507711, 35.872452, 35.150517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232786, 35.718323, 35.806309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409262, 35.748436, 36.164009>,  <28.515148, 35.766502, 36.378628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.409262, 35.748436, 36.164009>,  <28.232786, 35.718323, 35.806309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409262, 35.748436, 36.164009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645658, -0.718708, -0.258040,
		0.623280, 0.691225, -0.365692,
		0.441190, 0.075281, 0.894251,
		28.541618, 35.771019, 36.432285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005831, 35.774643, 35.750980>,  <28.232786, 35.718323, 35.806309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005831, 35.774643, 35.750980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927145, 35.579365, 36.091091>,  <28.879934, 35.462196, 36.295158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927145, 35.579365, 36.091091>,  <29.005831, 35.774643, 35.750980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927145, 35.579365, 36.091091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742942, -0.640122, -0.195653,
		0.639797, 0.593217, 0.488625,
		-0.196715, -0.488198, 0.850274,
		28.868130, 35.432907, 36.346172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682362, 35.527866, 35.992645>,  <29.005831, 35.774643, 35.750980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682362, 35.527866, 35.992645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390167, 35.330509, 36.181519>,  <29.214851, 35.212093, 36.294842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390167, 35.330509, 36.181519>,  <29.682362, 35.527866, 35.992645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390167, 35.330509, 36.181519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491945, -0.859732, -0.137296,
		0.473691, 0.131995, 0.870744,
		-0.730484, -0.493394, 0.472181,
		29.171022, 35.182491, 36.323174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844549, 35.167469, 36.557083>,  <29.682362, 35.527866, 35.992645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844549, 35.167469, 36.557083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540771, 34.979336, 36.377293>,  <29.358505, 34.866455, 36.269421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.540771, 34.979336, 36.377293>,  <29.844549, 35.167469, 36.557083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540771, 34.979336, 36.377293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635856, -0.682744, -0.359927,
		-0.137587, -0.559145, 0.817574,
		-0.759445, -0.470338, -0.449472,
		29.312939, 34.838234, 36.242451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976246, 34.463394, 36.588326>,  <29.844549, 35.167469, 36.557083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976246, 34.463394, 36.588326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722042, 34.518513, 36.284447>,  <29.569519, 34.551582, 36.102119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.722042, 34.518513, 36.284447>,  <29.976246, 34.463394, 36.588326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.722042, 34.518513, 36.284447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423239, -0.760765, -0.492041,
		-0.645750, -0.634231, 0.425156,
		-0.635512, 0.137793, -0.759696,
		29.531389, 34.559849, 36.056538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702356, 33.696159, 36.456871>,  <29.976246, 34.463394, 36.588326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702356, 33.696159, 36.456871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690924, 33.941971, 36.141521>,  <29.684065, 34.089458, 35.952312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690924, 33.941971, 36.141521>,  <29.702356, 33.696159, 36.456871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690924, 33.941971, 36.141521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391066, -0.718960, -0.574599,
		-0.919919, -0.324729, -0.219774,
		-0.028580, 0.614530, -0.788375,
		29.682350, 34.126331, 35.905010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064432, 33.712471, 37.222839>,  <29.702356, 33.696159, 36.456871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064432, 33.712471, 37.222839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439854, 33.849781, 37.237129>,  <30.665106, 33.932167, 37.245705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439854, 33.849781, 37.237129>,  <30.064432, 33.712471, 37.222839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439854, 33.849781, 37.237129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052520, 0.039739, 0.997829,
		0.341114, -0.938392, 0.055326,
		0.938553, 0.343279, 0.035729,
		30.721420, 33.952766, 37.247849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406631, 33.273323, 37.669281>,  <30.064432, 33.712471, 37.222839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406631, 33.273323, 37.669281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628693, 33.606018, 37.670452>,  <30.761930, 33.805637, 37.671154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628693, 33.606018, 37.670452>,  <30.406631, 33.273323, 37.669281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628693, 33.606018, 37.670452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113848, -0.079479, 0.990314,
		0.823918, -0.549444, -0.138816,
		0.555155, 0.831742, 0.002932,
		30.795238, 33.855541, 37.671333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894417, 33.265491, 38.263687>,  <30.406631, 33.273323, 37.669281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894417, 33.265491, 38.263687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933201, 33.649223, 38.157642>,  <30.956470, 33.879463, 38.094013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933201, 33.649223, 38.157642>,  <30.894417, 33.265491, 38.263687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933201, 33.649223, 38.157642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102900, 0.255279, 0.961376,
		0.989955, -0.120494, -0.073964,
		0.096959, 0.959330, -0.265114,
		30.962288, 33.937023, 38.078110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365019, 33.504326, 38.663044>,  <30.894417, 33.265491, 38.263687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365019, 33.504326, 38.663044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174442, 33.833664, 38.539692>,  <31.060097, 34.031269, 38.465679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.174442, 33.833664, 38.539692>,  <31.365019, 33.504326, 38.663044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174442, 33.833664, 38.539692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187856, 0.437982, 0.879137,
		0.858901, 0.360928, -0.363345,
		-0.476444, 0.823349, -0.308380,
		31.031509, 34.080669, 38.447178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744999, 34.069912, 39.056377>,  <31.365019, 33.504326, 38.663044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744999, 34.069912, 39.056377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383463, 34.200409, 38.945641>,  <31.166542, 34.278706, 38.879196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383463, 34.200409, 38.945641>,  <31.744999, 34.069912, 39.056377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383463, 34.200409, 38.945641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029054, 0.692330, 0.720996,
		0.426885, 0.643621, -0.635234,
		-0.903839, 0.326239, -0.276845,
		31.112310, 34.298279, 38.862587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767790, 34.763245, 39.139565>,  <31.744999, 34.069912, 39.056377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767790, 34.763245, 39.139565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374729, 34.690037, 39.127567>,  <31.138893, 34.646114, 39.120369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374729, 34.690037, 39.127567>,  <31.767790, 34.763245, 39.139565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374729, 34.690037, 39.127567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127495, 0.549177, 0.825924,
		-0.134685, 0.815420, -0.562984,
		-0.982652, -0.183017, -0.029996,
		31.079933, 34.635132, 39.118568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473482, 35.334908, 39.182442>,  <31.767790, 34.763245, 39.139565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473482, 35.334908, 39.182442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202425, 35.072292, 39.314960>,  <31.039791, 34.914722, 39.394470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202425, 35.072292, 39.314960>,  <31.473482, 35.334908, 39.182442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202425, 35.072292, 39.314960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065374, 0.394942, 0.916377,
		-0.732479, 0.642635, -0.224709,
		-0.677643, -0.656537, 0.331298,
		30.999132, 34.875332, 39.414349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959257, 35.723297, 39.412453>,  <31.473482, 35.334908, 39.182442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959257, 35.723297, 39.412453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970224, 35.373226, 39.605663>,  <30.976805, 35.163185, 39.721592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970224, 35.373226, 39.605663>,  <30.959257, 35.723297, 39.412453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970224, 35.373226, 39.605663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156389, 0.481016, 0.862650,
		-0.987315, 0.051889, 0.150056,
		0.027417, -0.875175, 0.483030,
		30.978449, 35.110672, 39.750572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509907, 35.896496, 39.992008>,  <30.959257, 35.723297, 39.412453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509907, 35.896496, 39.992008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716614, 35.564568, 40.076252>,  <30.840637, 35.365410, 40.126797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716614, 35.564568, 40.076252>,  <30.509907, 35.896496, 39.992008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716614, 35.564568, 40.076252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060756, 0.280923, 0.957805,
		-0.853968, -0.482165, 0.195588,
		0.516766, -0.829818, 0.210605,
		30.871643, 35.315620, 40.139435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039190, 35.584499, 40.568752>,  <30.509907, 35.896496, 39.992008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039190, 35.584499, 40.568752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405928, 35.434921, 40.624710>,  <30.625969, 35.345177, 40.658283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405928, 35.434921, 40.624710>,  <30.039190, 35.584499, 40.568752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405928, 35.434921, 40.624710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144629, 0.015513, 0.989364,
		-0.372135, -0.927323, -0.039860,
		0.916842, -0.373942, 0.139891,
		30.680981, 35.322739, 40.666676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041933, 35.373775, 41.295296>,  <30.039190, 35.584499, 40.568752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041933, 35.373775, 41.295296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429644, 35.380039, 41.197105>,  <30.662270, 35.383797, 41.138191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429644, 35.380039, 41.197105>,  <30.041933, 35.373775, 41.295296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429644, 35.380039, 41.197105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241543, 0.128007, 0.961910,
		0.046482, -0.991650, 0.120293,
		0.969276, 0.015656, -0.245476,
		30.720427, 35.384735, 41.123463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339346, 34.919098, 41.781681>,  <30.041933, 35.373775, 41.295296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339346, 34.919098, 41.781681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646662, 35.152103, 41.675545>,  <30.831051, 35.291908, 41.611862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646662, 35.152103, 41.675545>,  <30.339346, 34.919098, 41.781681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646662, 35.152103, 41.675545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236610, 0.126725, 0.963305,
		0.594764, -0.802881, -0.040467,
		0.768291, 0.582514, -0.265341,
		30.877150, 35.326859, 41.595943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770803, 34.732769, 42.269882>,  <30.339346, 34.919098, 41.781681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770803, 34.732769, 42.269882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964769, 35.041790, 42.105919>,  <31.081150, 35.227203, 42.007542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964769, 35.041790, 42.105919>,  <30.770803, 34.732769, 42.269882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964769, 35.041790, 42.105919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337300, 0.267231, 0.902671,
		0.806898, -0.575982, -0.130996,
		0.484916, 0.772549, -0.409907,
		31.110245, 35.273556, 41.982948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522726, 34.712086, 42.427593>,  <30.770803, 34.732769, 42.269882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522726, 34.712086, 42.427593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410286, 35.091457, 42.368992>,  <31.342821, 35.319080, 42.333832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410286, 35.091457, 42.368992>,  <31.522726, 34.712086, 42.427593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410286, 35.091457, 42.368992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339438, 0.241055, 0.909216,
		0.897644, 0.205851, -0.389694,
		-0.281100, 0.948429, -0.146508,
		31.325956, 35.375988, 42.325039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113472, 35.226833, 42.570072>,  <31.522726, 34.712086, 42.427593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113472, 35.226833, 42.570072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771114, 35.431652, 42.599079>,  <31.565701, 35.554543, 42.616482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771114, 35.431652, 42.599079>,  <32.113472, 35.226833, 42.570072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771114, 35.431652, 42.599079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250692, 0.288145, 0.924189,
		0.452334, 0.809184, -0.374987,
		-0.855890, 0.512048, 0.072518,
		31.514347, 35.585266, 42.620834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316559, 35.845158, 42.837898>,  <32.113472, 35.226833, 42.570072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316559, 35.845158, 42.837898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920698, 35.852493, 42.894817>,  <31.683182, 35.856895, 42.928967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920698, 35.852493, 42.894817>,  <32.316559, 35.845158, 42.837898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920698, 35.852493, 42.894817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140265, 0.332198, 0.932722,
		-0.030169, 0.943031, -0.331333,
		-0.989654, 0.018335, 0.142296,
		31.623802, 35.857994, 42.937508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240810, 36.430275, 43.302242>,  <32.316559, 35.845158, 42.837898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240810, 36.430275, 43.302242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917273, 36.198322, 43.341255>,  <31.723150, 36.059151, 43.364662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917273, 36.198322, 43.341255>,  <32.240810, 36.430275, 43.302242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917273, 36.198322, 43.341255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017228, 0.142423, 0.989656,
		-0.587774, 0.802155, -0.105207,
		-0.808842, -0.579882, 0.097533,
		31.674620, 36.024357, 43.370514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650522, 36.837353, 43.698658>,  <32.240810, 36.430275, 43.302242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650522, 36.837353, 43.698658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602293, 36.443672, 43.750523>,  <31.573355, 36.207466, 43.781643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602293, 36.443672, 43.750523>,  <31.650522, 36.837353, 43.698658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602293, 36.443672, 43.750523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063032, 0.137943, 0.988432,
		-0.990701, 0.111008, -0.078669,
		-0.120575, -0.984200, 0.129663,
		31.566120, 36.148411, 43.789421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196875, 36.752205, 44.287254>,  <31.650522, 36.837353, 43.698658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196875, 36.752205, 44.287254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370863, 36.394897, 44.241863>,  <31.475256, 36.180515, 44.214630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370863, 36.394897, 44.241863>,  <31.196875, 36.752205, 44.287254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370863, 36.394897, 44.241863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096069, -0.079266, 0.992214,
		-0.895305, -0.442484, 0.051337,
		0.434970, -0.893266, -0.113476,
		31.501354, 36.126919, 44.207821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837250, 36.328415, 44.780338>,  <31.196875, 36.752205, 44.287254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837250, 36.328415, 44.780338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176620, 36.129494, 44.707832>,  <31.380243, 36.010139, 44.664330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176620, 36.129494, 44.707832>,  <30.837250, 36.328415, 44.780338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176620, 36.129494, 44.707832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019168, -0.313358, 0.949442,
		-0.528964, -0.809007, -0.256330,
		0.848428, -0.497307, -0.181262,
		31.431149, 35.980301, 44.653454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741426, 35.678242, 45.081245>,  <30.837250, 36.328415, 44.780338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741426, 35.678242, 45.081245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135876, 35.742794, 45.065685>,  <31.372545, 35.781525, 45.056351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135876, 35.742794, 45.065685>,  <30.741426, 35.678242, 45.081245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135876, 35.742794, 45.065685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086182, -0.297425, 0.950848,
		0.141884, -0.941006, -0.307206,
		0.986124, 0.161386, -0.038898,
		31.431713, 35.791210, 45.054016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027077, 35.104343, 45.424355>,  <30.741426, 35.678242, 45.081245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027077, 35.104343, 45.424355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307768, 35.388752, 45.406353>,  <31.476183, 35.559399, 45.395554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307768, 35.388752, 45.406353>,  <31.027077, 35.104343, 45.424355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307768, 35.388752, 45.406353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354059, -0.293223, 0.888067,
		0.618242, -0.639112, -0.457507,
		0.701726, 0.711025, -0.045001,
		31.518286, 35.602058, 45.392853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634130, 34.789608, 45.725121>,  <31.027077, 35.104343, 45.424355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634130, 34.789608, 45.725121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683451, 35.183582, 45.773609>,  <31.713043, 35.419968, 45.802704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683451, 35.183582, 45.773609>,  <31.634130, 34.789608, 45.725121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683451, 35.183582, 45.773609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145692, -0.138800, 0.979545,
		0.981616, -0.103119, -0.160612,
		0.123303, 0.984937, 0.121224,
		31.720442, 35.479065, 45.809975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081505, 34.754906, 46.254379>,  <31.634130, 34.789608, 45.725121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081505, 34.754906, 46.254379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011776, 35.147827, 46.227005>,  <31.969940, 35.383579, 46.210579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011776, 35.147827, 46.227005>,  <32.081505, 34.754906, 46.254379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011776, 35.147827, 46.227005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418681, 0.136846, 0.897764,
		0.891246, 0.127844, -0.435128,
		-0.174319, 0.982308, -0.068437,
		31.959480, 35.442520, 46.206474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725193, 35.126301, 46.233513>,  <32.081505, 34.754906, 46.254379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725193, 35.126301, 46.233513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445606, 35.390751, 46.342579>,  <32.277855, 35.549423, 46.408020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445606, 35.390751, 46.342579>,  <32.725193, 35.126301, 46.233513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445606, 35.390751, 46.342579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473852, 0.142579, 0.868985,
		0.535634, 0.736600, -0.412936,
		-0.698970, 0.661129, 0.272670,
		32.235916, 35.589088, 46.424381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133408, 35.565681, 46.689106>,  <32.725193, 35.126301, 46.233513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133408, 35.565681, 46.689106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757305, 35.697960, 46.721478>,  <32.531643, 35.777328, 46.740898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757305, 35.697960, 46.721478>,  <33.133408, 35.565681, 46.689106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757305, 35.697960, 46.721478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208895, 0.372691, 0.904137,
		0.268837, 0.867029, -0.419508,
		-0.940260, 0.330699, 0.080925,
		32.475227, 35.797169, 46.745754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078186, 36.250595, 46.809200>,  <33.133408, 35.565681, 46.689106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078186, 36.250595, 46.809200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757019, 36.077583, 46.973267>,  <32.564320, 35.973778, 47.071709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757019, 36.077583, 46.973267>,  <33.078186, 36.250595, 46.809200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757019, 36.077583, 46.973267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274749, 0.342116, 0.898593,
		-0.528992, 0.834192, -0.155855,
		-0.802920, -0.432527, 0.410170,
		32.516144, 35.947826, 47.096317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732613, 36.817123, 47.202019>,  <33.078186, 36.250595, 46.809200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732613, 36.817123, 47.202019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623001, 36.450989, 47.320042>,  <32.557232, 36.231308, 47.390854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623001, 36.450989, 47.320042>,  <32.732613, 36.817123, 47.202019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623001, 36.450989, 47.320042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098006, 0.278622, 0.955387,
		-0.956714, 0.290724, 0.013358,
		-0.274033, -0.915341, 0.295054,
		32.540791, 36.176388, 47.408558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238819, 36.862232, 47.714958>,  <32.732613, 36.817123, 47.202019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238819, 36.862232, 47.714958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352940, 36.485825, 47.787720>,  <32.421413, 36.259979, 47.831375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352940, 36.485825, 47.787720>,  <32.238819, 36.862232, 47.714958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352940, 36.485825, 47.787720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142719, 0.229384, 0.962816,
		-0.947752, -0.248732, 0.199745,
		0.285301, -0.941018, 0.181900,
		32.438530, 36.203518, 47.842289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958019, 36.755730, 48.295872>,  <32.238819, 36.862232, 47.714958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958019, 36.755730, 48.295872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241978, 36.474007, 48.295452>,  <32.412354, 36.304974, 48.295200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241978, 36.474007, 48.295452>,  <31.958019, 36.755730, 48.295872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241978, 36.474007, 48.295452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223569, 0.223926, 0.948617,
		-0.667880, -0.673656, 0.316426,
		0.709897, -0.704305, -0.001053,
		32.454948, 36.262714, 48.295135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860823, 36.401924, 48.918892>,  <31.958019, 36.755730, 48.295872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860823, 36.401924, 48.918892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220673, 36.263004, 48.813015>,  <32.436581, 36.179653, 48.749489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220673, 36.263004, 48.813015>,  <31.860823, 36.401924, 48.918892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220673, 36.263004, 48.813015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297402, 0.043467, 0.953762,
		-0.319734, -0.936747, 0.142392,
		0.899623, -0.347298, -0.264693,
		32.490559, 36.158813, 48.733608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043728, 35.815456, 49.407520>,  <31.860823, 36.401924, 48.918892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043728, 35.815456, 49.407520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380318, 35.976154, 49.263008>,  <32.582272, 36.072575, 49.176300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380318, 35.976154, 49.263008>,  <32.043728, 35.815456, 49.407520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380318, 35.976154, 49.263008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377000, 0.042413, 0.925241,
		0.387034, -0.914769, -0.115769,
		0.841472, 0.401745, -0.361283,
		32.632759, 36.096676, 49.154625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597729, 35.448425, 49.855267>,  <32.043728, 35.815456, 49.407520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597729, 35.448425, 49.855267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798939, 35.755489, 49.696438>,  <32.919666, 35.939728, 49.601139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798939, 35.755489, 49.696438>,  <32.597729, 35.448425, 49.855267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798939, 35.755489, 49.696438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706126, -0.100126, 0.700971,
		0.498350, -0.632988, -0.592431,
		0.503024, 0.767660, -0.397071,
		32.949844, 35.985786, 49.577316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368366, 35.245548, 49.683926>,  <32.597729, 35.448425, 49.855267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368366, 35.245548, 49.683926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350525, 35.644638, 49.704132>,  <33.339821, 35.884094, 49.716255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350525, 35.644638, 49.704132>,  <33.368366, 35.245548, 49.683926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350525, 35.644638, 49.704132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731165, -0.001854, 0.682198,
		0.680740, 0.067369, -0.729420,
		-0.044606, 0.997726, 0.050520,
		33.337143, 35.943954, 49.719288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968563, 35.513123, 49.558098>,  <33.368366, 35.245548, 49.683926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968563, 35.513123, 49.558098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810284, 35.804272, 49.782108>,  <33.715317, 35.978962, 49.916515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810284, 35.804272, 49.782108>,  <33.968563, 35.513123, 49.558098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810284, 35.804272, 49.782108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680945, -0.176633, 0.710714,
		0.616226, 0.662575, -0.425746,
		-0.395701, 0.727870, 0.560023,
		33.691574, 36.022633, 49.950115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548164, 35.793594, 49.805851>,  <33.968563, 35.513123, 49.558098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548164, 35.793594, 49.805851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269501, 35.921062, 50.062950>,  <34.102303, 35.997543, 50.217209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269501, 35.921062, 50.062950>,  <34.548164, 35.793594, 49.805851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269501, 35.921062, 50.062950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672868, -0.020517, 0.739478,
		0.248840, 0.947642, -0.200133,
		-0.696654, 0.318675, 0.642743,
		34.060505, 36.016666, 50.255772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822231, 36.319809, 50.151196>,  <34.548164, 35.793594, 49.805851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822231, 36.319809, 50.151196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518883, 36.209000, 50.387207>,  <34.336876, 36.142513, 50.528816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.518883, 36.209000, 50.387207>,  <34.822231, 36.319809, 50.151196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518883, 36.209000, 50.387207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503233, 0.326497, 0.800098,
		-0.414286, 0.903692, -0.108201,
		-0.758370, -0.277019, 0.590031,
		34.291370, 36.125893, 50.564217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908070, 36.778584, 50.717129>,  <34.822231, 36.319809, 50.151196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908070, 36.778584, 50.717129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691063, 36.465858, 50.840050>,  <34.560860, 36.278225, 50.913803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691063, 36.465858, 50.840050>,  <34.908070, 36.778584, 50.717129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691063, 36.465858, 50.840050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415277, 0.068390, 0.907120,
		-0.730216, 0.619750, 0.287566,
		-0.542521, -0.781814, 0.307307,
		34.528305, 36.231316, 50.932243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670956, 36.928417, 51.433575>,  <34.908070, 36.778584, 50.717129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670956, 36.928417, 51.433575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630764, 36.530441, 51.432625>,  <34.606651, 36.291656, 51.432056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630764, 36.530441, 51.432625>,  <34.670956, 36.928417, 51.433575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630764, 36.530441, 51.432625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414044, -0.043984, 0.909193,
		-0.904694, 0.090369, 0.416367,
		-0.100476, -0.994937, -0.002375,
		34.600620, 36.231960, 51.431911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392342, 36.788174, 52.064587>,  <34.670956, 36.928417, 51.433575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392342, 36.788174, 52.064587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582684, 36.462231, 51.932182>,  <34.696888, 36.266663, 51.852741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582684, 36.462231, 51.932182>,  <34.392342, 36.788174, 52.064587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582684, 36.462231, 51.932182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441229, -0.104396, 0.891302,
		-0.760842, -0.570179, 0.309863,
		0.475853, -0.814860, -0.331008,
		34.725441, 36.217773, 51.832878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372101, 36.085239, 52.581409>,  <34.392342, 36.788174, 52.064587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372101, 36.085239, 52.581409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692665, 36.104996, 52.342979>,  <34.885002, 36.116852, 52.199921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692665, 36.104996, 52.342979>,  <34.372101, 36.085239, 52.581409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692665, 36.104996, 52.342979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591963, 0.077095, 0.802269,
		0.085584, -0.995799, 0.032544,
		0.801408, 0.049396, -0.596075,
		34.933086, 36.119816, 52.164158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953426, 35.842598, 52.950802>,  <34.372101, 36.085239, 52.581409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953426, 35.842598, 52.950802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182117, 36.007084, 52.666824>,  <35.319332, 36.105774, 52.496437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182117, 36.007084, 52.666824>,  <34.953426, 35.842598, 52.950802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182117, 36.007084, 52.666824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780167, -0.004706, 0.625553,
		0.253897, -0.911526, -0.323507,
		0.571730, 0.411216, -0.709948,
		35.353638, 36.130447, 52.453838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571888, 35.499393, 52.951618>,  <34.953426, 35.842598, 52.950802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571888, 35.499393, 52.951618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623062, 35.870964, 52.812637>,  <35.653767, 36.093906, 52.729248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623062, 35.870964, 52.812637>,  <35.571888, 35.499393, 52.951618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623062, 35.870964, 52.812637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753232, 0.136896, 0.643351,
		0.645192, -0.344022, -0.682185,
		0.127939, 0.928929, -0.347453,
		35.661446, 36.149643, 52.708401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090694, 35.626579, 53.346966>,  <35.571888, 35.499393, 52.951618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090694, 35.626579, 53.346966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072079, 35.958340, 53.124283>,  <36.060909, 36.157398, 52.990673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072079, 35.958340, 53.124283>,  <36.090694, 35.626579, 53.346966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072079, 35.958340, 53.124283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688101, 0.430620, 0.584024,
		0.724121, -0.355890, -0.590755,
		-0.046543, 0.829403, -0.556709,
		36.058117, 36.207161, 52.957272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786663, 35.727413, 53.213089>,  <36.090694, 35.626579, 53.346966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786663, 35.727413, 53.213089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588333, 36.072750, 53.175575>,  <36.469334, 36.279953, 53.153065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588333, 36.072750, 53.175575>,  <36.786663, 35.727413, 53.213089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588333, 36.072750, 53.175575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735976, 0.475073, 0.482332,
		0.460973, 0.170128, -0.870954,
		-0.495825, 0.863343, -0.093786,
		36.439587, 36.331753, 53.147438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383163, 35.912125, 53.096535>,  <36.786663, 35.727413, 53.213089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383163, 35.912125, 53.096535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677212, 35.950298, 52.828060>,  <37.853642, 35.973202, 52.666977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677212, 35.950298, 52.828060>,  <37.383163, 35.912125, 53.096535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677212, 35.950298, 52.828060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638485, -0.235340, -0.732770,
		-0.227888, 0.967216, -0.112070,
		0.735122, 0.095434, -0.671184,
		37.897747, 35.978928, 52.626705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460197, 35.608368, 53.769527>,  <37.383163, 35.912125, 53.096535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460197, 35.608368, 53.769527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269951, 35.960228, 53.768883>,  <37.155804, 36.171345, 53.768494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269951, 35.960228, 53.768883>,  <37.460197, 35.608368, 53.769527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269951, 35.960228, 53.768883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870227, 0.470788, 0.145133,
		0.128426, 0.067623, -0.989411,
		-0.475617, 0.879651, -0.001614,
		37.127266, 36.224125, 53.768398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387848, 34.973770, 53.427685>,  <37.460197, 35.608368, 53.769527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387848, 34.973770, 53.427685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165768, 34.804531, 53.714108>,  <37.032520, 34.702988, 53.885963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165768, 34.804531, 53.714108>,  <37.387848, 34.973770, 53.427685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165768, 34.804531, 53.714108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361599, -0.652529, -0.665922,
		0.748999, -0.628646, 0.209293,
		-0.555199, -0.423095, 0.716061,
		36.999207, 34.677601, 53.928925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456287, 34.210125, 53.310928>,  <37.387848, 34.973770, 53.427685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456287, 34.210125, 53.310928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143024, 34.301857, 53.542126>,  <36.955067, 34.356895, 53.680843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143024, 34.301857, 53.542126>,  <37.456287, 34.210125, 53.310928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143024, 34.301857, 53.542126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559144, -0.666419, -0.493197,
		0.272083, -0.709432, 0.650136,
		-0.783153, 0.229329, 0.577996,
		36.908077, 34.370655, 53.715523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264626, 34.032986, 52.595409>,  <37.456287, 34.210125, 53.310928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264626, 34.032986, 52.595409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119694, 33.722866, 52.802341>,  <37.032734, 33.536793, 52.926498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119694, 33.722866, 52.802341>,  <37.264626, 34.032986, 52.595409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119694, 33.722866, 52.802341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537981, -0.279281, -0.795348,
		0.761112, -0.566493, -0.315903,
		-0.362334, -0.775298, 0.517327,
		37.010994, 33.490276, 52.957539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329350, 33.414463, 52.187302>,  <37.264626, 34.032986, 52.595409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329350, 33.414463, 52.187302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007767, 33.402309, 52.424862>,  <36.814816, 33.395016, 52.567398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007767, 33.402309, 52.424862>,  <37.329350, 33.414463, 52.187302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007767, 33.402309, 52.424862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580763, -0.174691, -0.795109,
		0.127912, -0.984154, 0.122795,
		-0.803961, -0.030389, 0.593905,
		36.766579, 33.393192, 52.603035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998981, 32.679462, 52.143848>,  <37.329350, 33.414463, 52.187302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998981, 32.679462, 52.143848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758518, 32.991215, 52.214481>,  <36.614239, 33.178265, 52.256859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758518, 32.991215, 52.214481>,  <36.998981, 32.679462, 52.143848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758518, 32.991215, 52.214481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533277, -0.226683, -0.815003,
		-0.595168, -0.584111, 0.551897,
		-0.601158, 0.779378, 0.176579,
		36.578171, 33.225029, 52.267456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289497, 32.424915, 52.016506>,  <36.998981, 32.679462, 52.143848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289497, 32.424915, 52.016506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277843, 32.822697, 51.976078>,  <36.270851, 33.061367, 51.951820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277843, 32.822697, 51.976078>,  <36.289497, 32.424915, 52.016506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277843, 32.822697, 51.976078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620850, -0.097251, -0.777874,
		-0.783388, 0.040088, 0.620239,
		-0.029136, 0.994452, -0.101074,
		36.269104, 33.121033, 51.945755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570499, 32.700451, 51.909653>,  <36.289497, 32.424915, 52.016506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570499, 32.700451, 51.909653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798828, 32.999043, 51.772873>,  <35.935825, 33.178196, 51.690804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798828, 32.999043, 51.772873>,  <35.570499, 32.700451, 51.909653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798828, 32.999043, 51.772873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559159, 0.048456, -0.827643,
		-0.601247, 0.663644, 0.445060,
		0.570826, 0.746478, -0.341948,
		35.970078, 33.222984, 51.670288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092628, 33.024372, 51.580769>,  <35.570499, 32.700451, 51.909653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092628, 33.024372, 51.580769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431664, 33.177292, 51.433559>,  <35.635086, 33.269043, 51.345234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431664, 33.177292, 51.433559>,  <35.092628, 33.024372, 51.580769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431664, 33.177292, 51.433559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421179, 0.062772, -0.904803,
		-0.322801, 0.921905, 0.214220,
		0.847590, 0.382296, -0.368024,
		35.685940, 33.291981, 51.323151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875175, 33.758907, 51.264462>,  <35.092628, 33.024372, 51.580769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875175, 33.758907, 51.264462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204865, 33.625420, 51.081467>,  <35.402676, 33.545326, 50.971672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204865, 33.625420, 51.081467>,  <34.875175, 33.758907, 51.264462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204865, 33.625420, 51.081467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367235, 0.299955, -0.880435,
		0.431045, 0.893676, 0.124675,
		0.824220, -0.333722, -0.457484,
		35.452129, 33.525303, 50.944221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955849, 34.112713, 50.650936>,  <34.875175, 33.758907, 51.264462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955849, 34.112713, 50.650936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176376, 33.787560, 50.575825>,  <35.308693, 33.592468, 50.530758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176376, 33.787560, 50.575825>,  <34.955849, 34.112713, 50.650936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176376, 33.787560, 50.575825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046002, 0.195109, -0.979702,
		0.833022, 0.548771, 0.070174,
		0.551323, -0.812886, -0.187774,
		35.341774, 33.543694, 50.519493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374107, 34.347198, 50.096748>,  <34.955849, 34.112713, 50.650936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374107, 34.347198, 50.096748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373501, 33.947418, 50.083561>,  <35.373138, 33.707550, 50.075649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373501, 33.947418, 50.083561>,  <35.374107, 34.347198, 50.096748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373501, 33.947418, 50.083561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092255, 0.032966, -0.995189,
		0.995734, 0.001534, -0.092254,
		-0.001515, -0.999455, -0.032967,
		35.373047, 33.647583, 50.073669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935978, 34.096878, 49.726238>,  <35.374107, 34.347198, 50.096748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935978, 34.096878, 49.726238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657684, 33.810947, 49.698029>,  <35.490707, 33.639389, 49.681103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657684, 33.810947, 49.698029>,  <35.935978, 34.096878, 49.726238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657684, 33.810947, 49.698029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042916, 0.139371, -0.989310,
		0.717012, -0.685274, -0.127643,
		-0.695738, -0.714825, -0.070522,
		35.448963, 33.596500, 49.676872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286945, 33.673382, 49.165836>,  <35.935978, 34.096878, 49.726238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286945, 33.673382, 49.165836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919235, 33.517693, 49.189285>,  <35.698608, 33.424278, 49.203354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919235, 33.517693, 49.189285>,  <36.286945, 33.673382, 49.165836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919235, 33.517693, 49.189285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015072, -0.183628, -0.982880,
		0.393328, -0.902653, 0.174671,
		-0.919275, -0.389227, 0.058621,
		35.643452, 33.400925, 49.206871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260021, 33.223789, 48.631306>,  <36.286945, 33.673382, 49.165836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260021, 33.223789, 48.631306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874279, 33.274456, 48.724243>,  <35.642834, 33.304855, 48.780006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874279, 33.274456, 48.724243>,  <36.260021, 33.223789, 48.631306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874279, 33.274456, 48.724243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239855, -0.047467, -0.969648,
		-0.111791, -0.990809, 0.076156,
		-0.964351, 0.126664, 0.232344,
		35.584972, 33.312454, 48.793945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964230, 32.708454, 48.265556>,  <36.260021, 33.223789, 48.631306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964230, 32.708454, 48.265556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673798, 32.973778, 48.338032>,  <35.499538, 33.132973, 48.381516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673798, 32.973778, 48.338032>,  <35.964230, 32.708454, 48.265556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673798, 32.973778, 48.338032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197702, 0.050991, -0.978935,
		-0.658577, -0.746605, 0.094115,
		-0.726079, 0.663311, 0.181187,
		35.455975, 33.172771, 48.392387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430248, 32.499077, 47.855602>,  <35.964230, 32.708454, 48.265556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430248, 32.499077, 47.855602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339062, 32.884956, 47.908352>,  <35.284348, 33.116482, 47.940002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339062, 32.884956, 47.908352>,  <35.430248, 32.499077, 47.855602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339062, 32.884956, 47.908352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238022, 0.076114, -0.968273,
		-0.944126, -0.252126, 0.212267,
		-0.227971, 0.964696, 0.131873,
		35.270672, 33.174366, 47.947914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781693, 32.530594, 47.510445>,  <35.430248, 32.499077, 47.855602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781693, 32.530594, 47.510445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868145, 32.920399, 47.534462>,  <34.920017, 33.154282, 47.548870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868145, 32.920399, 47.534462>,  <34.781693, 32.530594, 47.510445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868145, 32.920399, 47.534462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367152, 0.138101, -0.919852,
		-0.904702, 0.176766, 0.387644,
		0.216133, 0.974516, 0.060041,
		34.932983, 33.212753, 47.552475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139290, 32.951141, 47.456402>,  <34.781693, 32.530594, 47.510445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139290, 32.951141, 47.456402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445835, 33.168358, 47.319118>,  <34.629761, 33.298687, 47.236748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445835, 33.168358, 47.319118>,  <34.139290, 32.951141, 47.456402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445835, 33.168358, 47.319118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442905, 0.059656, -0.894582,
		-0.465319, 0.837585, 0.286234,
		0.766364, 0.543040, -0.343211,
		34.675743, 33.331268, 47.216156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904274, 33.484356, 47.064144>,  <34.139290, 32.951141, 47.456402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904274, 33.484356, 47.064144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283871, 33.454212, 46.941673>,  <34.511627, 33.436127, 46.868191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283871, 33.454212, 46.941673>,  <33.904274, 33.484356, 47.064144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283871, 33.454212, 46.941673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313824, -0.131563, -0.940322,
		0.030578, 0.988440, -0.148500,
		0.948989, -0.075356, -0.306173,
		34.568569, 33.431606, 46.849823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991512, 33.994663, 46.513363>,  <33.904274, 33.484356, 47.064144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991512, 33.994663, 46.513363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287769, 33.729420, 46.470036>,  <34.465523, 33.570274, 46.444038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287769, 33.729420, 46.470036>,  <33.991512, 33.994663, 46.513363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287769, 33.729420, 46.470036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186541, -0.048069, -0.981271,
		0.645484, 0.746976, -0.159299,
		0.740643, -0.663111, -0.108314,
		34.509964, 33.530487, 46.437542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381145, 34.066147, 45.816105>,  <33.991512, 33.994663, 46.513363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381145, 34.066147, 45.816105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496872, 33.696316, 45.915260>,  <34.566307, 33.474419, 45.974754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496872, 33.696316, 45.915260>,  <34.381145, 34.066147, 45.816105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496872, 33.696316, 45.915260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114651, -0.290572, -0.949959,
		0.950342, 0.246420, -0.190072,
		0.289318, -0.924578, 0.247891,
		34.583668, 33.418941, 45.989628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673294, 33.836266, 45.119804>,  <34.381145, 34.066147, 45.816105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673294, 33.836266, 45.119804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608192, 33.508007, 45.338909>,  <34.569130, 33.311050, 45.470371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608192, 33.508007, 45.338909>,  <34.673294, 33.836266, 45.119804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608192, 33.508007, 45.338909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200531, -0.516066, -0.832745,
		0.966074, -0.245375, -0.080574,
		-0.162754, -0.820650, 0.547763,
		34.559368, 33.261810, 45.503239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086372, 33.360756, 44.853882>,  <34.673294, 33.836266, 45.119804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086372, 33.360756, 44.853882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824902, 33.116486, 45.032673>,  <34.668018, 32.969925, 45.139946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824902, 33.116486, 45.032673>,  <35.086372, 33.360756, 44.853882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824902, 33.116486, 45.032673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126428, -0.494208, -0.860101,
		0.746141, -0.618736, 0.245845,
		-0.653674, -0.610675, 0.446975,
		34.628799, 32.933285, 45.166767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286610, 32.686123, 44.689575>,  <35.086372, 33.360756, 44.853882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286610, 32.686123, 44.689575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898109, 32.691174, 44.784660>,  <34.665009, 32.694202, 44.841713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898109, 32.691174, 44.784660>,  <35.286610, 32.686123, 44.689575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898109, 32.691174, 44.784660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217875, -0.449470, -0.866318,
		0.095911, -0.893206, 0.439300,
		-0.971253, 0.012623, 0.237716,
		34.606735, 32.694962, 44.855976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000183, 32.030411, 44.462650>,  <35.286610, 32.686123, 44.689575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000183, 32.030411, 44.462650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713509, 32.304844, 44.512688>,  <34.541504, 32.469501, 44.542709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713509, 32.304844, 44.512688>,  <35.000183, 32.030411, 44.462650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713509, 32.304844, 44.512688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434549, -0.299034, -0.849557,
		-0.545456, -0.663229, 0.512449,
		-0.716690, 0.686080, 0.125096,
		34.498501, 32.510670, 44.550217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489849, 31.625471, 44.222996>,  <35.000183, 32.030411, 44.462650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489849, 31.625471, 44.222996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360512, 32.003895, 44.214802>,  <34.282909, 32.230949, 44.209885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360512, 32.003895, 44.214802>,  <34.489849, 31.625471, 44.222996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360512, 32.003895, 44.214802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494826, -0.187489, -0.848525,
		-0.806597, -0.264228, 0.528758,
		-0.323341, 0.946061, -0.020481,
		34.263508, 32.287712, 44.208656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780556, 31.635609, 44.095757>,  <34.489849, 31.625471, 44.222996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780556, 31.635609, 44.095757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897644, 32.000912, 43.982430>,  <33.967899, 32.220093, 43.914433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897644, 32.000912, 43.982430>,  <33.780556, 31.635609, 44.095757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897644, 32.000912, 43.982430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373360, -0.163613, -0.913145,
		-0.880293, 0.373080, 0.293081,
		0.292724, 0.913259, -0.283321,
		33.985462, 32.274891, 43.897434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205906, 31.932610, 43.844147>,  <33.780556, 31.635609, 44.095757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205906, 31.932610, 43.844147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484600, 32.164371, 43.674980>,  <33.651817, 32.303429, 43.573483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484600, 32.164371, 43.674980>,  <33.205906, 31.932610, 43.844147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484600, 32.164371, 43.674980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378253, -0.204187, -0.902902,
		-0.609497, 0.789050, 0.076896,
		0.696734, 0.579403, -0.422912,
		33.693619, 32.338192, 43.548107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893028, 32.393440, 43.405708>,  <33.205906, 31.932610, 43.844147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893028, 32.393440, 43.405708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264290, 32.433174, 43.262230>,  <33.487045, 32.457012, 43.176144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264290, 32.433174, 43.262230>,  <32.893028, 32.393440, 43.405708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264290, 32.433174, 43.262230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367933, 0.099358, -0.924529,
		-0.056196, 0.990081, 0.128767,
		0.928153, 0.099332, -0.358700,
		33.542736, 32.462975, 43.154621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864491, 32.923317, 42.842487>,  <32.893028, 32.393440, 43.405708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864491, 32.923317, 42.842487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191975, 32.701813, 42.781738>,  <33.388466, 32.568909, 42.745289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191975, 32.701813, 42.781738>,  <32.864491, 32.923317, 42.842487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191975, 32.701813, 42.781738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287132, -0.165765, -0.943439,
		0.497268, 0.816007, -0.294716,
		0.818706, -0.553765, -0.151872,
		33.437588, 32.535683, 42.736176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163788, 33.306332, 42.328522>,  <32.864491, 32.923317, 42.842487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163788, 33.306332, 42.328522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344776, 32.950039, 42.311245>,  <33.453369, 32.736263, 42.300880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344776, 32.950039, 42.311245>,  <33.163788, 33.306332, 42.328522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344776, 32.950039, 42.311245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124894, 0.111253, -0.985913,
		0.882989, 0.440704, 0.161586,
		0.452473, -0.890732, -0.043193,
		33.480518, 32.682819, 42.298286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818970, 33.366402, 41.995361>,  <33.163788, 33.306332, 42.328522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818970, 33.366402, 41.995361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699890, 32.986710, 41.954697>,  <33.628441, 32.758896, 41.930298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699890, 32.986710, 41.954697>,  <33.818970, 33.366402, 41.995361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699890, 32.986710, 41.954697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062313, 0.086945, -0.994262,
		0.952623, -0.302328, 0.033266,
		-0.297701, -0.949230, -0.101665,
		33.610580, 32.701939, 41.924198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232197, 32.979939, 41.465443>,  <33.818970, 33.366402, 41.995361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232197, 32.979939, 41.465443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896629, 32.762756, 41.480541>,  <33.695290, 32.632446, 41.489601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896629, 32.762756, 41.480541>,  <34.232197, 32.979939, 41.465443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896629, 32.762756, 41.480541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008938, -0.055602, -0.998413,
		0.544190, -0.837920, 0.041792,
		-0.838915, -0.542953, 0.037748,
		33.644955, 32.599869, 41.491867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306530, 32.481140, 40.963058>,  <34.232197, 32.979939, 41.465443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306530, 32.481140, 40.963058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914921, 32.440998, 41.033978>,  <33.679955, 32.416912, 41.076530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914921, 32.440998, 41.033978>,  <34.306530, 32.481140, 40.963058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914921, 32.440998, 41.033978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140580, -0.297100, -0.944441,
		0.147458, -0.949558, 0.276760,
		-0.979027, -0.100359, 0.177298,
		33.621212, 32.410892, 41.087166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077568, 32.045792, 40.528214>,  <34.306530, 32.481140, 40.963058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077568, 32.045792, 40.528214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733799, 32.224636, 40.627399>,  <33.527538, 32.331944, 40.686913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733799, 32.224636, 40.627399>,  <34.077568, 32.045792, 40.528214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733799, 32.224636, 40.627399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331326, -0.117672, -0.936150,
		-0.389381, -0.886707, 0.249268,
		-0.859422, 0.447108, 0.247970,
		33.475971, 32.358768, 40.701790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620914, 31.659643, 40.217155>,  <34.077568, 32.045792, 40.528214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620914, 31.659643, 40.217155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418961, 31.997494, 40.288364>,  <33.297787, 32.200203, 40.331089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418961, 31.997494, 40.288364>,  <33.620914, 31.659643, 40.217155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418961, 31.997494, 40.288364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309386, 0.015465, -0.950811,
		-0.805834, -0.535130, 0.253508,
		-0.504887, 0.844628, 0.178025,
		33.267494, 32.250881, 40.341770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929707, 31.513508, 40.007065>,  <33.620914, 31.659643, 40.217155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929707, 31.513508, 40.007065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005352, 31.906288, 40.005630>,  <33.050739, 32.141956, 40.004768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005352, 31.906288, 40.005630>,  <32.929707, 31.513508, 40.007065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005352, 31.906288, 40.005630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257540, 0.046072, -0.965168,
		-0.947581, 0.183447, 0.261604,
		0.189110, 0.981949, -0.003588,
		33.062084, 32.200874, 40.004555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489384, 31.844503, 39.426292>,  <32.929707, 31.513508, 40.007065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489384, 31.844503, 39.426292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761204, 32.123947, 39.515877>,  <32.924294, 32.291615, 39.569626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761204, 32.123947, 39.515877>,  <32.489384, 31.844503, 39.426292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761204, 32.123947, 39.515877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095539, 0.218407, -0.971170,
		-0.727385, 0.681352, 0.081673,
		0.679547, 0.698611, 0.223962,
		32.965069, 32.333530, 39.583065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277771, 32.411640, 39.090446>,  <32.489384, 31.844503, 39.426292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277771, 32.411640, 39.090446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657166, 32.514053, 39.165096>,  <32.884800, 32.575500, 39.209885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657166, 32.514053, 39.165096>,  <32.277771, 32.411640, 39.090446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657166, 32.514053, 39.165096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106477, 0.297174, -0.948868,
		-0.298404, 0.919855, 0.254602,
		0.948482, 0.256036, 0.186622,
		32.941711, 32.590866, 39.221085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321823, 33.145588, 38.754337>,  <32.277771, 32.411640, 39.090446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321823, 33.145588, 38.754337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686356, 33.003372, 38.837349>,  <32.905075, 32.918041, 38.887157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686356, 33.003372, 38.837349>,  <32.321823, 33.145588, 38.754337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686356, 33.003372, 38.837349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319417, 0.292650, -0.901293,
		0.259716, 0.887663, 0.380267,
		0.911329, -0.355544, 0.207529,
		32.959755, 32.896709, 38.899609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709797, 33.645275, 38.461685>,  <32.321823, 33.145588, 38.754337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709797, 33.645275, 38.461685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924122, 33.307877, 38.476738>,  <33.052715, 33.105438, 38.485767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924122, 33.307877, 38.476738>,  <32.709797, 33.645275, 38.461685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924122, 33.307877, 38.476738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314321, 0.157903, -0.936092,
		0.783653, 0.513394, 0.349736,
		0.535808, -0.843501, 0.037630,
		33.084866, 33.054825, 38.488026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259453, 33.914619, 38.075611>,  <32.709797, 33.645275, 38.461685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259453, 33.914619, 38.075611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262142, 33.514664, 38.070423>,  <33.263756, 33.274689, 38.067310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262142, 33.514664, 38.070423>,  <33.259453, 33.914619, 38.075611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262142, 33.514664, 38.070423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249316, 0.014235, -0.968318,
		0.968399, 0.003275, 0.249385,
		0.006722, -0.999893, -0.012969,
		33.264160, 33.214695, 38.066532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977795, 33.697395, 37.790550>,  <33.259453, 33.914619, 38.075611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977795, 33.697395, 37.790550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726452, 33.391464, 37.733677>,  <33.575645, 33.207905, 37.699554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726452, 33.391464, 37.733677>,  <33.977795, 33.697395, 37.790550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726452, 33.391464, 37.733677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237843, -0.014862, -0.971190,
		0.740676, -0.644068, 0.191247,
		-0.628355, -0.764824, -0.142179,
		33.537945, 33.162018, 37.691025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324986, 33.244602, 37.412273>,  <33.977795, 33.697395, 37.790550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324986, 33.244602, 37.412273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940205, 33.168137, 37.334194>,  <33.709335, 33.122257, 37.287346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940205, 33.168137, 37.334194>,  <34.324986, 33.244602, 37.412273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940205, 33.168137, 37.334194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180146, 0.093354, -0.979200,
		0.205411, -0.977109, -0.055364,
		-0.961953, -0.191165, -0.195198,
		33.651619, 33.110786, 37.275635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004162, 33.315716, 37.638664>,  <34.324986, 33.244602, 37.412273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004162, 33.315716, 37.638664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356853, 33.131374, 37.598316>,  <35.568466, 33.020771, 37.574108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356853, 33.131374, 37.598316>,  <35.004162, 33.315716, 37.638664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356853, 33.131374, 37.598316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079322, -0.065944, 0.994666,
		-0.465049, -0.885022, -0.021588,
		0.881724, -0.460856, -0.100869,
		35.621372, 32.993118, 37.568054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046719, 32.737785, 38.115856>,  <35.004162, 33.315716, 37.638664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046719, 32.737785, 38.115856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431480, 32.761898, 38.009190>,  <35.662338, 32.776367, 37.945190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431480, 32.761898, 38.009190>,  <35.046719, 32.737785, 38.115856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431480, 32.761898, 38.009190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273099, -0.166778, 0.947419,
		0.012639, -0.984150, -0.176888,
		0.961903, 0.060282, -0.266662,
		35.720051, 32.779984, 37.929192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364094, 32.158890, 38.357948>,  <35.046719, 32.737785, 38.115856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364094, 32.158890, 38.357948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672920, 32.406807, 38.301712>,  <35.858215, 32.555557, 38.267971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672920, 32.406807, 38.301712>,  <35.364094, 32.158890, 38.357948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672920, 32.406807, 38.301712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296807, -0.156018, 0.942106,
		0.561978, -0.769098, -0.304416,
		0.772066, 0.619796, -0.140595,
		35.904541, 32.592747, 38.259533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980858, 31.778816, 38.617725>,  <35.364094, 32.158890, 38.357948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980858, 31.778816, 38.617725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040272, 32.174072, 38.633327>,  <36.075920, 32.411224, 38.642689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040272, 32.174072, 38.633327>,  <35.980858, 31.778816, 38.617725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040272, 32.174072, 38.633327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334616, -0.087338, 0.938298,
		0.930575, -0.126314, -0.343619,
		0.148531, 0.988138, 0.039008,
		36.084831, 32.470512, 38.645031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690346, 31.979481, 38.834538>,  <35.980858, 31.778816, 38.617725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690346, 31.979481, 38.834538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472618, 32.300255, 38.933022>,  <36.341984, 32.492718, 38.992111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472618, 32.300255, 38.933022>,  <36.690346, 31.979481, 38.834538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472618, 32.300255, 38.933022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337948, -0.059001, 0.939314,
		0.767796, 0.594489, -0.238898,
		-0.544317, 0.801936, 0.246207,
		36.309322, 32.540836, 39.006886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105888, 32.359451, 39.207607>,  <36.690346, 31.979481, 38.834538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105888, 32.359451, 39.207607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760448, 32.529240, 39.316437>,  <36.553185, 32.631115, 39.381733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760448, 32.529240, 39.316437>,  <37.105888, 32.359451, 39.207607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760448, 32.529240, 39.316437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318736, 0.041518, 0.946934,
		0.390652, 0.904488, -0.171150,
		-0.863596, 0.424474, 0.272074,
		36.501369, 32.656582, 39.398060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396736, 32.927147, 39.650414>,  <37.105888, 32.359451, 39.207607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396736, 32.927147, 39.650414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009815, 32.841415, 39.704643>,  <36.777660, 32.789978, 39.737183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009815, 32.841415, 39.704643>,  <37.396736, 32.927147, 39.650414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009815, 32.841415, 39.704643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136463, 0.010735, 0.990587,
		-0.213764, 0.976703, 0.018863,
		-0.967307, -0.214326, 0.135579,
		36.719624, 32.777119, 39.745316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246418, 33.408436, 40.143459>,  <37.396736, 32.927147, 39.650414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246418, 33.408436, 40.143459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947083, 33.144104, 40.166424>,  <36.767483, 32.985504, 40.180202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947083, 33.144104, 40.166424>,  <37.246418, 33.408436, 40.143459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947083, 33.144104, 40.166424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179987, -0.118989, 0.976446,
		-0.638433, 0.741044, 0.207984,
		-0.748337, -0.660830, 0.057412,
		36.722580, 32.945854, 40.183647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783649, 33.687733, 40.626118>,  <37.246418, 33.408436, 40.143459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783649, 33.687733, 40.626118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711964, 33.294662, 40.607254>,  <36.668953, 33.058819, 40.595936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711964, 33.294662, 40.607254>,  <36.783649, 33.687733, 40.626118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711964, 33.294662, 40.607254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133110, -0.071716, 0.988503,
		-0.974763, 0.170878, 0.143657,
		-0.179216, -0.982679, -0.047160,
		36.658199, 32.999859, 40.593105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332367, 33.544827, 41.162380>,  <36.783649, 33.687733, 40.626118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332367, 33.544827, 41.162380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474533, 33.180847, 41.076889>,  <36.559834, 32.962460, 41.025593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474533, 33.180847, 41.076889>,  <36.332367, 33.544827, 41.162380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474533, 33.180847, 41.076889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064832, -0.204109, 0.976799,
		-0.932459, -0.361023, -0.013550,
		0.355412, -0.909946, -0.213729,
		36.581158, 32.907864, 41.012772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993496, 32.991726, 41.537392>,  <36.332367, 33.544827, 41.162380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993496, 32.991726, 41.537392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348038, 32.833576, 41.441010>,  <36.560764, 32.738686, 41.383179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348038, 32.833576, 41.441010>,  <35.993496, 32.991726, 41.537392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348038, 32.833576, 41.441010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120609, -0.305288, 0.944591,
		-0.447025, -0.866303, -0.222908,
		0.886354, -0.395371, -0.240955,
		36.613945, 32.714966, 41.368725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200703, 32.510765, 42.055748>,  <35.993496, 32.991726, 41.537392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200703, 32.510765, 42.055748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577354, 32.546585, 41.925934>,  <36.803345, 32.568077, 41.848045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577354, 32.546585, 41.925934>,  <36.200703, 32.510765, 42.055748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577354, 32.546585, 41.925934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333806, -0.123087, 0.934571,
		0.043741, -0.988348, -0.145793,
		0.941627, 0.089546, -0.324532,
		36.859844, 32.573448, 41.828575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587299, 31.893721, 42.256645>,  <36.200703, 32.510765, 42.055748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587299, 31.893721, 42.256645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851444, 32.188381, 42.198318>,  <37.009933, 32.365177, 42.163322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851444, 32.188381, 42.198318>,  <36.587299, 31.893721, 42.256645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851444, 32.188381, 42.198318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375242, -0.155508, 0.913789,
		0.650468, -0.658151, -0.379115,
		0.660367, 0.736651, -0.145813,
		37.049553, 32.409378, 42.154575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214828, 31.594854, 42.411865>,  <36.587299, 31.893721, 42.256645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214828, 31.594854, 42.411865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290302, 31.986008, 42.447956>,  <37.335587, 32.220699, 42.469608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290302, 31.986008, 42.447956>,  <37.214828, 31.594854, 42.411865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290302, 31.986008, 42.447956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447546, -0.167407, 0.878452,
		0.874128, -0.125372, -0.469235,
		0.188687, 0.977884, 0.090225,
		37.346909, 32.279373, 42.475025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903732, 31.661119, 42.683537>,  <37.214828, 31.594854, 42.411865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903732, 31.661119, 42.683537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750160, 32.023285, 42.756004>,  <37.658016, 32.240585, 42.799484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750160, 32.023285, 42.756004>,  <37.903732, 31.661119, 42.683537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750160, 32.023285, 42.756004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391873, -0.017884, 0.919846,
		0.836082, 0.424152, -0.347941,
		-0.383932, 0.905414, 0.181166,
		37.634979, 32.294910, 42.810356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414707, 32.038944, 43.131550>,  <37.903732, 31.661119, 42.683537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414707, 32.038944, 43.131550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055614, 32.202564, 43.196980>,  <37.840157, 32.300735, 43.236237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055614, 32.202564, 43.196980>,  <38.414707, 32.038944, 43.131550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055614, 32.202564, 43.196980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247877, 0.162070, 0.955139,
		0.364186, 0.898006, -0.246889,
		-0.897733, 0.409046, 0.163571,
		37.786293, 32.325279, 43.246052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450596, 32.544956, 43.743984>,  <38.414707, 32.038944, 43.131550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450596, 32.544956, 43.743984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054634, 32.506653, 43.702194>,  <37.817055, 32.483673, 43.677120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054634, 32.506653, 43.702194>,  <38.450596, 32.544956, 43.743984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054634, 32.506653, 43.702194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131284, 0.341992, 0.930487,
		-0.053368, 0.934812, -0.351111,
		-0.989907, -0.095754, -0.104475,
		37.757664, 32.477928, 43.670853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233967, 33.154549, 43.993980>,  <38.450596, 32.544956, 43.743984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233967, 33.154549, 43.993980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905590, 32.926147, 43.993092>,  <37.708565, 32.789108, 43.992558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905590, 32.926147, 43.993092>,  <38.233967, 33.154549, 43.993980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905590, 32.926147, 43.993092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263344, 0.375158, 0.888767,
		-0.506653, 0.730215, -0.458354,
		-0.820946, -0.571002, -0.002222,
		37.659306, 32.754848, 43.992424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671951, 33.580643, 44.276070>,  <38.233967, 33.154549, 43.993980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671951, 33.580643, 44.276070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546589, 33.205784, 44.337440>,  <37.471371, 32.980869, 44.374264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546589, 33.205784, 44.337440>,  <37.671951, 33.580643, 44.276070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546589, 33.205784, 44.337440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303355, 0.251906, 0.918977,
		-0.899864, 0.241465, -0.363235,
		-0.313402, -0.937144, 0.153432,
		37.452568, 32.924641, 44.383469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980747, 33.617706, 44.570755>,  <37.671951, 33.580643, 44.276070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980747, 33.617706, 44.570755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123981, 33.257011, 44.667629>,  <37.209923, 33.040596, 44.725754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123981, 33.257011, 44.667629>,  <36.980747, 33.617706, 44.570755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123981, 33.257011, 44.667629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328341, 0.121203, 0.936751,
		-0.874053, -0.414953, -0.252676,
		0.358082, -0.901734, 0.242184,
		37.231407, 32.986492, 44.740284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391472, 33.177349, 44.867771>,  <36.980747, 33.617706, 44.570755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391472, 33.177349, 44.867771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714405, 32.995514, 45.018269>,  <36.908165, 32.886414, 45.108566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714405, 32.995514, 45.018269>,  <36.391472, 33.177349, 44.867771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714405, 32.995514, 45.018269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373868, 0.099257, 0.922156,
		-0.456549, -0.885152, -0.089824,
		0.807332, -0.454592, 0.376246,
		36.956604, 32.859138, 45.131142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174141, 32.701107, 45.451202>,  <36.391472, 33.177349, 44.867771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174141, 32.701107, 45.451202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564262, 32.769688, 45.506889>,  <36.798336, 32.810837, 45.540302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564262, 32.769688, 45.506889>,  <36.174141, 32.701107, 45.451202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564262, 32.769688, 45.506889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161537, 0.123911, 0.979057,
		0.150618, -0.977368, 0.148548,
		0.975305, 0.171459, 0.139218,
		36.856853, 32.821125, 45.548656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264427, 32.565144, 46.215199>,  <36.174141, 32.701107, 45.451202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264427, 32.565144, 46.215199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572220, 32.778755, 46.075081>,  <36.756897, 32.906921, 45.991013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572220, 32.778755, 46.075081>,  <36.264427, 32.565144, 46.215199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572220, 32.778755, 46.075081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119001, 0.418981, 0.900163,
		0.627481, -0.734347, 0.258849,
		0.769485, 0.534032, -0.350291,
		36.803066, 32.938965, 45.969994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953697, 32.404869, 46.520340>,  <36.264427, 32.565144, 46.215199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953697, 32.404869, 46.520340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017532, 32.774128, 46.380436>,  <37.055832, 32.995682, 46.296494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017532, 32.774128, 46.380436>,  <36.953697, 32.404869, 46.520340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017532, 32.774128, 46.380436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189559, 0.319051, 0.928587,
		0.968813, -0.214493, -0.124074,
		0.159589, 0.923147, -0.349760,
		37.065411, 33.051071, 46.275509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393223, 32.660664, 47.031841>,  <36.953697, 32.404869, 46.520340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393223, 32.660664, 47.031841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280296, 32.994926, 46.843388>,  <37.212540, 33.195484, 46.730316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280296, 32.994926, 46.843388>,  <37.393223, 32.660664, 47.031841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280296, 32.994926, 46.843388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292111, 0.542674, 0.787512,
		0.913765, 0.084707, -0.397313,
		-0.282319, 0.835661, -0.471133,
		37.195602, 33.245625, 46.702049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991169, 33.207386, 47.107182>,  <37.393223, 32.660664, 47.031841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991169, 33.207386, 47.107182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650475, 33.393528, 47.010853>,  <37.446060, 33.505215, 46.953056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650475, 33.393528, 47.010853>,  <37.991169, 33.207386, 47.107182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650475, 33.393528, 47.010853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101413, 0.597321, 0.795565,
		0.514070, 0.653185, -0.555950,
		-0.851732, 0.465357, -0.240823,
		37.394955, 33.533134, 46.938606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161392, 33.835560, 47.062019>,  <37.991169, 33.207386, 47.107182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161392, 33.835560, 47.062019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764462, 33.862732, 47.103329>,  <37.526302, 33.879036, 47.128113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764462, 33.862732, 47.103329>,  <38.161392, 33.835560, 47.062019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764462, 33.862732, 47.103329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120349, 0.721641, 0.681726,
		-0.028212, 0.688926, -0.724282,
		-0.992331, 0.067933, 0.103270,
		37.466763, 33.883114, 47.134308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037476, 34.579285, 47.079407>,  <38.161392, 33.835560, 47.062019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037476, 34.579285, 47.079407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744473, 34.394032, 47.278980>,  <37.568668, 34.282879, 47.398724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744473, 34.394032, 47.278980>,  <38.037476, 34.579285, 47.079407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744473, 34.394032, 47.278980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050596, 0.767930, 0.638532,
		-0.678872, 0.442488, -0.585950,
		-0.732511, -0.463128, 0.498938,
		37.524719, 34.255093, 47.428661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545784, 35.049313, 47.164246>,  <38.037476, 34.579285, 47.079407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545784, 35.049313, 47.164246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462452, 34.784363, 47.452095>,  <37.412453, 34.625393, 47.624805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462452, 34.784363, 47.452095>,  <37.545784, 35.049313, 47.164246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462452, 34.784363, 47.452095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247162, 0.747540, 0.616519,
		-0.946313, -0.049424, -0.319450,
		-0.208331, -0.662376, 0.719622,
		37.399952, 34.585651, 47.667980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991562, 35.282310, 47.531075>,  <37.545784, 35.049313, 47.164246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991562, 35.282310, 47.531075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139828, 35.025570, 47.799595>,  <37.228786, 34.871525, 47.960705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139828, 35.025570, 47.799595>,  <36.991562, 35.282310, 47.531075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139828, 35.025570, 47.799595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130959, 0.679445, 0.721945,
		-0.919489, -0.355509, 0.167788,
		0.370661, -0.641847, 0.671299,
		37.251026, 34.833015, 48.000984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650097, 35.357414, 48.069248>,  <36.991562, 35.282310, 47.531075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650097, 35.357414, 48.069248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931190, 35.135338, 48.247208>,  <37.099846, 35.002090, 48.353981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931190, 35.135338, 48.247208>,  <36.650097, 35.357414, 48.069248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931190, 35.135338, 48.247208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175878, 0.470356, 0.864773,
		-0.689372, -0.685951, 0.232889,
		0.702732, -0.555191, 0.444894,
		37.142010, 34.968781, 48.380676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322456, 35.319939, 48.695759>,  <36.650097, 35.357414, 48.069248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322456, 35.319939, 48.695759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707623, 35.223160, 48.743530>,  <36.938721, 35.165092, 48.772194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707623, 35.223160, 48.743530>,  <36.322456, 35.319939, 48.695759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707623, 35.223160, 48.743530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005964, 0.461599, 0.887069,
		-0.269749, -0.853457, 0.445922,
		0.962912, -0.241946, 0.119426,
		36.996494, 35.150578, 48.779358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390934, 34.863224, 49.338825>,  <36.322456, 35.319939, 48.695759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390934, 34.863224, 49.338825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728703, 35.074669, 49.304157>,  <36.931366, 35.201538, 49.283356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728703, 35.074669, 49.304157>,  <36.390934, 34.863224, 49.338825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728703, 35.074669, 49.304157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219284, 0.488733, 0.844426,
		0.488733, -0.694050, 0.528616,
		-0.844426, -0.528616, 0.086666,
		36.982029, 35.233253, 49.278156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779758, 34.846207, 49.976849>,  <36.390934, 34.863224, 49.338825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779758, 34.846207, 49.976849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944767, 35.173470, 49.816628>,  <37.043774, 35.369827, 49.720493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944767, 35.173470, 49.816628>,  <36.779758, 34.846207, 49.976849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944767, 35.173470, 49.816628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107739, 0.480444, 0.870382,
		0.904554, -0.315897, 0.286342,
		0.412523, 0.818158, -0.400553,
		37.068523, 35.418919, 49.696461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176495, 35.119034, 50.477966>,  <36.779758, 34.846207, 49.976849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176495, 35.119034, 50.477966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148388, 35.436958, 50.236858>,  <37.131523, 35.627712, 50.092194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148388, 35.436958, 50.236858>,  <37.176495, 35.119034, 50.477966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148388, 35.436958, 50.236858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007740, 0.604681, 0.796430,
		0.997498, 0.051298, -0.048642,
		-0.070268, 0.794814, -0.602772,
		37.127308, 35.675404, 50.056026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475132, 35.594597, 50.885895>,  <37.176495, 35.119034, 50.477966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475132, 35.594597, 50.885895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307362, 35.817371, 50.599144>,  <37.206699, 35.951035, 50.427094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307362, 35.817371, 50.599144>,  <37.475132, 35.594597, 50.885895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307362, 35.817371, 50.599144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053775, 0.773062, 0.632047,
		0.906196, 0.303645, -0.294292,
		-0.419424, 0.556934, -0.716874,
		37.181534, 35.984451, 50.384083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767941, 36.251637, 50.861301>,  <37.475132, 35.594597, 50.885895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767941, 36.251637, 50.861301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412560, 36.306297, 50.686043>,  <37.199329, 36.339096, 50.580887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412560, 36.306297, 50.686043>,  <37.767941, 36.251637, 50.861301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412560, 36.306297, 50.686043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163383, 0.797937, 0.580174,
		0.428896, 0.587045, -0.686606,
		-0.888456, 0.136655, -0.438145,
		37.146023, 36.347294, 50.554600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592010, 37.006046, 50.871597>,  <37.767941, 36.251637, 50.861301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592010, 37.006046, 50.871597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232796, 36.831650, 50.848141>,  <37.017265, 36.727013, 50.834068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232796, 36.831650, 50.848141>,  <37.592010, 37.006046, 50.871597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232796, 36.831650, 50.848141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363341, 0.659937, 0.657622,
		-0.248020, 0.611875, -0.751062,
		-0.898036, -0.435995, -0.058642,
		36.963387, 36.700851, 50.830547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186535, 37.287102, 50.527229>,  <37.592010, 37.006046, 50.871597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186535, 37.287102, 50.527229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353603, 37.622383, 50.386959>,  <38.453846, 37.823551, 50.302799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353603, 37.622383, 50.386959>,  <38.186535, 37.287102, 50.527229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353603, 37.622383, 50.386959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246730, -0.266814, -0.931630,
		-0.874455, 0.475640, 0.095367,
		0.417675, 0.838199, -0.350671,
		38.478905, 37.873844, 50.281757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869194, 37.423943, 49.820724>,  <38.186535, 37.287102, 50.527229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869194, 37.423943, 49.820724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197109, 37.652813, 49.811214>,  <38.393856, 37.790134, 49.805508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197109, 37.652813, 49.811214>,  <37.869194, 37.423943, 49.820724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197109, 37.652813, 49.811214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098352, -0.181576, -0.978446,
		-0.564164, 0.799776, -0.205127,
		0.819784, 0.572179, -0.023779,
		38.443043, 37.824467, 49.804081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875175, 37.873638, 49.268162>,  <37.869194, 37.423943, 49.820724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875175, 37.873638, 49.268162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263668, 37.824978, 49.350040>,  <38.496765, 37.795780, 49.399170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263668, 37.824978, 49.350040>,  <37.875175, 37.873638, 49.268162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263668, 37.824978, 49.350040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158764, -0.309866, -0.937431,
		0.177469, 0.942966, -0.281639,
		0.971235, -0.121651, 0.204701,
		38.555038, 37.788483, 49.411449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088058, 38.134796, 48.712906>,  <37.875175, 37.873638, 49.268162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088058, 38.134796, 48.712906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406052, 37.949177, 48.869194>,  <38.596848, 37.837803, 48.962967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406052, 37.949177, 48.869194>,  <38.088058, 38.134796, 48.712906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406052, 37.949177, 48.869194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305420, -0.250317, -0.918728,
		0.524141, 0.849704, -0.057266,
		0.794981, -0.464053, 0.390718,
		38.644547, 37.809959, 48.986408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609230, 38.455658, 48.422905>,  <38.088058, 38.134796, 48.712906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609230, 38.455658, 48.422905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764931, 38.108410, 48.546097>,  <38.858349, 37.900063, 48.620010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764931, 38.108410, 48.546097>,  <38.609230, 38.455658, 48.422905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764931, 38.108410, 48.546097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353772, -0.167813, -0.920154,
		0.850488, 0.467123, 0.241796,
		0.389249, -0.868121, 0.307978,
		38.881706, 37.847973, 48.638489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298206, 38.453629, 48.048382>,  <38.609230, 38.455658, 48.422905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298206, 38.453629, 48.048382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211437, 38.086105, 48.180283>,  <39.159374, 37.865593, 48.259422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211437, 38.086105, 48.180283>,  <39.298206, 38.453629, 48.048382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211437, 38.086105, 48.180283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410315, -0.392322, -0.823240,
		0.885769, -0.043277, 0.462104,
		-0.216921, -0.918809, 0.329749,
		39.146362, 37.810463, 48.279209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890987, 38.002518, 48.032578>,  <39.298206, 38.453629, 48.048382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890987, 38.002518, 48.032578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572090, 37.761055, 48.032024>,  <39.380753, 37.616177, 48.031693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572090, 37.761055, 48.032024>,  <39.890987, 38.002518, 48.032578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572090, 37.761055, 48.032024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349189, -0.459295, -0.816771,
		0.492414, -0.651648, 0.576960,
		-0.797242, -0.603658, -0.001385,
		39.332916, 37.579956, 48.031609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083649, 37.260262, 47.884129>,  <39.890987, 38.002518, 48.032578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083649, 37.260262, 47.884129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691818, 37.226177, 47.811272>,  <39.456722, 37.205727, 47.767559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691818, 37.226177, 47.811272>,  <40.083649, 37.260262, 47.884129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691818, 37.226177, 47.811272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199865, -0.512194, -0.835291,
		-0.022117, -0.854633, 0.518761,
		-0.979574, -0.085208, -0.182140,
		39.397945, 37.200615, 47.756630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085464, 36.564938, 47.654907>,  <40.083649, 37.260262, 47.884129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085464, 36.564938, 47.654907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724930, 36.707066, 47.555836>,  <39.508610, 36.792343, 47.496391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724930, 36.707066, 47.555836>,  <40.085464, 36.564938, 47.654907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724930, 36.707066, 47.555836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032146, -0.625142, -0.779849,
		-0.431932, -0.694942, 0.574884,
		-0.901333, 0.355322, -0.247679,
		39.454529, 36.813663, 47.481533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661358, 36.033001, 47.630741>,  <40.085464, 36.564938, 47.654907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661358, 36.033001, 47.630741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493069, 36.307312, 47.393188>,  <39.392094, 36.471897, 47.250656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493069, 36.307312, 47.393188>,  <39.661358, 36.033001, 47.630741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493069, 36.307312, 47.393188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063560, -0.675318, -0.734783,
		-0.904958, -0.271395, 0.327712,
		-0.420726, 0.685777, -0.593885,
		39.366852, 36.513046, 47.215023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102146, 35.705032, 47.319637>,  <39.661358, 36.033001, 47.630741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102146, 35.705032, 47.319637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188873, 36.014732, 47.081806>,  <39.240910, 36.200554, 46.939106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188873, 36.014732, 47.081806>,  <39.102146, 35.705032, 47.319637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188873, 36.014732, 47.081806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162590, -0.571922, -0.804033,
		-0.962577, 0.271001, 0.001882,
		0.216818, 0.774250, -0.594581,
		39.253918, 36.247009, 46.903431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611279, 35.693283, 46.812752>,  <39.102146, 35.705032, 47.319637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611279, 35.693283, 46.812752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889446, 35.900261, 46.613297>,  <39.056347, 36.024448, 46.493622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889446, 35.900261, 46.613297>,  <38.611279, 35.693283, 46.812752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889446, 35.900261, 46.613297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394341, -0.305298, -0.866769,
		-0.600742, 0.799400, -0.008258,
		0.695416, 0.517448, -0.498642,
		39.098072, 36.055496, 46.463703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343403, 35.720581, 46.087139>,  <38.611279, 35.693283, 46.812752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343403, 35.720581, 46.087139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711075, 35.875244, 46.057194>,  <38.931679, 35.968040, 46.039227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711075, 35.875244, 46.057194>,  <38.343403, 35.720581, 46.087139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711075, 35.875244, 46.057194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029796, -0.121282, -0.992171,
		-0.392707, 0.914215, -0.099959,
		0.919181, 0.386654, -0.074868,
		38.986828, 35.991241, 46.034733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318119, 36.305767, 45.576401>,  <38.343403, 35.720581, 46.087139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318119, 36.305767, 45.576401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669418, 36.115456, 45.595634>,  <38.880199, 36.001270, 45.607174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669418, 36.115456, 45.595634>,  <38.318119, 36.305767, 45.576401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669418, 36.115456, 45.595634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085907, -0.255885, -0.962882,
		0.470423, 0.841521, -0.265604,
		0.878250, -0.475779, 0.048082,
		38.932892, 35.972721, 45.610058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511913, 36.168221, 44.842491>,  <38.318119, 36.305767, 45.576401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511913, 36.168221, 44.842491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766186, 35.936722, 45.046829>,  <38.918747, 35.797825, 45.169434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766186, 35.936722, 45.046829>,  <38.511913, 36.168221, 44.842491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766186, 35.936722, 45.046829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226790, -0.492546, -0.840217,
		0.737888, 0.649964, -0.181847,
		0.635679, -0.578745, 0.510849,
		38.956890, 35.763100, 45.200085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186626, 36.165825, 44.548157>,  <38.511913, 36.168221, 44.842491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186626, 36.165825, 44.548157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.177120, 35.822121, 44.752552>,  <39.171417, 35.615898, 44.875191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.177120, 35.822121, 44.752552>,  <39.186626, 36.165825, 44.548157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177120, 35.822121, 44.752552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323132, -0.490302, -0.809438,
		0.946055, 0.145877, 0.289308,
		-0.023770, -0.859258, 0.510990,
		39.169991, 35.564342, 44.905849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806728, 35.795750, 44.420513>,  <39.186626, 36.165825, 44.548157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806728, 35.795750, 44.420513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537846, 35.529030, 44.549213>,  <39.376514, 35.368999, 44.626434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537846, 35.529030, 44.549213>,  <39.806728, 35.795750, 44.420513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537846, 35.529030, 44.549213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076833, -0.495064, -0.865453,
		0.736366, -0.557042, 0.384017,
		-0.672206, -0.666795, 0.321750,
		39.336185, 35.328991, 44.645737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102749, 35.135090, 44.290779>,  <39.806728, 35.795750, 44.420513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102749, 35.135090, 44.290779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707069, 35.083397, 44.318459>,  <39.469662, 35.052383, 44.335068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707069, 35.083397, 44.318459>,  <40.102749, 35.135090, 44.290779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707069, 35.083397, 44.318459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005026, -0.501694, -0.865030,
		0.146506, -0.855338, 0.496924,
		-0.989197, -0.129230, 0.069202,
		39.410309, 35.044628, 44.339218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880177, 34.403267, 43.966602>,  <40.102749, 35.135090, 44.290779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880177, 34.403267, 43.966602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532120, 34.599957, 43.953625>,  <39.323284, 34.717972, 43.945839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532120, 34.599957, 43.953625>,  <39.880177, 34.403267, 43.966602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532120, 34.599957, 43.953625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185439, -0.387716, -0.902934,
		-0.456577, -0.779666, 0.428554,
		-0.870144, 0.491730, -0.032442,
		39.271076, 34.747475, 43.943893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286938, 33.920113, 43.889664>,  <39.880177, 34.403267, 43.966602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286938, 33.920113, 43.889664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162785, 34.269268, 43.739075>,  <39.088291, 34.478760, 43.648720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162785, 34.269268, 43.739075>,  <39.286938, 33.920113, 43.889664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162785, 34.269268, 43.739075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266347, -0.460026, -0.847016,
		-0.912535, -0.162629, 0.375276,
		-0.310386, 0.872885, -0.376474,
		39.069668, 34.531132, 43.626133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969707, 33.734032, 43.339123>,  <39.286938, 33.920113, 43.889664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969707, 33.734032, 43.339123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945053, 34.125275, 43.259617>,  <38.930260, 34.360020, 43.211914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945053, 34.125275, 43.259617>,  <38.969707, 33.734032, 43.339123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945053, 34.125275, 43.259617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395539, -0.206777, -0.894870,
		-0.916379, 0.023466, 0.399624,
		-0.061634, 0.978107, -0.198768,
		38.926563, 34.418705, 43.199986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230141, 33.957775, 43.121540>,  <38.969707, 33.734032, 43.339123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230141, 33.957775, 43.121540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496128, 34.216389, 42.971977>,  <38.655720, 34.371555, 42.882240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496128, 34.216389, 42.971977>,  <38.230141, 33.957775, 43.121540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496128, 34.216389, 42.971977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413969, -0.097626, -0.905041,
		-0.621643, 0.756612, 0.202727,
		0.664973, 0.646535, -0.373903,
		38.695621, 34.410351, 42.859806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881786, 34.553482, 42.650330>,  <38.230141, 33.957775, 43.121540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881786, 34.553482, 42.650330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260830, 34.570335, 42.523674>,  <38.488255, 34.580448, 42.447681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260830, 34.570335, 42.523674>,  <37.881786, 34.553482, 42.650330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260830, 34.570335, 42.523674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315684, -0.027881, -0.948455,
		-0.048788, 0.998723, -0.013120,
		0.947609, 0.042132, -0.316641,
		38.545113, 34.582973, 42.428680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867592, 35.028275, 42.110241>,  <37.881786, 34.553482, 42.650330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867592, 35.028275, 42.110241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216309, 34.834930, 42.078373>,  <38.425537, 34.718925, 42.059254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216309, 34.834930, 42.078373>,  <37.867592, 35.028275, 42.110241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216309, 34.834930, 42.078373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126321, -0.064683, -0.989878,
		0.473314, 0.873029, -0.117449,
		0.871790, -0.483359, -0.079666,
		38.477844, 34.689922, 42.054474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054932, 35.257275, 41.517609>,  <37.867592, 35.028275, 42.110241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054932, 35.257275, 41.517609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285805, 34.936897, 41.581291>,  <38.424328, 34.744671, 41.619499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285805, 34.936897, 41.581291>,  <38.054932, 35.257275, 41.517609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285805, 34.936897, 41.581291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038079, -0.168350, -0.984991,
		0.815726, 0.574584, -0.066670,
		0.577184, -0.800945, 0.159207,
		38.458961, 34.696613, 41.629055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579124, 35.393929, 41.053692>,  <38.054932, 35.257275, 41.517609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579124, 35.393929, 41.053692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545578, 34.999352, 41.110107>,  <38.525452, 34.762604, 41.143955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545578, 34.999352, 41.110107>,  <38.579124, 35.393929, 41.053692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545578, 34.999352, 41.110107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112660, -0.131245, -0.984928,
		0.990088, -0.098491, -0.100126,
		-0.083866, -0.986445, 0.141040,
		38.520420, 34.703419, 41.152420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090683, 35.094814, 40.606850>,  <38.579124, 35.393929, 41.053692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090683, 35.094814, 40.606850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853035, 34.784748, 40.692764>,  <38.710445, 34.598709, 40.744312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853035, 34.784748, 40.692764>,  <39.090683, 35.094814, 40.606850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853035, 34.784748, 40.692764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003990, -0.269857, -0.962892,
		0.804364, -0.571220, 0.163421,
		-0.594123, -0.775168, 0.214784,
		38.674797, 34.552197, 40.757198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362190, 34.540638, 40.262543>,  <39.090683, 35.094814, 40.606850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362190, 34.540638, 40.262543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981010, 34.432133, 40.316650>,  <38.752300, 34.367027, 40.349113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981010, 34.432133, 40.316650>,  <39.362190, 34.540638, 40.262543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981010, 34.432133, 40.316650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168778, 0.104172, -0.980134,
		0.251789, -0.956850, -0.145056,
		-0.952951, -0.271269, 0.135266,
		38.695126, 34.350754, 40.357231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137127, 34.088173, 39.711147>,  <39.362190, 34.540638, 40.262543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137127, 34.088173, 39.711147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768074, 34.169853, 39.842018>,  <38.546642, 34.218861, 39.920540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768074, 34.169853, 39.842018>,  <39.137127, 34.088173, 39.711147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768074, 34.169853, 39.842018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342171, -0.042011, -0.938698,
		-0.177945, -0.978026, 0.108635,
		-0.922635, 0.204208, 0.327176,
		38.491283, 34.231113, 39.940170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613274, 33.677277, 39.309940>,  <39.137127, 34.088173, 39.711147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613274, 33.677277, 39.309940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382629, 33.968182, 39.458862>,  <38.244244, 34.142723, 39.548218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382629, 33.968182, 39.458862>,  <38.613274, 33.677277, 39.309940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382629, 33.968182, 39.458862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439506, 0.108038, -0.891719,
		-0.688736, -0.677805, 0.257340,
		-0.576609, 0.727261, 0.372309,
		38.209648, 34.186359, 39.570557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926628, 33.602493, 39.090607>,  <38.613274, 33.677277, 39.309940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926628, 33.602493, 39.090607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910805, 33.990528, 39.186409>,  <37.901310, 34.223351, 39.243889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910805, 33.990528, 39.186409>,  <37.926628, 33.602493, 39.090607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910805, 33.990528, 39.186409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553268, 0.178327, -0.813691,
		-0.832063, -0.164701, 0.529664,
		-0.039562, 0.970089, 0.239503,
		37.898937, 34.281555, 39.258259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257763, 33.827343, 38.860512>,  <37.926628, 33.602493, 39.090607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257763, 33.827343, 38.860512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460136, 34.167801, 38.916481>,  <37.581562, 34.372078, 38.950062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460136, 34.167801, 38.916481>,  <37.257763, 33.827343, 38.860512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460136, 34.167801, 38.916481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604006, 0.465389, -0.646985,
		-0.615796, 0.242821, 0.749555,
		0.505936, 0.851147, 0.139919,
		37.611916, 34.423145, 38.958458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780125, 34.297424, 38.825550>,  <37.257763, 33.827343, 38.860512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780125, 34.297424, 38.825550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122101, 34.485939, 38.738873>,  <37.327286, 34.599049, 38.686867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122101, 34.485939, 38.738873>,  <36.780125, 34.297424, 38.825550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122101, 34.485939, 38.738873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463488, 0.506481, -0.727087,
		-0.232915, 0.722055, 0.651450,
		0.854944, 0.471288, -0.216697,
		37.378586, 34.627327, 38.673862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596798, 34.962009, 38.698490>,  <36.780125, 34.297424, 38.825550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596798, 34.962009, 38.698490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958084, 34.934658, 38.529007>,  <37.174854, 34.918247, 38.427319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958084, 34.934658, 38.529007>,  <36.596798, 34.962009, 38.698490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958084, 34.934658, 38.529007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284314, 0.644212, -0.710040,
		0.321507, 0.761784, 0.562422,
		0.903216, -0.068378, -0.423705,
		37.229050, 34.914146, 38.401897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739758, 35.557026, 38.445786>,  <36.596798, 34.962009, 38.698490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739758, 35.557026, 38.445786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992176, 35.342293, 38.221786>,  <37.143627, 35.213455, 38.087387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992176, 35.342293, 38.221786>,  <36.739758, 35.557026, 38.445786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992176, 35.342293, 38.221786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109002, 0.653362, -0.749157,
		0.768052, 0.533791, 0.353783,
		0.631042, -0.536829, -0.560001,
		37.181488, 35.181244, 38.053787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264957, 36.006104, 38.201595>,  <36.739758, 35.557026, 38.445786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264957, 36.006104, 38.201595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286610, 35.682919, 37.966896>,  <37.299603, 35.489010, 37.826077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286610, 35.682919, 37.966896>,  <37.264957, 36.006104, 38.201595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286610, 35.682919, 37.966896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019907, 0.588364, -0.808351,
		0.998335, 0.032078, 0.047934,
		0.054133, -0.807959, -0.586746,
		37.302849, 35.440529, 37.790871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779736, 36.226856, 37.571507>,  <37.264957, 36.006104, 38.201595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779736, 36.226856, 37.571507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543976, 35.929234, 37.445656>,  <37.402519, 35.750660, 37.370148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543976, 35.929234, 37.445656>,  <37.779736, 36.226856, 37.571507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543976, 35.929234, 37.445656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119933, 0.465737, -0.876758,
		0.798892, -0.479025, -0.363741,
		-0.589396, -0.744059, -0.314622,
		37.367157, 35.706017, 37.351269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797729, 36.155853, 36.830322>,  <37.779736, 36.226856, 37.571507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797729, 36.155853, 36.830322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466522, 35.941280, 36.895588>,  <37.267799, 35.812534, 36.934750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466522, 35.941280, 36.895588>,  <37.797729, 36.155853, 36.830322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466522, 35.941280, 36.895588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392494, 0.346712, -0.851903,
		0.400424, -0.769431, -0.497632,
		-0.828015, -0.536440, 0.163165,
		37.218117, 35.780350, 36.944538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727100, 35.660507, 36.259953>,  <37.797729, 36.155853, 36.830322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727100, 35.660507, 36.259953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389870, 35.777603, 36.440407>,  <37.187531, 35.847858, 36.548679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389870, 35.777603, 36.440407>,  <37.727100, 35.660507, 36.259953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389870, 35.777603, 36.440407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370060, 0.292889, -0.881630,
		-0.390219, -0.910231, -0.138598,
		-0.843081, 0.292739, 0.451131,
		37.136944, 35.865425, 36.575745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280346, 35.638226, 36.746098>,  <37.727100, 35.660507, 36.259953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280346, 35.638226, 36.746098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525459, 35.500847, 37.030785>,  <38.672527, 35.418419, 37.201595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525459, 35.500847, 37.030785>,  <38.280346, 35.638226, 36.746098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525459, 35.500847, 37.030785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789841, 0.237238, -0.565570,
		0.025397, 0.908715, 0.416644,
		0.612786, -0.343446, 0.711715,
		38.709293, 35.397812, 37.244301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758652, 36.153538, 37.138668>,  <38.280346, 35.638226, 36.746098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758652, 36.153538, 37.138668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881695, 35.779366, 37.068977>,  <38.955521, 35.554863, 37.027164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881695, 35.779366, 37.068977>,  <38.758652, 36.153538, 37.138668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881695, 35.779366, 37.068977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818735, 0.353500, -0.452451,
		0.484823, -0.003466, 0.874606,
		0.307605, -0.935428, -0.174222,
		38.973976, 35.498737, 37.016712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516270, 36.085976, 37.231659>,  <38.758652, 36.153538, 37.138668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516270, 36.085976, 37.231659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437580, 35.776794, 36.990379>,  <39.390366, 35.591286, 36.845612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437580, 35.776794, 36.990379>,  <39.516270, 36.085976, 37.231659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437580, 35.776794, 36.990379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742657, 0.284192, -0.606379,
		0.640125, -0.567258, 0.518130,
		-0.196725, -0.772951, -0.603197,
		39.378563, 35.544910, 36.809422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096264, 35.698452, 37.178608>,  <39.516270, 36.085976, 37.231659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096264, 35.698452, 37.178608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869251, 35.700207, 36.849274>,  <39.733044, 35.701260, 36.651672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869251, 35.700207, 36.849274>,  <40.096264, 35.698452, 37.178608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869251, 35.700207, 36.849274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777055, 0.333446, -0.533854,
		0.272198, -0.942759, -0.192649,
		-0.567534, 0.004385, -0.823339,
		39.698990, 35.701523, 36.602272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342728, 35.180614, 36.690666>,  <40.096264, 35.698452, 37.178608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342728, 35.180614, 36.690666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189732, 35.532330, 36.577137>,  <40.097935, 35.743359, 36.509018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189732, 35.532330, 36.577137>,  <40.342728, 35.180614, 36.690666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189732, 35.532330, 36.577137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903770, 0.292182, -0.312776,
		-0.192090, -0.376148, -0.906429,
		-0.382493, 0.879285, -0.283826,
		40.074986, 35.796116, 36.491989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866524, 34.650330, 36.597584>,  <40.342728, 35.180614, 36.690666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866524, 34.650330, 36.597584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017151, 34.291676, 36.504421>,  <41.107525, 34.076485, 36.448524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017151, 34.291676, 36.504421>,  <40.866524, 34.650330, 36.597584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017151, 34.291676, 36.504421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557767, -0.018709, -0.829787,
		0.739658, 0.442376, -0.507158,
		0.376566, -0.896635, -0.232904,
		41.130119, 34.022686, 36.434551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334728, 34.564182, 35.928307>,  <40.866524, 34.650330, 36.597584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334728, 34.564182, 35.928307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118641, 34.245369, 36.036304>,  <40.988987, 34.054081, 36.101105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118641, 34.245369, 36.036304>,  <41.334728, 34.564182, 35.928307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118641, 34.245369, 36.036304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363390, -0.068436, -0.929120,
		0.759020, -0.600041, -0.252665,
		-0.540219, -0.797037, 0.269993,
		40.956573, 34.006256, 36.117302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938107, 34.293137, 35.949417>,  <41.334728, 34.564182, 35.928307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938107, 34.293137, 35.949417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676346, 34.029598, 36.097836>,  <41.519291, 33.871475, 36.186886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676346, 34.029598, 36.097836>,  <41.938107, 34.293137, 35.949417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676346, 34.029598, 36.097836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513009, 0.026359, -0.857979,
		0.555499, -0.751812, -0.355246,
		-0.654402, -0.658850, 0.371044,
		41.480026, 33.831944, 36.209148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.000076, 34.145126, 36.705986>,  <41.938107, 34.293137, 35.949417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.000076, 34.145126, 36.705986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393940, 34.188396, 36.760746>,  <42.630260, 34.214359, 36.793602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393940, 34.188396, 36.760746>,  <42.000076, 34.145126, 36.705986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393940, 34.188396, 36.760746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107029, -0.245162, 0.963556,
		0.137793, -0.963428, -0.229824,
		0.984661, 0.108173, 0.136897,
		42.689339, 34.220848, 36.801815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150368, 33.548531, 37.174606>,  <42.000076, 34.145126, 36.705986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150368, 33.548531, 37.174606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468330, 33.790302, 37.195740>,  <42.659107, 33.935364, 37.208420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468330, 33.790302, 37.195740>,  <42.150368, 33.548531, 37.174606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468330, 33.790302, 37.195740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043775, -0.029719, 0.998599,
		0.605148, -0.796108, 0.002835,
		0.794908, 0.604425, 0.052834,
		42.706802, 33.971630, 37.211590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686047, 33.206795, 37.583687>,  <42.150368, 33.548531, 37.174606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686047, 33.206795, 37.583687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736179, 33.603386, 37.597866>,  <42.766258, 33.841343, 37.606373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736179, 33.603386, 37.597866>,  <42.686047, 33.206795, 37.583687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736179, 33.603386, 37.597866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074963, -0.026163, 0.996843,
		0.989279, -0.127592, 0.071045,
		0.125330, 0.991482, 0.035447,
		42.773777, 33.900829, 37.608501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214504, 33.284058, 37.992393>,  <42.686047, 33.206795, 37.583687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214504, 33.284058, 37.992393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028721, 33.636333, 38.029625>,  <42.917252, 33.847698, 38.051964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.028721, 33.636333, 38.029625>,  <43.214504, 33.284058, 37.992393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.028721, 33.636333, 38.029625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172555, -0.013087, 0.984913,
		0.868622, 0.473511, -0.145890,
		-0.464458, 0.880691, 0.093074,
		42.889385, 33.900539, 38.057549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620838, 33.510071, 38.557163>,  <43.214504, 33.284058, 37.992393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620838, 33.510071, 38.557163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320515, 33.768921, 38.504230>,  <43.140320, 33.924232, 38.472469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320515, 33.768921, 38.504230>,  <43.620838, 33.510071, 38.557163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320515, 33.768921, 38.504230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095984, 0.305113, 0.947467,
		0.653507, 0.698666, -0.291196,
		-0.750810, 0.647126, -0.132333,
		43.095272, 33.963058, 38.464531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865429, 34.180252, 38.874195>,  <43.620838, 33.510071, 38.557163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865429, 34.180252, 38.874195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467739, 34.138485, 38.864361>,  <43.229126, 34.113422, 38.858459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467739, 34.138485, 38.864361>,  <43.865429, 34.180252, 38.874195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467739, 34.138485, 38.864361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037953, 0.127979, 0.991050,
		-0.100340, 0.986264, -0.131204,
		-0.994229, -0.104422, -0.024590,
		43.169472, 34.107159, 38.856983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.714874, 34.660011, 39.301319>,  <43.865429, 34.180252, 38.874195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.714874, 34.660011, 39.301319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381584, 34.441460, 39.267376>,  <43.181610, 34.310329, 39.247009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.381584, 34.441460, 39.267376>,  <43.714874, 34.660011, 39.301319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.381584, 34.441460, 39.267376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272239, 0.271803, 0.923043,
		-0.481265, 0.792209, -0.375219,
		-0.833229, -0.546378, -0.084861,
		43.131615, 34.277546, 39.241917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178711, 35.126125, 39.474590>,  <43.714874, 34.660011, 39.301319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178711, 35.126125, 39.474590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067768, 34.745651, 39.528725>,  <43.001202, 34.517368, 39.561203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067768, 34.745651, 39.528725>,  <43.178711, 35.126125, 39.474590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067768, 34.745651, 39.528725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231804, 0.202951, 0.951356,
		-0.932383, 0.232497, -0.276779,
		-0.277360, -0.951187, 0.135334,
		42.984562, 34.460297, 39.569324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592430, 35.182758, 39.880093>,  <43.178711, 35.126125, 39.474590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592430, 35.182758, 39.880093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711056, 34.802246, 39.913849>,  <42.782230, 34.573940, 39.934105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.711056, 34.802246, 39.913849>,  <42.592430, 35.182758, 39.880093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711056, 34.802246, 39.913849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173097, 0.033365, 0.984339,
		-0.939195, -0.306528, -0.154769,
		0.296564, -0.951276, 0.084395,
		42.800026, 34.516865, 39.939167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072643, 34.920006, 40.367981>,  <42.592430, 35.182758, 39.880093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072643, 34.920006, 40.367981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366615, 34.648849, 40.375450>,  <42.542999, 34.486156, 40.379932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.366615, 34.648849, 40.375450>,  <42.072643, 34.920006, 40.367981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366615, 34.648849, 40.375450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190268, -0.179692, 0.965147,
		-0.650907, -0.712865, -0.261042,
		0.734927, -0.677889, 0.018673,
		42.587093, 34.445484, 40.381050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861797, 34.357777, 40.710190>,  <42.072643, 34.920006, 40.367981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861797, 34.357777, 40.710190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260468, 34.362724, 40.742420>,  <42.499668, 34.365692, 40.761761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260468, 34.362724, 40.742420>,  <41.861797, 34.357777, 40.710190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260468, 34.362724, 40.742420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079092, -0.092805, 0.992538,
		0.019760, -0.995607, -0.091517,
		0.996672, 0.012374, 0.080578,
		42.559467, 34.366436, 40.766594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940247, 33.838982, 41.223434>,  <41.861797, 34.357777, 40.710190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940247, 33.838982, 41.223434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271790, 34.062477, 41.212055>,  <42.470715, 34.196575, 41.205227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271790, 34.062477, 41.212055>,  <41.940247, 33.838982, 41.223434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271790, 34.062477, 41.212055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122084, 0.230253, 0.965442,
		0.545981, -0.796739, 0.259060,
		0.828855, 0.558741, -0.028445,
		42.520447, 34.230099, 41.203522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235710, 33.654739, 41.883472>,  <41.940247, 33.838982, 41.223434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235710, 33.654739, 41.883472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447083, 33.975822, 41.772892>,  <42.573906, 34.168472, 41.706543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447083, 33.975822, 41.772892>,  <42.235710, 33.654739, 41.883472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447083, 33.975822, 41.772892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118381, 0.392116, 0.912267,
		0.840680, -0.449347, 0.302232,
		0.528435, 0.802703, -0.276450,
		42.605614, 34.216633, 41.689957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847675, 33.782742, 42.481075>,  <42.235710, 33.654739, 41.883472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847675, 33.782742, 42.481075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739796, 34.091030, 42.250164>,  <42.675068, 34.276005, 42.111618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739796, 34.091030, 42.250164>,  <42.847675, 33.782742, 42.481075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739796, 34.091030, 42.250164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141410, 0.561294, 0.815446,
		0.952505, 0.301557, -0.042392,
		-0.269698, 0.770722, -0.577278,
		42.658886, 34.322247, 42.076981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121128, 34.337063, 42.806458>,  <42.847675, 33.782742, 42.481075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121128, 34.337063, 42.806458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838131, 34.510563, 42.583275>,  <42.668331, 34.614662, 42.449364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838131, 34.510563, 42.583275>,  <43.121128, 34.337063, 42.806458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838131, 34.510563, 42.583275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407649, 0.394452, 0.823547,
		0.577300, 0.810104, -0.102254,
		-0.707493, 0.433750, -0.557956,
		42.625881, 34.640690, 42.415890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121830, 35.022488, 43.058128>,  <43.121128, 34.337063, 42.806458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121830, 35.022488, 43.058128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764030, 34.972553, 42.886414>,  <42.549351, 34.942593, 42.783386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764030, 34.972553, 42.886414>,  <43.121830, 35.022488, 43.058128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764030, 34.972553, 42.886414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439672, 0.419562, 0.794139,
		0.080978, 0.899102, -0.430183,
		-0.894500, -0.124832, -0.429285,
		42.495682, 34.935104, 42.757629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813549, 35.626789, 42.930714>,  <43.121830, 35.022488, 43.058128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813549, 35.626789, 42.930714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495911, 35.384640, 42.952374>,  <42.305328, 35.239349, 42.965370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495911, 35.384640, 42.952374>,  <42.813549, 35.626789, 42.930714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495911, 35.384640, 42.952374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376847, 0.560301, 0.737597,
		-0.476860, 0.565319, -0.673067,
		-0.794098, -0.605374, 0.054147,
		42.257683, 35.203026, 42.968616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285286, 36.047718, 43.006805>,  <42.813549, 35.626789, 42.930714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285286, 36.047718, 43.006805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131989, 35.701443, 43.135620>,  <42.040009, 35.493679, 43.212910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131989, 35.701443, 43.135620>,  <42.285286, 36.047718, 43.006805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131989, 35.701443, 43.135620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354710, 0.459866, 0.814066,
		-0.852821, 0.197757, -0.483310,
		-0.383245, -0.865688, 0.322038,
		42.017014, 35.441738, 43.232231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787849, 36.201233, 43.424648>,  <42.285286, 36.047718, 43.006805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787849, 36.201233, 43.424648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829018, 35.818901, 43.534779>,  <41.853718, 35.589504, 43.600857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829018, 35.818901, 43.534779>,  <41.787849, 36.201233, 43.424648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829018, 35.818901, 43.534779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364003, 0.221409, 0.904699,
		-0.925694, -0.193330, -0.325136,
		0.102917, -0.955825, 0.275330,
		41.859894, 35.532154, 43.617378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095543, 36.083782, 43.805748>,  <41.787849, 36.201233, 43.424648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095543, 36.083782, 43.805748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366383, 35.813400, 43.922104>,  <41.528885, 35.651169, 43.991917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.366383, 35.813400, 43.922104>,  <41.095543, 36.083782, 43.805748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366383, 35.813400, 43.922104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219699, 0.191580, 0.956572,
		-0.702332, -0.711602, -0.018788,
		0.677099, -0.675959, 0.290891,
		41.569511, 35.610611, 44.009373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811207, 35.626598, 44.267212>,  <41.095543, 36.083782, 43.805748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811207, 35.626598, 44.267212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199715, 35.610806, 44.361092>,  <41.432819, 35.601330, 44.417419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199715, 35.610806, 44.361092>,  <40.811207, 35.626598, 44.267212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199715, 35.610806, 44.361092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223022, 0.193247, 0.955467,
		-0.083077, -0.980355, 0.178890,
		0.971267, -0.039481, 0.234695,
		41.491096, 35.598961, 44.431499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867641, 35.069122, 44.668991>,  <40.811207, 35.626598, 44.267212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867641, 35.069122, 44.668991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189888, 35.267960, 44.797913>,  <41.383236, 35.387260, 44.875263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189888, 35.267960, 44.797913>,  <40.867641, 35.069122, 44.668991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189888, 35.267960, 44.797913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138055, -0.371531, 0.918099,
		0.576125, -0.784133, -0.230686,
		0.805618, 0.497092, 0.322302,
		41.431572, 35.417088, 44.894604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312950, 34.591095, 45.036751>,  <40.867641, 35.069122, 44.668991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312950, 34.591095, 45.036751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416286, 34.956161, 45.163433>,  <41.478287, 35.175201, 45.239441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416286, 34.956161, 45.163433>,  <41.312950, 34.591095, 45.036751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416286, 34.956161, 45.163433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007204, -0.326001, 0.945342,
		0.966027, -0.246501, -0.077644,
		0.258340, 0.912666, 0.316702,
		41.493790, 35.229961, 45.258442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052559, 34.660805, 45.244556>,  <41.312950, 34.591095, 45.036751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052559, 34.660805, 45.244556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709694, 34.815784, 45.380295>,  <41.503975, 34.908772, 45.461739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709694, 34.815784, 45.380295>,  <42.052559, 34.660805, 45.244556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709694, 34.815784, 45.380295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043907, -0.601498, 0.797667,
		0.513169, 0.698631, 0.498570,
		-0.857164, 0.387448, 0.339345,
		41.452545, 34.932018, 45.482098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368252, 34.106297, 45.550247>,  <42.052559, 34.660805, 45.244556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368252, 34.106297, 45.550247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724979, 33.933872, 45.495342>,  <42.939018, 33.830418, 45.462399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724979, 33.933872, 45.495342>,  <42.368252, 34.106297, 45.550247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724979, 33.933872, 45.495342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380374, -0.550258, -0.743325,
		0.244891, 0.715123, -0.654697,
		0.891821, -0.431063, -0.137261,
		42.992527, 33.804554, 45.454163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262547, 33.763950, 44.970081>,  <42.368252, 34.106297, 45.550247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262547, 33.763950, 44.970081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614849, 33.600945, 45.066574>,  <42.826233, 33.503139, 45.124470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614849, 33.600945, 45.066574>,  <42.262547, 33.763950, 44.970081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614849, 33.600945, 45.066574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189884, -0.770558, -0.608428,
		0.433826, 0.490074, -0.756057,
		0.880761, -0.407515, 0.241231,
		42.879078, 33.478691, 45.138943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508427, 33.536198, 44.293140>,  <42.262547, 33.763950, 44.970081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508427, 33.536198, 44.293140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684788, 33.361618, 44.606857>,  <42.790604, 33.256870, 44.795086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684788, 33.361618, 44.606857>,  <42.508427, 33.536198, 44.293140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684788, 33.361618, 44.606857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185622, -0.899261, -0.396074,
		0.878149, 0.029050, -0.477504,
		0.440907, -0.436447, 0.784293,
		42.817059, 33.230682, 44.842144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098198, 33.395454, 44.144524>,  <42.508427, 33.536198, 44.293140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098198, 33.395454, 44.144524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911243, 33.146725, 44.395885>,  <42.799072, 32.997486, 44.546703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911243, 33.146725, 44.395885>,  <43.098198, 33.395454, 44.144524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911243, 33.146725, 44.395885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073737, -0.680919, -0.728637,
		0.880975, -0.386889, 0.272399,
		-0.467383, -0.621825, 0.628401,
		42.771030, 32.960178, 44.584404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.401009, 32.702850, 44.316177>,  <43.098198, 33.395454, 44.144524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.401009, 32.702850, 44.316177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001553, 32.683094, 44.309540>,  <42.761879, 32.671242, 44.305557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001553, 32.683094, 44.309540>,  <43.401009, 32.702850, 44.316177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001553, 32.683094, 44.309540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043573, -0.617054, -0.785714,
		0.028565, -0.785370, 0.618367,
		-0.998642, -0.049388, -0.016594,
		42.701962, 32.668278, 44.304562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296993, 32.021847, 44.025867>,  <43.401009, 32.702850, 44.316177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296993, 32.021847, 44.025867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965923, 32.240944, 43.977005>,  <42.767281, 32.372402, 43.947689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965923, 32.240944, 43.977005>,  <43.296993, 32.021847, 44.025867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965923, 32.240944, 43.977005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166426, -0.447439, -0.878693,
		-0.535956, -0.706946, 0.461495,
		-0.827679, 0.547746, -0.122153,
		42.717621, 32.405266, 43.940357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797653, 31.610458, 43.790394>,  <43.296993, 32.021847, 44.025867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797653, 31.610458, 43.790394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689232, 31.961678, 43.632629>,  <42.624180, 32.172409, 43.537971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.689232, 31.961678, 43.632629>,  <42.797653, 31.610458, 43.790394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689232, 31.961678, 43.632629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205906, -0.347378, -0.914840,
		-0.940284, -0.329183, -0.086637,
		-0.271053, 0.878048, -0.394415,
		42.607914, 32.225090, 43.514305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384495, 31.443253, 43.193981>,  <42.797653, 31.610458, 43.790394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384495, 31.443253, 43.193981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549820, 31.804749, 43.149391>,  <42.649017, 32.021645, 43.122635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549820, 31.804749, 43.149391>,  <42.384495, 31.443253, 43.193981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549820, 31.804749, 43.149391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337885, -0.265896, -0.902847,
		-0.845579, 0.335494, -0.415259,
		0.413316, 0.903738, -0.111478,
		42.673813, 32.075871, 43.115948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322464, 31.623758, 42.468349>,  <42.384495, 31.443253, 43.193981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322464, 31.623758, 42.468349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622540, 31.867476, 42.571095>,  <42.802586, 32.013706, 42.632740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622540, 31.867476, 42.571095>,  <42.322464, 31.623758, 42.468349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622540, 31.867476, 42.571095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402267, -0.112239, -0.908616,
		-0.524782, 0.784962, -0.329298,
		0.750190, 0.609291, 0.256864,
		42.847595, 32.050262, 42.648155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343754, 32.114685, 41.889019>,  <42.322464, 31.623758, 42.468349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343754, 32.114685, 41.889019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692142, 32.123989, 42.085331>,  <42.901176, 32.129570, 42.203117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.692142, 32.123989, 42.085331>,  <42.343754, 32.114685, 41.889019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692142, 32.123989, 42.085331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485650, 0.110756, -0.867108,
		-0.074525, 0.993575, 0.085169,
		0.870971, 0.023259, 0.490784,
		42.953434, 32.130966, 42.232567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.717098, 32.485550, 41.474533>,  <42.343754, 32.114685, 41.889019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.717098, 32.485550, 41.474533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010204, 32.345993, 41.708229>,  <43.186066, 32.262257, 41.848446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010204, 32.345993, 41.708229>,  <42.717098, 32.485550, 41.474533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010204, 32.345993, 41.708229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649304, 0.101572, -0.753715,
		0.203626, 0.931641, 0.300968,
		0.732762, -0.348896, 0.584236,
		43.230034, 32.241325, 41.883499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.253674, 33.005951, 41.451977>,  <42.717098, 32.485550, 41.474533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.253674, 33.005951, 41.451977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417252, 32.658726, 41.564568>,  <43.515396, 32.450390, 41.632122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417252, 32.658726, 41.564568>,  <43.253674, 33.005951, 41.451977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417252, 32.658726, 41.564568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663243, 0.070864, -0.745042,
		0.626799, 0.491366, 0.604717,
		0.408941, -0.868066, 0.281477,
		43.539932, 32.398308, 41.649010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981865, 33.119137, 41.276157>,  <43.253674, 33.005951, 41.451977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981865, 33.119137, 41.276157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956196, 32.723434, 41.328705>,  <43.940796, 32.486012, 41.360233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956196, 32.723434, 41.328705>,  <43.981865, 33.119137, 41.276157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956196, 32.723434, 41.328705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690564, -0.139049, -0.709779,
		0.720419, 0.045173, 0.692067,
		-0.064169, -0.989255, 0.131368,
		43.936947, 32.426659, 41.368114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628174, 32.850311, 41.521786>,  <43.981865, 33.119137, 41.276157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628174, 32.850311, 41.521786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444744, 32.540203, 41.348042>,  <44.334686, 32.354137, 41.243797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.444744, 32.540203, 41.348042>,  <44.628174, 32.850311, 41.521786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.444744, 32.540203, 41.348042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724428, -0.043037, -0.688005,
		0.514696, -0.630163, 0.581363,
		-0.458575, -0.775270, -0.434357,
		44.307171, 32.307621, 41.217735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.188675, 32.482281, 41.194893>,  <44.628174, 32.850311, 41.521786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.188675, 32.482281, 41.194893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872219, 32.327488, 41.005436>,  <44.682346, 32.234612, 40.891762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872219, 32.327488, 41.005436>,  <45.188675, 32.482281, 41.194893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872219, 32.327488, 41.005436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551441, -0.116310, -0.826066,
		0.264583, -0.914722, 0.305416,
		-0.791144, -0.386982, -0.473642,
		44.634876, 32.211391, 40.863342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.423649, 31.766607, 40.851532>,  <45.188675, 32.482281, 41.194893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.423649, 31.766607, 40.851532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.115543, 31.956892, 40.681641>,  <44.930679, 32.071064, 40.579704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.115543, 31.956892, 40.681641>,  <45.423649, 31.766607, 40.851532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.115543, 31.956892, 40.681641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476598, -0.013121, -0.879023,
		-0.423737, -0.879502, -0.216617,
		-0.770261, 0.475714, -0.424729,
		44.884464, 32.099606, 40.554222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.465115, 31.322117, 40.173367>,  <45.423649, 31.766607, 40.851532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.465115, 31.322117, 40.173367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.243042, 31.652565, 40.134785>,  <45.109798, 31.850834, 40.111633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.243042, 31.652565, 40.134785>,  <45.465115, 31.322117, 40.173367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.243042, 31.652565, 40.134785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396938, 0.161255, -0.903569,
		-0.730902, -0.539929, -0.417443,
		-0.555178, 0.826120, -0.096457,
		45.076488, 31.900400, 40.105846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262154, 31.307499, 39.498726>,  <45.465115, 31.322117, 40.173367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262154, 31.307499, 39.498726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192268, 31.689564, 39.594345>,  <45.150337, 31.918802, 39.651718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192268, 31.689564, 39.594345>,  <45.262154, 31.307499, 39.498726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192268, 31.689564, 39.594345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049765, 0.251039, -0.966697,
		-0.983361, -0.156997, -0.091393,
		-0.174712, 0.955160, 0.239049,
		45.139854, 31.976112, 39.666061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853218, 31.558027, 38.950340>,  <45.262154, 31.307499, 39.498726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853218, 31.558027, 38.950340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978966, 31.899771, 39.115868>,  <45.054413, 32.104816, 39.215183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978966, 31.899771, 39.115868>,  <44.853218, 31.558027, 38.950340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978966, 31.899771, 39.115868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033438, 0.445610, -0.894602,
		-0.948713, 0.267396, 0.168653,
		0.314366, 0.854360, 0.413815,
		45.073277, 32.156078, 39.240013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.468700, 31.981045, 38.669788>,  <44.853218, 31.558027, 38.950340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.468700, 31.981045, 38.669788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771908, 32.202713, 38.807369>,  <44.953831, 32.335712, 38.889919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771908, 32.202713, 38.807369>,  <44.468700, 31.981045, 38.669788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.771908, 32.202713, 38.807369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152807, 0.361782, -0.919654,
		-0.634082, 0.749672, 0.189556,
		0.758017, 0.554171, 0.343954,
		44.999313, 32.368965, 38.910557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320770, 32.692200, 38.498047>,  <44.468700, 31.981045, 38.669788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.320770, 32.692200, 38.498047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.718914, 32.670959, 38.530163>,  <44.957798, 32.658215, 38.549435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.718914, 32.670959, 38.530163>,  <44.320770, 32.692200, 38.498047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718914, 32.670959, 38.530163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095984, 0.611174, -0.785655,
		-0.007354, 0.789713, 0.613432,
		0.995356, -0.053102, 0.080294,
		45.017521, 32.655029, 38.554253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.428261, 33.299778, 38.249966>,  <44.320770, 32.692200, 38.498047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.428261, 33.299778, 38.249966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769180, 33.094105, 38.211613>,  <44.973732, 32.970699, 38.188602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769180, 33.094105, 38.211613>,  <44.428261, 33.299778, 38.249966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769180, 33.094105, 38.211613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128328, 0.383274, -0.914676,
		0.507063, 0.767276, 0.392650,
		0.852302, -0.514187, -0.095881,
		45.024872, 32.939850, 38.182850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.917881, 33.821854, 37.971581>,  <44.428261, 33.299778, 38.249966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.917881, 33.821854, 37.971581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.072773, 33.467846, 37.868202>,  <45.165707, 33.255440, 37.806175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.072773, 33.467846, 37.868202>,  <44.917881, 33.821854, 37.971581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.072773, 33.467846, 37.868202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229162, 0.363905, -0.902806,
		0.893051, 0.290366, 0.343727,
		0.387228, -0.885020, -0.258445,
		45.188942, 33.202339, 37.790668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.533680, 33.977917, 37.612480>,  <44.917881, 33.821854, 37.971581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.533680, 33.977917, 37.612480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.465355, 33.598026, 37.507523>,  <45.424358, 33.370094, 37.444550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.465355, 33.598026, 37.507523>,  <45.533680, 33.977917, 37.612480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.465355, 33.598026, 37.507523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302192, 0.202975, -0.931387,
		0.937818, -0.238384, 0.252329,
		-0.170811, -0.949723, -0.262392,
		45.414112, 33.313110, 37.428806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.031628, 33.824806, 36.996559>,  <45.533680, 33.977917, 37.612480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.031628, 33.824806, 36.996559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758476, 33.533520, 36.973305>,  <45.594585, 33.358749, 36.959351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.758476, 33.533520, 36.973305>,  <46.031628, 33.824806, 36.996559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.758476, 33.533520, 36.973305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051729, 0.031182, -0.998174,
		0.728699, -0.684639, 0.016377,
		-0.682878, -0.728215, -0.058138,
		45.553612, 33.315056, 36.955864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.345936, 33.129520, 36.646427>,  <46.031628, 33.824806, 36.996559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.345936, 33.129520, 36.646427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951317, 33.138557, 36.581669>,  <45.714546, 33.143982, 36.542812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951317, 33.138557, 36.581669>,  <46.345936, 33.129520, 36.646427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951317, 33.138557, 36.581669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163451, 0.150665, -0.974979,
		0.002362, -0.988326, -0.152332,
		-0.986549, 0.022596, -0.161899,
		45.655354, 33.145336, 36.533100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.268749, 32.725468, 36.011765>,  <46.345936, 33.129520, 36.646427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.268749, 32.725468, 36.011765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.959518, 32.971371, 36.074272>,  <45.773979, 33.118912, 36.111778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.959518, 32.971371, 36.074272>,  <46.268749, 32.725468, 36.011765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.959518, 32.971371, 36.074272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028741, 0.212157, -0.976813,
		-0.633660, -0.759644, -0.146345,
		-0.773078, 0.614761, 0.156268,
		45.727596, 33.155800, 36.121151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.750004, 32.702030, 35.406212>,  <46.268749, 32.725468, 36.011765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.750004, 32.702030, 35.406212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.769260, 32.917439, 35.069717>,  <46.780815, 33.046684, 34.867821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.769260, 32.917439, 35.069717>,  <46.750004, 32.702030, 35.406212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.769260, 32.917439, 35.069717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380626, 0.768770, 0.513922,
		0.923475, -0.344939, -0.167963,
		0.048146, 0.538525, -0.841233,
		46.783703, 33.078995, 34.817348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.390297, 33.096790, 35.407730>,  <46.750004, 32.702030, 35.406212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.390297, 33.096790, 35.407730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.215229, 33.326138, 35.130692>,  <47.110188, 33.463745, 34.964470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.215229, 33.326138, 35.130692>,  <47.390297, 33.096790, 35.407730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.215229, 33.326138, 35.130692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562942, 0.775376, 0.286162,
		0.701100, -0.264647, -0.662134,
		-0.437671, 0.573371, -0.692596,
		47.083927, 33.498150, 34.922913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.913048, 33.601311, 35.076134>,  <47.390297, 33.096790, 35.407730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.913048, 33.601311, 35.076134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.540215, 33.746059, 35.069550>,  <47.316513, 33.832909, 35.065598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.540215, 33.746059, 35.069550>,  <47.913048, 33.601311, 35.076134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.540215, 33.746059, 35.069550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339589, 0.888695, 0.308059,
		0.126105, 0.281547, -0.951225,
		-0.932082, 0.361874, -0.016459,
		47.260590, 33.854622, 35.064613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.846600, 34.345966, 34.718037>,  <47.913048, 33.601311, 35.076134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.846600, 34.345966, 34.718037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.534233, 34.277317, 34.958275>,  <47.346813, 34.236130, 35.102417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.534233, 34.277317, 34.958275>,  <47.846600, 34.345966, 34.718037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.534233, 34.277317, 34.958275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251128, 0.794123, 0.553446,
		-0.571929, 0.583022, -0.577047,
		-0.780918, -0.171620, 0.600595,
		47.299957, 34.225830, 35.138454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.677601, 35.047703, 34.793453>,  <47.846600, 34.345966, 34.718037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.677601, 35.047703, 34.793453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.537338, 34.800663, 35.075050>,  <47.453178, 34.652439, 35.244007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.537338, 34.800663, 35.075050>,  <47.677601, 35.047703, 34.793453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.537338, 34.800663, 35.075050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050972, 0.763196, 0.644153,
		-0.935115, 0.189994, -0.299102,
		-0.350658, -0.617603, 0.703992,
		47.432140, 34.615383, 35.286247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.908646, 39.128166, 45.299732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.550014, 38.968716, 45.376926>,  <32.334835, 38.873043, 45.423244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.550014, 38.968716, 45.376926>,  <32.908646, 39.128166, 45.299732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550014, 38.968716, 45.376926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205758, -0.010951, -0.978542,
		0.392188, -0.917047, -0.072202,
		-0.896578, -0.398628, 0.192985,
		32.281040, 38.849129, 45.434822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911549, 38.472710, 44.876053>,  <32.908646, 39.128166, 45.299732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911549, 38.472710, 44.876053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.524048, 38.529095, 44.957680>,  <32.291546, 38.562927, 45.006657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.524048, 38.529095, 44.957680>,  <32.911549, 38.472710, 44.876053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524048, 38.529095, 44.957680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237636, -0.291961, -0.926438,
		-0.071016, -0.945985, 0.316337,
		-0.968755, 0.140965, 0.204066,
		32.233421, 38.571384, 45.018898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645599, 37.961670, 44.526653>,  <32.911549, 38.472710, 44.876053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645599, 37.961670, 44.526653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.323566, 38.188534, 44.596138>,  <32.130348, 38.324654, 44.637829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.323566, 38.188534, 44.596138>,  <32.645599, 37.961670, 44.526653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323566, 38.188534, 44.596138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408181, -0.317225, -0.856012,
		-0.430394, -0.760061, 0.486897,
		-0.805077, 0.567164, 0.173711,
		32.082043, 38.358681, 44.648251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083115, 37.477982, 44.403969>,  <32.645599, 37.961670, 44.526653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083115, 37.477982, 44.403969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.941494, 37.849072, 44.356670>,  <31.856522, 38.071724, 44.328293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.941494, 37.849072, 44.356670>,  <32.083115, 37.477982, 44.403969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941494, 37.849072, 44.356670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216122, -0.204171, -0.954780,
		-0.909911, -0.312488, 0.272788,
		-0.354053, 0.927721, -0.118242,
		31.835278, 38.127388, 44.321198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390331, 37.455948, 44.166729>,  <32.083115, 37.477982, 44.403969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390331, 37.455948, 44.166729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.521717, 37.812851, 44.042805>,  <31.600548, 38.026993, 43.968449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.521717, 37.812851, 44.042805>,  <31.390331, 37.455948, 44.166729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521717, 37.812851, 44.042805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321258, -0.202914, -0.924997,
		-0.888203, 0.403358, 0.219996,
		0.328465, 0.892260, -0.309811,
		31.620256, 38.080528, 43.949860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949522, 37.612419, 43.673107>,  <31.390331, 37.455948, 44.166729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949522, 37.612419, 43.673107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.254438, 37.866184, 43.621822>,  <31.437387, 38.018444, 43.591053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.254438, 37.866184, 43.621822>,  <30.949522, 37.612419, 43.673107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254438, 37.866184, 43.621822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101282, -0.078729, -0.991738,
		-0.639263, 0.768977, 0.004240,
		0.762289, 0.634410, -0.128212,
		31.483126, 38.056507, 43.583359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718885, 37.999870, 43.124130>,  <30.949522, 37.612419, 43.673107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718885, 37.999870, 43.124130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.115915, 38.041313, 43.149628>,  <31.354134, 38.066181, 43.164925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.115915, 38.041313, 43.149628>,  <30.718885, 37.999870, 43.124130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115915, 38.041313, 43.149628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087370, -0.242603, -0.966183,
		-0.084643, 0.964577, -0.249854,
		0.992573, 0.103610, 0.063740,
		31.413687, 38.072395, 43.168751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943068, 38.488365, 42.619785>,  <30.718885, 37.999870, 43.124130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943068, 38.488365, 42.619785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.257711, 38.255299, 42.701515>,  <31.446499, 38.115459, 42.750553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.257711, 38.255299, 42.701515>,  <30.943068, 38.488365, 42.619785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257711, 38.255299, 42.701515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089753, -0.219496, -0.971476,
		0.610890, 0.782513, -0.120363,
		0.786612, -0.582662, 0.204321,
		31.493694, 38.080502, 42.762810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496857, 38.732063, 42.107010>,  <30.943068, 38.488365, 42.619785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496857, 38.732063, 42.107010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.599760, 38.374340, 42.253448>,  <31.661501, 38.159706, 42.341312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.599760, 38.374340, 42.253448>,  <31.496857, 38.732063, 42.107010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599760, 38.374340, 42.253448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250071, -0.304331, -0.919156,
		0.933426, 0.328009, 0.145350,
		0.257257, -0.894311, 0.366096,
		31.676937, 38.106045, 42.363277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278446, 38.601185, 41.937962>,  <31.496857, 38.732063, 42.107010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278446, 38.601185, 41.937962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.082890, 38.257374, 41.997547>,  <31.965555, 38.051086, 42.033298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.082890, 38.257374, 41.997547>,  <32.278446, 38.601185, 41.937962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082890, 38.257374, 41.997547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241896, -0.297646, -0.923522,
		0.838133, -0.415472, 0.353434,
		-0.488896, -0.859529, 0.148966,
		31.936220, 37.999516, 42.042236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780460, 38.188789, 41.553852>,  <32.278446, 38.601185, 41.937962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780460, 38.188789, 41.553852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.425274, 38.008228, 41.589050>,  <32.212162, 37.899891, 41.610168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.425274, 38.008228, 41.589050>,  <32.780460, 38.188789, 41.553852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425274, 38.008228, 41.589050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160300, -0.483119, -0.860755,
		0.431059, -0.750220, 0.501356,
		-0.887971, -0.451404, 0.087993,
		32.158882, 37.872807, 41.615448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999496, 37.624832, 41.172852>,  <32.780460, 38.188789, 41.553852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999496, 37.624832, 41.172852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.600811, 37.598267, 41.191406>,  <32.361599, 37.582329, 41.202538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.600811, 37.598267, 41.191406>,  <32.999496, 37.624832, 41.172852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600811, 37.598267, 41.191406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020166, -0.351178, -0.936092,
		0.078459, -0.933951, 0.348684,
		-0.996713, -0.066413, 0.046387,
		32.301796, 37.578342, 41.205322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781235, 36.931885, 40.898384>,  <32.999496, 37.624832, 41.172852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781235, 36.931885, 40.898384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.463203, 37.173077, 40.872238>,  <32.272385, 37.317791, 40.856552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.463203, 37.173077, 40.872238>,  <32.781235, 36.931885, 40.898384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463203, 37.173077, 40.872238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240296, -0.412122, -0.878870,
		-0.556881, -0.683059, 0.472562,
		-0.795073, 0.602981, -0.065367,
		32.224682, 37.353970, 40.852627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298420, 36.601913, 40.491787>,  <32.781235, 36.931885, 40.898384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298420, 36.601913, 40.491787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.163010, 36.978252, 40.486076>,  <32.081764, 37.204056, 40.482651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.163010, 36.978252, 40.486076>,  <32.298420, 36.601913, 40.491787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163010, 36.978252, 40.486076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346374, -0.138708, -0.927785,
		-0.874885, -0.309136, 0.372842,
		-0.338528, 0.940848, -0.014277,
		32.061451, 37.260506, 40.481792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625179, 36.583210, 40.064445>,  <32.298420, 36.601913, 40.491787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625179, 36.583210, 40.064445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.754004, 36.961868, 40.059715>,  <31.831299, 37.189064, 40.056877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.754004, 36.961868, 40.059715>,  <31.625179, 36.583210, 40.064445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754004, 36.961868, 40.059715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211760, 0.059853, -0.975487,
		-0.922732, 0.316672, 0.219738,
		0.322062, 0.946645, -0.011830,
		31.850622, 37.245861, 40.056168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205856, 36.961281, 39.646690>,  <31.625179, 36.583210, 40.064445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205856, 36.961281, 39.646690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.537502, 37.184784, 39.639198>,  <31.736490, 37.318886, 39.634705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.537502, 37.184784, 39.639198>,  <31.205856, 36.961281, 39.646690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537502, 37.184784, 39.639198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075414, 0.078589, -0.994050,
		-0.553966, 0.825596, 0.107298,
		0.829116, 0.558762, -0.018726,
		31.786238, 37.352413, 39.633579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131468, 37.457447, 39.086483>,  <31.205856, 36.961281, 39.646690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131468, 37.457447, 39.086483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.527351, 37.456287, 39.143711>,  <31.764881, 37.455593, 39.178047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.527351, 37.456287, 39.143711>,  <31.131468, 37.457447, 39.086483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527351, 37.456287, 39.143711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141898, -0.109224, -0.983837,
		0.018475, 0.994013, -0.107689,
		0.989709, -0.002896, 0.143067,
		31.824265, 37.455418, 39.186630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432201, 37.902195, 38.574207>,  <31.131468, 37.457447, 39.086483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432201, 37.902195, 38.574207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.691904, 37.626282, 38.702370>,  <31.847727, 37.460735, 38.779266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.691904, 37.626282, 38.702370>,  <31.432201, 37.902195, 38.574207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691904, 37.626282, 38.702370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288158, -0.166779, -0.942947,
		0.703867, 0.704546, 0.090484,
		0.649259, -0.689783, 0.320410,
		31.886683, 37.419346, 38.798492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108246, 38.134480, 38.311165>,  <31.432201, 37.902195, 38.574207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108246, 38.134480, 38.311165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.143803, 37.744118, 38.390877>,  <32.165138, 37.509903, 38.438705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.143803, 37.744118, 38.390877>,  <32.108246, 38.134480, 38.311165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143803, 37.744118, 38.390877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249572, -0.171871, -0.952982,
		0.964267, 0.134450, 0.228279,
		0.088894, -0.975901, 0.199284,
		32.170471, 37.451347, 38.450661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543545, 37.886986, 37.803280>,  <32.108246, 38.134480, 38.311165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543545, 37.886986, 37.803280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.511211, 37.519043, 37.956818>,  <32.491810, 37.298279, 38.048939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.511211, 37.519043, 37.956818>,  <32.543545, 37.886986, 37.803280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511211, 37.519043, 37.956818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512778, -0.368612, -0.775361,
		0.854707, 0.134149, 0.501477,
		-0.080836, -0.919853, 0.383844,
		32.486961, 37.243088, 38.071972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264259, 37.491463, 37.811909>,  <32.543545, 37.886986, 37.803280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264259, 37.491463, 37.811909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.957935, 37.236885, 37.775078>,  <32.774143, 37.084137, 37.752979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.957935, 37.236885, 37.775078>,  <33.264259, 37.491463, 37.811909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957935, 37.236885, 37.775078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389517, -0.345154, -0.853900,
		0.511679, -0.689788, 0.512228,
		-0.765807, -0.636444, -0.092076,
		32.728191, 37.045952, 37.747456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963314, 37.220501, 37.733330>,  <33.264259, 37.491463, 37.811909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963314, 37.220501, 37.733330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.725182, 36.905880, 37.798958>,  <33.582302, 36.717106, 37.838333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.725182, 36.905880, 37.798958>,  <33.963314, 37.220501, 37.733330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725182, 36.905880, 37.798958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301016, 0.029006, -0.953178,
		0.744965, -0.616843, -0.254033,
		-0.595329, -0.786552, 0.164071,
		33.546581, 36.669914, 37.848179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998283, 36.876492, 36.961975>,  <33.963314, 37.220501, 37.733330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998283, 36.876492, 36.961975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.340221, 36.964977, 36.774227>,  <34.545383, 37.018070, 36.661579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.340221, 36.964977, 36.774227>,  <33.998283, 36.876492, 36.961975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340221, 36.964977, 36.774227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311626, 0.504400, 0.805276,
		0.414889, -0.834653, 0.362246,
		0.854843, 0.221214, -0.469370,
		34.596676, 37.031342, 36.633415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600281, 36.723022, 37.370510>,  <33.998283, 36.876492, 36.961975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600281, 36.723022, 37.370510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.691208, 37.032700, 37.134220>,  <34.745766, 37.218506, 36.992447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.691208, 37.032700, 37.134220>,  <34.600281, 36.723022, 37.370510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691208, 37.032700, 37.134220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252538, 0.538991, 0.803563,
		0.940506, -0.331845, -0.072989,
		0.227318, 0.774188, -0.590728,
		34.759403, 37.264957, 36.957001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263798, 36.897121, 37.625469>,  <34.600281, 36.723022, 37.370510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263798, 36.897121, 37.625469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.083267, 37.204399, 37.443844>,  <34.974949, 37.388767, 37.334869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.083267, 37.204399, 37.443844>,  <35.263798, 36.897121, 37.625469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083267, 37.204399, 37.443844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166201, 0.572296, 0.803029,
		0.876744, 0.286964, -0.385969,
		-0.451329, 0.768199, -0.454063,
		34.947868, 37.434860, 37.307625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564610, 37.535927, 37.730217>,  <35.263798, 36.897121, 37.625469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564610, 37.535927, 37.730217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.216480, 37.702976, 37.625809>,  <35.007603, 37.803204, 37.563164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.216480, 37.702976, 37.625809>,  <35.564610, 37.535927, 37.730217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216480, 37.702976, 37.625809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098228, 0.666560, 0.738951,
		0.482584, 0.617488, -0.621145,
		-0.870324, 0.417620, -0.261017,
		34.955383, 37.828262, 37.547504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672249, 38.216099, 37.703331>,  <35.564610, 37.535927, 37.730217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672249, 38.216099, 37.703331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.279739, 38.165577, 37.761490>,  <35.044231, 38.135262, 37.796387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.279739, 38.165577, 37.761490>,  <35.672249, 38.216099, 37.703331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279739, 38.165577, 37.761490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041468, 0.598668, 0.799923,
		-0.188082, 0.790976, -0.582221,
		-0.981277, -0.126308, 0.145399,
		34.985355, 38.127686, 37.805111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427341, 38.898930, 37.647976>,  <35.672249, 38.216099, 37.703331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427341, 38.898930, 37.647976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.188980, 38.658302, 37.860771>,  <35.045963, 38.513927, 37.988449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.188980, 38.658302, 37.860771>,  <35.427341, 38.898930, 37.647976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188980, 38.658302, 37.860771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046501, 0.687193, 0.724985,
		-0.801706, 0.407286, -0.437476,
		-0.595906, -0.601568, 0.531988,
		35.010208, 38.477833, 38.020367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881382, 39.319565, 37.966084>,  <35.427341, 38.898930, 37.647976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881382, 39.319565, 37.966084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.915073, 38.989685, 38.189789>,  <34.935287, 38.791756, 38.324013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.915073, 38.989685, 38.189789>,  <34.881382, 39.319565, 37.966084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915073, 38.989685, 38.189789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104072, 0.550904, 0.828054,
		-0.990996, -0.127952, -0.039425,
		0.084232, -0.824702, 0.559260,
		34.940342, 38.742275, 38.357567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490993, 39.539986, 38.583244>,  <34.881382, 39.319565, 37.966084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490993, 39.539986, 38.583244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625404, 39.184917, 38.709183>,  <34.706051, 38.971874, 38.784744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625404, 39.184917, 38.709183>,  <34.490993, 39.539986, 38.583244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625404, 39.184917, 38.709183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215525, 0.252940, 0.943170,
		-0.916862, -0.384785, -0.106322,
		0.336024, -0.887672, 0.314842,
		34.726212, 38.918617, 38.803635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984570, 39.271030, 39.100826>,  <34.490993, 39.539986, 38.583244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984570, 39.271030, 39.100826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.329231, 39.085262, 39.182667>,  <34.536030, 38.973801, 39.231770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.329231, 39.085262, 39.182667>,  <33.984570, 39.271030, 39.100826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329231, 39.085262, 39.182667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107165, 0.227561, 0.967849,
		-0.496053, -0.855877, 0.146308,
		0.861654, -0.464425, 0.204603,
		34.587727, 38.945934, 39.244049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829021, 38.963104, 39.777374>,  <33.984570, 39.271030, 39.100826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829021, 38.963104, 39.777374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.227703, 38.937092, 39.757996>,  <34.466911, 38.921486, 39.746368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.227703, 38.937092, 39.757996>,  <33.829021, 38.963104, 39.777374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227703, 38.937092, 39.757996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059464, 0.179854, 0.981894,
		-0.055138, -0.981541, 0.183129,
		0.996707, -0.065029, -0.048450,
		34.526714, 38.917583, 39.743462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064541, 38.468613, 40.195698>,  <33.829021, 38.963104, 39.777374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064541, 38.468613, 40.195698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.388111, 38.702408, 40.170372>,  <34.582253, 38.842686, 40.155174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.388111, 38.702408, 40.170372>,  <34.064541, 38.468613, 40.195698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388111, 38.702408, 40.170372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028530, 0.068548, 0.997240,
		0.587213, -0.808504, 0.038775,
		0.808930, 0.584486, -0.063319,
		34.630791, 38.877754, 40.151375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574471, 38.147186, 40.620953>,  <34.064541, 38.468613, 40.195698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574471, 38.147186, 40.620953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.664886, 38.536411, 40.602837>,  <34.719135, 38.769947, 40.591965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.664886, 38.536411, 40.602837>,  <34.574471, 38.147186, 40.620953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664886, 38.536411, 40.602837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349801, -0.037688, 0.936065,
		0.909144, -0.227434, -0.348898,
		0.226043, 0.973064, -0.045293,
		34.732700, 38.828331, 40.589249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206184, 38.128738, 40.933109>,  <34.574471, 38.147186, 40.620953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206184, 38.128738, 40.933109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.061325, 38.501503, 40.941093>,  <34.974411, 38.725163, 40.945885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.061325, 38.501503, 40.941093>,  <35.206184, 38.128738, 40.933109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061325, 38.501503, 40.941093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378530, 0.127465, 0.916770,
		0.851800, 0.339562, -0.398915,
		-0.362148, 0.931907, 0.019960,
		34.952682, 38.781075, 40.947083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458755, 38.403622, 41.598656>,  <35.206184, 38.128738, 40.933109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458755, 38.403622, 41.598656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.221596, 38.707443, 41.491665>,  <35.079300, 38.889736, 41.427471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.221596, 38.707443, 41.491665>,  <35.458755, 38.403622, 41.598656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221596, 38.707443, 41.491665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141578, 0.425307, 0.893907,
		0.792730, 0.492131, -0.359702,
		-0.592903, 0.759553, -0.267479,
		35.043724, 38.935310, 41.411423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863388, 39.056442, 41.723019>,  <35.458755, 38.403622, 41.598656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863388, 39.056442, 41.723019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.464817, 39.085129, 41.740837>,  <35.225674, 39.102341, 41.751530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.464817, 39.085129, 41.740837>,  <35.863388, 39.056442, 41.723019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464817, 39.085129, 41.740837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076903, 0.553297, 0.829426,
		0.034836, 0.829891, -0.556837,
		-0.996430, 0.071716, 0.044546,
		35.165890, 39.106644, 41.754200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692429, 39.602886, 42.143677>,  <35.863388, 39.056442, 41.723019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692429, 39.602886, 42.143677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.314243, 39.476257, 42.174347>,  <35.087334, 39.400280, 42.192749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.314243, 39.476257, 42.174347>,  <35.692429, 39.602886, 42.143677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314243, 39.476257, 42.174347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085871, 0.469309, 0.878849,
		-0.314204, 0.824336, -0.470899,
		-0.945464, -0.316574, 0.076672,
		35.030605, 39.381287, 42.197350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243248, 40.115459, 42.248535>,  <35.692429, 39.602886, 42.143677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243248, 40.115459, 42.248535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.073608, 39.788872, 42.405262>,  <34.971825, 39.592918, 42.499298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.073608, 39.788872, 42.405262>,  <35.243248, 40.115459, 42.248535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073608, 39.788872, 42.405262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003762, 0.434233, 0.900792,
		-0.905609, 0.380550, -0.187229,
		-0.424097, -0.816470, 0.391814,
		34.946381, 39.543930, 42.522808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773800, 40.380306, 42.764122>,  <35.243248, 40.115459, 42.248535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773800, 40.380306, 42.764122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.758881, 40.001389, 42.891399>,  <34.749928, 39.774040, 42.967766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.758881, 40.001389, 42.891399>,  <34.773800, 40.380306, 42.764122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758881, 40.001389, 42.891399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158991, 0.319988, 0.933986,
		-0.986575, -0.015750, -0.162547,
		-0.037303, -0.947291, 0.318196,
		34.747688, 39.717201, 42.986858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.147541, 40.324238, 43.355888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.372849, 39.993782, 43.361782>,  <34.508034, 39.795509, 43.365318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.372849, 39.993782, 43.361782>,  <34.147541, 40.324238, 43.355888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372849, 39.993782, 43.361782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073978, -0.032666, 0.996725,
		-0.822955, -0.562515, -0.079516,
		0.563270, -0.826142, 0.014731,
		34.541828, 39.745941, 43.366203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849869, 39.814560, 43.838223>,  <34.147541, 40.324238, 43.355888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849869, 39.814560, 43.838223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.243404, 39.745289, 43.820030>,  <34.479527, 39.703728, 43.809116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.243404, 39.745289, 43.820030>,  <33.849869, 39.814560, 43.838223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243404, 39.745289, 43.820030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073681, 0.160101, 0.984347,
		-0.163187, -0.971790, 0.170274,
		0.983840, -0.173179, -0.045476,
		34.538555, 39.693336, 43.806389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995274, 39.294910, 44.310505>,  <33.849869, 39.814560, 43.838223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995274, 39.294910, 44.310505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.368240, 39.430252, 44.259727>,  <34.592022, 39.511456, 44.229259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.368240, 39.430252, 44.259727>,  <33.995274, 39.294910, 44.310505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368240, 39.430252, 44.259727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213042, -0.230898, 0.949368,
		0.291911, -0.912251, -0.287377,
		0.932417, 0.338354, -0.126946,
		34.647964, 39.531757, 44.221645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385860, 38.841911, 44.690922>,  <33.995274, 39.294910, 44.310505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385860, 38.841911, 44.690922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.620090, 39.164131, 44.654720>,  <34.760628, 39.357464, 44.632999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.620090, 39.164131, 44.654720>,  <34.385860, 38.841911, 44.690922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620090, 39.164131, 44.654720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284773, -0.099894, 0.953376,
		0.758954, -0.584042, -0.287895,
		0.585571, 0.805554, -0.090505,
		34.795761, 39.405796, 44.627567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786404, 38.694954, 45.110096>,  <34.385860, 38.841911, 44.690922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786404, 38.694954, 45.110096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.836002, 39.090176, 45.073479>,  <34.865761, 39.327309, 45.051510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.836002, 39.090176, 45.073479>,  <34.786404, 38.694954, 45.110096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836002, 39.090176, 45.073479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199709, 0.065519, 0.977662,
		0.971978, -0.139506, -0.189198,
		0.123993, 0.988051, -0.091543,
		34.873199, 39.386593, 45.046017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511665, 38.838226, 45.364624>,  <34.786404, 38.694954, 45.110096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511665, 38.838226, 45.364624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.285210, 39.166206, 45.398499>,  <35.149338, 39.362995, 45.418823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.285210, 39.166206, 45.398499>,  <35.511665, 38.838226, 45.364624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285210, 39.166206, 45.398499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188555, 0.028800, 0.981640,
		0.802458, 0.571709, -0.170910,
		-0.566135, 0.819951, 0.084688,
		35.115368, 39.412193, 45.423904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809532, 39.310806, 45.901779>,  <35.511665, 38.838226, 45.364624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809532, 39.310806, 45.901779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439644, 39.461937, 45.883259>,  <35.217712, 39.552616, 45.872147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.439644, 39.461937, 45.883259>,  <35.809532, 39.310806, 45.901779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439644, 39.461937, 45.883259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071462, 0.291775, 0.953814,
		0.373883, 0.878701, -0.296810,
		-0.924719, 0.377825, -0.046296,
		35.162228, 39.575283, 45.869370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804565, 39.980801, 46.138847>,  <35.809532, 39.310806, 45.901779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804565, 39.980801, 46.138847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.431053, 39.843685, 46.179951>,  <35.206947, 39.761417, 46.204613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.431053, 39.843685, 46.179951>,  <35.804565, 39.980801, 46.138847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431053, 39.843685, 46.179951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056414, 0.142547, 0.988179,
		-0.353382, 0.928535, -0.113769,
		-0.933776, -0.342787, 0.102756,
		35.150921, 39.740849, 46.210777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467747, 40.483185, 46.533634>,  <35.804565, 39.980801, 46.138847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467747, 40.483185, 46.533634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.248043, 40.149242, 46.548199>,  <35.116222, 39.948875, 46.556938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.248043, 40.149242, 46.548199>,  <35.467747, 40.483185, 46.533634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248043, 40.149242, 46.548199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315833, 0.247735, 0.915902,
		-0.773669, 0.491568, -0.399747,
		-0.549259, -0.834859, 0.036411,
		35.083267, 39.898785, 46.559124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792843, 40.625153, 46.805901>,  <35.467747, 40.483185, 46.533634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792843, 40.625153, 46.805901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.839401, 40.236366, 46.887611>,  <34.867336, 40.003094, 46.936638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.839401, 40.236366, 46.887611>,  <34.792843, 40.625153, 46.805901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839401, 40.236366, 46.887611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139535, 0.219637, 0.965552,
		-0.983352, -0.083886, 0.161189,
		0.116400, -0.971968, 0.204275,
		34.874321, 39.944775, 46.948895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561169, 40.555695, 47.520046>,  <34.792843, 40.625153, 46.805901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561169, 40.555695, 47.520046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.735271, 40.200863, 47.458546>,  <34.839733, 39.987965, 47.421646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.735271, 40.200863, 47.458546>,  <34.561169, 40.555695, 47.520046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735271, 40.200863, 47.458546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209213, -0.066449, 0.975610,
		-0.875662, -0.456805, 0.156667,
		0.435253, -0.887082, -0.153756,
		34.865849, 39.934738, 47.412418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298946, 40.253319, 48.072342>,  <34.561169, 40.555695, 47.520046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298946, 40.253319, 48.072342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.618401, 40.041084, 47.958736>,  <34.810074, 39.913742, 47.890575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.618401, 40.041084, 47.958736>,  <34.298946, 40.253319, 48.072342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618401, 40.041084, 47.958736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226924, -0.171592, 0.958677,
		-0.557396, -0.830080, -0.016636,
		0.798633, -0.530588, -0.284009,
		34.857990, 39.881908, 47.873535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309322, 39.581116, 48.424862>,  <34.298946, 40.253319, 48.072342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309322, 39.581116, 48.424862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.683407, 39.660110, 48.307301>,  <34.907860, 39.707508, 48.236763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.683407, 39.660110, 48.307301>,  <34.309322, 39.581116, 48.424862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683407, 39.660110, 48.307301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337974, -0.250338, 0.907251,
		0.105596, -0.947803, -0.300864,
		0.935213, 0.197486, -0.293899,
		34.963970, 39.719357, 48.219131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762161, 38.953190, 48.651562>,  <34.309322, 39.581116, 48.424862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762161, 38.953190, 48.651562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.023815, 39.246193, 48.576157>,  <35.180809, 39.421993, 48.530914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.023815, 39.246193, 48.576157>,  <34.762161, 38.953190, 48.651562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023815, 39.246193, 48.576157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554842, -0.295315, 0.777779,
		0.514059, -0.613368, -0.599603,
		0.654136, 0.732509, -0.188513,
		35.220055, 39.465946, 48.519604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349041, 38.665081, 48.834839>,  <34.762161, 38.953190, 48.651562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349041, 38.665081, 48.834839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.464573, 39.047722, 48.850266>,  <35.533894, 39.277306, 48.859524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.464573, 39.047722, 48.850266>,  <35.349041, 38.665081, 48.834839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464573, 39.047722, 48.850266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506712, -0.186928, 0.841606,
		0.812292, -0.223538, -0.538713,
		0.288832, 0.956603, 0.038570,
		35.551224, 39.334702, 48.861835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016430, 38.669106, 49.060909>,  <35.349041, 38.665081, 48.834839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016430, 38.669106, 49.060909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933960, 39.050426, 49.149193>,  <35.884480, 39.279221, 49.202164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933960, 39.050426, 49.149193>,  <36.016430, 38.669106, 49.060909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933960, 39.050426, 49.149193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533008, -0.079743, 0.842344,
		0.820607, 0.291304, -0.491677,
		-0.206170, 0.953301, 0.220705,
		35.872108, 39.336418, 49.215405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639252, 39.189854, 49.117622>,  <36.016430, 38.669106, 49.060909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639252, 39.189854, 49.117622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.327000, 39.315342, 49.333847>,  <36.139648, 39.390636, 49.463581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.327000, 39.315342, 49.333847>,  <36.639252, 39.189854, 49.117622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327000, 39.315342, 49.333847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582982, 0.053736, 0.810706,
		0.225289, 0.947993, -0.224842,
		-0.780626, 0.313722, 0.540557,
		36.092812, 39.409458, 49.496014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886131, 39.718822, 49.423630>,  <36.639252, 39.189854, 49.117622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886131, 39.718822, 49.423630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.568184, 39.653122, 49.657284>,  <36.377415, 39.613701, 49.797474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.568184, 39.653122, 49.657284>,  <36.886131, 39.718822, 49.423630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568184, 39.653122, 49.657284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542213, 0.239875, 0.805273,
		-0.272383, 0.956809, -0.101611,
		-0.794866, -0.164248, 0.584132,
		36.329723, 39.603848, 49.832523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004478, 40.150990, 49.928169>,  <36.886131, 39.718822, 49.423630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004478, 40.150990, 49.928169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.702770, 39.968124, 50.116669>,  <36.521744, 39.858406, 50.229767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.702770, 39.968124, 50.116669>,  <37.004478, 40.150990, 49.928169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702770, 39.968124, 50.116669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377637, 0.285065, 0.880981,
		-0.537092, 0.842458, -0.042373,
		-0.754269, -0.457167, 0.471250,
		36.476490, 39.830975, 50.258045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048325, 40.525127, 50.570518>,  <37.004478, 40.150990, 49.928169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048325, 40.525127, 50.570518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811169, 40.218899, 50.670418>,  <36.668873, 40.035160, 50.730358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811169, 40.218899, 50.670418>,  <37.048325, 40.525127, 50.570518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811169, 40.218899, 50.670418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329799, 0.052098, 0.942612,
		-0.734651, 0.641235, 0.221598,
		-0.592892, -0.765574, 0.249752,
		36.633301, 39.989227, 50.745342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608662, 40.731613, 51.109982>,  <37.048325, 40.525127, 50.570518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608662, 40.731613, 51.109982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.653091, 40.334606, 51.130268>,  <36.679749, 40.096401, 51.142441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.653091, 40.334606, 51.130268>,  <36.608662, 40.731613, 51.109982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653091, 40.334606, 51.130268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488268, 0.098946, 0.867066,
		-0.865596, -0.071545, 0.495605,
		0.111072, -0.992517, 0.050714,
		36.686413, 40.036850, 51.145481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425388, 40.595440, 51.884109>,  <36.608662, 40.731613, 51.109982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425388, 40.595440, 51.884109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.648808, 40.325565, 51.691101>,  <36.782860, 40.163643, 51.575298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.648808, 40.325565, 51.691101>,  <36.425388, 40.595440, 51.884109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648808, 40.325565, 51.691101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728275, 0.120448, 0.674617,
		-0.397033, -0.728215, 0.558631,
		0.558552, -0.674682, -0.482518,
		36.816372, 40.123161, 51.546345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727818, 39.952953, 52.293270>,  <36.425388, 40.595440, 51.884109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727818, 39.952953, 52.293270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.697884, 40.213501, 52.595295>,  <36.679924, 40.369827, 52.776512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.697884, 40.213501, 52.595295>,  <36.727818, 39.952953, 52.293270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697884, 40.213501, 52.595295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953631, 0.174611, -0.245149,
		-0.291525, -0.738399, 0.608095,
		-0.074838, 0.651366, 0.755064,
		36.675434, 40.408909, 52.821815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106613, 39.737698, 52.743488>,  <36.727818, 39.952953, 52.293270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106613, 39.737698, 52.743488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.206680, 40.124783, 52.731216>,  <36.266720, 40.357033, 52.723854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.206680, 40.124783, 52.731216>,  <36.106613, 39.737698, 52.743488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206680, 40.124783, 52.731216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960285, 0.243949, -0.135434,
		-0.123576, 0.063345, 0.990311,
		0.250164, 0.967717, -0.030682,
		36.281731, 40.415096, 52.722012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559364, 39.202549, 52.925682>,  <36.106613, 39.737698, 52.743488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559364, 39.202549, 52.925682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.176704, 39.172203, 53.038162>,  <34.947109, 39.153996, 53.105652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.176704, 39.172203, 53.038162>,  <35.559364, 39.202549, 52.925682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176704, 39.172203, 53.038162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246719, -0.302019, -0.920823,
		0.154784, -0.950279, 0.270208,
		-0.956646, -0.075863, 0.281200,
		34.889709, 39.149445, 53.122520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320274, 38.502838, 52.694466>,  <35.559364, 39.202549, 52.925682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320274, 38.502838, 52.694466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.997211, 38.731548, 52.752098>,  <34.803375, 38.868774, 52.786678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.997211, 38.731548, 52.752098>,  <35.320274, 38.502838, 52.694466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997211, 38.731548, 52.752098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372350, -0.305088, -0.876514,
		-0.457214, -0.761571, 0.459309,
		-0.807658, 0.571778, 0.144081,
		34.754913, 38.903080, 52.795322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683842, 38.024597, 52.656128>,  <35.320274, 38.502838, 52.694466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683842, 38.024597, 52.656128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.553375, 38.394958, 52.579887>,  <34.475094, 38.617176, 52.534145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.553375, 38.394958, 52.579887>,  <34.683842, 38.024597, 52.656128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553375, 38.394958, 52.579887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464055, -0.332484, -0.821040,
		-0.823571, -0.179347, 0.538113,
		-0.326165, 0.925899, -0.190598,
		34.455524, 38.672729, 52.522709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034531, 37.888245, 52.294258>,  <34.683842, 38.024597, 52.656128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034531, 37.888245, 52.294258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.098484, 38.272774, 52.204552>,  <34.136856, 38.503490, 52.150730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.098484, 38.272774, 52.204552>,  <34.034531, 37.888245, 52.294258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098484, 38.272774, 52.204552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281524, -0.173347, -0.943767,
		-0.946141, 0.214027, 0.242920,
		0.159882, 0.961324, -0.224264,
		34.146450, 38.561172, 52.137272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627754, 37.897182, 51.769165>,  <34.034531, 37.888245, 52.294258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627754, 37.897182, 51.769165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.835270, 38.236465, 51.726444>,  <33.959778, 38.440037, 51.700813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.835270, 38.236465, 51.726444>,  <33.627754, 37.897182, 51.769165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835270, 38.236465, 51.726444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410548, 0.137604, -0.901396,
		-0.749874, 0.511479, 0.419617,
		0.518786, 0.848207, -0.106801,
		33.990906, 38.490929, 51.694405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162102, 38.474728, 51.584194>,  <33.627754, 37.897182, 51.769165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162102, 38.474728, 51.584194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.519321, 38.565842, 51.428978>,  <33.733654, 38.620510, 51.335846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.519321, 38.565842, 51.428978>,  <33.162102, 38.474728, 51.584194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519321, 38.565842, 51.428978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427823, 0.162690, -0.889100,
		-0.139392, 0.960024, 0.242741,
		0.893050, 0.227784, -0.388043,
		33.787235, 38.634178, 51.312565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973801, 39.082329, 51.210247>,  <33.162102, 38.474728, 51.584194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973801, 39.082329, 51.210247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.325180, 38.950848, 51.071518>,  <33.536007, 38.871960, 50.988281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.325180, 38.950848, 51.071518>,  <32.973801, 39.082329, 51.210247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325180, 38.950848, 51.071518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318508, 0.138271, -0.937781,
		0.356208, 0.934256, 0.016769,
		0.878446, -0.328704, -0.346822,
		33.588715, 38.852238, 50.967472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154400, 39.516495, 50.593761>,  <32.973801, 39.082329, 51.210247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154400, 39.516495, 50.593761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.335987, 39.161678, 50.560108>,  <33.444939, 38.948788, 50.539917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.335987, 39.161678, 50.560108>,  <33.154400, 39.516495, 50.593761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335987, 39.161678, 50.560108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175951, 0.003318, -0.984393,
		0.873473, 0.461685, -0.154569,
		0.453967, -0.887038, -0.084132,
		33.472176, 38.895569, 50.534870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596138, 39.513332, 49.886459>,  <33.154400, 39.516495, 50.593761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596138, 39.513332, 49.886459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.544212, 39.133774, 50.001522>,  <33.513058, 38.906040, 50.070560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.544212, 39.133774, 50.001522>,  <33.596138, 39.513332, 49.886459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544212, 39.133774, 50.001522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015142, -0.288185, -0.957455,
		0.991423, -0.128647, 0.023042,
		-0.129814, -0.948894, 0.287661,
		33.505268, 38.849106, 50.087822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933201, 39.259430, 49.420212>,  <33.596138, 39.513332, 49.886459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933201, 39.259430, 49.420212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.714806, 38.952656, 49.555092>,  <33.583767, 38.768593, 49.636021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.714806, 38.952656, 49.555092>,  <33.933201, 39.259430, 49.420212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714806, 38.952656, 49.555092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091248, -0.345651, -0.933916,
		0.832807, -0.540679, 0.118741,
		-0.545992, -0.766937, 0.337196,
		33.551006, 38.722576, 49.656250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308311, 38.624649, 49.106308>,  <33.933201, 39.259430, 49.420212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308311, 38.624649, 49.106308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.926979, 38.537834, 49.190273>,  <33.698181, 38.485744, 49.240654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.926979, 38.537834, 49.190273>,  <34.308311, 38.624649, 49.106308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926979, 38.537834, 49.190273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143197, -0.287067, -0.947147,
		0.265824, -0.932999, 0.242590,
		-0.953327, -0.217037, 0.209912,
		33.640980, 38.472725, 49.253246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186504, 38.000801, 48.768532>,  <34.308311, 38.624649, 49.106308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186504, 38.000801, 48.768532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.826096, 38.165398, 48.823421>,  <33.609848, 38.264156, 48.856354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.826096, 38.165398, 48.823421>,  <34.186504, 38.000801, 48.768532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826096, 38.165398, 48.823421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277992, -0.304953, -0.910892,
		-0.332983, -0.858880, 0.389163,
		-0.901023, 0.411496, 0.137217,
		33.555786, 38.288845, 48.864586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733192, 37.645599, 48.356174>,  <34.186504, 38.000801, 48.768532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733192, 37.645599, 48.356174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.491589, 37.951126, 48.447170>,  <33.346626, 38.134441, 48.501766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.491589, 37.951126, 48.447170>,  <33.733192, 37.645599, 48.356174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491589, 37.951126, 48.447170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517265, -0.158564, -0.841008,
		-0.606309, -0.625647, 0.490873,
		-0.604008, 0.763822, 0.227486,
		33.310387, 38.180271, 48.515415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220497, 37.426426, 48.023022>,  <33.733192, 37.645599, 48.356174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220497, 37.426426, 48.023022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.127911, 37.808281, 48.097950>,  <33.072357, 38.037395, 48.142906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.127911, 37.808281, 48.097950>,  <33.220497, 37.426426, 48.023022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127911, 37.808281, 48.097950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348904, 0.098282, -0.931991,
		-0.908123, -0.281084, 0.310328,
		-0.231468, 0.954637, 0.187324,
		33.058472, 38.094673, 48.154148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523479, 37.675144, 47.868935>,  <33.220497, 37.426426, 48.023022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523479, 37.675144, 47.868935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.708935, 38.029118, 47.851360>,  <32.820210, 38.241501, 47.840816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.708935, 38.029118, 47.851360>,  <32.523479, 37.675144, 47.868935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708935, 38.029118, 47.851360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346013, 0.135190, -0.928439,
		-0.815669, 0.445660, 0.368878,
		0.463637, 0.884935, -0.043934,
		32.848026, 38.294598, 47.838181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041595, 38.250332, 47.703354>,  <32.523479, 37.675144, 47.868935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041595, 38.250332, 47.703354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.393318, 38.409260, 47.598320>,  <32.604351, 38.504616, 47.535301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.393318, 38.409260, 47.598320>,  <32.041595, 38.250332, 47.703354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393318, 38.409260, 47.598320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387206, 0.275415, -0.879896,
		-0.277280, 0.875377, 0.396020,
		0.879311, 0.397319, -0.262584,
		32.657112, 38.528454, 47.519547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911274, 38.924240, 47.553822>,  <32.041595, 38.250332, 47.703354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911274, 38.924240, 47.553822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.243210, 38.820602, 47.356144>,  <32.442371, 38.758419, 47.237537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.243210, 38.820602, 47.356144>,  <31.911274, 38.924240, 47.553822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243210, 38.820602, 47.356144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416201, 0.302515, -0.857474,
		0.371671, 0.917253, 0.143204,
		0.829842, -0.259097, -0.494197,
		32.492161, 38.742874, 47.207886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965242, 39.480919, 47.063942>,  <31.911274, 38.924240, 47.553822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965242, 39.480919, 47.063942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170681, 39.171215, 46.916031>,  <32.293945, 38.985394, 46.827286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170681, 39.171215, 46.916031>,  <31.965242, 39.480919, 47.063942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170681, 39.171215, 46.916031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389204, 0.173847, -0.904598,
		0.764681, 0.608518, -0.212058,
		0.513599, -0.774263, -0.369775,
		32.324760, 38.938934, 46.805099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211136, 39.703854, 46.410248>,  <31.965242, 39.480919, 47.063942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211136, 39.703854, 46.410248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.259834, 39.308960, 46.369175>,  <32.289055, 39.072025, 46.344532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.259834, 39.308960, 46.369175>,  <32.211136, 39.703854, 46.410248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259834, 39.308960, 46.369175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446504, 0.037922, -0.893978,
		0.886460, 0.154689, -0.436187,
		0.121747, -0.987235, -0.102685,
		32.296360, 39.012791, 46.338371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473064, 39.716522, 45.832767>,  <32.211136, 39.703854, 46.410248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473064, 39.716522, 45.832767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.330513, 39.344254, 45.865856>,  <32.244984, 39.120892, 45.885712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.330513, 39.344254, 45.865856>,  <32.473064, 39.716522, 45.832767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330513, 39.344254, 45.865856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250222, 0.009760, -0.968139,
		0.900213, -0.365724, -0.236353,
		-0.356379, -0.930672, 0.082726,
		32.223598, 39.065052, 45.890675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.741226, 35.322102, 44.701305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.357479, 35.416336, 44.639198>,  <42.127232, 35.472878, 44.601933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.357479, 35.416336, 44.639198>,  <42.741226, 35.322102, 44.701305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357479, 35.416336, 44.639198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087686, -0.274113, -0.957691,
		-0.268142, -0.932405, 0.242325,
		-0.959381, 0.235548, -0.155260,
		42.069668, 35.487011, 44.592617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510254, 34.789429, 44.366966>,  <42.741226, 35.322102, 44.701305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510254, 34.789429, 44.366966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.218441, 35.041786, 44.261326>,  <42.043354, 35.193203, 44.197941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.218441, 35.041786, 44.261326>,  <42.510254, 34.789429, 44.366966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218441, 35.041786, 44.261326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093082, -0.290962, -0.952196,
		-0.677579, -0.719244, 0.153542,
		-0.729536, 0.630896, -0.264099,
		41.999580, 35.231056, 44.182095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051136, 34.388100, 43.997414>,  <42.510254, 34.789429, 44.366966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051136, 34.388100, 43.997414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.943443, 34.751579, 43.869801>,  <41.878830, 34.969666, 43.793232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.943443, 34.751579, 43.869801>,  <42.051136, 34.388100, 43.997414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943443, 34.751579, 43.869801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021522, -0.336858, -0.941309,
		-0.962835, -0.246562, 0.110250,
		-0.269230, 0.908699, -0.319033,
		41.862675, 35.024189, 43.774090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478855, 34.304367, 43.575172>,  <42.051136, 34.388100, 43.997414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478855, 34.304367, 43.575172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.658512, 34.647629, 43.475704>,  <41.766304, 34.853588, 43.416023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.658512, 34.647629, 43.475704>,  <41.478855, 34.304367, 43.575172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658512, 34.647629, 43.475704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200117, -0.367877, -0.908086,
		-0.870762, 0.358094, -0.336960,
		0.449140, 0.858158, -0.248672,
		41.793255, 34.905075, 43.401104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277611, 34.395237, 42.839493>,  <41.478855, 34.304367, 43.575172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277611, 34.395237, 42.839493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.569870, 34.664524, 42.884979>,  <41.745228, 34.826096, 42.912270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.569870, 34.664524, 42.884979>,  <41.277611, 34.395237, 42.839493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569870, 34.664524, 42.884979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267878, -0.129466, -0.954715,
		-0.628006, 0.728025, -0.274934,
		0.730651, 0.673215, 0.113716,
		41.789066, 34.866489, 42.919094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281136, 34.758755, 42.223751>,  <41.277611, 34.395237, 42.839493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281136, 34.758755, 42.223751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.640038, 34.813614, 42.391617>,  <41.855381, 34.846531, 42.492336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.640038, 34.813614, 42.391617>,  <41.281136, 34.758755, 42.223751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640038, 34.813614, 42.391617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441498, -0.284136, -0.851085,
		0.002518, 0.948924, -0.315493,
		0.897259, 0.137146, 0.419664,
		41.909214, 34.854759, 42.517517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688618, 35.285610, 41.814892>,  <41.281136, 34.758755, 42.223751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688618, 35.285610, 41.814892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.962814, 35.074707, 42.015732>,  <42.127331, 34.948166, 42.136234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.962814, 35.074707, 42.015732>,  <41.688618, 35.285610, 41.814892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962814, 35.074707, 42.015732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446568, -0.240194, -0.861907,
		0.575045, 0.815052, 0.070804,
		0.685492, -0.527254, 0.502099,
		42.168461, 34.916531, 42.166363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.348003, 35.355778, 41.412132>,  <41.688618, 35.285610, 41.814892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.348003, 35.355778, 41.412132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.423847, 35.017544, 41.611748>,  <42.469353, 34.814606, 41.731518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.423847, 35.017544, 41.611748>,  <42.348003, 35.355778, 41.412132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423847, 35.017544, 41.611748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513140, -0.347983, -0.784599,
		0.837100, 0.404843, 0.367922,
		0.189609, -0.845583, 0.499037,
		42.480728, 34.763870, 41.761459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154011, 35.360546, 41.475594>,  <42.348003, 35.355778, 41.412132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154011, 35.360546, 41.475594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.019157, 34.987438, 41.526642>,  <42.938244, 34.763573, 41.557270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.019157, 34.987438, 41.526642>,  <43.154011, 35.360546, 41.475594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019157, 34.987438, 41.526642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279565, -0.228627, -0.932509,
		0.898991, -0.278704, 0.337847,
		-0.337135, -0.932767, 0.127618,
		42.918018, 34.707607, 41.564926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631149, 34.896221, 41.185703>,  <43.154011, 35.360546, 41.475594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631149, 34.896221, 41.185703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.286190, 34.694248, 41.200218>,  <43.079216, 34.573067, 41.208927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.286190, 34.694248, 41.200218>,  <43.631149, 34.896221, 41.185703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286190, 34.694248, 41.200218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162157, -0.343433, -0.925072,
		0.479556, -0.791897, 0.378053,
		-0.862398, -0.504929, 0.036284,
		43.027470, 34.542770, 41.211102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847710, 34.312824, 40.888699>,  <43.631149, 34.896221, 41.185703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847710, 34.312824, 40.888699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451942, 34.332165, 40.833984>,  <43.214481, 34.343769, 40.801155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451942, 34.332165, 40.833984>,  <43.847710, 34.312824, 40.888699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451942, 34.332165, 40.833984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115782, -0.304976, -0.945296,
		-0.087423, -0.951132, 0.296151,
		-0.989420, 0.048352, -0.136786,
		43.155117, 34.346672, 40.792950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617020, 33.660999, 40.522831>,  <43.847710, 34.312824, 40.888699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617020, 33.660999, 40.522831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311783, 33.912910, 40.464764>,  <43.128639, 34.064056, 40.429924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311783, 33.912910, 40.464764>,  <43.617020, 33.660999, 40.522831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311783, 33.912910, 40.464764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036811, -0.181902, -0.982627,
		-0.645241, -0.755179, 0.115626,
		-0.763092, 0.629775, -0.145169,
		43.082855, 34.101845, 40.421211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.120880, 33.279209, 40.116432>,  <43.617020, 33.660999, 40.522831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.120880, 33.279209, 40.116432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.001877, 33.656334, 40.056301>,  <42.930473, 33.882607, 40.020222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.001877, 33.656334, 40.056301>,  <43.120880, 33.279209, 40.116432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001877, 33.656334, 40.056301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028841, -0.166261, -0.985660,
		-0.954283, -0.288908, 0.076655,
		-0.297510, 0.942809, -0.150328,
		42.912624, 33.939178, 40.011204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608383, 33.225594, 39.632347>,  <43.120880, 33.279209, 40.116432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608383, 33.225594, 39.632347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.697243, 33.615322, 39.617653>,  <42.750561, 33.849159, 39.608837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.697243, 33.615322, 39.617653>,  <42.608383, 33.225594, 39.632347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697243, 33.615322, 39.617653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126286, -0.008605, -0.991956,
		-0.966799, 0.225004, 0.121131,
		0.222152, 0.974320, -0.036734,
		42.763889, 33.907619, 39.606632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145382, 33.462429, 39.057690>,  <42.608383, 33.225594, 39.632347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145382, 33.462429, 39.057690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.428345, 33.738358, 39.119297>,  <42.598122, 33.903915, 39.156261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.428345, 33.738358, 39.119297>,  <42.145382, 33.462429, 39.057690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428345, 33.738358, 39.119297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007069, 0.224796, -0.974380,
		-0.706769, 0.688197, 0.163899,
		0.707409, 0.689820, 0.154014,
		42.640568, 33.945305, 39.165501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882866, 34.129723, 38.823463>,  <42.145382, 33.462429, 39.057690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882866, 34.129723, 38.823463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.281986, 34.155579, 38.817532>,  <42.521458, 34.171093, 38.813972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.281986, 34.155579, 38.817532>,  <41.882866, 34.129723, 38.823463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281986, 34.155579, 38.817532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025013, 0.159711, -0.986847,
		-0.061425, 0.985045, 0.160977,
		0.997798, 0.064643, -0.014828,
		42.581326, 34.174973, 38.813084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998745, 34.662525, 38.338562>,  <41.882866, 34.129723, 38.823463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998745, 34.662525, 38.338562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.341740, 34.463821, 38.392139>,  <42.547539, 34.344597, 38.424286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.341740, 34.463821, 38.392139>,  <41.998745, 34.662525, 38.338562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341740, 34.463821, 38.392139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179708, 0.045243, -0.982679,
		0.482098, 0.866707, 0.128067,
		0.857489, -0.496762, 0.133943,
		42.598988, 34.314793, 38.432323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679707, 35.105045, 38.242512>,  <41.998745, 34.662525, 38.338562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679707, 35.105045, 38.242512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.730583, 34.714607, 38.172024>,  <42.761108, 34.480343, 38.129730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.730583, 34.714607, 38.172024>,  <42.679707, 35.105045, 38.242512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.730583, 34.714607, 38.172024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187619, 0.198131, -0.962052,
		0.973972, 0.089304, 0.208335,
		0.127192, -0.976099, -0.176219,
		42.768742, 34.421776, 38.119160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199913, 35.117401, 37.791332>,  <42.679707, 35.105045, 38.242512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199913, 35.117401, 37.791332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056564, 34.748848, 37.731163>,  <42.970554, 34.527718, 37.695061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056564, 34.748848, 37.731163>,  <43.199913, 35.117401, 37.791332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056564, 34.748848, 37.731163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225403, 0.070966, -0.971678,
		0.905960, -0.382128, 0.182249,
		-0.358371, -0.921381, -0.150425,
		42.949055, 34.472435, 37.686035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644329, 34.842381, 37.384102>,  <43.199913, 35.117401, 37.791332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644329, 34.842381, 37.384102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.341038, 34.588814, 37.323128>,  <43.159061, 34.436676, 37.286545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.341038, 34.588814, 37.323128>,  <43.644329, 34.842381, 37.384102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341038, 34.588814, 37.323128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182694, 0.017860, -0.983008,
		0.625865, -0.773197, 0.102270,
		-0.758232, -0.633914, -0.152436,
		43.113567, 34.398640, 37.277397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934292, 34.267487, 37.062843>,  <43.644329, 34.842381, 37.384102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934292, 34.267487, 37.062843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.544418, 34.287876, 36.975769>,  <43.310493, 34.300110, 36.923523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.544418, 34.287876, 36.975769>,  <43.934292, 34.267487, 37.062843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544418, 34.287876, 36.975769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212320, -0.093980, -0.972670,
		-0.070036, -0.994268, 0.080779,
		-0.974687, 0.050971, -0.217685,
		43.252014, 34.303169, 36.910465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.810852, 33.667828, 36.579685>,  <43.934292, 34.267487, 37.062843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.810852, 33.667828, 36.579685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.542675, 33.962914, 36.547993>,  <43.381767, 34.139965, 36.528976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.542675, 33.962914, 36.547993>,  <43.810852, 33.667828, 36.579685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542675, 33.962914, 36.547993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171570, 0.050252, -0.983889,
		-0.721852, -0.673236, -0.160261,
		-0.670443, 0.737718, -0.079233,
		43.341541, 34.184231, 36.524223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.539169, 33.807732, 36.398243>,  <43.810852, 33.667828, 36.579685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.539169, 33.807732, 36.398243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.872272, 33.618511, 36.283184>,  <45.072136, 33.504978, 36.214149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.872272, 33.618511, 36.283184>,  <44.539169, 33.807732, 36.398243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872272, 33.618511, 36.283184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016192, -0.540142, 0.841418,
		-0.553409, -0.696035, -0.457464,
		0.832753, -0.473055, -0.287650,
		45.122101, 33.476597, 36.196892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368866, 33.103790, 36.372154>,  <44.539169, 33.807732, 36.398243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368866, 33.103790, 36.372154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.763561, 33.120396, 36.434914>,  <45.000378, 33.130360, 36.472569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.763561, 33.120396, 36.434914>,  <44.368866, 33.103790, 36.372154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763561, 33.120396, 36.434914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119135, -0.471250, 0.873917,
		0.110221, -0.881022, -0.460055,
		0.986741, 0.041515, 0.156903,
		45.059582, 33.132851, 36.481983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625725, 32.462692, 36.752316>,  <44.368866, 33.103790, 36.372154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625725, 32.462692, 36.752316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.897556, 32.743908, 36.836143>,  <45.060654, 32.912636, 36.886440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.897556, 32.743908, 36.836143>,  <44.625725, 32.462692, 36.752316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897556, 32.743908, 36.836143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065021, -0.342265, 0.937351,
		0.730718, -0.623375, -0.278307,
		0.679576, 0.703035, 0.209567,
		45.101429, 32.954819, 36.899014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.100323, 32.093216, 37.115589>,  <44.625725, 32.462692, 36.752316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.100323, 32.093216, 37.115589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.197983, 32.473339, 37.192848>,  <45.256580, 32.701412, 37.239204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.197983, 32.473339, 37.192848>,  <45.100323, 32.093216, 37.115589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.197983, 32.473339, 37.192848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178177, -0.239750, 0.954345,
		0.953227, -0.198591, -0.227858,
		0.244153, 0.950306, 0.193152,
		45.271229, 32.758430, 37.250793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.761799, 32.126625, 37.477337>,  <45.100323, 32.093216, 37.115589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.761799, 32.126625, 37.477337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.549900, 32.453003, 37.569942>,  <45.422760, 32.648830, 37.625507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.549900, 32.453003, 37.569942>,  <45.761799, 32.126625, 37.477337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.549900, 32.453003, 37.569942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139262, -0.185584, 0.972710,
		0.836643, 0.547534, -0.015317,
		-0.529749, 0.815944, 0.231518,
		45.390976, 32.697784, 37.639397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.116951, 32.242336, 38.037010>,  <45.761799, 32.126625, 37.477337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.116951, 32.242336, 38.037010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.779602, 32.453159, 38.078850>,  <45.577194, 32.579655, 38.103954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.779602, 32.453159, 38.078850>,  <46.116951, 32.242336, 38.037010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779602, 32.453159, 38.078850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009533, -0.179949, 0.983630,
		0.537250, 0.830560, 0.146739,
		-0.843369, 0.527057, 0.104596,
		45.526592, 32.611275, 38.110229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.305126, 32.634415, 38.674946>,  <46.116951, 32.242336, 38.037010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.305126, 32.634415, 38.674946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.906097, 32.633316, 38.647125>,  <45.666679, 32.632656, 38.630432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.906097, 32.633316, 38.647125>,  <46.305126, 32.634415, 38.674946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.906097, 32.633316, 38.647125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068184, -0.162100, 0.984416,
		-0.013976, 0.986771, 0.161520,
		-0.997575, -0.002745, -0.069547,
		45.606827, 32.632492, 38.626263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.025822, 33.047817, 39.250298>,  <46.305126, 32.634415, 38.674946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.025822, 33.047817, 39.250298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.706188, 32.830196, 39.147938>,  <45.514408, 32.699623, 39.086521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.706188, 32.830196, 39.147938>,  <46.025822, 33.047817, 39.250298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.706188, 32.830196, 39.147938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211437, -0.144149, 0.966703,
		-0.562820, 0.826579, 0.000154,
		-0.799079, -0.544047, -0.255900,
		45.466465, 32.666981, 39.071167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.542007, 33.256310, 39.652233>,  <46.025822, 33.047817, 39.250298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.542007, 33.256310, 39.652233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.408524, 32.904613, 39.516254>,  <45.328434, 32.693596, 39.434666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.408524, 32.904613, 39.516254>,  <45.542007, 33.256310, 39.652233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.408524, 32.904613, 39.516254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502571, -0.139159, 0.853263,
		-0.797534, 0.455592, -0.395444,
		-0.333710, -0.879244, -0.339951,
		45.308411, 32.640839, 39.414268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818993, 33.185913, 39.707607>,  <45.542007, 33.256310, 39.652233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818993, 33.185913, 39.707607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.919250, 32.798744, 39.700546>,  <44.979404, 32.566444, 39.696312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.919250, 32.798744, 39.700546>,  <44.818993, 33.185913, 39.707607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.919250, 32.798744, 39.700546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575001, -0.163514, 0.801646,
		-0.778815, -0.190777, -0.597538,
		0.250641, -0.967919, -0.017651,
		44.994442, 32.508369, 39.695251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207714, 32.917500, 39.835045>,  <44.818993, 33.185913, 39.707607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207714, 32.917500, 39.835045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.484173, 32.650761, 39.946499>,  <44.650047, 32.490719, 40.013371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.484173, 32.650761, 39.946499>,  <44.207714, 32.917500, 39.835045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.484173, 32.650761, 39.946499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533798, -0.211108, 0.818836,
		-0.487213, -0.714670, -0.501866,
		0.691146, -0.666844, 0.278635,
		44.691517, 32.450706, 40.030090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.876068, 32.335842, 39.786503>,  <44.207714, 32.917500, 39.835045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.876068, 32.335842, 39.786503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.180771, 32.305744, 40.043896>,  <44.363594, 32.287685, 40.198330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.180771, 32.305744, 40.043896>,  <43.876068, 32.335842, 39.786503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180771, 32.305744, 40.043896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635100, -0.282914, 0.718755,
		0.127969, -0.956190, -0.263297,
		0.761756, -0.075241, 0.643480,
		44.409298, 32.283173, 40.236938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687183, 31.743822, 40.159046>,  <43.876068, 32.335842, 39.786503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687183, 31.743822, 40.159046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.973316, 31.915821, 40.379372>,  <44.144997, 32.019020, 40.511566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.973316, 31.915821, 40.379372>,  <43.687183, 31.743822, 40.159046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973316, 31.915821, 40.379372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549088, -0.141654, 0.823672,
		0.432202, -0.891649, 0.134776,
		0.715335, 0.429996, 0.550817,
		44.187916, 32.044819, 40.544617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689766, 31.307413, 40.769741>,  <43.687183, 31.743822, 40.159046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689766, 31.307413, 40.769741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.862072, 31.651318, 40.879471>,  <43.965454, 31.857660, 40.945309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.862072, 31.651318, 40.879471>,  <43.689766, 31.307413, 40.769741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862072, 31.651318, 40.879471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387356, -0.098404, 0.916663,
		0.815106, -0.501127, 0.290644,
		0.430764, 0.859760, 0.274325,
		43.991302, 31.909246, 40.961769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834160, 31.153711, 41.413700>,  <43.689766, 31.307413, 40.769741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834160, 31.153711, 41.413700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.858002, 31.552835, 41.402218>,  <43.872307, 31.792309, 41.395329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.858002, 31.552835, 41.402218>,  <43.834160, 31.153711, 41.413700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858002, 31.552835, 41.402218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346380, 0.047645, 0.936884,
		0.936199, -0.045894, 0.348461,
		0.059600, 0.997810, -0.028708,
		43.875881, 31.852179, 41.393604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189472, 31.263464, 42.016182>,  <43.834160, 31.153711, 41.413700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189472, 31.263464, 42.016182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.986740, 31.592800, 41.914013>,  <43.865101, 31.790401, 41.852711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.986740, 31.592800, 41.914013>,  <44.189472, 31.263464, 42.016182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.986740, 31.592800, 41.914013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358346, 0.068257, 0.931090,
		0.784037, 0.563430, 0.260446,
		-0.506827, 0.823339, -0.255419,
		43.834690, 31.839802, 41.837387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.156948, 31.701702, 42.615841>,  <44.189472, 31.263464, 42.016182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.156948, 31.701702, 42.615841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.870403, 31.843204, 42.375278>,  <43.698475, 31.928106, 42.230942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.870403, 31.843204, 42.375278>,  <44.156948, 31.701702, 42.615841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.870403, 31.843204, 42.375278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570197, 0.199947, 0.796804,
		0.402121, 0.913717, 0.058475,
		-0.716361, 0.353754, -0.601402,
		43.655495, 31.949331, 42.194859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.119781, 32.278793, 42.874840>,  <44.156948, 31.701702, 42.615841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.119781, 32.278793, 42.874840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.791344, 32.272526, 42.646610>,  <43.594280, 32.268764, 42.509670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.791344, 32.272526, 42.646610>,  <44.119781, 32.278793, 42.874840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791344, 32.272526, 42.646610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560628, 0.209941, 0.801012,
		0.107237, 0.977588, -0.181166,
		-0.821094, -0.015669, -0.570577,
		43.545017, 32.267826, 42.475437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770462, 32.772594, 43.158875>,  <44.119781, 32.278793, 42.874840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770462, 32.772594, 43.158875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.486744, 32.555305, 42.979179>,  <43.316513, 32.424931, 42.871365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.486744, 32.555305, 42.979179>,  <43.770462, 32.772594, 43.158875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486744, 32.555305, 42.979179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594468, 0.118470, 0.795344,
		-0.378829, 0.831188, -0.406959,
		-0.709293, -0.543224, -0.449235,
		43.273956, 32.392338, 42.844410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262352, 33.231083, 43.066387>,  <43.770462, 32.772594, 43.158875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262352, 33.231083, 43.066387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.097183, 32.866776, 43.067047>,  <42.998081, 32.648193, 43.067444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.097183, 32.866776, 43.067047>,  <43.262352, 33.231083, 43.066387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097183, 32.866776, 43.067047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434339, 0.198509, 0.878603,
		-0.800528, 0.362078, -0.477550,
		-0.412921, -0.910765, 0.001648,
		42.973309, 32.593544, 43.067543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.224609, 40.034439, 40.437397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071232, 39.670578, 40.501282>,  <34.979206, 39.452263, 40.539612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071232, 39.670578, 40.501282>,  <35.224609, 40.034439, 40.437397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071232, 39.670578, 40.501282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097881, -0.211987, -0.972358,
		0.918362, -0.357214, 0.170323,
		-0.383446, -0.909648, 0.159717,
		34.956200, 39.397682, 40.549198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694366, 39.592636, 40.132542>,  <35.224609, 40.034439, 40.437397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694366, 39.592636, 40.132542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347076, 39.394321, 40.140331>,  <35.138702, 39.275333, 40.145004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347076, 39.394321, 40.140331>,  <35.694366, 39.592636, 40.132542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347076, 39.394321, 40.140331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131871, -0.268406, -0.954237,
		0.478326, -0.825924, 0.298417,
		-0.868225, -0.495789, 0.019470,
		35.086609, 39.245586, 40.146172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775131, 39.149738, 39.594070>,  <35.694366, 39.592636, 40.132542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775131, 39.149738, 39.594070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397774, 39.051556, 39.683296>,  <35.171360, 38.992645, 39.736832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397774, 39.051556, 39.683296>,  <35.775131, 39.149738, 39.594070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397774, 39.051556, 39.683296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050136, -0.559288, -0.827456,
		0.327861, -0.791801, 0.515323,
		-0.943395, -0.245454, 0.223066,
		35.114754, 38.977921, 39.750217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723236, 38.399239, 39.438927>,  <35.775131, 39.149738, 39.594070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723236, 38.399239, 39.438927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363831, 38.567989, 39.390446>,  <35.148186, 38.669239, 39.361359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363831, 38.567989, 39.390446>,  <35.723236, 38.399239, 39.438927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363831, 38.567989, 39.390446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100543, -0.466590, -0.878741,
		-0.427263, -0.777380, 0.461656,
		-0.898520, 0.421869, -0.121196,
		35.094276, 38.694550, 39.354088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239201, 37.870895, 39.251610>,  <35.723236, 38.399239, 39.438927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239201, 37.870895, 39.251610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066586, 38.205936, 39.117626>,  <34.963017, 38.406960, 39.037235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066586, 38.205936, 39.117626>,  <35.239201, 37.870895, 39.251610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066586, 38.205936, 39.117626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247161, -0.466889, -0.849073,
		-0.867575, -0.283617, 0.408503,
		-0.431537, 0.837601, -0.334962,
		34.937122, 38.457218, 39.017136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744808, 37.584187, 38.921577>,  <35.239201, 37.870895, 39.251610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744808, 37.584187, 38.921577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754456, 37.948608, 38.756947>,  <34.760242, 38.167263, 38.658169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754456, 37.948608, 38.756947>,  <34.744808, 37.584187, 38.921577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754456, 37.948608, 38.756947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249998, -0.393116, -0.884851,
		-0.967946, 0.124230, 0.218282,
		0.024115, 0.911058, -0.411573,
		34.761688, 38.221928, 38.633476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100685, 37.695045, 38.589561>,  <34.744808, 37.584187, 38.921577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100685, 37.695045, 38.589561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370117, 37.938389, 38.421658>,  <34.531776, 38.084393, 38.320915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370117, 37.938389, 38.421658>,  <34.100685, 37.695045, 38.589561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370117, 37.938389, 38.421658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303207, -0.290504, -0.907564,
		-0.674063, 0.738589, -0.011219,
		0.673576, 0.608354, -0.419763,
		34.572189, 38.120895, 38.295727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754337, 38.186573, 38.013149>,  <34.100685, 37.695045, 38.589561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754337, 38.186573, 38.013149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146267, 38.147297, 37.943520>,  <34.381424, 38.123734, 37.901741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146267, 38.147297, 37.943520>,  <33.754337, 38.186573, 38.013149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146267, 38.147297, 37.943520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195241, -0.284055, -0.938719,
		0.042723, 0.953767, -0.297494,
		0.979824, -0.098188, -0.174079,
		34.440216, 38.117840, 37.891296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899841, 38.490562, 37.307987>,  <33.754337, 38.186573, 38.013149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899841, 38.490562, 37.307987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228657, 38.265827, 37.345043>,  <34.425945, 38.130985, 37.367275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228657, 38.265827, 37.345043>,  <33.899841, 38.490562, 37.307987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228657, 38.265827, 37.345043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078924, -0.273533, -0.958619,
		0.563931, 0.780714, -0.269198,
		0.822042, -0.561841, 0.092637,
		34.475269, 38.097275, 37.372833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253273, 38.449223, 36.658527>,  <33.899841, 38.490562, 37.307987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253273, 38.449223, 36.658527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453403, 38.161919, 36.851929>,  <34.573483, 37.989536, 36.967972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453403, 38.161919, 36.851929>,  <34.253273, 38.449223, 36.658527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453403, 38.161919, 36.851929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208312, -0.442168, -0.872407,
		0.840404, 0.537208, -0.071607,
		0.500327, -0.718258, 0.483507,
		34.603500, 37.946442, 36.996983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723759, 38.285633, 36.151142>,  <34.253273, 38.449223, 36.658527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723759, 38.285633, 36.151142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741909, 37.985580, 36.415035>,  <34.752800, 37.805550, 36.573372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741909, 37.985580, 36.415035>,  <34.723759, 38.285633, 36.151142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741909, 37.985580, 36.415035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319432, -0.614841, -0.721064,
		0.946522, 0.243461, 0.211715,
		0.045380, -0.750131, 0.659730,
		34.755524, 37.760540, 36.612953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376511, 37.916004, 36.085262>,  <34.723759, 38.285633, 36.151142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376511, 37.916004, 36.085262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125412, 37.666603, 36.271671>,  <34.974754, 37.516964, 36.383518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125412, 37.666603, 36.271671>,  <35.376511, 37.916004, 36.085262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125412, 37.666603, 36.271671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230790, -0.720843, -0.653545,
		0.743418, -0.302706, 0.596404,
		-0.627746, -0.623501, 0.466027,
		34.937088, 37.479553, 36.411480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824799, 37.446781, 35.770866>,  <35.376511, 37.916004, 36.085262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824799, 37.446781, 35.770866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878719, 37.835781, 35.694893>,  <35.911072, 38.069180, 35.649307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878719, 37.835781, 35.694893>,  <35.824799, 37.446781, 35.770866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878719, 37.835781, 35.694893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754251, -0.023604, -0.656162,
		-0.642600, 0.231706, 0.730327,
		0.134798, 0.972500, -0.189933,
		35.919159, 38.127529, 35.637913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264240, 37.104446, 36.342403>,  <35.824799, 37.446781, 35.770866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264240, 37.104446, 36.342403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415611, 36.754177, 36.222408>,  <36.506435, 36.544018, 36.150410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415611, 36.754177, 36.222408>,  <36.264240, 37.104446, 36.342403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415611, 36.754177, 36.222408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029384, -0.312566, 0.949442,
		-0.925165, -0.368109, -0.092553,
		0.378427, -0.875670, -0.299991,
		36.529140, 36.491474, 36.132412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133324, 36.575462, 36.915184>,  <36.264240, 37.104446, 36.342403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133324, 36.575462, 36.915184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346485, 36.344189, 36.668053>,  <36.474384, 36.205425, 36.519772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346485, 36.344189, 36.668053>,  <36.133324, 36.575462, 36.915184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346485, 36.344189, 36.668053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273588, -0.573198, 0.772395,
		-0.800725, -0.580645, -0.147277,
		0.532906, -0.578183, -0.617831,
		36.506355, 36.170734, 36.482704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993004, 35.940174, 37.176086>,  <36.133324, 36.575462, 36.915184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993004, 35.940174, 37.176086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336185, 35.911129, 36.972656>,  <36.542095, 35.893700, 36.850597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336185, 35.911129, 36.972656>,  <35.993004, 35.940174, 37.176086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336185, 35.911129, 36.972656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366563, -0.607067, 0.705054,
		-0.359936, -0.791326, -0.494215,
		0.857950, -0.072614, -0.508577,
		36.593571, 35.889343, 36.820084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148170, 35.209877, 37.193275>,  <35.993004, 35.940174, 37.176086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148170, 35.209877, 37.193275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486935, 35.412369, 37.128189>,  <36.690193, 35.533863, 37.089138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486935, 35.412369, 37.128189>,  <36.148170, 35.209877, 37.193275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486935, 35.412369, 37.128189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471996, -0.574788, 0.668460,
		0.244867, -0.642926, -0.725731,
		0.846912, 0.506226, -0.162712,
		36.741009, 35.564236, 37.079376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620865, 34.672222, 37.114437>,  <36.148170, 35.209877, 37.193275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620865, 34.672222, 37.114437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868736, 34.982475, 37.162418>,  <37.017460, 35.168629, 37.191208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868736, 34.982475, 37.162418>,  <36.620865, 34.672222, 37.114437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868736, 34.982475, 37.162418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391176, -0.437726, 0.809554,
		0.680422, -0.454743, -0.574660,
		0.619683, 0.775632, 0.119954,
		37.054642, 35.215164, 37.198406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327030, 34.383869, 37.089645>,  <36.620865, 34.672222, 37.114437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327030, 34.383869, 37.089645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308956, 34.728867, 37.291267>,  <37.298111, 34.935863, 37.412239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308956, 34.728867, 37.291267>,  <37.327030, 34.383869, 37.089645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308956, 34.728867, 37.291267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382514, -0.451178, 0.806301,
		0.922844, 0.229238, -0.309529,
		-0.045182, 0.862490, 0.504053,
		37.295403, 34.987614, 37.442482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954288, 34.370495, 37.473602>,  <37.327030, 34.383869, 37.089645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954288, 34.370495, 37.473602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718838, 34.649792, 37.636559>,  <37.577568, 34.817371, 37.734333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718838, 34.649792, 37.636559>,  <37.954288, 34.370495, 37.473602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718838, 34.649792, 37.636559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384681, -0.201303, 0.900832,
		0.711010, 0.686973, -0.150108,
		-0.588630, 0.698244, 0.407394,
		37.542248, 34.859264, 37.758778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388412, 34.715977, 37.892326>,  <37.954288, 34.370495, 37.473602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388412, 34.715977, 37.892326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032627, 34.809219, 38.049564>,  <37.819157, 34.865166, 38.143906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032627, 34.809219, 38.049564>,  <38.388412, 34.715977, 37.892326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032627, 34.809219, 38.049564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370342, -0.136344, 0.918835,
		0.267786, 0.962845, 0.034942,
		-0.889459, 0.233111, 0.393093,
		37.765789, 34.879154, 38.167492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460827, 35.258957, 38.426674>,  <38.388412, 34.715977, 37.892326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460827, 35.258957, 38.426674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117287, 35.074440, 38.515747>,  <37.911163, 34.963730, 38.569191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117287, 35.074440, 38.515747>,  <38.460827, 35.258957, 38.426674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117287, 35.074440, 38.515747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343723, -0.196689, 0.918242,
		-0.379783, 0.865170, 0.327484,
		-0.858848, -0.461296, 0.222680,
		37.859631, 34.936050, 38.582550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294540, 35.543068, 39.069866>,  <38.460827, 35.258957, 38.426674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294540, 35.543068, 39.069866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083088, 35.205578, 39.032597>,  <37.956215, 35.003086, 39.010235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083088, 35.205578, 39.032597>,  <38.294540, 35.543068, 39.069866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083088, 35.205578, 39.032597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312371, -0.295420, 0.902857,
		-0.789284, 0.448177, 0.419723,
		-0.528635, -0.843721, -0.093172,
		37.924496, 34.952461, 39.004646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976646, 35.460468, 39.734013>,  <38.294540, 35.543068, 39.069866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976646, 35.460468, 39.734013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916035, 35.091900, 39.590897>,  <37.879665, 34.870758, 39.505028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916035, 35.091900, 39.590897>,  <37.976646, 35.460468, 39.734013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916035, 35.091900, 39.590897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177954, -0.381491, 0.907082,
		-0.972302, 0.073782, 0.221779,
		-0.151533, -0.921423, -0.357794,
		37.870575, 34.815472, 39.483559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494911, 35.116413, 40.132717>,  <37.976646, 35.460468, 39.734013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494911, 35.116413, 40.132717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694611, 34.809269, 39.972153>,  <37.814430, 34.624981, 39.875813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694611, 34.809269, 39.972153>,  <37.494911, 35.116413, 40.132717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694611, 34.809269, 39.972153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180423, -0.360996, 0.914948,
		-0.847464, -0.529214, -0.041688,
		0.499252, -0.767863, -0.401413,
		37.844387, 34.578911, 39.851730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299061, 34.566948, 40.416061>,  <37.494911, 35.116413, 40.132717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299061, 34.566948, 40.416061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660236, 34.467094, 40.276131>,  <37.876942, 34.407185, 40.192173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660236, 34.467094, 40.276131>,  <37.299061, 34.566948, 40.416061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660236, 34.467094, 40.276131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311804, -0.179661, 0.933006,
		-0.295756, -0.951529, -0.084388,
		0.902943, -0.249630, -0.349826,
		37.931118, 34.392204, 40.171185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509811, 33.921284, 40.640190>,  <37.299061, 34.566948, 40.416061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509811, 33.921284, 40.640190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873463, 34.061859, 40.550766>,  <38.091652, 34.146206, 40.497112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873463, 34.061859, 40.550766>,  <37.509811, 33.921284, 40.640190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873463, 34.061859, 40.550766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322957, -0.255821, 0.911183,
		0.263036, -0.900580, -0.346074,
		0.909126, 0.351441, -0.223558,
		38.146202, 34.167290, 40.483700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934639, 33.531933, 41.031872>,  <37.509811, 33.921284, 40.640190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934639, 33.531933, 41.031872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153191, 33.860023, 40.964115>,  <38.284321, 34.056877, 40.923462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153191, 33.860023, 40.964115>,  <37.934639, 33.531933, 41.031872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153191, 33.860023, 40.964115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390095, -0.070254, 0.918091,
		0.741142, -0.567709, -0.358352,
		0.546383, 0.820226, -0.169392,
		38.317104, 34.106091, 40.913296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972946, 32.869541, 41.311203>,  <37.934639, 33.531933, 41.031872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972946, 32.869541, 41.311203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626148, 32.764565, 41.480652>,  <37.418072, 32.701580, 41.582321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626148, 32.764565, 41.480652>,  <37.972946, 32.869541, 41.311203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626148, 32.764565, 41.480652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391858, -0.166126, -0.904903,
		0.307856, -0.950541, 0.041191,
		-0.866990, -0.262439, 0.423619,
		37.366051, 32.685833, 41.607738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703693, 32.286308, 40.923931>,  <37.972946, 32.869541, 41.311203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703693, 32.286308, 40.923931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363972, 32.402958, 41.099953>,  <37.160141, 32.472946, 41.205566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363972, 32.402958, 41.099953>,  <37.703693, 32.286308, 40.923931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363972, 32.402958, 41.099953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493125, -0.140668, -0.858510,
		-0.188464, -0.946132, 0.263278,
		-0.849299, 0.291627, 0.440050,
		37.109180, 32.490444, 41.231968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080952, 31.706060, 40.887131>,  <37.703693, 32.286308, 40.923931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080952, 31.706060, 40.887131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942307, 32.081165, 40.895737>,  <36.859119, 32.306229, 40.900898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942307, 32.081165, 40.895737>,  <37.080952, 31.706060, 40.887131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942307, 32.081165, 40.895737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380670, -0.119668, -0.916935,
		-0.857291, -0.326013, 0.398456,
		-0.346615, 0.937761, 0.021513,
		36.838322, 32.362495, 40.902191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534599, 31.743643, 40.435970>,  <37.080952, 31.706060, 40.887131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534599, 31.743643, 40.435970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558056, 32.135986, 40.510239>,  <36.572128, 32.371391, 40.554802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558056, 32.135986, 40.510239>,  <36.534599, 31.743643, 40.435970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558056, 32.135986, 40.510239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412261, 0.193188, -0.890347,
		-0.909176, -0.024337, 0.415699,
		0.058640, 0.980860, 0.185675,
		36.575649, 32.430244, 40.565941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871262, 31.986515, 40.308289>,  <36.534599, 31.743643, 40.435970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871262, 31.986515, 40.308289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123859, 32.293484, 40.263977>,  <36.275417, 32.477665, 40.237389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123859, 32.293484, 40.263977>,  <35.871262, 31.986515, 40.308289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123859, 32.293484, 40.263977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344025, 0.149272, -0.927020,
		-0.694881, 0.623521, 0.358277,
		0.631497, 0.767424, -0.110781,
		36.313309, 32.523712, 40.230743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430901, 32.548798, 40.006561>,  <35.871262, 31.986515, 40.308289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430901, 32.548798, 40.006561> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810272, 32.644138, 39.922977>,  <36.037895, 32.701344, 39.872829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810272, 32.644138, 39.922977>,  <35.430901, 32.548798, 40.006561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810272, 32.644138, 39.922977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260248, 0.209198, -0.942607,
		-0.180958, 0.948380, 0.260441,
		0.948433, 0.238352, -0.208958,
		36.094803, 32.715645, 39.860291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354504, 33.214539, 39.606659>,  <35.430901, 32.548798, 40.006561>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354504, 33.214539, 39.606659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716133, 33.054398, 39.546818>,  <35.933109, 32.958313, 39.510914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716133, 33.054398, 39.546818>,  <35.354504, 33.214539, 39.606659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716133, 33.054398, 39.546818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022181, 0.305615, -0.951897,
		0.426810, 0.863899, 0.267417,
		0.904069, -0.400348, -0.149602,
		35.987354, 32.934292, 39.501938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780170, 33.684364, 39.222473>,  <35.354504, 33.214539, 39.606659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780170, 33.684364, 39.222473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949970, 33.329002, 39.152565>,  <36.051849, 33.115788, 39.110619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949970, 33.329002, 39.152565>,  <35.780170, 33.684364, 39.222473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949970, 33.329002, 39.152565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012233, 0.187384, -0.982211,
		0.905346, 0.419085, 0.068677,
		0.424499, -0.888400, -0.174774,
		36.077320, 33.062481, 39.100132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265469, 33.784725, 38.710594>,  <35.780170, 33.684364, 39.222473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265469, 33.784725, 38.710594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227722, 33.386868, 38.693707>,  <36.205074, 33.148155, 38.683575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227722, 33.386868, 38.693707>,  <36.265469, 33.784725, 38.710594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227722, 33.386868, 38.693707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094459, 0.051165, -0.994213,
		0.991046, -0.089834, -0.098781,
		-0.094369, -0.994641, -0.042222,
		36.199413, 33.088474, 38.681042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655151, 33.621761, 38.161591>,  <36.265469, 33.784725, 38.710594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655151, 33.621761, 38.161591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426456, 33.296612, 38.206051>,  <36.289238, 33.101524, 38.232727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426456, 33.296612, 38.206051>,  <36.655151, 33.621761, 38.161591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426456, 33.296612, 38.206051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041481, -0.106664, -0.993429,
		0.819387, -0.572593, 0.027265,
		-0.571738, -0.812872, 0.111151,
		36.254936, 33.052750, 38.239395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032883, 33.166798, 37.714489>,  <36.655151, 33.621761, 38.161591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032883, 33.166798, 37.714489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656513, 33.049721, 37.782600>,  <36.430691, 32.979477, 37.823467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656513, 33.049721, 37.782600>,  <37.032883, 33.166798, 37.714489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656513, 33.049721, 37.782600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141946, -0.115608, -0.983100,
		0.307427, -0.949193, 0.067232,
		-0.940925, -0.292688, 0.170275,
		36.374237, 32.961914, 37.833683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864605, 32.638779, 37.279293>,  <37.032883, 33.166798, 37.714489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864605, 32.638779, 37.279293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487469, 32.728840, 37.377567>,  <36.261189, 32.782879, 37.436531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487469, 32.728840, 37.377567>,  <36.864605, 32.638779, 37.279293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487469, 32.728840, 37.377567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274183, -0.105073, -0.955920,
		-0.189415, -0.968641, 0.160801,
		-0.942839, 0.225155, 0.245683,
		36.204617, 32.796387, 37.451271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.081699, 32.272018, 45.505795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738255, 32.450615, 45.405056>,  <37.532188, 32.557774, 45.344612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738255, 32.450615, 45.405056>,  <38.081699, 32.272018, 45.505795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738255, 32.450615, 45.405056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027731, -0.450122, -0.892537,
		-0.511875, -0.773327, 0.374099,
		-0.858613, 0.446493, -0.251851,
		37.480671, 32.584560, 45.329502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697723, 31.815416, 45.056442>,  <38.081699, 32.272018, 45.505795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697723, 31.815416, 45.056442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545361, 32.172031, 44.958408>,  <37.453941, 32.386002, 44.899586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545361, 32.172031, 44.958408>,  <37.697723, 31.815416, 45.056442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545361, 32.172031, 44.958408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042739, -0.247809, -0.967866,
		-0.923624, -0.379144, 0.056290,
		-0.380909, 0.891538, -0.245087,
		37.431087, 32.439491, 44.884884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106136, 31.680878, 44.505867>,  <37.697723, 31.815416, 45.056442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106136, 31.680878, 44.505867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.224640, 32.061325, 44.470985>,  <37.295742, 32.289593, 44.450058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.224640, 32.061325, 44.470985>,  <37.106136, 31.680878, 44.505867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224640, 32.061325, 44.470985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120973, -0.053200, -0.991229,
		-0.947417, 0.304206, 0.099299,
		0.296255, 0.951119, -0.087204,
		37.313515, 32.346661, 44.444824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666584, 31.966778, 44.132755>,  <37.106136, 31.680878, 44.505867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666584, 31.966778, 44.132755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.985596, 32.205025, 44.094406>,  <37.177002, 32.347973, 44.071396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.985596, 32.205025, 44.094406>,  <36.666584, 31.966778, 44.132755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985596, 32.205025, 44.094406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041690, -0.104132, -0.993689,
		-0.601840, 0.796492, -0.058217,
		0.797528, 0.595615, -0.095876,
		37.224854, 32.383709, 44.065643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466064, 32.311863, 43.573536>,  <36.666584, 31.966778, 44.132755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466064, 32.311863, 43.573536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.861202, 32.358879, 43.614239>,  <37.098286, 32.387089, 43.638660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.861202, 32.358879, 43.614239>,  <36.466064, 32.311863, 43.573536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861202, 32.358879, 43.614239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086450, 0.128672, -0.987912,
		-0.129210, 0.984697, 0.116947,
		0.987842, 0.117538, 0.101753,
		37.157555, 32.394142, 43.644764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705925, 33.053173, 43.392704>,  <36.466064, 32.311863, 43.573536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705925, 33.053173, 43.392704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.023392, 32.815273, 43.341537>,  <37.213871, 32.672535, 43.310837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.023392, 32.815273, 43.341537>,  <36.705925, 33.053173, 43.392704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023392, 32.815273, 43.341537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202987, 0.457124, -0.865930,
		0.573484, 0.661297, 0.483532,
		0.793670, -0.594748, -0.127918,
		37.261494, 32.636848, 43.303162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208649, 33.498703, 42.999104>,  <36.705925, 33.053173, 43.392704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208649, 33.498703, 42.999104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.328564, 33.119175, 42.959389>,  <37.400513, 32.891457, 42.935558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.328564, 33.119175, 42.959389>,  <37.208649, 33.498703, 42.999104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328564, 33.119175, 42.959389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167261, 0.154737, -0.973694,
		0.939228, 0.275297, 0.205090,
		0.299790, -0.948825, -0.099287,
		37.418499, 32.834526, 42.929604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792747, 33.516777, 42.548901>,  <37.208649, 33.498703, 42.999104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792747, 33.516777, 42.548901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.619911, 33.156284, 42.535728>,  <37.516209, 32.939991, 42.527824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.619911, 33.156284, 42.535728>,  <37.792747, 33.516777, 42.548901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619911, 33.156284, 42.535728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061367, 0.007050, -0.998090,
		0.899741, -0.433284, 0.052260,
		-0.432088, -0.901230, -0.032933,
		37.490284, 32.885914, 42.525848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011677, 33.315052, 41.950356>,  <37.792747, 33.516777, 42.548901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011677, 33.315052, 41.950356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.720303, 33.050262, 42.020966>,  <37.545479, 32.891388, 42.063332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.720303, 33.050262, 42.020966>,  <38.011677, 33.315052, 41.950356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720303, 33.050262, 42.020966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210565, -0.028870, -0.977153,
		0.651951, -0.748966, -0.118360,
		-0.728438, -0.661979, 0.176528,
		37.501770, 32.851669, 42.073925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561207, 33.462135, 41.372494>,  <38.011677, 33.315052, 41.950356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561207, 33.462135, 41.372494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.572411, 33.856239, 41.305000>,  <38.579132, 34.092701, 41.264503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.572411, 33.856239, 41.305000>,  <38.561207, 33.462135, 41.372494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572411, 33.856239, 41.305000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442814, 0.139104, 0.885757,
		0.896176, -0.099529, -0.432392,
		0.028011, 0.985263, -0.168734,
		38.580814, 34.151817, 41.254379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189430, 33.578876, 41.782734>,  <38.561207, 33.462135, 41.372494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189430, 33.578876, 41.782734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970837, 33.908092, 41.720818>,  <38.839680, 34.105621, 41.683666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970837, 33.908092, 41.720818>,  <39.189430, 33.578876, 41.782734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970837, 33.908092, 41.720818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180594, 0.296297, 0.937867,
		0.817764, 0.484577, -0.310558,
		-0.546486, 0.823039, -0.154789,
		38.806892, 34.155003, 41.674381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630188, 34.130688, 41.990582>,  <39.189430, 33.578876, 41.782734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630188, 34.130688, 41.990582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.268040, 34.300533, 41.989632>,  <39.050751, 34.402439, 41.989063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.268040, 34.300533, 41.989632>,  <39.630188, 34.130688, 41.990582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268040, 34.300533, 41.989632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222790, 0.479791, 0.848626,
		0.361475, 0.767794, -0.528988,
		-0.905373, 0.424610, -0.002376,
		38.996429, 34.427917, 41.988918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739239, 34.818947, 42.071526>,  <39.630188, 34.130688, 41.990582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739239, 34.818947, 42.071526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.375587, 34.721397, 42.206585>,  <39.157394, 34.662868, 42.287621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.375587, 34.721397, 42.206585>,  <39.739239, 34.818947, 42.071526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375587, 34.721397, 42.206585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236048, 0.366246, 0.900081,
		-0.343166, 0.897993, -0.275401,
		-0.909131, -0.243869, 0.337653,
		39.102848, 34.648235, 42.307880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443974, 35.367046, 42.425327>,  <39.739239, 34.818947, 42.071526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443974, 35.367046, 42.425327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.243252, 35.052044, 42.568455>,  <39.122818, 34.863045, 42.654331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.243252, 35.052044, 42.568455>,  <39.443974, 35.367046, 42.425327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243252, 35.052044, 42.568455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074501, 0.372784, 0.924922,
		-0.861769, 0.490784, -0.128394,
		-0.501800, -0.787504, 0.357818,
		39.092712, 34.815792, 42.675800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973328, 35.624958, 42.822544>,  <39.443974, 35.367046, 42.425327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973328, 35.624958, 42.822544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.990395, 35.249718, 42.960030>,  <39.000633, 35.024574, 43.042522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.990395, 35.249718, 42.960030>,  <38.973328, 35.624958, 42.822544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990395, 35.249718, 42.960030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000175, 0.344038, 0.938956,
		-0.999089, -0.040003, 0.014843,
		0.042667, -0.938103, 0.343718,
		39.003197, 34.968288, 43.063145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441124, 35.631561, 43.267891>,  <38.973328, 35.624958, 42.822544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441124, 35.631561, 43.267891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.653339, 35.308208, 43.369907>,  <38.780666, 35.114197, 43.431118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.653339, 35.308208, 43.369907>,  <38.441124, 35.631561, 43.267891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653339, 35.308208, 43.369907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063690, 0.262006, 0.962962,
		-0.845268, -0.527128, 0.087517,
		0.530534, -0.808387, 0.255038,
		38.812500, 35.065693, 43.446419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197540, 35.449909, 43.865475>,  <38.441124, 35.631561, 43.267891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197540, 35.449909, 43.865475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.544296, 35.250725, 43.874760>,  <38.752350, 35.131214, 43.880329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.544296, 35.250725, 43.874760>,  <38.197540, 35.449909, 43.865475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544296, 35.250725, 43.874760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069231, 0.166375, 0.983629,
		-0.493668, -0.851092, 0.178702,
		0.866890, -0.497958, 0.023212,
		38.804363, 35.101337, 43.881721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157070, 34.912579, 44.391209>,  <38.197540, 35.449909, 43.865475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157070, 34.912579, 44.391209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.548615, 34.988892, 44.361736>,  <38.783543, 35.034679, 44.344055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.548615, 34.988892, 44.361736>,  <38.157070, 34.912579, 44.391209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548615, 34.988892, 44.361736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059278, 0.080126, 0.995021,
		0.195742, -0.978356, 0.067123,
		0.978862, 0.190788, -0.073679,
		38.842274, 35.046127, 44.339634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507843, 34.417347, 44.876923>,  <38.157070, 34.912579, 44.391209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507843, 34.417347, 44.876923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.748730, 34.730476, 44.814270>,  <38.893261, 34.918354, 44.776680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.748730, 34.730476, 44.814270>,  <38.507843, 34.417347, 44.876923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748730, 34.730476, 44.814270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138375, 0.090876, 0.986202,
		0.786252, -0.615577, -0.053596,
		0.602213, 0.782819, -0.156632,
		38.929394, 34.965321, 44.767281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002937, 34.506351, 45.560028>,  <38.507843, 34.417347, 44.876923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002937, 34.506351, 45.560028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.066967, 34.838539, 45.346600>,  <39.105385, 35.037849, 45.218540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.066967, 34.838539, 45.346600>,  <39.002937, 34.506351, 45.560028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066967, 34.838539, 45.346600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345507, 0.459212, 0.818382,
		0.924662, -0.315358, -0.213422,
		0.160077, 0.830466, -0.533574,
		39.114990, 35.087681, 45.186527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734825, 34.868919, 45.778030>,  <39.002937, 34.506351, 45.560028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734825, 34.868919, 45.778030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.482742, 35.131020, 45.611427>,  <39.331493, 35.288280, 45.511463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.482742, 35.131020, 45.611427>,  <39.734825, 34.868919, 45.778030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482742, 35.131020, 45.611427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240758, 0.674923, 0.697506,
		0.738158, 0.339293, -0.583098,
		-0.630205, 0.655255, -0.416512,
		39.293682, 35.327595, 45.486473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098728, 35.516235, 45.717091>,  <39.734825, 34.868919, 45.778030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098728, 35.516235, 45.717091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.734367, 35.674885, 45.671577>,  <39.515751, 35.770073, 45.644268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.734367, 35.674885, 45.671577>,  <40.098728, 35.516235, 45.717091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734367, 35.674885, 45.671577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150606, 0.576319, 0.803228,
		0.384151, 0.714527, -0.584705,
		-0.910904, 0.396620, -0.113782,
		39.461098, 35.793869, 45.637444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220562, 36.305698, 45.828342>,  <40.098728, 35.516235, 45.717091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220562, 36.305698, 45.828342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.849739, 36.174423, 45.900845>,  <39.627247, 36.095657, 45.944347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.849739, 36.174423, 45.900845>,  <40.220562, 36.305698, 45.828342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849739, 36.174423, 45.900845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028935, 0.544654, 0.838161,
		-0.373799, 0.771780, -0.514422,
		-0.927058, -0.328189, 0.181260,
		39.571621, 36.075966, 45.955223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.484289, 35.313690, 47.488590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.811365, 35.516640, 47.379810>,  <32.007610, 35.638409, 47.314541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.811365, 35.516640, 47.379810>,  <31.484289, 35.313690, 47.488590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811365, 35.516640, 47.379810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322909, 0.013163, -0.946338,
		-0.476568, 0.861625, 0.174599,
		0.817688, 0.507374, -0.271953,
		32.056671, 35.668854, 47.298225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188259, 35.866993, 47.115074>,  <31.484289, 35.313690, 47.488590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188259, 35.866993, 47.115074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.576187, 35.836487, 47.022438>,  <31.808945, 35.818184, 46.966858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.576187, 35.836487, 47.022438>,  <31.188259, 35.866993, 47.115074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576187, 35.836487, 47.022438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226175, 0.073417, -0.971316,
		0.091079, 0.994381, 0.053953,
		0.969819, -0.076263, -0.231591,
		31.867132, 35.813606, 46.952961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326250, 36.428780, 46.751877>,  <31.188259, 35.866993, 47.115074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326250, 36.428780, 46.751877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.581800, 36.139889, 46.645878>,  <31.735130, 35.966553, 46.582279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.581800, 36.139889, 46.645878>,  <31.326250, 36.428780, 46.751877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581800, 36.139889, 46.645878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227424, 0.151759, -0.961898,
		0.734925, 0.674801, -0.067297,
		0.638877, -0.722228, -0.264997,
		31.773464, 35.923222, 46.566380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502821, 36.724613, 46.156464>,  <31.326250, 36.428780, 46.751877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502821, 36.724613, 46.156464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.650505, 36.354328, 46.189316>,  <31.739115, 36.132156, 46.209026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.650505, 36.354328, 46.189316>,  <31.502821, 36.724613, 46.156464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650505, 36.354328, 46.189316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063862, -0.113436, -0.991491,
		0.927149, 0.360823, -0.101000,
		0.369209, -0.925710, 0.082129,
		31.761269, 36.076614, 46.213955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940178, 36.708939, 45.611691>,  <31.502821, 36.724613, 46.156464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940178, 36.708939, 45.611691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.878504, 36.321861, 45.691486>,  <31.841499, 36.089615, 45.739365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.878504, 36.321861, 45.691486>,  <31.940178, 36.708939, 45.611691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878504, 36.321861, 45.691486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100439, -0.216212, -0.971166,
		0.982924, -0.129703, 0.130531,
		-0.154186, -0.967693, 0.199493,
		31.832249, 36.031555, 45.751335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465691, 36.408131, 45.372528>,  <31.940178, 36.708939, 45.611691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465691, 36.408131, 45.372528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.140007, 36.176010, 45.379585>,  <31.944597, 36.036736, 45.383820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.140007, 36.176010, 45.379585>,  <32.465691, 36.408131, 45.372528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140007, 36.176010, 45.379585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066350, -0.123206, -0.990161,
		0.576768, -0.805027, 0.138818,
		-0.814209, -0.580304, 0.017648,
		31.895744, 36.001919, 45.384880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718639, 35.903412, 44.915737>,  <32.465691, 36.408131, 45.372528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718639, 35.903412, 44.915737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.320671, 35.882988, 44.950455>,  <32.081890, 35.870731, 44.971287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.320671, 35.882988, 44.950455>,  <32.718639, 35.903412, 44.915737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320671, 35.882988, 44.950455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083630, -0.061160, -0.994618,
		0.056100, -0.996821, 0.056579,
		-0.994917, -0.051066, 0.086796,
		32.022198, 35.867668, 44.976494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515362, 35.285168, 44.528137>,  <32.718639, 35.903412, 44.915737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515362, 35.285168, 44.528137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.173973, 35.489548, 44.569138>,  <31.969139, 35.612175, 44.593739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.173973, 35.489548, 44.569138>,  <32.515362, 35.285168, 44.528137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173973, 35.489548, 44.569138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138055, -0.032029, -0.989906,
		-0.502513, -0.859012, 0.097876,
		-0.853476, 0.510953, 0.102496,
		31.917931, 35.642834, 44.599888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097057, 34.969189, 44.098106>,  <32.515362, 35.285168, 44.528137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097057, 34.969189, 44.098106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.886177, 35.307583, 44.130020>,  <31.759649, 35.510620, 44.149170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.886177, 35.307583, 44.130020>,  <32.097057, 34.969189, 44.098106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886177, 35.307583, 44.130020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162078, -0.007943, -0.986746,
		-0.834143, -0.533140, 0.141304,
		-0.527196, 0.845989, 0.079784,
		31.728018, 35.561378, 44.153957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294931, 34.818451, 43.848347>,  <32.097057, 34.969189, 44.098106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294931, 34.818451, 43.848347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.395525, 35.205589, 43.846157>,  <31.455881, 35.437874, 43.844845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.395525, 35.205589, 43.846157>,  <31.294931, 34.818451, 43.848347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395525, 35.205589, 43.846157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223273, 0.052515, -0.973341,
		-0.941756, 0.246002, 0.229300,
		0.251486, 0.967846, -0.005470,
		31.470970, 35.495941, 43.844517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745327, 35.133202, 43.559727>,  <31.294931, 34.818451, 43.848347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745327, 35.133202, 43.559727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.028130, 35.409801, 43.500446>,  <31.197811, 35.575764, 43.464878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.028130, 35.409801, 43.500446>,  <30.745327, 35.133202, 43.559727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028130, 35.409801, 43.500446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204300, -0.000921, -0.978908,
		-0.677055, 0.722372, 0.140623,
		0.707006, 0.691504, -0.148204,
		31.240231, 35.617252, 43.455986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360146, 35.758343, 43.210228>,  <30.745327, 35.133202, 43.559727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360146, 35.758343, 43.210228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.752272, 35.776199, 43.133301>,  <30.987547, 35.786915, 43.087143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.752272, 35.776199, 43.133301>,  <30.360146, 35.758343, 43.210228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752272, 35.776199, 43.133301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184350, -0.141681, -0.972595,
		-0.070668, 0.988905, -0.130662,
		0.980317, 0.044644, -0.192317,
		31.046368, 35.789593, 43.075607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370424, 36.179348, 42.615120>,  <30.360146, 35.758343, 43.210228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370424, 36.179348, 42.615120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.737713, 36.020950, 42.618179>,  <30.958086, 35.925911, 42.620014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.737713, 36.020950, 42.618179>,  <30.370424, 36.179348, 42.615120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737713, 36.020950, 42.618179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012245, 0.009090, -0.999884,
		0.395878, 0.918208, 0.013196,
		0.918222, -0.395994, 0.007645,
		31.013180, 35.902153, 42.620472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847935, 36.614880, 42.219917>,  <30.370424, 36.179348, 42.615120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847935, 36.614880, 42.219917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.996637, 36.244053, 42.239292>,  <31.085859, 36.021557, 42.250916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.996637, 36.244053, 42.239292>,  <30.847935, 36.614880, 42.219917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996637, 36.244053, 42.239292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036992, -0.066928, -0.997072,
		0.927593, 0.368876, -0.059175,
		0.371756, -0.927066, 0.048436,
		31.108164, 35.965935, 42.253822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524460, 36.857159, 42.335785>,  <30.847935, 36.614880, 42.219917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524460, 36.857159, 42.335785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.688307, 37.205799, 42.228058>,  <31.786615, 37.414982, 42.163422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.688307, 37.205799, 42.228058>,  <31.524460, 36.857159, 42.335785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688307, 37.205799, 42.228058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092912, 0.253823, 0.962778,
		0.907513, -0.419395, 0.022989,
		0.409619, 0.871597, -0.269315,
		31.811192, 37.467278, 42.147263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097858, 36.914486, 42.761414>,  <31.524460, 36.857159, 42.335785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097858, 36.914486, 42.761414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.957674, 37.265591, 42.630749>,  <31.873562, 37.476254, 42.552349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.957674, 37.265591, 42.630749>,  <32.097858, 36.914486, 42.761414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957674, 37.265591, 42.630749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015304, 0.354103, 0.935081,
		0.936451, 0.322713, -0.137534,
		-0.350465, 0.877763, -0.326661,
		31.852535, 37.528919, 42.532749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557693, 37.397491, 42.989208>,  <32.097858, 36.914486, 42.761414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557693, 37.397491, 42.989208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.224869, 37.607510, 42.917652>,  <32.025173, 37.733521, 42.874718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.224869, 37.607510, 42.917652>,  <32.557693, 37.397491, 42.989208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224869, 37.607510, 42.917652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090064, 0.446111, 0.890434,
		0.547328, 0.724782, -0.418478,
		-0.832058, 0.525049, -0.178892,
		31.975252, 37.765026, 42.863983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685066, 38.167355, 43.233418>,  <32.557693, 37.397491, 42.989208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685066, 38.167355, 43.233418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.286457, 38.141754, 43.212086>,  <32.047291, 38.126396, 43.199287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.286457, 38.141754, 43.212086>,  <32.685066, 38.167355, 43.233418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286457, 38.141754, 43.212086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079078, 0.525366, 0.847194,
		-0.026200, 0.848466, -0.528601,
		-0.996524, -0.063997, -0.053330,
		31.987499, 38.122555, 43.196087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432678, 38.838039, 43.304783>,  <32.685066, 38.167355, 43.233418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432678, 38.838039, 43.304783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.110710, 38.615376, 43.386990>,  <31.917530, 38.481777, 43.436314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.110710, 38.615376, 43.386990>,  <32.432678, 38.838039, 43.304783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110710, 38.615376, 43.386990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140523, 0.515315, 0.845402,
		-0.576504, 0.651602, -0.493011,
		-0.804921, -0.556656, 0.205516,
		31.869234, 38.448380, 43.448643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012623, 39.289925, 43.681034>,  <32.432678, 38.838039, 43.304783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012623, 39.289925, 43.681034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.856600, 38.929943, 43.758942>,  <31.762987, 38.713955, 43.805687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.856600, 38.929943, 43.758942>,  <32.012623, 39.289925, 43.681034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856600, 38.929943, 43.758942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330672, 0.334321, 0.882545,
		-0.859367, 0.279837, -0.427994,
		-0.390056, -0.899956, 0.194770,
		31.739584, 38.659958, 43.817371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349983, 39.366493, 44.108978>,  <32.012623, 39.289925, 43.681034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349983, 39.366493, 44.108978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.507383, 39.006413, 44.183582>,  <31.601824, 38.790363, 44.228344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.507383, 39.006413, 44.183582>,  <31.349983, 39.366493, 44.108978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507383, 39.006413, 44.183582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025907, 0.191938, 0.981065,
		-0.918959, -0.390883, 0.052206,
		0.393502, -0.900205, 0.186510,
		31.625435, 38.736351, 44.239536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012814, 39.029270, 44.660034>,  <31.349983, 39.366493, 44.108978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012814, 39.029270, 44.660034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.358835, 38.829014, 44.672932>,  <31.566448, 38.708862, 44.680672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.358835, 38.829014, 44.672932>,  <31.012814, 39.029270, 44.660034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358835, 38.829014, 44.672932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006167, 0.074877, 0.997174,
		-0.501638, -0.862412, 0.067860,
		0.865056, -0.500639, 0.032243,
		31.618353, 38.678822, 44.682606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005760, 38.786015, 45.328529>,  <31.012814, 39.029270, 44.660034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005760, 38.786015, 45.328529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.386852, 38.711945, 45.232185>,  <31.615507, 38.667503, 45.174377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.386852, 38.711945, 45.232185>,  <31.005760, 38.786015, 45.328529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386852, 38.711945, 45.232185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259946, 0.086456, 0.961745,
		-0.157269, -0.978895, 0.130506,
		0.952730, -0.185177, -0.240863,
		31.672672, 38.656391, 45.159927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206987, 38.329086, 45.915581>,  <31.005760, 38.786015, 45.328529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206987, 38.329086, 45.915581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.525244, 38.490810, 45.735142>,  <31.716198, 38.587845, 45.626877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.525244, 38.490810, 45.735142>,  <31.206987, 38.329086, 45.915581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525244, 38.490810, 45.735142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499362, -0.016201, 0.866242,
		0.342921, -0.914479, -0.214787,
		0.795640, 0.404309, -0.451100,
		31.763935, 38.612103, 45.599812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821793, 37.832130, 46.000343>,  <31.206987, 38.329086, 45.915581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821793, 37.832130, 46.000343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.945517, 38.210323, 45.959587>,  <32.019753, 38.437241, 45.935135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.945517, 38.210323, 45.959587>,  <31.821793, 37.832130, 46.000343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945517, 38.210323, 45.959587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505310, -0.072645, 0.859875,
		0.805598, -0.317456, -0.500233,
		0.309312, 0.945486, -0.101891,
		32.038311, 38.493969, 45.929020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433968, 37.740555, 46.391243>,  <31.821793, 37.832130, 46.000343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433968, 37.740555, 46.391243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394142, 38.137218, 46.358517>,  <32.370247, 38.375217, 46.338879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394142, 38.137218, 46.358517>,  <32.433968, 37.740555, 46.391243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394142, 38.137218, 46.358517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681446, 0.127873, 0.720611,
		0.725065, 0.015991, -0.688495,
		-0.099563, 0.991662, -0.081819,
		32.364273, 38.434715, 46.333969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127182, 38.036121, 46.215054>,  <32.433968, 37.740555, 46.391243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127182, 38.036121, 46.215054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.887825, 38.296741, 46.401558>,  <32.744209, 38.453114, 46.513462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.887825, 38.296741, 46.401558>,  <33.127182, 38.036121, 46.215054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887825, 38.296741, 46.401558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673330, 0.093557, 0.733399,
		0.434227, 0.752811, -0.494694,
		-0.598393, 0.651554, 0.466266,
		32.708305, 38.492207, 46.541439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600727, 38.526936, 46.560448>,  <33.127182, 38.036121, 46.215054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600727, 38.526936, 46.560448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.255928, 38.606735, 46.746853>,  <33.049049, 38.654613, 46.858696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.255928, 38.606735, 46.746853>,  <33.600727, 38.526936, 46.560448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255928, 38.606735, 46.746853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482770, 0.042703, 0.874705,
		0.154599, 0.978968, -0.133120,
		-0.861993, 0.199495, 0.466014,
		32.997330, 38.666584, 46.886658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911221, 39.270279, 46.305946>,  <33.600727, 38.526936, 46.560448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911221, 39.270279, 46.305946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.292355, 39.390312, 46.287823>,  <34.521034, 39.462334, 46.276951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.292355, 39.390312, 46.287823>,  <33.911221, 39.270279, 46.305946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292355, 39.390312, 46.287823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036806, -0.033924, -0.998746,
		-0.301246, 0.953309, -0.021279,
		0.952836, 0.300085, -0.045307,
		34.578205, 39.480339, 46.274231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941414, 39.932739, 45.877289>,  <33.911221, 39.270279, 46.305946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941414, 39.932739, 45.877289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.324715, 39.819798, 45.859268>,  <34.554695, 39.752033, 45.848454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.324715, 39.819798, 45.859268>,  <33.941414, 39.932739, 45.877289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324715, 39.819798, 45.859268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011743, 0.196311, -0.980471,
		0.285682, 0.939010, 0.191431,
		0.958252, -0.282352, -0.045055,
		34.612190, 39.735092, 45.845753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427536, 40.543907, 45.500916>,  <33.941414, 39.932739, 45.877289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427536, 40.543907, 45.500916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641968, 40.207706, 45.469498>,  <34.770626, 40.005985, 45.450645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.641968, 40.207706, 45.469498>,  <34.427536, 40.543907, 45.500916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641968, 40.207706, 45.469498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227286, 0.233323, -0.945464,
		0.812993, 0.488993, 0.316115,
		0.536082, -0.840504, -0.078549,
		34.802792, 39.955555, 45.445934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004143, 40.673546, 44.964291>,  <34.427536, 40.543907, 45.500916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004143, 40.673546, 44.964291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.980358, 40.274990, 44.988552>,  <34.966087, 40.035858, 45.003109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.980358, 40.274990, 44.988552>,  <35.004143, 40.673546, 44.964291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980358, 40.274990, 44.988552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054094, -0.057459, -0.996881,
		0.996764, -0.062561, -0.050482,
		-0.059465, -0.996386, 0.060657,
		34.962517, 39.976074, 45.006748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421818, 40.535858, 44.502907>,  <35.004143, 40.673546, 44.964291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421818, 40.535858, 44.502907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.247326, 40.178158, 44.542942>,  <35.142632, 39.963539, 44.566963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.247326, 40.178158, 44.542942>,  <35.421818, 40.535858, 44.502907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247326, 40.178158, 44.542942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122262, -0.169098, -0.977987,
		0.891490, -0.414391, 0.183098,
		-0.436231, -0.894252, 0.100085,
		35.116455, 39.909882, 44.572968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727512, 40.158176, 43.985031>,  <35.421818, 40.535858, 44.502907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727512, 40.158176, 43.985031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.401779, 39.941711, 44.068932>,  <35.206337, 39.811832, 44.119270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.401779, 39.941711, 44.068932>,  <35.727512, 40.158176, 43.985031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401779, 39.941711, 44.068932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128076, -0.184927, -0.974371,
		0.566084, -0.820330, 0.081283,
		-0.814337, -0.541165, 0.209749,
		35.157478, 39.779362, 44.131855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820366, 39.501373, 43.554585>,  <35.727512, 40.158176, 43.985031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820366, 39.501373, 43.554585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.434589, 39.561260, 43.641701>,  <35.203121, 39.597195, 43.693970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.434589, 39.561260, 43.641701>,  <35.820366, 39.501373, 43.554585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434589, 39.561260, 43.641701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259977, -0.389163, -0.883722,
		-0.047554, -0.908921, 0.414249,
		-0.964443, 0.149720, 0.217792,
		35.145256, 39.606178, 43.707039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491081, 38.893204, 43.502880>,  <35.820366, 39.501373, 43.554585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491081, 38.893204, 43.502880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.161148, 39.118053, 43.478657>,  <34.963188, 39.252964, 43.464123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.161148, 39.118053, 43.478657>,  <35.491081, 38.893204, 43.502880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161148, 39.118053, 43.478657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209584, -0.403485, -0.890660,
		-0.525096, -0.721953, 0.450620,
		-0.824833, 0.562124, -0.060558,
		34.913696, 39.286690, 43.460491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736523, 38.441597, 43.327541>,  <35.491081, 38.893204, 43.502880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736523, 38.441597, 43.327541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.755848, 38.821571, 43.204063>,  <34.767445, 39.049557, 43.129978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.755848, 38.821571, 43.204063>,  <34.736523, 38.441597, 43.327541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755848, 38.821571, 43.204063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193198, -0.294332, -0.935972,
		-0.979969, 0.104862, 0.169305,
		0.048316, 0.949933, -0.308695,
		34.770344, 39.106552, 43.111454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186508, 38.536621, 42.871975>,  <34.736523, 38.441597, 43.327541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186508, 38.536621, 42.871975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424969, 38.843391, 42.776955>,  <34.568047, 39.027454, 42.719944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424969, 38.843391, 42.776955>,  <34.186508, 38.536621, 42.871975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424969, 38.843391, 42.776955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221090, -0.127620, -0.966867,
		-0.771831, 0.628919, 0.093478,
		0.596151, 0.766925, -0.237549,
		34.603813, 39.073467, 42.705688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934338, 38.780228, 42.284924>,  <34.186508, 38.536621, 42.871975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934338, 38.780228, 42.284924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.283020, 38.973034, 42.249630>,  <34.492229, 39.088718, 42.228455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.283020, 38.973034, 42.249630>,  <33.934338, 38.780228, 42.284924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283020, 38.973034, 42.249630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080292, -0.037133, -0.996079,
		-0.483405, 0.875374, 0.006333,
		0.871707, 0.482018, -0.088236,
		34.544533, 39.117638, 42.223160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902977, 39.382042, 41.835865>,  <33.934338, 38.780228, 42.284924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902977, 39.382042, 41.835865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.283398, 39.259838, 41.817276>,  <34.511650, 39.186516, 41.806122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.283398, 39.259838, 41.817276>,  <33.902977, 39.382042, 41.835865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283398, 39.259838, 41.817276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029633, 0.059533, -0.997786,
		0.307596, 0.950327, 0.047566,
		0.951056, -0.305505, -0.046473,
		34.568714, 39.168186, 41.803333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111397, 39.762653, 41.303509>,  <33.902977, 39.382042, 41.835865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111397, 39.762653, 41.303509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.388512, 39.475075, 41.326000>,  <34.554783, 39.302528, 41.339497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.388512, 39.475075, 41.326000>,  <34.111397, 39.762653, 41.303509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388512, 39.475075, 41.326000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117213, 0.035325, -0.992478,
		0.711550, 0.694170, 0.108742,
		0.692790, -0.718943, 0.056230,
		34.596348, 39.259392, 41.342869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581505, 40.022472, 40.870815>,  <34.111397, 39.762653, 41.303509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581505, 40.022472, 40.870815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.672424, 39.634232, 40.902466>,  <34.726978, 39.401287, 40.921455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.672424, 39.634232, 40.902466>,  <34.581505, 40.022472, 40.870815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672424, 39.634232, 40.902466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267285, -0.015952, -0.963485,
		0.936425, 0.240153, 0.255802,
		0.227303, -0.970604, 0.079127,
		34.740616, 39.343052, 40.926205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.693399, 28.832352, 28.989676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.457701, 29.121315, 28.844950>,  <27.316280, 29.294693, 28.758114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.457701, 29.121315, 28.844950>,  <27.693399, 28.832352, 28.989676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457701, 29.121315, 28.844950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243719, 0.585886, 0.772877,
		0.770317, 0.367235, -0.521297,
		-0.589248, 0.722410, -0.361815,
		27.280926, 29.338037, 28.736404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071552, 29.462223, 29.132572>,  <27.693399, 28.832352, 28.989676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071552, 29.462223, 29.132572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.699747, 29.582302, 29.046890>,  <27.476664, 29.654348, 28.995481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.699747, 29.582302, 29.046890>,  <28.071552, 29.462223, 29.132572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699747, 29.582302, 29.046890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008694, 0.598516, 0.801063,
		0.368681, 0.742738, -0.558940,
		-0.929515, 0.300196, -0.214205,
		27.420893, 29.672361, 28.982630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126579, 30.150629, 29.213984>,  <28.071552, 29.462223, 29.132572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126579, 30.150629, 29.213984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.732643, 30.093481, 29.253340>,  <27.496283, 30.059193, 29.276953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.732643, 30.093481, 29.253340>,  <28.126579, 30.150629, 29.213984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732643, 30.093481, 29.253340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034705, 0.717988, 0.695190,
		-0.169962, 0.681236, -0.712061,
		-0.984839, -0.142868, 0.098388,
		27.437191, 30.050621, 29.282856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872343, 30.772896, 29.314075>,  <28.126579, 30.150629, 29.213984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872343, 30.772896, 29.314075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.589870, 30.520763, 29.443064>,  <27.420387, 30.369484, 29.520456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.589870, 30.520763, 29.443064>,  <27.872343, 30.772896, 29.314075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589870, 30.520763, 29.443064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123716, 0.558293, 0.820368,
		-0.697136, 0.539435, -0.472240,
		-0.706183, -0.630332, 0.322469,
		27.378016, 30.331663, 29.539804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128847, 31.156940, 29.281006>,  <27.872343, 30.772896, 29.314075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128847, 31.156940, 29.281006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.116707, 30.866869, 29.556162>,  <27.109423, 30.692825, 29.721256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.116707, 30.866869, 29.556162>,  <27.128847, 31.156940, 29.281006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116707, 30.866869, 29.556162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223205, 0.675747, 0.702528,
		-0.974299, -0.132217, -0.182375,
		-0.030353, -0.725179, 0.687891,
		27.107601, 30.649315, 29.762529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585947, 31.391527, 29.790964>,  <27.128847, 31.156940, 29.281006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585947, 31.391527, 29.790964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.754145, 31.085463, 29.985989>,  <26.855062, 30.901825, 30.103003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.754145, 31.085463, 29.985989>,  <26.585947, 31.391527, 29.790964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754145, 31.085463, 29.985989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225731, 0.432253, 0.873042,
		-0.878766, -0.477167, 0.009040,
		0.420495, -0.765160, 0.487560,
		26.880293, 30.855915, 30.132257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057798, 31.194098, 30.219559>,  <26.585947, 31.391527, 29.790964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057798, 31.194098, 30.219559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.398027, 31.050404, 30.373171>,  <26.602165, 30.964188, 30.465338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.398027, 31.050404, 30.373171>,  <26.057798, 31.194098, 30.219559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398027, 31.050404, 30.373171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133019, 0.559559, 0.818046,
		-0.508758, -0.746890, 0.428160,
		0.850571, -0.359234, 0.384031,
		26.653198, 30.942633, 30.488380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943142, 30.865328, 30.901098>,  <26.057798, 31.194098, 30.219559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943142, 30.865328, 30.901098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.325994, 30.978897, 30.878155>,  <26.555706, 31.047039, 30.864388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.325994, 30.978897, 30.878155>,  <25.943142, 30.865328, 30.901098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325994, 30.978897, 30.878155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174079, 0.722103, 0.669525,
		0.231512, -0.630837, 0.740572,
		0.957130, 0.283921, -0.057360,
		26.613134, 31.064074, 30.860947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136974, 30.741495, 31.504179>,  <25.943142, 30.865328, 30.901098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136974, 30.741495, 31.504179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.395897, 31.006071, 31.352657>,  <26.551250, 31.164818, 31.261744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.395897, 31.006071, 31.352657>,  <26.136974, 30.741495, 31.504179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395897, 31.006071, 31.352657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113255, 0.574911, 0.810340,
		0.753771, -0.481635, 0.447054,
		0.647304, 0.661441, -0.378804,
		26.590088, 31.204504, 31.239016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358828, 31.102663, 32.091469>,  <26.136974, 30.741495, 31.504179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358828, 31.102663, 32.091469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.524834, 31.343843, 31.818935>,  <26.624437, 31.488552, 31.655416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.524834, 31.343843, 31.818935>,  <26.358828, 31.102663, 32.091469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524834, 31.343843, 31.818935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005842, 0.747086, 0.664702,
		0.909795, -0.279843, 0.306531,
		0.415018, 0.602951, -0.681330,
		26.649340, 31.524729, 31.614536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986942, 31.471102, 32.337231>,  <26.358828, 31.102663, 32.091469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986942, 31.471102, 32.337231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.802156, 31.691519, 32.059254>,  <26.691286, 31.823769, 31.892467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.802156, 31.691519, 32.059254>,  <26.986942, 31.471102, 32.337231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802156, 31.691519, 32.059254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054191, 0.799636, 0.598034,
		0.885242, 0.238610, -0.399265,
		-0.461964, 0.551041, -0.694941,
		26.663567, 31.856831, 31.850771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331099, 32.028564, 32.320126>,  <26.986942, 31.471102, 32.337231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331099, 32.028564, 32.320126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.987478, 32.151054, 32.156048>,  <26.781305, 32.224548, 32.057602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.987478, 32.151054, 32.156048>,  <27.331099, 32.028564, 32.320126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987478, 32.151054, 32.156048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010642, 0.790470, 0.612409,
		0.511779, 0.530456, -0.675795,
		-0.859051, 0.306226, -0.410191,
		26.729763, 32.242924, 32.032990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376822, 32.708576, 32.356487>,  <27.331099, 32.028564, 32.320126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376822, 32.708576, 32.356487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.988495, 32.649090, 32.281223>,  <26.755499, 32.613400, 32.236065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.988495, 32.649090, 32.281223>,  <27.376822, 32.708576, 32.356487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988495, 32.649090, 32.281223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236347, 0.726495, 0.645248,
		0.040735, 0.670887, -0.740440,
		-0.970814, -0.148717, -0.188156,
		26.697250, 32.604473, 32.224777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.121052, 33.442577, 32.407722>,  <27.376822, 32.708576, 32.356487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.121052, 33.442577, 32.407722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.807076, 33.200264, 32.459717>,  <26.618690, 33.054874, 32.490913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.807076, 33.200264, 32.459717>,  <27.121052, 33.442577, 32.407722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807076, 33.200264, 32.459717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353541, 0.610221, 0.708970,
		-0.508802, 0.510544, -0.693156,
		-0.784939, -0.605784, 0.129983,
		26.571594, 33.018528, 32.498711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560337, 33.899929, 32.491600>,  <27.121052, 33.442577, 32.407722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560337, 33.899929, 32.491600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.458393, 33.546337, 32.648376>,  <26.397226, 33.334183, 32.742443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.458393, 33.546337, 32.648376>,  <26.560337, 33.899929, 32.491600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458393, 33.546337, 32.648376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380272, 0.464294, 0.799890,
		-0.889067, 0.054813, -0.454484,
		-0.254859, -0.883983, 0.391944,
		26.381935, 33.281143, 32.765961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.807648, 33.923237, 32.660118>,  <26.560337, 33.899929, 32.491600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.807648, 33.923237, 32.660118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.942034, 33.626335, 32.892048>,  <26.022665, 33.448196, 33.031204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.942034, 33.626335, 32.892048>,  <25.807648, 33.923237, 32.660118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.942034, 33.626335, 32.892048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219199, 0.537083, 0.814551,
		-0.916013, -0.400756, 0.017740,
		0.335964, -0.742251, 0.579821,
		26.042824, 33.403660, 33.065994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.347242, 33.751152, 33.259926>,  <25.807648, 33.923237, 32.660118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.347242, 33.751152, 33.259926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.705465, 33.616058, 33.375797>,  <25.920399, 33.535000, 33.445320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.705465, 33.616058, 33.375797>,  <25.347242, 33.751152, 33.259926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.705465, 33.616058, 33.375797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086687, 0.506132, 0.858089,
		-0.436424, -0.793577, 0.423991,
		0.895555, -0.337736, 0.289681,
		25.974133, 33.514736, 33.462700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.231878, 33.773712, 33.899738>,  <25.347242, 33.751152, 33.259926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.231878, 33.773712, 33.899738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.630972, 33.754997, 33.880405>,  <25.870428, 33.743767, 33.868805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.630972, 33.754997, 33.880405>,  <25.231878, 33.773712, 33.899738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.630972, 33.754997, 33.880405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061473, 0.342468, 0.937516,
		-0.027315, -0.938364, 0.344569,
		0.997735, -0.046790, -0.048330,
		25.930292, 33.740959, 33.865906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439787, 33.532509, 34.546982>,  <25.231878, 33.773712, 33.899738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.439787, 33.532509, 34.546982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.770378, 33.697121, 34.393318>,  <25.968733, 33.795887, 34.301121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.770378, 33.697121, 34.393318>,  <25.439787, 33.532509, 34.546982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770378, 33.697121, 34.393318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247278, 0.347656, 0.904427,
		0.505757, -0.842481, 0.185566,
		0.826476, 0.411534, -0.384157,
		26.018322, 33.820580, 34.278072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010853, 33.404129, 34.956543>,  <25.439787, 33.532509, 34.546982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010853, 33.404129, 34.956543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.142195, 33.725048, 34.757141>,  <26.221001, 33.917599, 34.637501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.142195, 33.725048, 34.757141>,  <26.010853, 33.404129, 34.956543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.142195, 33.725048, 34.757141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319926, 0.402109, 0.857879,
		0.888724, -0.441173, -0.124641,
		0.328354, 0.802294, -0.498507,
		26.240702, 33.965736, 34.607590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662306, 33.618164, 35.284866>,  <26.010853, 33.404129, 34.956543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662306, 33.618164, 35.284866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.552429, 33.946117, 35.083935>,  <26.486504, 34.142891, 34.963375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.552429, 33.946117, 35.083935>,  <26.662306, 33.618164, 35.284866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552429, 33.946117, 35.083935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088157, 0.541697, 0.835938,
		0.957482, 0.185343, -0.221079,
		-0.274694, 0.819885, -0.502326,
		26.470020, 34.192081, 34.933235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215776, 34.081646, 35.379116>,  <26.662306, 33.618164, 35.284866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215776, 34.081646, 35.379116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.873671, 34.273216, 35.299973>,  <26.668407, 34.388161, 35.252487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.873671, 34.273216, 35.299973>,  <27.215776, 34.081646, 35.379116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873671, 34.273216, 35.299973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191866, 0.647368, 0.737633,
		0.481362, 0.592909, -0.645561,
		-0.855265, 0.478929, -0.197859,
		26.617090, 34.416897, 35.240616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784948, 34.507908, 35.410534>,  <27.215776, 34.081646, 35.379116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784948, 34.507908, 35.410534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.149799, 34.543941, 35.250580>,  <28.368710, 34.565559, 35.154606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.149799, 34.543941, 35.250580>,  <27.784948, 34.507908, 35.410534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149799, 34.543941, 35.250580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057792, -0.937550, -0.343017,
		-0.405813, 0.335985, -0.849959,
		0.912127, 0.090080, -0.399887,
		28.423437, 34.570965, 35.130615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712467, 34.238903, 34.757305>,  <27.784948, 34.507908, 35.410534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712467, 34.238903, 34.757305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.101904, 34.207710, 34.843132>,  <28.335566, 34.188995, 34.894627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.101904, 34.207710, 34.843132>,  <27.712467, 34.238903, 34.757305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101904, 34.207710, 34.843132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007452, -0.928492, -0.371278,
		0.228175, 0.363072, -0.903391,
		0.973592, -0.077984, 0.214564,
		28.393982, 34.184315, 34.907501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951218, 34.030476, 34.235748>,  <27.712467, 34.238903, 34.757305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951218, 34.030476, 34.235748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.253637, 33.913963, 34.470200>,  <28.435089, 33.844055, 34.610870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.253637, 33.913963, 34.470200>,  <27.951218, 34.030476, 34.235748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253637, 33.913963, 34.470200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094347, -0.837664, -0.537975,
		0.647681, 0.462035, -0.605833,
		0.756048, -0.291278, 0.586131,
		28.480452, 33.826580, 34.646038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504145, 33.749695, 33.805737>,  <27.951218, 34.030476, 34.235748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504145, 33.749695, 33.805737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606339, 33.598450, 34.161659>,  <28.667656, 33.507702, 34.375214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606339, 33.598450, 34.161659>,  <28.504145, 33.749695, 33.805737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606339, 33.598450, 34.161659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207046, -0.877602, -0.432373,
		0.944383, 0.294697, -0.145929,
		0.255486, -0.378112, 0.889808,
		28.682985, 33.485016, 34.428600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202417, 33.472515, 33.834076>,  <28.504145, 33.749695, 33.805737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202417, 33.472515, 33.834076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.999327, 33.273308, 34.115273>,  <28.877472, 33.153782, 34.283989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.999327, 33.273308, 34.115273>,  <29.202417, 33.472515, 33.834076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999327, 33.273308, 34.115273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130130, -0.850956, -0.508861,
		0.851635, -0.166882, 0.496859,
		-0.507725, -0.498020, 0.702988,
		28.847010, 33.123901, 34.326168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642822, 32.812252, 33.966110>,  <29.202417, 33.472515, 33.834076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642822, 32.812252, 33.966110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.272446, 32.746849, 34.102287>,  <29.050220, 32.707607, 34.183994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.272446, 32.746849, 34.102287>,  <29.642822, 32.812252, 33.966110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272446, 32.746849, 34.102287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043808, -0.848837, -0.526836,
		0.375118, -0.502733, 0.778810,
		-0.925941, -0.163508, 0.340438,
		28.994663, 32.697796, 34.204418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699371, 32.129959, 34.213409>,  <29.642822, 32.812252, 33.966110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699371, 32.129959, 34.213409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.306400, 32.204063, 34.204300>,  <29.070618, 32.248528, 34.198833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.306400, 32.204063, 34.204300>,  <29.699371, 32.129959, 34.213409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306400, 32.204063, 34.204300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148603, -0.850129, -0.505171,
		-0.112946, -0.492909, 0.862719,
		-0.982426, 0.185260, -0.022771,
		29.011673, 32.259640, 34.197468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439594, 31.462631, 34.232410>,  <29.699371, 32.129959, 34.213409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439594, 31.462631, 34.232410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.127108, 31.667377, 34.089474>,  <28.939615, 31.790226, 34.003712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.127108, 31.667377, 34.089474>,  <29.439594, 31.462631, 34.232410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127108, 31.667377, 34.089474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247559, -0.779517, -0.575386,
		-0.573076, -0.361037, 0.735688,
		-0.781217, 0.511865, -0.357344,
		28.892742, 31.820936, 33.982269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836132, 31.081703, 34.344635>,  <29.439594, 31.462631, 34.232410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836132, 31.081703, 34.344635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.770128, 31.317085, 34.028030>,  <28.730526, 31.458315, 33.838066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.770128, 31.317085, 34.028030>,  <28.836132, 31.081703, 34.344635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770128, 31.317085, 34.028030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210035, -0.805070, -0.554750,
		-0.963669, 0.074706, 0.256440,
		-0.165009, 0.588457, -0.791511,
		28.720625, 31.493622, 33.790577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364031, 30.677599, 33.894924>,  <28.836132, 31.081703, 34.344635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364031, 30.677599, 33.894924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520662, 30.956337, 33.654568>,  <28.614641, 31.123579, 33.510353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520662, 30.956337, 33.654568>,  <28.364031, 30.677599, 33.894924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520662, 30.956337, 33.654568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015350, -0.657899, -0.752949,
		-0.920017, 0.285615, -0.268315,
		0.391578, 0.696845, -0.600894,
		28.638136, 31.165390, 33.474300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944021, 30.661135, 33.282074>,  <28.364031, 30.677599, 33.894924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944021, 30.661135, 33.282074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.279516, 30.849483, 33.172676>,  <28.480814, 30.962492, 33.107037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.279516, 30.849483, 33.172676>,  <27.944021, 30.661135, 33.282074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279516, 30.849483, 33.172676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065002, -0.585242, -0.808249,
		-0.540642, 0.660131, -0.521472,
		0.838738, 0.470870, -0.273497,
		28.531137, 30.990744, 33.090626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876900, 30.702549, 32.578987>,  <27.944021, 30.661135, 33.282074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876900, 30.702549, 32.578987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.270275, 30.739525, 32.641338>,  <28.506302, 30.761711, 32.678749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.270275, 30.739525, 32.641338>,  <27.876900, 30.702549, 32.578987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270275, 30.739525, 32.641338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179375, -0.619236, -0.764442,
		0.025861, 0.779744, -0.625564,
		0.983441, 0.092441, 0.155881,
		28.565308, 30.767258, 32.688103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084555, 30.750572, 31.876591>,  <27.876900, 30.702549, 32.578987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084555, 30.750572, 31.876591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.410238, 30.686403, 32.099777>,  <28.605648, 30.647902, 32.233688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.410238, 30.686403, 32.099777>,  <28.084555, 30.750572, 31.876591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410238, 30.686403, 32.099777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374583, -0.589112, -0.715985,
		0.443566, 0.791967, -0.419569,
		0.814209, -0.160423, 0.557967,
		28.654501, 30.638277, 32.267166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658031, 30.820158, 31.472258>,  <28.084555, 30.750572, 31.876591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658031, 30.820158, 31.472258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.818853, 30.602468, 31.766787>,  <28.915346, 30.471855, 31.943504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.818853, 30.602468, 31.766787>,  <28.658031, 30.820158, 31.472258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818853, 30.602468, 31.766787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488970, -0.552286, -0.675195,
		0.774118, 0.631506, 0.044059,
		0.402056, -0.544225, 0.736322,
		28.939470, 30.439201, 31.987682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376417, 30.741436, 31.346764>,  <28.658031, 30.820158, 31.472258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376417, 30.741436, 31.346764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.317009, 30.442135, 31.605394>,  <29.281364, 30.262554, 31.760572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.317009, 30.442135, 31.605394>,  <29.376417, 30.741436, 31.346764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317009, 30.442135, 31.605394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662375, -0.560762, -0.496795,
		0.734303, 0.354490, 0.578909,
		-0.148521, -0.748253, 0.646575,
		29.272453, 30.217659, 31.799366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042130, 30.634043, 31.607552>,  <29.376417, 30.741436, 31.346764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042130, 30.634043, 31.607552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.814600, 30.305307, 31.620350>,  <29.678082, 30.108067, 31.628029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.814600, 30.305307, 31.620350>,  <30.042130, 30.634043, 31.607552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814600, 30.305307, 31.620350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717235, -0.514712, -0.469730,
		0.402509, -0.244246, 0.882230,
		-0.568824, -0.821837, 0.031994,
		29.643953, 30.058756, 31.629948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577703, 30.116102, 31.700489>,  <30.042130, 30.634043, 31.607552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577703, 30.116102, 31.700489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.234713, 29.939350, 31.595057>,  <30.028919, 29.833298, 31.531797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.234713, 29.939350, 31.595057>,  <30.577703, 30.116102, 31.700489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234713, 29.939350, 31.595057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514325, -0.750360, -0.415245,
		-0.014292, -0.491630, 0.870687,
		-0.857476, -0.441881, -0.263582,
		29.977470, 29.806786, 31.515982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696125, 29.415052, 31.849894>,  <30.577703, 30.116102, 31.700489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696125, 29.415052, 31.849894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.387033, 29.412228, 31.596016>,  <30.201578, 29.410532, 31.443689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.387033, 29.412228, 31.596016>,  <30.696125, 29.415052, 31.849894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387033, 29.412228, 31.596016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486136, -0.649520, -0.584633,
		-0.408118, -0.760312, 0.505337,
		-0.772730, -0.007063, -0.634696,
		30.155214, 29.410109, 31.405607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674444, 28.717573, 31.595619>,  <30.696125, 29.415052, 31.849894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674444, 28.717573, 31.595619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.470142, 28.935514, 31.329607>,  <30.347561, 29.066280, 31.170000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.470142, 28.935514, 31.329607>,  <30.674444, 28.717573, 31.595619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470142, 28.935514, 31.329607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345678, -0.578105, -0.739122,
		-0.787171, -0.607395, 0.106924,
		-0.510752, 0.544854, -0.665031,
		30.316917, 29.098970, 31.130098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442604, 28.201162, 31.282019>,  <30.674444, 28.717573, 31.595619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442604, 28.201162, 31.282019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.442236, 28.527637, 31.050903>,  <30.442015, 28.723522, 30.912235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.442236, 28.527637, 31.050903>,  <30.442604, 28.201162, 31.282019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442236, 28.527637, 31.050903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262797, -0.557280, -0.787640,
		-0.964851, -0.152566, -0.213978,
		-0.000921, 0.816188, -0.577786,
		30.441959, 28.772493, 30.877567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.827431, 36.955849, 45.910313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.607571, 36.666061, 46.076698>,  <39.475655, 36.492188, 46.176529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.607571, 36.666061, 46.076698>,  <39.827431, 36.955849, 45.910313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607571, 36.666061, 46.076698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151184, 0.575966, 0.803372,
		-0.821603, 0.378684, -0.426107,
		-0.549648, -0.724473, 0.415965,
		39.442677, 36.448719, 46.201488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263988, 37.281368, 46.042549>,  <39.827431, 36.955849, 45.910313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263988, 37.281368, 46.042549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.257664, 36.965591, 46.287994>,  <39.253868, 36.776123, 46.435261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.257664, 36.965591, 46.287994>,  <39.263988, 37.281368, 46.042549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257664, 36.965591, 46.287994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271462, 0.594032, 0.757254,
		-0.962319, -0.154601, -0.223697,
		-0.015810, -0.789446, 0.613617,
		39.252922, 36.728756, 46.472080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753773, 37.412724, 46.509895>,  <39.263988, 37.281368, 46.042549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753773, 37.412724, 46.509895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955978, 37.138237, 46.719105>,  <39.077301, 36.973545, 46.844631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955978, 37.138237, 46.719105>,  <38.753773, 37.412724, 46.509895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955978, 37.138237, 46.719105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249840, 0.463798, 0.849983,
		-0.825855, -0.560351, 0.063011,
		0.505513, -0.686220, 0.523028,
		39.107632, 36.932369, 46.876015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355690, 37.330517, 47.068687>,  <38.753773, 37.412724, 46.509895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355690, 37.330517, 47.068687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.712498, 37.193291, 47.186401>,  <38.926582, 37.110954, 47.257030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.712498, 37.193291, 47.186401>,  <38.355690, 37.330517, 47.068687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712498, 37.193291, 47.186401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200578, 0.283020, 0.937906,
		-0.405057, -0.895658, 0.183647,
		0.892019, -0.343070, 0.294288,
		38.980103, 37.090370, 47.274689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146336, 36.990528, 47.612946>,  <38.355690, 37.330517, 47.068687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146336, 36.990528, 47.612946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.536266, 37.077942, 47.630619>,  <38.770226, 37.130390, 47.641224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.536266, 37.077942, 47.630619>,  <38.146336, 36.990528, 47.612946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536266, 37.077942, 47.630619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125648, 0.374781, 0.918560,
		0.184172, -0.900991, 0.392805,
		0.974830, 0.218528, 0.044183,
		38.828716, 37.143501, 47.643875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401489, 36.682240, 48.154919>,  <38.146336, 36.990528, 47.612946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401489, 36.682240, 48.154919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.676201, 36.966194, 48.092438>,  <38.841026, 37.136566, 48.054951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.676201, 36.966194, 48.092438>,  <38.401489, 36.682240, 48.154919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676201, 36.966194, 48.092438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027579, 0.240187, 0.970335,
		0.726344, -0.662097, 0.184533,
		0.686778, 0.709886, -0.156199,
		38.882233, 37.179161, 48.045578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971798, 36.581696, 48.575764>,  <38.401489, 36.682240, 48.154919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971798, 36.581696, 48.575764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.984245, 36.972446, 48.491161>,  <38.991714, 37.206898, 48.440399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.984245, 36.972446, 48.491161>,  <38.971798, 36.581696, 48.575764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984245, 36.972446, 48.491161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092432, 0.213513, 0.972558,
		0.995232, -0.010714, 0.096939,
		0.031118, 0.976881, -0.211505,
		38.993580, 37.265511, 48.427711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197235, 36.715290, 49.190968>,  <38.971798, 36.581696, 48.575764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197235, 36.715290, 49.190968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.126812, 37.069763, 49.019531>,  <39.084557, 37.282448, 48.916672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.126812, 37.069763, 49.019531>,  <39.197235, 36.715290, 49.190968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126812, 37.069763, 49.019531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048944, 0.426969, 0.902941,
		0.983162, 0.179949, -0.031800,
		-0.176061, 0.886180, -0.428587,
		39.073994, 37.335617, 48.890957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671307, 37.176685, 49.557827>,  <39.197235, 36.715290, 49.190968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671307, 37.176685, 49.557827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.387650, 37.395996, 49.380505>,  <39.217457, 37.527580, 49.274113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.387650, 37.395996, 49.380505>,  <39.671307, 37.176685, 49.557827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387650, 37.395996, 49.380505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104497, 0.540067, 0.835110,
		0.697282, 0.638533, -0.325689,
		-0.709139, 0.548274, -0.443304,
		39.174908, 37.560478, 49.247513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803490, 37.823223, 49.631794>,  <39.671307, 37.176685, 49.557827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803490, 37.823223, 49.631794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.408493, 37.825134, 49.568748>,  <39.171497, 37.826283, 49.530922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.408493, 37.825134, 49.568748>,  <39.803490, 37.823223, 49.631794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408493, 37.825134, 49.568748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129792, 0.543005, 0.829639,
		0.089551, 0.839716, -0.535591,
		-0.987489, 0.004780, -0.157615,
		39.112247, 37.826569, 49.521465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566998, 38.454258, 49.781395>,  <39.803490, 37.823223, 49.631794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566998, 38.454258, 49.781395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.206841, 38.280628, 49.793293>,  <38.990746, 38.176453, 49.800434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.206841, 38.280628, 49.793293>,  <39.566998, 38.454258, 49.781395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206841, 38.280628, 49.793293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221757, 0.516667, 0.826970,
		-0.374333, 0.737996, -0.561459,
		-0.900388, -0.434070, 0.029750,
		38.936726, 38.150406, 49.802219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000027, 38.982445, 49.898121>,  <39.566998, 38.454258, 49.781395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000027, 38.982445, 49.898121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.867390, 38.623970, 50.016037>,  <38.787807, 38.408886, 50.086788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.867390, 38.623970, 50.016037>,  <39.000027, 38.982445, 49.898121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867390, 38.623970, 50.016037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214417, 0.375880, 0.901521,
		-0.918734, 0.235728, -0.316795,
		-0.331591, -0.896185, 0.294790,
		38.767914, 38.355114, 50.104473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291916, 39.066193, 49.947716>,  <39.000027, 38.982445, 49.898121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291916, 39.066193, 49.947716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441723, 38.780396, 50.184101>,  <38.531609, 38.608917, 50.325932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441723, 38.780396, 50.184101>,  <38.291916, 39.066193, 49.947716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441723, 38.780396, 50.184101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211918, 0.554525, 0.804731,
		-0.902677, -0.426624, 0.056267,
		0.374519, -0.714489, 0.590966,
		38.554077, 38.566048, 50.361389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803860, 38.820862, 50.401134>,  <38.291916, 39.066193, 49.947716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803860, 38.820862, 50.401134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.155952, 38.772289, 50.584637>,  <38.367207, 38.743145, 50.694736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.155952, 38.772289, 50.584637>,  <37.803860, 38.820862, 50.401134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155952, 38.772289, 50.584637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307914, 0.589439, 0.746827,
		-0.361094, -0.798634, 0.481451,
		0.880228, -0.121429, 0.458753,
		38.420021, 38.735859, 50.722263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430824, 39.061905, 51.062153>,  <37.803860, 38.820862, 50.401134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430824, 39.061905, 51.062153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.224030, 39.375622, 51.199329>,  <37.099953, 39.563854, 51.281635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.224030, 39.375622, 51.199329>,  <37.430824, 39.061905, 51.062153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224030, 39.375622, 51.199329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776860, -0.261648, -0.572739,
		-0.359466, -0.562514, 0.744555,
		-0.516985, 0.784294, 0.342941,
		37.068935, 39.610909, 51.302212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714985, 38.782913, 51.146694>,  <37.430824, 39.061905, 51.062153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714985, 38.782913, 51.146694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.715569, 39.182899, 51.143398>,  <36.715919, 39.422890, 51.141422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.715569, 39.182899, 51.143398>,  <36.714985, 38.782913, 51.146694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715569, 39.182899, 51.143398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842728, -0.003207, -0.538331,
		-0.538338, 0.007727, 0.842694,
		0.001457, 0.999965, -0.008238,
		36.716007, 39.482887, 51.140926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014008, 38.940060, 51.204189>,  <36.714985, 38.782913, 51.146694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014008, 38.940060, 51.204189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207550, 39.242027, 51.027111>,  <36.323673, 39.423210, 50.920864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207550, 39.242027, 51.027111>,  <36.014008, 38.940060, 51.204189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207550, 39.242027, 51.027111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725691, 0.063369, -0.685096,
		-0.489142, 0.652744, 0.578503,
		0.483852, 0.754924, -0.442694,
		36.352707, 39.468506, 50.894302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536755, 39.485519, 51.016647>,  <36.014008, 38.940060, 51.204189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536755, 39.485519, 51.016647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.838238, 39.539455, 50.759354>,  <36.019127, 39.571815, 50.604977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.838238, 39.539455, 50.759354>,  <35.536755, 39.485519, 51.016647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838238, 39.539455, 50.759354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654406, 0.063596, -0.753464,
		-0.060686, 0.988825, 0.136170,
		0.753704, 0.134835, -0.643234,
		36.064350, 39.579906, 50.566383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223469, 39.638309, 50.534431>,  <35.536755, 39.485519, 51.016647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223469, 39.638309, 50.534431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.561707, 39.635765, 50.320919>,  <35.764648, 39.634239, 50.192810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.561707, 39.635765, 50.320919>,  <35.223469, 39.638309, 50.534431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561707, 39.635765, 50.320919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532961, 0.046599, -0.844855,
		0.030250, 0.998893, 0.036012,
		0.845599, -0.006364, -0.533781,
		35.815388, 39.633858, 50.160786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019180, 40.049114, 49.919334>,  <35.223469, 39.638309, 50.534431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019180, 40.049114, 49.919334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.345844, 39.841171, 49.819088>,  <35.541843, 39.716408, 49.758938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.345844, 39.841171, 49.819088>,  <35.019180, 40.049114, 49.919334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345844, 39.841171, 49.819088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182086, 0.179980, -0.966671,
		0.547634, 0.835080, 0.052325,
		0.816665, -0.519854, -0.250620,
		35.590843, 39.685215, 49.743900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293041, 40.474884, 49.440926>,  <35.019180, 40.049114, 49.919334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293041, 40.474884, 49.440926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489834, 40.135681, 49.362091>,  <35.607910, 39.932159, 49.314789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489834, 40.135681, 49.362091>,  <35.293041, 40.474884, 49.440926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489834, 40.135681, 49.362091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194204, 0.113779, -0.974340,
		0.848670, 0.517631, -0.108709,
		0.491980, -0.848005, -0.197087,
		35.637428, 39.881279, 49.302963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748985, 40.637291, 48.891735>,  <35.293041, 40.474884, 49.440926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748985, 40.637291, 48.891735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680710, 40.243279, 48.882118>,  <35.639744, 40.006870, 48.876350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680710, 40.243279, 48.882118>,  <35.748985, 40.637291, 48.891735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680710, 40.243279, 48.882118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102691, 0.042049, -0.993824,
		0.979959, -0.167169, -0.108331,
		-0.170692, -0.985031, -0.024040,
		35.629501, 39.947769, 48.874905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185474, 40.373837, 48.319778>,  <35.748985, 40.637291, 48.891735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185474, 40.373837, 48.319778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.888557, 40.113033, 48.381599>,  <35.710407, 39.956551, 48.418694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.888557, 40.113033, 48.381599>,  <36.185474, 40.373837, 48.319778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888557, 40.113033, 48.381599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205016, 0.001394, -0.978758,
		0.637943, -0.758210, -0.134707,
		-0.742292, -0.652009, 0.154556,
		35.665871, 39.917431, 48.427967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222271, 39.885376, 47.754978>,  <36.185474, 40.373837, 48.319778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222271, 39.885376, 47.754978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863541, 39.811729, 47.915878>,  <35.648304, 39.767540, 48.012417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863541, 39.811729, 47.915878>,  <36.222271, 39.885376, 47.754978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863541, 39.811729, 47.915878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324273, -0.344905, -0.880845,
		0.300914, -0.920403, 0.249616,
		-0.896826, -0.184115, 0.402249,
		35.594494, 39.756496, 48.036552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978340, 39.411949, 47.420109>,  <36.222271, 39.885376, 47.754978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978340, 39.411949, 47.420109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.631660, 39.528538, 47.582039>,  <35.423653, 39.598492, 47.679195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.631660, 39.528538, 47.582039>,  <35.978340, 39.411949, 47.420109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631660, 39.528538, 47.582039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472717, -0.220747, -0.853118,
		-0.159294, -0.930761, 0.329103,
		-0.866697, 0.291469, 0.404823,
		35.371651, 39.615982, 47.703484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580685, 38.886520, 47.287624>,  <35.978340, 39.411949, 47.420109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580685, 38.886520, 47.287624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.362614, 39.219177, 47.329880>,  <35.231773, 39.418770, 47.355232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.362614, 39.219177, 47.329880>,  <35.580685, 38.886520, 47.287624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362614, 39.219177, 47.329880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341895, -0.105513, -0.933796,
		-0.765436, -0.545199, 0.341857,
		-0.545174, 0.831640, 0.105638,
		35.199062, 39.468670, 47.361572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008781, 38.678528, 47.070225>,  <35.580685, 38.886520, 47.287624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008781, 38.678528, 47.070225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965763, 39.075462, 47.045891>,  <34.939953, 39.313622, 47.031292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965763, 39.075462, 47.045891>,  <35.008781, 38.678528, 47.070225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965763, 39.075462, 47.045891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445564, -0.102806, -0.889327,
		-0.888767, -0.068535, 0.453206,
		-0.107543, 0.992337, -0.060834,
		34.933498, 39.373165, 47.027641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346336, 38.760616, 46.703617>,  <35.008781, 38.678528, 47.070225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346336, 38.760616, 46.703617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.530415, 39.115421, 46.688511>,  <34.640862, 39.328304, 46.679447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.530415, 39.115421, 46.688511>,  <34.346336, 38.760616, 46.703617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530415, 39.115421, 46.688511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321728, 0.126972, -0.938280,
		-0.827474, 0.443940, 0.343809,
		0.460194, 0.887015, -0.037762,
		34.668472, 39.381527, 46.677181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788025, 39.027042, 47.168118>,  <34.346336, 38.760616, 46.703617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788025, 39.027042, 47.168118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429234, 38.885811, 47.274525>,  <33.213959, 38.801071, 47.338367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.429234, 38.885811, 47.274525>,  <33.788025, 39.027042, 47.168118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429234, 38.885811, 47.274525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295183, -0.030417, 0.954956,
		-0.329085, 0.935098, 0.131507,
		-0.896978, -0.353080, 0.266015,
		33.160141, 38.779888, 47.354328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505222, 39.388290, 47.795280>,  <33.788025, 39.027042, 47.168118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505222, 39.388290, 47.795280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.291611, 39.050396, 47.809341>,  <33.163445, 38.847660, 47.817776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.291611, 39.050396, 47.809341>,  <33.505222, 39.388290, 47.795280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291611, 39.050396, 47.809341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161990, -0.061425, 0.984879,
		-0.829804, 0.531645, 0.169641,
		-0.534026, -0.844737, 0.035150,
		33.131401, 38.796974, 47.819885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051834, 39.467243, 48.279678>,  <33.505222, 39.388290, 47.795280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051834, 39.467243, 48.279678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.047817, 39.069496, 48.237461>,  <33.045406, 38.830849, 48.212132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.047817, 39.069496, 48.237461>,  <33.051834, 39.467243, 48.279678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047817, 39.069496, 48.237461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093415, -0.106020, 0.989966,
		-0.995577, 0.000085, 0.093953,
		-0.010045, -0.994364, -0.105543,
		33.044804, 38.771187, 48.205799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579868, 39.242477, 48.792942>,  <33.051834, 39.467243, 48.279678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579868, 39.242477, 48.792942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.811302, 38.930912, 48.696167>,  <32.950165, 38.743973, 48.638100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.811302, 38.930912, 48.696167>,  <32.579868, 39.242477, 48.792942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811302, 38.930912, 48.696167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052784, -0.260255, 0.964096,
		-0.813911, -0.570583, -0.109466,
		0.578586, -0.778911, -0.241942,
		32.984879, 38.697239, 48.623585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210136, 38.499416, 48.907890>,  <32.579868, 39.242477, 48.792942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210136, 38.499416, 48.907890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.606956, 38.450287, 48.918812>,  <32.845051, 38.420807, 48.925365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.606956, 38.450287, 48.918812>,  <32.210136, 38.499416, 48.907890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606956, 38.450287, 48.918812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062403, -0.291856, 0.954424,
		-0.109258, -0.948543, -0.297202,
		0.992053, -0.122824, 0.027305,
		32.904572, 38.413441, 48.927002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427608, 38.063225, 49.563961>,  <32.210136, 38.499416, 48.907890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427608, 38.063225, 49.563961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813450, 38.122593, 49.476768>,  <33.044952, 38.158215, 49.424454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813450, 38.122593, 49.476768>,  <32.427608, 38.063225, 49.563961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813450, 38.122593, 49.476768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215321, 0.033979, 0.975952,
		0.152260, -0.988340, 0.000818,
		0.964601, 0.148423, -0.217984,
		33.102829, 38.167118, 49.411373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861771, 37.701412, 50.059628>,  <32.427608, 38.063225, 49.563961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861771, 37.701412, 50.059628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.069004, 38.020588, 49.936417>,  <33.193344, 38.212093, 49.862488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.069004, 38.020588, 49.936417>,  <32.861771, 37.701412, 50.059628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069004, 38.020588, 49.936417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250845, 0.202551, 0.946599,
		0.817721, -0.567684, -0.095221,
		0.518082, 0.797940, -0.308031,
		33.224430, 38.259972, 49.844006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452744, 37.215080, 49.836426>,  <32.861771, 37.701412, 50.059628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452744, 37.215080, 49.836426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.376091, 36.823074, 49.857780>,  <33.330101, 36.587872, 49.870594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.376091, 36.823074, 49.857780>,  <33.452744, 37.215080, 49.836426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376091, 36.823074, 49.857780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429717, 0.034874, -0.902290,
		0.882395, -0.195846, -0.427812,
		-0.191629, -0.980014, 0.053385,
		33.318604, 36.529072, 49.873795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615715, 37.044670, 49.210705>,  <33.452744, 37.215080, 49.836426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615715, 37.044670, 49.210705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391785, 36.723671, 49.293255>,  <33.257427, 36.531071, 49.342785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391785, 36.723671, 49.293255>,  <33.615715, 37.044670, 49.210705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391785, 36.723671, 49.293255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284794, -0.047545, -0.957409,
		0.778133, -0.594755, -0.201930,
		-0.559823, -0.802500, 0.206379,
		33.223839, 36.482922, 49.355167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685184, 36.495270, 48.628910>,  <33.615715, 37.044670, 49.210705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685184, 36.495270, 48.628910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.362671, 36.355640, 48.819927>,  <33.169163, 36.271862, 48.934540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.362671, 36.355640, 48.819927>,  <33.685184, 36.495270, 48.628910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362671, 36.355640, 48.819927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279143, -0.487234, -0.827455,
		0.521519, -0.800469, 0.295409,
		-0.806286, -0.349072, 0.477547,
		33.120785, 36.250919, 48.963192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676147, 35.733833, 48.521126>,  <33.685184, 36.495270, 48.628910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676147, 35.733833, 48.521126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310532, 35.885124, 48.579731>,  <33.091160, 35.975899, 48.614895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310532, 35.885124, 48.579731>,  <33.676147, 35.733833, 48.521126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310532, 35.885124, 48.579731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207916, -0.126756, -0.969899,
		-0.348276, -0.916991, 0.194501,
		-0.914043, 0.378233, 0.146511,
		33.036320, 35.998592, 48.623684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386639, 35.288410, 48.022465>,  <33.676147, 35.733833, 48.521126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386639, 35.288410, 48.022465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.105537, 35.550259, 48.133904>,  <32.936878, 35.707367, 48.200768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.105537, 35.550259, 48.133904>,  <33.386639, 35.288410, 48.022465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105537, 35.550259, 48.133904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394775, -0.033031, -0.918184,
		-0.591858, -0.755237, 0.281640,
		-0.702750, 0.654619, 0.278599,
		32.894711, 35.746643, 48.217484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753242, 34.966904, 48.015877>,  <33.386639, 35.288410, 48.022465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753242, 34.966904, 48.015877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.685158, 35.357666, 47.964199>,  <32.644306, 35.592121, 47.933193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.685158, 35.357666, 47.964199>,  <32.753242, 34.966904, 48.015877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685158, 35.357666, 47.964199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451886, -0.193888, -0.870751,
		-0.875687, -0.089831, 0.474450,
		-0.170210, 0.976902, -0.129192,
		32.634094, 35.650738, 47.925442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092224, 35.000233, 47.936245>,  <32.753242, 34.966904, 48.015877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092224, 35.000233, 47.936245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229973, 35.337486, 47.771061>,  <32.312622, 35.539837, 47.671951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229973, 35.337486, 47.771061>,  <32.092224, 35.000233, 47.936245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229973, 35.337486, 47.771061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521494, -0.193978, -0.830913,
		-0.780674, 0.501503, 0.372886,
		0.344374, 0.843130, -0.412964,
		32.333286, 35.590424, 47.647171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.795315, 36.297989, 50.605255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.166454, 36.437599, 50.657825>,  <36.389137, 36.521366, 50.689369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.166454, 36.437599, 50.657825>,  <35.795315, 36.297989, 50.605255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166454, 36.437599, 50.657825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360094, -0.746638, -0.559342,
		-0.097098, 0.566312, -0.818452,
		0.927849, 0.349030, 0.131429,
		36.444809, 36.542309, 50.697254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015785, 36.362888, 49.890854>,  <35.795315, 36.297989, 50.605255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015785, 36.362888, 49.890854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.336857, 36.351727, 50.129158>,  <36.529499, 36.345032, 50.272141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.336857, 36.351727, 50.129158>,  <36.015785, 36.362888, 49.890854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336857, 36.351727, 50.129158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488131, -0.543223, -0.683108,
		0.342690, 0.839125, -0.422414,
		0.802678, -0.027901, 0.595760,
		36.577660, 36.343357, 50.307884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522423, 36.583260, 49.476479>,  <36.015785, 36.362888, 49.890854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522423, 36.583260, 49.476479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.710804, 36.380398, 49.765198>,  <36.823833, 36.258678, 49.938431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.710804, 36.380398, 49.765198>,  <36.522423, 36.583260, 49.476479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710804, 36.380398, 49.765198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605246, -0.409502, -0.682631,
		0.641780, 0.758353, 0.114100,
		0.470951, -0.507158, 0.721800,
		36.852089, 36.228249, 49.981739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205666, 36.702423, 49.293858>,  <36.522423, 36.583260, 49.476479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205666, 36.702423, 49.293858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.179653, 36.372860, 49.519051>,  <37.164047, 36.175121, 49.654167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.179653, 36.372860, 49.519051>,  <37.205666, 36.702423, 49.293858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179653, 36.372860, 49.519051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450097, -0.527745, -0.720346,
		0.890609, 0.206554, 0.405156,
		-0.065029, -0.823906, 0.562984,
		37.160145, 36.125687, 49.687946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834938, 36.353703, 49.276829>,  <37.205666, 36.702423, 49.293858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834938, 36.353703, 49.276829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.579998, 36.065765, 49.386810>,  <37.427032, 35.893002, 49.452801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.579998, 36.065765, 49.386810>,  <37.834938, 36.353703, 49.276829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579998, 36.065765, 49.386810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397750, -0.612941, -0.682714,
		0.659982, -0.325766, 0.676979,
		-0.637354, -0.719847, 0.274956,
		37.388790, 35.849812, 49.469296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141174, 35.762600, 49.066238>,  <37.834938, 36.353703, 49.276829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141174, 35.762600, 49.066238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.791092, 35.583866, 49.140381>,  <37.581043, 35.476627, 49.184864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.791092, 35.583866, 49.140381>,  <38.141174, 35.762600, 49.066238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791092, 35.583866, 49.140381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194648, -0.676055, -0.710677,
		0.442863, -0.585910, 0.678662,
		-0.875206, -0.446833, 0.185354,
		37.528530, 35.449818, 49.195988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279953, 35.075752, 49.039066>,  <38.141174, 35.762600, 49.066238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279953, 35.075752, 49.039066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.883709, 35.071476, 48.984539>,  <37.645962, 35.068913, 48.951824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.883709, 35.071476, 48.984539>,  <38.279953, 35.075752, 49.039066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883709, 35.071476, 48.984539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111163, -0.643458, -0.757367,
		-0.079620, -0.765407, 0.638603,
		-0.990608, -0.010688, -0.136317,
		37.586525, 35.068268, 48.943645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087582, 34.326401, 48.919003>,  <38.279953, 35.075752, 49.039066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087582, 34.326401, 48.919003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.785408, 34.540047, 48.767189>,  <37.604103, 34.668236, 48.676102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.785408, 34.540047, 48.767189>,  <38.087582, 34.326401, 48.919003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785408, 34.540047, 48.767189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134107, -0.693011, -0.708344,
		-0.641357, -0.484207, 0.595150,
		-0.755431, 0.534116, -0.379532,
		37.558781, 34.700283, 48.653328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555275, 33.849640, 48.832993>,  <38.087582, 34.326401, 48.919003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555275, 33.849640, 48.832993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.477142, 34.133919, 48.562656>,  <37.430264, 34.304485, 48.400455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.477142, 34.133919, 48.562656>,  <37.555275, 33.849640, 48.832993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477142, 34.133919, 48.562656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348608, -0.694419, -0.629487,
		-0.916689, 0.112646, 0.383395,
		-0.195328, 0.710699, -0.675837,
		37.418545, 34.347130, 48.359905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958759, 33.585777, 48.466518>,  <37.555275, 33.849640, 48.832993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958759, 33.585777, 48.466518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.078648, 33.882767, 48.226883>,  <37.150581, 34.060959, 48.083103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.078648, 33.882767, 48.226883>,  <36.958759, 33.585777, 48.466518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078648, 33.882767, 48.226883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148801, -0.583891, -0.798078,
		-0.942351, 0.328345, -0.064524,
		0.299721, 0.742469, -0.599089,
		37.168564, 34.105507, 48.047157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483402, 33.578453, 47.932758>,  <36.958759, 33.585777, 48.466518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483402, 33.578453, 47.932758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.784096, 33.789482, 47.774487>,  <36.964512, 33.916100, 47.679523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.784096, 33.789482, 47.774487>,  <36.483402, 33.578453, 47.932758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784096, 33.789482, 47.774487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187834, -0.403851, -0.895334,
		-0.632152, 0.747374, -0.204491,
		0.751733, 0.527576, -0.395677,
		37.009617, 33.947754, 47.655785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225651, 34.010937, 47.315567>,  <36.483402, 33.578453, 47.932758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225651, 34.010937, 47.315567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.617935, 33.959892, 47.256348>,  <36.853306, 33.929268, 47.220818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.617935, 33.959892, 47.256348>,  <36.225651, 34.010937, 47.315567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617935, 33.959892, 47.256348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167316, -0.156607, -0.973386,
		0.101026, 0.979383, -0.174937,
		0.980714, -0.127607, -0.148046,
		36.912148, 33.921612, 47.211933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640045, 34.217907, 46.972107>,  <36.225651, 34.010937, 47.315567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640045, 34.217907, 46.972107> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.372704, 33.929329, 47.044582>,  <35.212299, 33.756184, 47.088066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.372704, 33.929329, 47.044582>,  <35.640045, 34.217907, 46.972107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372704, 33.929329, 47.044582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025925, 0.220840, 0.974966,
		-0.743393, 0.656318, -0.128895,
		-0.668352, -0.721441, 0.181185,
		35.172199, 33.712898, 47.098938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342087, 34.441460, 47.568401>,  <35.640045, 34.217907, 46.972107>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342087, 34.441460, 47.568401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.242756, 34.054184, 47.556118>,  <35.183159, 33.821819, 47.548748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.242756, 34.054184, 47.556118>,  <35.342087, 34.441460, 47.568401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242756, 34.054184, 47.556118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056599, -0.017148, 0.998250,
		-0.967021, 0.249632, -0.050541,
		-0.248328, -0.968189, -0.030712,
		35.168259, 33.763729, 47.546906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009090, 34.409927, 48.192856>,  <35.342087, 34.441460, 47.568401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009090, 34.409927, 48.192856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.069397, 34.021873, 48.116844>,  <35.105583, 33.789043, 48.071236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.069397, 34.021873, 48.116844>,  <35.009090, 34.409927, 48.192856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069397, 34.021873, 48.116844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152889, -0.167034, 0.974025,
		-0.976675, -0.175908, 0.123138,
		0.150771, -0.970132, -0.190032,
		35.114628, 33.730835, 48.059834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586460, 34.130936, 48.675228>,  <35.009090, 34.409927, 48.192856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586460, 34.130936, 48.675228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.847984, 33.843300, 48.581039>,  <35.004898, 33.670719, 48.524525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.847984, 33.843300, 48.581039>,  <34.586460, 34.130936, 48.675228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847984, 33.843300, 48.581039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032809, -0.337847, 0.940629,
		-0.755949, -0.607265, -0.244480,
		0.653808, -0.719088, -0.235472,
		35.044128, 33.627575, 48.510399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359898, 33.599976, 48.973782>,  <34.586460, 34.130936, 48.675228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359898, 33.599976, 48.973782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.737068, 33.477024, 48.922558>,  <34.963371, 33.403252, 48.891823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.737068, 33.477024, 48.922558>,  <34.359898, 33.599976, 48.973782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737068, 33.477024, 48.922558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105446, -0.089162, 0.990420,
		-0.315857, -0.947399, -0.051661,
		0.942929, -0.307384, -0.128061,
		35.019947, 33.384808, 48.884140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400040, 33.020081, 49.398457>,  <34.359898, 33.599976, 48.973782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400040, 33.020081, 49.398457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.773563, 33.146709, 49.331776>,  <34.997677, 33.222687, 49.291767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.773563, 33.146709, 49.331776>,  <34.400040, 33.020081, 49.398457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773563, 33.146709, 49.331776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225610, -0.159390, 0.961090,
		0.277681, -0.935082, -0.220260,
		0.933806, 0.316569, -0.166704,
		35.053703, 33.241680, 49.281765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840309, 32.477085, 49.806900>,  <34.400040, 33.020081, 49.398457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840309, 32.477085, 49.806900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.041210, 32.817780, 49.747177>,  <35.161751, 33.022198, 49.711342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.041210, 32.817780, 49.747177>,  <34.840309, 32.477085, 49.806900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041210, 32.817780, 49.747177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382248, -0.063803, 0.921854,
		0.775649, -0.520073, -0.357620,
		0.502249, 0.851735, -0.149308,
		35.191887, 33.073299, 49.702385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491390, 32.305485, 50.069405>,  <34.840309, 32.477085, 49.806900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491390, 32.305485, 50.069405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.494244, 32.705444, 50.064350>,  <35.495956, 32.945419, 50.061317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.494244, 32.705444, 50.064350>,  <35.491390, 32.305485, 50.069405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494244, 32.705444, 50.064350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400252, 0.008725, 0.916363,
		0.916377, -0.011590, -0.400148,
		0.007130, 0.999895, -0.012635,
		35.496384, 33.005413, 50.060558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133877, 32.581726, 50.325977>,  <35.491390, 32.305485, 50.069405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133877, 32.581726, 50.325977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.876751, 32.884342, 50.374031>,  <35.722477, 33.065914, 50.402863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.876751, 32.884342, 50.374031>,  <36.133877, 32.581726, 50.325977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876751, 32.884342, 50.374031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355709, 0.155911, 0.921500,
		0.678426, 0.635084, -0.369331,
		-0.642813, 0.756544, 0.120131,
		35.683907, 33.111305, 50.410069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545185, 33.120132, 50.422749>,  <36.133877, 32.581726, 50.325977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545185, 33.120132, 50.422749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.203068, 33.247433, 50.586304>,  <35.997799, 33.323814, 50.684437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.203068, 33.247433, 50.586304>,  <36.545185, 33.120132, 50.422749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203068, 33.247433, 50.586304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485065, 0.214323, 0.847808,
		0.182183, 0.923461, -0.337682,
		-0.855290, 0.318254, 0.408892,
		35.946480, 33.342911, 50.708973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832840, 33.676025, 50.773544>,  <36.545185, 33.120132, 50.422749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832840, 33.676025, 50.773544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.477528, 33.607063, 50.943829>,  <36.264339, 33.565685, 51.046001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.477528, 33.607063, 50.943829>,  <36.832840, 33.676025, 50.773544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477528, 33.607063, 50.943829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380706, 0.242136, 0.892431,
		-0.256938, 0.954802, -0.149451,
		-0.888283, -0.172402, 0.425712,
		36.211044, 33.555344, 51.071541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686729, 34.185223, 51.246964>,  <36.832840, 33.676025, 50.773544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686729, 34.185223, 51.246964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.438690, 33.899128, 51.375904>,  <36.289867, 33.727470, 51.453270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.438690, 33.899128, 51.375904>,  <36.686729, 34.185223, 51.246964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438690, 33.899128, 51.375904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268915, 0.192218, 0.943789,
		-0.736997, 0.671926, 0.073145,
		-0.620097, -0.715240, 0.322355,
		36.252663, 33.684555, 51.472610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174343, 34.385544, 51.814499>,  <36.686729, 34.185223, 51.246964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174343, 34.385544, 51.814499> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.198112, 33.990273, 51.871025>,  <36.212376, 33.753109, 51.904942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.198112, 33.990273, 51.871025>,  <36.174343, 34.385544, 51.814499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198112, 33.990273, 51.871025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231884, 0.151357, 0.960896,
		-0.970926, -0.024334, 0.238138,
		0.059426, -0.988180, 0.141313,
		36.215939, 33.693817, 51.913418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793938, 34.295849, 52.381802>,  <36.174343, 34.385544, 51.814499>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793938, 34.295849, 52.381802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.032467, 33.975048, 52.368000>,  <36.175583, 33.782566, 52.359718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.032467, 33.975048, 52.368000>,  <35.793938, 34.295849, 52.381802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032467, 33.975048, 52.368000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258330, 0.151031, 0.954178,
		-0.760044, -0.577909, 0.297244,
		0.596321, -0.802004, -0.034501,
		36.211365, 33.734447, 52.357651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253048, 34.856255, 52.185226>,  <35.793938, 34.295849, 52.381802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253048, 34.856255, 52.185226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.174294, 35.244167, 52.242855>,  <35.127041, 35.476917, 52.277431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.174294, 35.244167, 52.242855>,  <35.253048, 34.856255, 52.185226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174294, 35.244167, 52.242855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460706, -0.038200, 0.886731,
		0.865441, 0.240956, -0.439264,
		-0.196883, 0.969784, 0.144070,
		35.115231, 35.535103, 52.286076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092751, 35.031780, 51.490852>,  <35.253048, 34.856255, 52.185226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092751, 35.031780, 51.490852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.935257, 35.383873, 51.596813>,  <34.840763, 35.595127, 51.660389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.935257, 35.383873, 51.596813>,  <35.092751, 35.031780, 51.490852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935257, 35.383873, 51.596813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513053, 0.028684, -0.857877,
		-0.762727, -0.473682, 0.440311,
		-0.393731, 0.880229, 0.264902,
		34.817139, 35.647942, 51.676285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363026, 34.969845, 51.409706>,  <35.092751, 35.031780, 51.490852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363026, 34.969845, 51.409706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.432491, 35.363548, 51.422871>,  <34.474171, 35.599770, 51.430771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.432491, 35.363548, 51.422871>,  <34.363026, 34.969845, 51.409706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432491, 35.363548, 51.422871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688405, 0.145230, -0.710638,
		-0.704229, 0.100758, 0.702787,
		0.173668, 0.984254, 0.032913,
		34.484592, 35.658825, 51.432743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733734, 35.295010, 51.430462>,  <34.363026, 34.969845, 51.409706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733734, 35.295010, 51.430462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.984535, 35.557701, 51.262859>,  <34.135017, 35.715317, 51.162296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.984535, 35.557701, 51.262859>,  <33.733734, 35.295010, 51.430462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984535, 35.557701, 51.262859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687497, 0.213541, -0.694080,
		-0.366349, 0.723259, 0.585393,
		0.627006, 0.656731, -0.419008,
		34.172638, 35.754719, 51.137157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321407, 35.825550, 51.318058>,  <33.733734, 35.295010, 51.430462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321407, 35.825550, 51.318058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.631409, 35.904293, 51.077850>,  <33.817410, 35.951538, 50.933727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.631409, 35.904293, 51.077850>,  <33.321407, 35.825550, 51.318058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631409, 35.904293, 51.077850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631925, 0.231538, -0.739636,
		-0.006558, 0.952701, 0.303839,
		0.775002, 0.196854, -0.600517,
		33.863911, 35.963348, 50.897694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019630, 36.340412, 51.038467>,  <33.321407, 35.825550, 51.318058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019630, 36.340412, 51.038467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.332329, 36.267632, 50.799881>,  <33.519947, 36.223965, 50.656731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.332329, 36.267632, 50.799881>,  <33.019630, 36.340412, 51.038467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332329, 36.267632, 50.799881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500295, 0.387987, -0.774061,
		0.372260, 0.903527, 0.212279,
		0.781746, -0.181950, -0.596462,
		33.566853, 36.213047, 50.620941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240910, 36.937153, 50.734283>,  <33.019630, 36.340412, 51.038467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240910, 36.937153, 50.734283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.358913, 36.641644, 50.491901>,  <33.429714, 36.464336, 50.346470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.358913, 36.641644, 50.491901>,  <33.240910, 36.937153, 50.734283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358913, 36.641644, 50.491901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417943, 0.470524, -0.777129,
		0.859241, 0.482513, -0.169959,
		0.295006, -0.738774, -0.605957,
		33.447414, 36.420010, 50.310116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526760, 37.654892, 50.607117>,  <33.240910, 36.937153, 50.734283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526760, 37.654892, 50.607117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.512100, 38.009171, 50.421989>,  <33.503304, 38.221737, 50.310913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.512100, 38.009171, 50.421989>,  <33.526760, 37.654892, 50.607117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512100, 38.009171, 50.421989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391711, 0.438803, 0.808711,
		0.919358, -0.151655, -0.363017,
		-0.036648, 0.885693, -0.462822,
		33.501106, 38.274879, 50.283142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132954, 37.819141, 50.496395>,  <33.526760, 37.654892, 50.607117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132954, 37.819141, 50.496395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.911335, 38.151279, 50.520245>,  <33.778362, 38.350563, 50.534554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.911335, 38.151279, 50.520245>,  <34.132954, 37.819141, 50.496395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911335, 38.151279, 50.520245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498040, 0.273219, 0.822987,
		0.667071, 0.485673, -0.564923,
		-0.554050, 0.830345, 0.059628,
		33.745121, 38.400383, 50.538132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705723, 38.341061, 50.536766>,  <34.132954, 37.819141, 50.496395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705723, 38.341061, 50.536766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.361862, 38.503429, 50.660854>,  <34.155548, 38.600849, 50.735306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.361862, 38.503429, 50.660854>,  <34.705723, 38.341061, 50.536766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361862, 38.503429, 50.660854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430526, 0.248680, 0.867644,
		0.275048, 0.879425, -0.388536,
		-0.859649, 0.405919, 0.310217,
		34.103966, 38.625206, 50.753918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953297, 38.877277, 50.944866>,  <34.705723, 38.341061, 50.536766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953297, 38.877277, 50.944866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.569576, 38.836304, 51.050133>,  <34.339344, 38.811718, 51.113293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.569576, 38.836304, 51.050133>,  <34.953297, 38.877277, 50.944866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569576, 38.836304, 51.050133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238351, 0.206095, 0.949059,
		-0.151454, 0.973156, -0.173291,
		-0.959297, -0.102434, 0.263167,
		34.281788, 38.805573, 51.129082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786278, 39.462280, 51.395035>,  <34.953297, 38.877277, 50.944866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786278, 39.462280, 51.395035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.523254, 39.179962, 51.500465>,  <34.365440, 39.010571, 51.563725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.523254, 39.179962, 51.500465>,  <34.786278, 39.462280, 51.395035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523254, 39.179962, 51.500465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152039, 0.218332, 0.963958,
		-0.737906, 0.673929, -0.036257,
		-0.657556, -0.705798, 0.263572,
		34.325989, 38.968224, 51.579536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451317, 39.803856, 51.923428>,  <34.786278, 39.462280, 51.395035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451317, 39.803856, 51.923428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.378975, 39.414341, 51.978619>,  <34.335571, 39.180634, 52.011734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.378975, 39.414341, 51.978619>,  <34.451317, 39.803856, 51.923428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378975, 39.414341, 51.978619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033895, 0.134037, 0.990396,
		-0.982926, 0.183794, 0.008765,
		-0.180854, -0.973783, 0.137978,
		34.324718, 39.122208, 52.020012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963863, 39.869160, 52.417900>,  <34.451317, 39.803856, 51.923428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963863, 39.869160, 52.417900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.115421, 39.500298, 52.449078>,  <34.206356, 39.278980, 52.467785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.115421, 39.500298, 52.449078>,  <33.963863, 39.869160, 52.417900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115421, 39.500298, 52.449078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010378, 0.079980, 0.996742,
		-0.925381, -0.378470, 0.020734,
		0.378895, -0.922152, 0.077940,
		34.229092, 39.223652, 52.472458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675644, 39.557449, 53.013226>,  <33.963863, 39.869160, 52.417900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675644, 39.557449, 53.013226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.008240, 39.346169, 52.944378>,  <34.207798, 39.219398, 52.903069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.008240, 39.346169, 52.944378>,  <33.675644, 39.557449, 53.013226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008240, 39.346169, 52.944378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348020, 0.253758, 0.902490,
		-0.433018, -0.810315, 0.394822,
		0.831491, -0.528201, -0.172124,
		34.257687, 39.187710, 52.892742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737087, 39.045731, 53.657459>,  <33.675644, 39.557449, 53.013226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737087, 39.045731, 53.657459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.094543, 39.078842, 53.481026>,  <34.309017, 39.098709, 53.375168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.094543, 39.078842, 53.481026>,  <33.737087, 39.045731, 53.657459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094543, 39.078842, 53.481026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411990, 0.238409, 0.879446,
		0.177954, -0.967631, 0.178950,
		0.893642, 0.082776, -0.441080,
		34.362637, 39.103676, 53.348701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.629278, 36.655643, 37.132271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015274, 36.662563, 37.236958>,  <32.246872, 36.666718, 37.299770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015274, 36.662563, 37.236958>,  <31.629278, 36.655643, 37.132271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015274, 36.662563, 37.236958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261863, 0.120429, 0.957562,
		-0.014949, -0.992571, 0.120744,
		0.964989, 0.017304, 0.261718,
		32.304771, 36.667755, 37.315472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702055, 36.251995, 37.674690>,  <31.629278, 36.655643, 37.132271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702055, 36.251995, 37.674690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017460, 36.496750, 37.699501>,  <32.206703, 36.643600, 37.714386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017460, 36.496750, 37.699501>,  <31.702055, 36.251995, 37.674690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017460, 36.496750, 37.699501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248119, 0.224214, 0.942425,
		0.562750, -0.758501, 0.328616,
		0.788511, 0.611885, 0.062022,
		32.254013, 36.680317, 37.718109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072620, 36.053421, 38.255486>,  <31.702055, 36.251995, 37.674690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072620, 36.053421, 38.255486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170345, 36.439537, 38.218567>,  <32.228981, 36.671207, 38.196415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170345, 36.439537, 38.218567>,  <32.072620, 36.053421, 38.255486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170345, 36.439537, 38.218567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300033, 0.165759, 0.939417,
		0.922113, -0.201818, 0.330117,
		0.244311, 0.965295, -0.092296,
		32.243637, 36.729126, 38.190880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347618, 36.190426, 38.889740>,  <32.072620, 36.053421, 38.255486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347618, 36.190426, 38.889740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284367, 36.554543, 38.736706>,  <32.246414, 36.773010, 38.644886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284367, 36.554543, 38.736706>,  <32.347618, 36.190426, 38.889740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284367, 36.554543, 38.736706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227887, 0.343354, 0.911140,
		0.960761, 0.231267, 0.153147,
		-0.158133, 0.910288, -0.382584,
		32.236927, 36.827629, 38.621929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849762, 36.746658, 39.191833>,  <32.347618, 36.190426, 38.889740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849762, 36.746658, 39.191833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525482, 36.938984, 39.058212>,  <32.330914, 37.054379, 38.978039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525482, 36.938984, 39.058212>,  <32.849762, 36.746658, 39.191833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525482, 36.938984, 39.058212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097189, 0.452137, 0.886638,
		0.577345, 0.751259, -0.319816,
		-0.810695, 0.480813, -0.334054,
		32.282272, 37.083229, 38.957996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059570, 37.429775, 39.356228>,  <32.849762, 36.746658, 39.191833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059570, 37.429775, 39.356228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662876, 37.393929, 39.319511>,  <32.424858, 37.372421, 39.297482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662876, 37.393929, 39.319511>,  <33.059570, 37.429775, 39.356228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662876, 37.393929, 39.319511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125208, 0.520329, 0.844737,
		-0.027940, 0.849250, -0.527251,
		-0.991737, -0.089618, -0.091795,
		32.365356, 37.367043, 39.291973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855232, 38.065884, 39.597752>,  <33.059570, 37.429775, 39.356228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855232, 38.065884, 39.597752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525078, 37.840061, 39.596107>,  <32.326984, 37.704567, 39.595119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525078, 37.840061, 39.596107>,  <32.855232, 38.065884, 39.597752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525078, 37.840061, 39.596107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263526, 0.378817, 0.887160,
		-0.499294, 0.733331, -0.461444,
		-0.825385, -0.564556, -0.004111,
		32.277462, 37.670696, 39.594875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367817, 38.435230, 40.003315>,  <32.855232, 38.065884, 39.597752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367817, 38.435230, 40.003315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204655, 38.070335, 40.018505>,  <32.106758, 37.851398, 40.027618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204655, 38.070335, 40.018505>,  <32.367817, 38.435230, 40.003315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204655, 38.070335, 40.018505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014502, 0.048055, 0.998739,
		-0.912911, 0.406836, -0.032831,
		-0.407901, -0.912236, 0.037971,
		32.082283, 37.796665, 40.029896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676443, 38.490871, 40.332153>,  <32.367817, 38.435230, 40.003315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676443, 38.490871, 40.332153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803179, 38.115208, 40.385208>,  <31.879221, 37.889809, 40.417042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.803179, 38.115208, 40.385208>,  <31.676443, 38.490871, 40.332153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803179, 38.115208, 40.385208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012842, 0.144080, 0.989483,
		-0.948392, -0.311805, 0.057711,
		0.316840, -0.939158, 0.132640,
		31.898232, 37.833462, 40.424999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272284, 38.240921, 40.887428>,  <31.676443, 38.490871, 40.332153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272284, 38.240921, 40.887428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555761, 37.959557, 40.865665>,  <31.725849, 37.790737, 40.852608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555761, 37.959557, 40.865665>,  <31.272284, 38.240921, 40.887428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555761, 37.959557, 40.865665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068314, -0.008340, 0.997629,
		-0.702200, -0.710732, 0.042143,
		0.708695, -0.703414, -0.054409,
		31.768370, 37.748531, 40.849342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982605, 37.650120, 41.240734>,  <31.272284, 38.240921, 40.887428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982605, 37.650120, 41.240734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376394, 37.580235, 41.233887>,  <31.612667, 37.538303, 41.229778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376394, 37.580235, 41.233887>,  <30.982605, 37.650120, 41.240734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376394, 37.580235, 41.233887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061977, 0.254697, 0.965033,
		-0.164243, -0.951108, 0.261570,
		0.984471, -0.174711, -0.017115,
		31.671736, 37.527821, 41.228752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094023, 37.175762, 41.706158>,  <30.982605, 37.650120, 41.240734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094023, 37.175762, 41.706158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435898, 37.382980, 41.692677>,  <31.641024, 37.507313, 41.684586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435898, 37.382980, 41.692677>,  <31.094023, 37.175762, 41.706158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435898, 37.382980, 41.692677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027577, 0.110142, 0.993533,
		0.518411, -0.848230, 0.108423,
		0.854687, 0.518048, -0.033707,
		31.692305, 37.538395, 41.682564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406605, 36.408890, 41.593906>,  <31.094023, 37.175762, 41.706158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406605, 36.408890, 41.593906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353882, 36.028214, 41.704842>,  <31.322248, 35.799809, 41.771404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353882, 36.028214, 41.704842>,  <31.406605, 36.408890, 41.593906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353882, 36.028214, 41.704842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003649, -0.279312, -0.960193,
		0.991269, -0.127573, 0.033343,
		-0.131808, -0.951688, 0.277339,
		31.314339, 35.742706, 41.788044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936674, 36.036663, 41.337627>,  <31.406605, 36.408890, 41.593906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936674, 36.036663, 41.337627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615189, 35.808159, 41.404202>,  <31.422297, 35.671055, 41.444145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615189, 35.808159, 41.404202>,  <31.936674, 36.036663, 41.337627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615189, 35.808159, 41.404202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018856, -0.304026, -0.952477,
		0.594717, -0.762381, 0.255122,
		-0.803714, -0.571265, 0.166434,
		31.374075, 35.636780, 41.454132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007351, 35.368542, 41.075138>,  <31.936674, 36.036663, 41.337627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007351, 35.368542, 41.075138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608040, 35.353996, 41.093575>,  <31.368454, 35.345268, 41.104637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608040, 35.353996, 41.093575>,  <32.007351, 35.368542, 41.075138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608040, 35.353996, 41.093575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017628, -0.563193, -0.826138,
		0.056000, -0.825525, 0.561580,
		-0.998275, -0.036364, 0.046091,
		31.308558, 35.343086, 41.107403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849018, 34.732189, 40.877098>,  <32.007351, 35.368542, 41.075138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849018, 34.732189, 40.877098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495609, 34.905949, 40.807026>,  <31.283564, 35.010204, 40.764980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495609, 34.905949, 40.807026>,  <31.849018, 34.732189, 40.877098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495609, 34.905949, 40.807026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019734, -0.408202, -0.912678,
		-0.467976, -0.802913, 0.369227,
		-0.883521, 0.434398, -0.175184,
		31.230553, 35.036266, 40.754471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406195, 34.262306, 40.594646>,  <31.849018, 34.732189, 40.877098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406195, 34.262306, 40.594646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227058, 34.596497, 40.467262>,  <31.119576, 34.797012, 40.390831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.227058, 34.596497, 40.467262>,  <31.406195, 34.262306, 40.594646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227058, 34.596497, 40.467262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074607, -0.389853, -0.917850,
		-0.890995, -0.387292, 0.236925,
		-0.447842, 0.835476, -0.318462,
		31.092707, 34.847137, 40.371723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753454, 34.019833, 40.352234>,  <31.406195, 34.262306, 40.594646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753454, 34.019833, 40.352234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847082, 34.359856, 40.163509>,  <30.903259, 34.563869, 40.050274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847082, 34.359856, 40.163509>,  <30.753454, 34.019833, 40.352234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847082, 34.359856, 40.163509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217434, -0.427232, -0.877607,
		-0.947594, 0.308010, 0.084830,
		0.234070, 0.850061, -0.471814,
		30.917303, 34.614872, 40.021965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094828, 34.024540, 39.897785>,  <30.753454, 34.019833, 40.352234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094828, 34.024540, 39.897785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343832, 34.305256, 39.759239>,  <30.493235, 34.473686, 39.676109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343832, 34.305256, 39.759239>,  <30.094828, 34.024540, 39.897785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343832, 34.305256, 39.759239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168911, -0.311670, -0.935057,
		-0.764164, 0.640591, -0.075479,
		0.622513, 0.701787, -0.346370,
		30.530586, 34.515793, 39.655327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860792, 34.219524, 39.245682>,  <30.094828, 34.024540, 39.897785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860792, 34.219524, 39.245682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236193, 34.354931, 39.218494>,  <30.461433, 34.436176, 39.202183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236193, 34.354931, 39.218494>,  <29.860792, 34.219524, 39.245682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236193, 34.354931, 39.218494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090168, 0.050274, -0.994657,
		-0.333292, 0.939616, 0.077706,
		0.938502, 0.338518, -0.067967,
		30.517744, 34.456486, 39.198105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830553, 34.637890, 38.682892>,  <29.860792, 34.219524, 39.245682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830553, 34.637890, 38.682892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220936, 34.560001, 38.722073>,  <30.455166, 34.513268, 38.745583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220936, 34.560001, 38.722073>,  <29.830553, 34.637890, 38.682892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220936, 34.560001, 38.722073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100613, 0.003796, -0.994918,
		0.193359, 0.980852, 0.023296,
		0.975956, -0.194720, 0.097953,
		30.513723, 34.501587, 38.751457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313238, 35.154922, 38.286091>,  <29.830553, 34.637890, 38.682892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313238, 35.154922, 38.286091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516066, 34.812992, 38.330185>,  <30.637762, 34.607834, 38.356640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516066, 34.812992, 38.330185>,  <30.313238, 35.154922, 38.286091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516066, 34.812992, 38.330185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097872, -0.069963, -0.992737,
		0.856331, 0.514174, 0.048187,
		0.507068, -0.854827, 0.110235,
		30.668186, 34.556545, 38.363255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990322, 35.236080, 37.862820>,  <30.313238, 35.154922, 38.286091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990322, 35.236080, 37.862820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958107, 34.841049, 37.916794>,  <30.938778, 34.604031, 37.949177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958107, 34.841049, 37.916794>,  <30.990322, 35.236080, 37.862820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958107, 34.841049, 37.916794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346769, -0.154679, -0.925109,
		0.934486, -0.027717, 0.354918,
		-0.080540, -0.987576, 0.134934,
		30.933945, 34.544777, 37.957275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571676, 34.978973, 37.732052>,  <30.990322, 35.236080, 37.862820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571676, 34.978973, 37.732052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289688, 34.704906, 37.658775>,  <31.120495, 34.540466, 37.614807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289688, 34.704906, 37.658775>,  <31.571676, 34.978973, 37.732052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289688, 34.704906, 37.658775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271928, -0.022562, -0.962053,
		0.655038, -0.728032, 0.202223,
		-0.704968, -0.685172, -0.183193,
		31.078197, 34.499355, 37.603817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732410, 34.741699, 37.059750>,  <31.571676, 34.978973, 37.732052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732410, 34.741699, 37.059750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404787, 34.533958, 37.157249>,  <31.208214, 34.409313, 37.215752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404787, 34.533958, 37.157249>,  <31.732410, 34.741699, 37.059750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404787, 34.533958, 37.157249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053356, -0.354072, -0.933695,
		0.571224, -0.777756, 0.262295,
		-0.819058, -0.519354, 0.243753,
		31.159069, 34.378151, 37.230373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817690, 34.253483, 36.559875>,  <31.732410, 34.741699, 37.059750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817690, 34.253483, 36.559875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449444, 34.293297, 36.710903>,  <31.228497, 34.317184, 36.801521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449444, 34.293297, 36.710903>,  <31.817690, 34.253483, 36.559875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449444, 34.293297, 36.710903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384288, -0.059611, -0.921287,
		-0.069175, -0.993249, 0.093121,
		-0.920618, 0.099515, 0.377570,
		31.173260, 34.323158, 36.824173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469341, 33.996132, 36.602802>,  <31.817690, 34.253483, 36.559875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469341, 33.996132, 36.602802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200062, 33.729828, 36.474075>,  <32.038494, 33.570045, 36.396839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200062, 33.729828, 36.474075>,  <32.469341, 33.996132, 36.602802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200062, 33.729828, 36.474075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541988, -0.740307, 0.397736,
		-0.503043, 0.093332, 0.859207,
		-0.673199, -0.665759, -0.321822,
		31.998102, 33.530102, 36.377529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599270, 33.400143, 36.979046>,  <32.469341, 33.996132, 36.602802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599270, 33.400143, 36.979046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933716, 33.195522, 36.899818>,  <33.134384, 33.072750, 36.852283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933716, 33.195522, 36.899818>,  <32.599270, 33.400143, 36.979046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933716, 33.195522, 36.899818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054734, -0.281474, 0.958007,
		-0.545822, -0.811842, -0.207345,
		0.836112, -0.511552, -0.198070,
		33.184551, 33.042057, 36.840397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514950, 32.728401, 37.290878>,  <32.599270, 33.400143, 36.979046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514950, 32.728401, 37.290878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906170, 32.803310, 37.254318>,  <33.140900, 32.848255, 37.232384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906170, 32.803310, 37.254318>,  <32.514950, 32.728401, 37.290878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906170, 32.803310, 37.254318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152729, -0.345813, 0.925790,
		0.141774, -0.919424, -0.366824,
		0.978046, 0.187277, -0.091396,
		33.199585, 32.859493, 37.226898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850559, 32.084217, 37.428146>,  <32.514950, 32.728401, 37.290878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850559, 32.084217, 37.428146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045238, 32.417816, 37.532116>,  <33.162048, 32.617977, 37.594498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045238, 32.417816, 37.532116>,  <32.850559, 32.084217, 37.428146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045238, 32.417816, 37.532116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096391, -0.347001, 0.932898,
		0.868234, -0.428988, -0.249276,
		0.486701, 0.834002, 0.259927,
		33.191250, 32.668018, 37.610096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396893, 31.896435, 38.009052>,  <32.850559, 32.084217, 37.428146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396893, 31.896435, 38.009052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334190, 32.290363, 38.038868>,  <33.296570, 32.526722, 38.056759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334190, 32.290363, 38.038868>,  <33.396893, 31.896435, 38.009052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334190, 32.290363, 38.038868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086529, -0.061489, 0.994350,
		0.983840, 0.162318, -0.075577,
		-0.156754, 0.984821, 0.074540,
		33.287163, 32.585808, 38.061230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897221, 32.040386, 38.523167>,  <33.396893, 31.896435, 38.009052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897221, 32.040386, 38.523167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639523, 32.346062, 38.510792>,  <33.484905, 32.529469, 38.503365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639523, 32.346062, 38.510792>,  <33.897221, 32.040386, 38.523167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639523, 32.346062, 38.510792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047179, 0.000668, 0.998886,
		0.763363, 0.644987, 0.035623,
		-0.644245, 0.764193, -0.030940,
		33.446251, 32.575321, 38.501511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112988, 32.369053, 39.073681>,  <33.897221, 32.040386, 38.523167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112988, 32.369053, 39.073681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761971, 32.545128, 38.997623>,  <33.551361, 32.650772, 38.951988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761971, 32.545128, 38.997623>,  <34.112988, 32.369053, 39.073681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761971, 32.545128, 38.997623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107818, 0.205245, 0.972753,
		0.467220, 0.874133, -0.132651,
		-0.877542, 0.440188, -0.190142,
		33.498707, 32.677185, 38.940582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161537, 32.854652, 39.573509>,  <34.112988, 32.369053, 39.073681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161537, 32.854652, 39.573509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781536, 32.793926, 39.464371>,  <33.553535, 32.757488, 39.398888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781536, 32.793926, 39.464371>,  <34.161537, 32.854652, 39.573509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781536, 32.793926, 39.464371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273096, -0.019591, 0.961787,
		-0.151363, 0.988214, -0.022849,
		-0.950004, -0.151819, -0.272842,
		33.496536, 32.748379, 39.382519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792549, 33.281483, 39.991722>,  <34.161537, 32.854652, 39.573509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792549, 33.281483, 39.991722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527245, 33.018784, 39.848190>,  <33.368061, 32.861164, 39.762070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527245, 33.018784, 39.848190>,  <33.792549, 33.281483, 39.991722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527245, 33.018784, 39.848190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423100, -0.066432, 0.903644,
		-0.617308, 0.751175, -0.233810,
		-0.663263, -0.656751, -0.358832,
		33.328266, 32.821758, 39.740540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101162, 33.474030, 40.216766>,  <33.792549, 33.281483, 39.991722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101162, 33.474030, 40.216766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068665, 33.083214, 40.137985>,  <33.049164, 32.848724, 40.090717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068665, 33.083214, 40.137985>,  <33.101162, 33.474030, 40.216766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068665, 33.083214, 40.137985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194915, -0.178213, 0.964494,
		-0.977450, 0.116749, -0.175961,
		-0.081246, -0.977042, -0.196950,
		33.044292, 32.790100, 40.078899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632648, 33.370930, 40.641613>,  <33.101162, 33.474030, 40.216766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632648, 33.370930, 40.641613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815872, 33.026516, 40.553253>,  <32.925808, 32.819866, 40.500237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815872, 33.026516, 40.553253>,  <32.632648, 33.370930, 40.641613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815872, 33.026516, 40.553253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008897, -0.244050, 0.969722,
		-0.888876, -0.446158, -0.104130,
		0.458062, -0.861036, -0.220900,
		32.953289, 32.768204, 40.486984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345798, 32.896324, 41.045387>,  <32.632648, 33.370930, 40.641613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345798, 32.896324, 41.045387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693474, 32.729580, 40.938995>,  <32.902077, 32.629532, 40.875160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.693474, 32.729580, 40.938995>,  <32.345798, 32.896324, 41.045387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693474, 32.729580, 40.938995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162229, -0.267733, 0.949737,
		-0.467120, -0.868647, -0.165082,
		0.869184, -0.416860, -0.265983,
		32.954227, 32.604523, 40.859200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381969, 32.144569, 41.355240>,  <32.345798, 32.896324, 41.045387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381969, 32.144569, 41.355240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760231, 32.238491, 41.265263>,  <32.987190, 32.294846, 41.211277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760231, 32.238491, 41.265263>,  <32.381969, 32.144569, 41.355240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760231, 32.238491, 41.265263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269734, -0.180140, 0.945935,
		0.181590, -0.955205, -0.233686,
		0.945657, 0.234806, -0.224940,
		33.043930, 32.308933, 41.197781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737167, 31.678558, 41.735722>,  <32.381969, 32.144569, 41.355240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737167, 31.678558, 41.735722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018112, 31.948790, 41.646034>,  <33.186680, 32.110928, 41.592220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018112, 31.948790, 41.646034>,  <32.737167, 31.678558, 41.735722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018112, 31.948790, 41.646034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381124, -0.090881, 0.920046,
		0.601188, -0.731664, -0.321312,
		0.702366, 0.675580, -0.224218,
		33.228821, 32.151463, 41.578770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354683, 31.396160, 41.908886>,  <32.737167, 31.678558, 41.735722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354683, 31.396160, 41.908886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423679, 31.789959, 41.921585>,  <33.465076, 32.026237, 41.929207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423679, 31.789959, 41.921585>,  <33.354683, 31.396160, 41.908886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423679, 31.789959, 41.921585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564763, -0.125258, 0.815692,
		0.807024, -0.122771, -0.577615,
		0.172494, 0.984499, 0.031750,
		33.475430, 32.085308, 41.931110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031063, 31.453527, 42.249847>,  <33.354683, 31.396160, 41.908886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031063, 31.453527, 42.249847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874878, 31.821703, 42.257156>,  <33.781166, 32.042606, 42.261543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874878, 31.821703, 42.257156>,  <34.031063, 31.453527, 42.249847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874878, 31.821703, 42.257156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498154, 0.194549, 0.844981,
		0.774198, 0.339034, -0.534484,
		-0.390461, 0.920438, 0.018272,
		33.757740, 32.097836, 42.262638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547073, 31.899981, 42.381916>,  <34.031063, 31.453527, 42.249847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547073, 31.899981, 42.381916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216511, 32.092190, 42.499325>,  <34.018173, 32.207516, 42.569771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216511, 32.092190, 42.499325>,  <34.547073, 31.899981, 42.381916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216511, 32.092190, 42.499325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434719, 0.213166, 0.874974,
		0.357875, 0.850682, -0.385053,
		-0.826405, 0.480521, 0.293521,
		33.968590, 32.236347, 42.587379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778835, 32.551903, 42.676105>,  <34.547073, 31.899981, 42.381916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778835, 32.551903, 42.676105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422649, 32.493755, 42.848591>,  <34.208939, 32.458866, 42.952080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422649, 32.493755, 42.848591>,  <34.778835, 32.551903, 42.676105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422649, 32.493755, 42.848591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354783, 0.371622, 0.857920,
		-0.284965, 0.916932, -0.279341,
		-0.890463, -0.145372, 0.431211,
		34.155510, 32.450146, 42.977955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629673, 33.138859, 43.072598>,  <34.778835, 32.551903, 42.676105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629673, 33.138859, 43.072598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374264, 32.870960, 43.224247>,  <34.221020, 32.710220, 43.315235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374264, 32.870960, 43.224247>,  <34.629673, 33.138859, 43.072598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374264, 32.870960, 43.224247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213032, 0.319560, 0.923309,
		-0.739534, 0.670316, -0.061368,
		-0.638519, -0.669745, 0.379124,
		34.182709, 32.670036, 43.337986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330791, 33.490925, 43.599022>,  <34.629673, 33.138859, 43.072598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330791, 33.490925, 43.599022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227657, 33.117489, 43.698570>,  <34.165779, 32.893429, 43.758301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227657, 33.117489, 43.698570>,  <34.330791, 33.490925, 43.599022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227657, 33.117489, 43.698570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197825, 0.201116, 0.959384,
		-0.945721, 0.296592, 0.132833,
		-0.257831, -0.933587, 0.248873,
		34.150307, 32.837414, 43.773232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926495, 33.558414, 44.221340>,  <34.330791, 33.490925, 43.599022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926495, 33.558414, 44.221340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026173, 33.171043, 44.218315>,  <34.085979, 32.938622, 44.216499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026173, 33.171043, 44.218315>,  <33.926495, 33.558414, 44.221340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026173, 33.171043, 44.218315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072940, 0.010984, 0.997276,
		-0.965703, -0.249065, 0.073374,
		0.249192, -0.968424, -0.007560,
		34.100929, 32.880516, 44.216045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484253, 33.298210, 44.768547>,  <33.926495, 33.558414, 44.221340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484253, 33.298210, 44.768547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796280, 33.063560, 44.681484>,  <33.983494, 32.922771, 44.629246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796280, 33.063560, 44.681484>,  <33.484253, 33.298210, 44.768547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796280, 33.063560, 44.681484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269139, 0.000541, 0.963101,
		-0.564860, -0.809860, 0.158305,
		0.780063, -0.586623, -0.217659,
		34.030300, 32.887573, 44.616188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370819, 32.736603, 45.253365>,  <33.484253, 33.298210, 44.768547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370819, 32.736603, 45.253365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747162, 32.735481, 45.117844>,  <33.972965, 32.734810, 45.036533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747162, 32.735481, 45.117844>,  <33.370819, 32.736603, 45.253365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747162, 32.735481, 45.117844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338563, 0.045937, 0.939822,
		0.012934, -0.998940, 0.044167,
		0.940855, -0.002798, -0.338799,
		34.029419, 32.734642, 45.016205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722984, 32.363503, 45.770027>,  <33.370819, 32.736603, 45.253365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722984, 32.363503, 45.770027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032082, 32.525944, 45.574909>,  <34.217541, 32.623409, 45.457840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032082, 32.525944, 45.574909>,  <33.722984, 32.363503, 45.770027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032082, 32.525944, 45.574909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434783, 0.221223, 0.872940,
		0.462412, -0.886647, -0.005616,
		0.772748, 0.406100, -0.487795,
		34.263905, 32.647774, 45.428570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349747, 32.104740, 45.994087>,  <33.722984, 32.363503, 45.770027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349747, 32.104740, 45.994087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435028, 32.478870, 45.881161>,  <34.486198, 32.703350, 45.813404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435028, 32.478870, 45.881161>,  <34.349747, 32.104740, 45.994087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435028, 32.478870, 45.881161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364036, 0.192104, 0.911358,
		0.906654, -0.297081, -0.299536,
		0.213205, 0.935328, -0.282320,
		34.498989, 32.759468, 45.796463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085793, 32.270119, 46.223705>,  <34.349747, 32.104740, 45.994087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085793, 32.270119, 46.223705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917534, 32.627380, 46.160046>,  <34.816578, 32.841736, 46.121849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917534, 32.627380, 46.160046>,  <35.085793, 32.270119, 46.223705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917534, 32.627380, 46.160046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404548, 0.341688, 0.848287,
		0.812031, 0.292447, -0.505055,
		-0.420650, 0.893154, -0.159152,
		34.791340, 32.895325, 46.112301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580540, 32.758698, 46.370213>,  <35.085793, 32.270119, 46.223705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580540, 32.758698, 46.370213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253696, 32.989216, 46.376198>,  <35.057590, 33.127525, 46.379787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253696, 32.989216, 46.376198>,  <35.580540, 32.758698, 46.370213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253696, 32.989216, 46.376198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335234, 0.453882, 0.825596,
		0.468995, 0.679615, -0.564063,
		-0.817106, 0.576294, 0.014961,
		35.008564, 33.162106, 46.380688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774063, 33.539482, 46.532787>,  <35.580540, 32.758698, 46.370213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774063, 33.539482, 46.532787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384365, 33.504082, 46.615746>,  <35.150547, 33.482841, 46.665520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384365, 33.504082, 46.615746>,  <35.774063, 33.539482, 46.532787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384365, 33.504082, 46.615746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160111, 0.376149, 0.912620,
		-0.158781, 0.922323, -0.352292,
		-0.974245, -0.088501, 0.207399,
		35.092091, 33.477531, 46.677967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274303, 34.092331, 46.614571>,  <35.774063, 33.539482, 46.532787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274303, 34.092331, 46.614571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635288, 33.946152, 46.705788>,  <36.851879, 33.858444, 46.760517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635288, 33.946152, 46.705788>,  <36.274303, 34.092331, 46.614571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635288, 33.946152, 46.705788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090068, -0.357601, -0.929521,
		0.421241, 0.859400, -0.289807,
		0.902465, -0.365450, 0.228040,
		36.906029, 33.836517, 46.774200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726574, 34.216061, 46.048679>,  <36.274303, 34.092331, 46.614571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726574, 34.216061, 46.048679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920654, 33.941727, 46.265644>,  <37.037102, 33.777126, 46.395824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920654, 33.941727, 46.265644>,  <36.726574, 34.216061, 46.048679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920654, 33.941727, 46.265644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284920, -0.462462, -0.839613,
		0.826680, 0.561925, -0.028979,
		0.485201, -0.685835, 0.542412,
		37.066216, 33.735977, 46.428368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394356, 34.136475, 45.760899>,  <36.726574, 34.216061, 46.048679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394356, 34.136475, 45.760899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286545, 33.798351, 45.945427>,  <37.221859, 33.595478, 46.056145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286545, 33.798351, 45.945427>,  <37.394356, 34.136475, 45.760899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286545, 33.798351, 45.945427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195764, -0.517140, -0.833212,
		0.942886, -0.134261, 0.304862,
		-0.269524, -0.845305, 0.461321,
		37.205688, 33.544762, 46.083824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845207, 33.641842, 45.626118>,  <37.394356, 34.136475, 45.760899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845207, 33.641842, 45.626118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530449, 33.420452, 45.735268>,  <37.341595, 33.287617, 45.800758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530449, 33.420452, 45.735268>,  <37.845207, 33.641842, 45.626118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530449, 33.420452, 45.735268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252809, -0.692534, -0.675636,
		0.562925, -0.462668, 0.684875,
		-0.786894, -0.553475, 0.272878,
		37.294380, 33.254410, 45.817131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101410, 33.030418, 45.735046>,  <37.845207, 33.641842, 45.626118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101410, 33.030418, 45.735046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710709, 32.976128, 45.668682>,  <37.476288, 32.943554, 45.628864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710709, 32.976128, 45.668682>,  <38.101410, 33.030418, 45.735046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710709, 32.976128, 45.668682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214222, -0.590892, -0.777789,
		0.007538, -0.795250, 0.606234,
		-0.976755, -0.135732, -0.165906,
		37.417683, 32.935410, 45.618912>
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
