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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.029687, 1.901693, 5.038583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.170128, 2.072865, 4.705452>,  <4.254393, 2.175568, 4.505573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.170128, 2.072865, 4.705452>,  <4.029687, 1.901693, 5.038583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.170128, 2.072865, 4.705452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327934, 0.776920, 0.537453,
		0.877033, -0.461813, 0.132445,
		0.351102, 0.427930, -0.832829,
		4.275459, 2.201244, 4.455604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.290354, 2.355146, 5.384764>,  <4.029687, 1.901693, 5.038583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.290354, 2.355146, 5.384764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.365089, 2.467247, 5.008137>,  <4.409931, 2.534508, 4.782160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.365089, 2.467247, 5.008137>,  <4.290354, 2.355146, 5.384764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.365089, 2.467247, 5.008137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290041, 0.899985, 0.325428,
		0.938599, -0.333895, 0.086867,
		0.186838, 0.280252, -0.941568,
		4.421141, 2.551322, 4.725667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.841784, 2.774870, 5.512886>,  <4.290354, 2.355146, 5.384764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.841784, 2.774870, 5.512886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.656300, 2.865465, 5.170266>,  <4.545009, 2.919822, 4.964694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.656300, 2.865465, 5.170266>,  <4.841784, 2.774870, 5.512886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.656300, 2.865465, 5.170266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037811, 0.970952, 0.236267,
		0.885179, 0.077173, -0.458807,
		-0.463713, 0.226487, -0.856548,
		4.517186, 2.933411, 4.913302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.221077, 3.214570, 5.172583>,  <4.841784, 2.774870, 5.512886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.221077, 3.214570, 5.172583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.839256, 3.260496, 5.062566>,  <4.610164, 3.288052, 4.996555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.839256, 3.260496, 5.062566>,  <5.221077, 3.214570, 5.172583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.839256, 3.260496, 5.062566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019940, 0.945356, 0.325429,
		0.297378, 0.305154, -0.904681,
		-0.954552, 0.114815, -0.275043,
		4.552891, 3.294941, 4.980053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.173289, 3.752019, 4.659122>,  <5.221077, 3.214570, 5.172583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.173289, 3.752019, 4.659122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.834335, 3.725721, 4.869879>,  <4.630963, 3.709943, 4.996333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.834335, 3.725721, 4.869879>,  <5.173289, 3.752019, 4.659122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.834335, 3.725721, 4.869879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012960, 0.989449, 0.144301,
		-0.530820, 0.129107, -0.837593,
		-0.847386, -0.065743, 0.526893,
		4.580120, 3.705998, 5.027946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.905586, 4.467799, 4.641393>,  <5.173289, 3.752019, 4.659122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.905586, 4.467799, 4.641393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.652180, 4.301659, 4.902511>,  <4.500136, 4.201975, 5.059181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.652180, 4.301659, 4.902511>,  <4.905586, 4.467799, 4.641393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.652180, 4.301659, 4.902511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124032, 0.887305, 0.444191,
		-0.763723, 0.200435, -0.613640,
		-0.633517, -0.415350, 0.652795,
		4.462125, 4.177053, 5.098349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.399444, 4.919260, 4.649609>,  <4.905586, 4.467799, 4.641393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.399444, 4.919260, 4.649609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.320789, 4.738747, 4.997787>,  <4.273597, 4.630439, 5.206695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.320789, 4.738747, 4.997787>,  <4.399444, 4.919260, 4.649609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.320789, 4.738747, 4.997787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064690, 0.879874, 0.470783,
		-0.978340, 0.148882, -0.143822,
		-0.196636, -0.451282, 0.870447,
		4.261798, 4.603362, 5.258922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.769720, 5.251079, 4.962223>,  <4.399444, 4.919260, 4.649609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.769720, 5.251079, 4.962223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.034740, 5.088961, 5.214178>,  <4.193753, 4.991690, 5.365351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.034740, 5.088961, 5.214178>,  <3.769720, 5.251079, 4.962223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.034740, 5.088961, 5.214178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134201, 0.891581, 0.432520,
		-0.736895, -0.202035, 0.645110,
		0.662552, -0.405296, 0.629888,
		4.233506, 4.967371, 5.403144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.619115, 6.110035, 0.320033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.704468, 6.003304, 0.695963>,  <4.755679, 5.939266, 0.921521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.704468, 6.003304, 0.695963>,  <4.619115, 6.110035, 0.320033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.704468, 6.003304, 0.695963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343009, -0.921202, -0.183662,
		0.914775, -0.283179, -0.288091,
		0.213381, -0.266828, 0.939825,
		4.768482, 5.923256, 0.977911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.193024, 5.593189, 0.460332>,  <4.619115, 6.110035, 0.320033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.193024, 5.593189, 0.460332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.912285, 5.547393, 0.741558>,  <4.743841, 5.519915, 0.910294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.912285, 5.547393, 0.741558>,  <5.193024, 5.593189, 0.460332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.912285, 5.547393, 0.741558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172684, -0.930211, -0.323864,
		0.691078, -0.348712, 0.633096,
		-0.701848, -0.114490, 0.703065,
		4.701730, 5.513046, 0.952478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.286998, 5.052245, 0.952086>,  <5.193024, 5.593189, 0.460332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.286998, 5.052245, 0.952086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.887215, 5.062649, 0.944022>,  <4.647345, 5.068892, 0.939183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.887215, 5.062649, 0.944022>,  <5.286998, 5.052245, 0.952086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.887215, 5.062649, 0.944022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013585, -0.884079, -0.467140,
		-0.029975, -0.466613, 0.883953,
		-0.999458, 0.026010, -0.020161,
		4.587377, 5.070452, 0.937974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.020877, 4.396576, 1.260244>,  <5.286998, 5.052245, 0.952086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.020877, 4.396576, 1.260244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.751175, 4.565602, 1.017982>,  <4.589354, 4.667018, 0.872625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.751175, 4.565602, 1.017982>,  <5.020877, 4.396576, 1.260244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.751175, 4.565602, 1.017982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236890, -0.900534, -0.364583,
		-0.699474, -0.102348, 0.707291,
		-0.674254, 0.422566, -0.605655,
		4.548899, 4.692372, 0.836286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.317070, 4.026537, 1.400868>,  <5.020877, 4.396576, 1.260244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.317070, 4.026537, 1.400868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.315315, 4.195580, 1.038347>,  <4.314262, 4.297006, 0.820834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.315315, 4.195580, 1.038347>,  <4.317070, 4.026537, 1.400868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.315315, 4.195580, 1.038347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380943, -0.838679, -0.389230,
		-0.924588, 0.343542, 0.164669,
		-0.004387, 0.422607, -0.906302,
		4.313999, 4.322363, 0.766456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.752093, 3.713553, 1.061812>,  <4.317070, 4.026537, 1.400868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.752093, 3.713553, 1.061812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.968651, 3.862038, 0.760059>,  <4.098586, 3.951128, 0.579007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.968651, 3.862038, 0.760059>,  <3.752093, 3.713553, 1.061812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.968651, 3.862038, 0.760059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374216, -0.697088, -0.611581,
		-0.752896, 0.613410, -0.238487,
		0.541395, 0.371211, -0.754383,
		4.131070, 3.973401, 0.533744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.378995, 3.574939, 0.443622>,  <3.752093, 3.713553, 1.061812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.378995, 3.574939, 0.443622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.762535, 3.612309, 0.336380>,  <3.992659, 3.634730, 0.272034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.762535, 3.612309, 0.336380>,  <3.378995, 3.574939, 0.443622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.762535, 3.612309, 0.336380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088167, -0.799647, -0.593962,
		-0.269880, 0.593158, -0.758504,
		0.958849, 0.093423, -0.268106,
		4.050190, 3.640336, 0.255948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.368267, 3.562737, -0.297021>,  <3.378995, 3.574939, 0.443622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.368267, 3.562737, -0.297021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.741104, 3.467287, -0.188019>,  <3.964807, 3.410017, -0.122617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.741104, 3.467287, -0.188019>,  <3.368267, 3.562737, -0.297021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.741104, 3.467287, -0.188019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048479, -0.827743, -0.559009,
		0.358959, 0.507837, -0.783103,
		0.932094, -0.238625, 0.272506,
		4.020732, 3.395700, -0.106267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
