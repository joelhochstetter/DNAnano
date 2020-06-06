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
	<24.213808, 35.119553, 34.417820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272419, 35.073551, 34.810818>,  <24.307585, 35.045948, 35.046616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272419, 35.073551, 34.810818>,  <24.213808, 35.119553, 34.417820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.272419, 35.073551, 34.810818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976287, -0.143189, -0.162360,
		0.159356, 0.982990, 0.091300,
		0.146526, -0.115008, 0.982499,
		24.316376, 35.039047, 35.105568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.719475, 35.541946, 34.765835>,  <24.213808, 35.119553, 34.417820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.719475, 35.541946, 34.765835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.776276, 35.203632, 34.971546>,  <24.810356, 35.000645, 35.094975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.776276, 35.203632, 34.971546>,  <24.719475, 35.541946, 34.765835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.776276, 35.203632, 34.971546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959855, -0.009308, -0.280341,
		0.241895, 0.533443, 0.810509,
		0.142001, -0.845785, 0.514280,
		24.818876, 34.949898, 35.125832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292398, 35.609333, 35.265533>,  <24.719475, 35.541946, 34.765835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292398, 35.609333, 35.265533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261660, 35.231628, 35.137493>,  <25.243217, 35.005005, 35.060669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261660, 35.231628, 35.137493>,  <25.292398, 35.609333, 35.265533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.261660, 35.231628, 35.137493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996110, -0.086593, 0.016309,
		-0.043118, -0.317600, 0.947244,
		-0.076845, -0.944263, -0.320098,
		25.238605, 34.948349, 35.041462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007540, 35.392918, 35.457497>,  <25.292398, 35.609333, 35.265533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007540, 35.392918, 35.457497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907988, 35.107002, 35.196072>,  <25.848257, 34.935452, 35.039219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907988, 35.107002, 35.196072>,  <26.007540, 35.392918, 35.457497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907988, 35.107002, 35.196072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967484, -0.152047, -0.202132,
		0.045109, -0.682613, 0.729386,
		-0.248879, -0.714787, -0.653559,
		25.833324, 34.892567, 35.000004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.481886, 34.868683, 35.533199>,  <26.007540, 35.392918, 35.457497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.481886, 34.868683, 35.533199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350332, 34.845039, 35.156193>,  <26.271400, 34.830853, 34.929989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350332, 34.845039, 35.156193>,  <26.481886, 34.868683, 35.533199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350332, 34.845039, 35.156193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858994, -0.433404, -0.272561,
		-0.392382, -0.899259, 0.193311,
		-0.328885, -0.059105, -0.942519,
		26.251667, 34.827309, 34.873436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285208, 34.822884, 35.594276>,  <26.481886, 34.868683, 35.533199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285208, 34.822884, 35.594276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557384, 34.788738, 35.885403>,  <27.720692, 34.768253, 36.060078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557384, 34.788738, 35.885403>,  <27.285208, 34.822884, 35.594276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557384, 34.788738, 35.885403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051938, -0.996312, -0.068294,
		0.730957, 0.008669, -0.682368,
		0.680444, -0.085361, 0.727811,
		27.761518, 34.763130, 36.103745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706114, 34.370346, 35.378464>,  <27.285208, 34.822884, 35.594276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706114, 34.370346, 35.378464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753220, 34.339069, 35.774448>,  <27.781483, 34.320305, 36.012039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753220, 34.339069, 35.774448>,  <27.706114, 34.370346, 35.378464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753220, 34.339069, 35.774448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173864, -0.983121, -0.056969,
		0.977703, -0.165409, -0.129373,
		0.117766, -0.078192, 0.989958,
		27.788549, 34.315613, 36.071434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960258, 33.669266, 35.455761>,  <27.706114, 34.370346, 35.378464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960258, 33.669266, 35.455761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859425, 33.775536, 35.827969>,  <27.798925, 33.839298, 36.051292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859425, 33.775536, 35.827969>,  <27.960258, 33.669266, 35.455761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859425, 33.775536, 35.827969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045521, -0.963765, 0.262839,
		0.966634, 0.023899, 0.255043,
		-0.252083, 0.265679, 0.930521,
		27.783800, 33.855240, 36.107124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209312, 33.118095, 35.807144>,  <27.960258, 33.669266, 35.455761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209312, 33.118095, 35.807144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951996, 33.306744, 36.048389>,  <27.797606, 33.419933, 36.193138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951996, 33.306744, 36.048389>,  <28.209312, 33.118095, 35.807144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951996, 33.306744, 36.048389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143588, -0.848089, 0.510027,
		0.752034, 0.241497, 0.613289,
		-0.643294, 0.471619, 0.603116,
		27.759008, 33.448231, 36.229324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399031, 32.859657, 36.435349>,  <28.209312, 33.118095, 35.807144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399031, 32.859657, 36.435349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031862, 33.013012, 36.476208>,  <27.811562, 33.105026, 36.500721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031862, 33.013012, 36.476208>,  <28.399031, 32.859657, 36.435349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031862, 33.013012, 36.476208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283420, -0.813761, 0.507411,
		0.277657, 0.436814, 0.855628,
		-0.917921, 0.383389, 0.102145,
		27.756485, 33.128029, 36.506851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089266, 32.843887, 37.269642>,  <28.399031, 32.859657, 36.435349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089266, 32.843887, 37.269642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799376, 32.844749, 36.994026>,  <27.625441, 32.845268, 36.828659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.799376, 32.844749, 36.994026>,  <28.089266, 32.843887, 37.269642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799376, 32.844749, 36.994026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493992, -0.698766, 0.517394,
		-0.480360, 0.715347, 0.507478,
		-0.724725, 0.002155, -0.689035,
		27.581959, 32.845394, 36.787315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540892, 32.832916, 37.594841>,  <28.089266, 32.843887, 37.269642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540892, 32.832916, 37.594841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366446, 32.690319, 37.264336>,  <27.261778, 32.604759, 37.066032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366446, 32.690319, 37.264336>,  <27.540892, 32.832916, 37.594841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366446, 32.690319, 37.264336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693943, -0.451350, 0.561005,
		-0.572930, 0.818044, -0.050546,
		-0.436113, -0.356493, -0.826267,
		27.235611, 32.583370, 37.016457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817184, 32.886856, 37.747211>,  <27.540892, 32.832916, 37.594841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817184, 32.886856, 37.747211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862240, 32.617363, 37.455078>,  <26.889273, 32.455666, 37.279797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862240, 32.617363, 37.455078>,  <26.817184, 32.886856, 37.747211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862240, 32.617363, 37.455078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611733, -0.626226, 0.483346,
		-0.783004, 0.392328, -0.482685,
		0.112640, -0.673736, -0.730337,
		26.896032, 32.415241, 37.235977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142992, 32.600220, 37.710636>,  <26.817184, 32.886856, 37.747211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142992, 32.600220, 37.710636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400356, 32.368938, 37.509956>,  <26.554775, 32.230171, 37.389549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.400356, 32.368938, 37.509956>,  <26.142992, 32.600220, 37.710636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400356, 32.368938, 37.509956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445181, -0.815770, 0.369233,
		-0.622766, -0.014219, -0.782279,
		0.643410, -0.578201, -0.501704,
		26.593380, 32.195477, 37.359444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.800001, 32.033318, 37.680714>,  <26.142992, 32.600220, 37.710636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.800001, 32.033318, 37.680714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169493, 31.911514, 37.587761>,  <26.391188, 31.838432, 37.531990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169493, 31.911514, 37.587761>,  <25.800001, 32.033318, 37.680714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.169493, 31.911514, 37.587761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219179, -0.917708, 0.331319,
		-0.314145, -0.255116, -0.914455,
		0.923728, -0.304511, -0.232377,
		26.446611, 31.820162, 37.518047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.732121, 31.294361, 37.449413>,  <25.800001, 32.033318, 37.680714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.732121, 31.294361, 37.449413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119425, 31.347084, 37.534363>,  <26.351807, 31.378717, 37.585331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119425, 31.347084, 37.534363>,  <25.732121, 31.294361, 37.449413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.119425, 31.347084, 37.534363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021301, -0.890081, 0.455304,
		0.249042, -0.436328, -0.864636,
		0.968259, 0.131807, 0.212373,
		26.409903, 31.386625, 37.598076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183382, 30.742155, 37.192272>,  <25.732121, 31.294361, 37.449413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.183382, 30.742155, 37.192272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353361, 30.920135, 37.507599>,  <26.455349, 31.026924, 37.696793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353361, 30.920135, 37.507599>,  <26.183382, 30.742155, 37.192272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353361, 30.920135, 37.507599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020347, -0.865939, 0.499735,
		0.904990, -0.228400, -0.358923,
		0.424945, 0.444952, 0.788314,
		26.480844, 31.053621, 37.744095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504486, 30.244379, 37.459286>,  <26.183382, 30.742155, 37.192272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504486, 30.244379, 37.459286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509647, 30.515745, 37.753113>,  <26.512745, 30.678564, 37.929409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509647, 30.515745, 37.753113>,  <26.504486, 30.244379, 37.459286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509647, 30.515745, 37.753113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059541, -0.733844, 0.676704,
		0.998143, 0.035005, -0.049862,
		0.012903, 0.678416, 0.734565,
		26.513517, 30.719271, 37.973484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029390, 30.004499, 37.891636>,  <26.504486, 30.244379, 37.459286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029390, 30.004499, 37.891636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796600, 30.239162, 38.116898>,  <26.656927, 30.379961, 38.252052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796600, 30.239162, 38.116898>,  <27.029390, 30.004499, 37.891636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796600, 30.239162, 38.116898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117215, -0.745790, 0.655787,
		0.804715, 0.315642, 0.502797,
		-0.581975, 0.586657, 0.563150,
		26.622007, 30.415159, 38.285843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124290, 29.710972, 38.559086>,  <27.029390, 30.004499, 37.891636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124290, 29.710972, 38.559086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816040, 29.956900, 38.626179>,  <26.631090, 30.104456, 38.666435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816040, 29.956900, 38.626179>,  <27.124290, 29.710972, 38.559086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816040, 29.956900, 38.626179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245785, -0.529561, 0.811883,
		0.587986, 0.584432, 0.559206,
		-0.770624, 0.614821, 0.167730,
		26.584852, 30.141346, 38.676498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206270, 29.973991, 39.259228>,  <27.124290, 29.710972, 38.559086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206270, 29.973991, 39.259228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820992, 29.978771, 39.151814>,  <26.589825, 29.981638, 39.087364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820992, 29.978771, 39.151814>,  <27.206270, 29.973991, 39.259228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820992, 29.978771, 39.151814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220864, -0.604592, 0.765302,
		-0.153211, 0.796445, 0.584979,
		-0.963195, 0.011948, -0.268536,
		26.532032, 29.982355, 39.071251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.859692, 29.973116, 39.932068>,  <27.206270, 29.973991, 39.259228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.859692, 29.973116, 39.932068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616385, 29.846983, 39.640705>,  <26.470400, 29.771303, 39.465889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616385, 29.846983, 39.640705>,  <26.859692, 29.973116, 39.932068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616385, 29.846983, 39.640705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348385, -0.718509, 0.601973,
		-0.713190, 0.619926, 0.327187,
		-0.608266, -0.315334, -0.728407,
		26.433905, 29.752382, 39.422184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.162693, 29.977409, 40.160294>,  <26.859692, 29.973116, 39.932068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.162693, 29.977409, 40.160294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197294, 29.707376, 39.867233>,  <26.218056, 29.545357, 39.691399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197294, 29.707376, 39.867233>,  <26.162693, 29.977409, 40.160294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197294, 29.707376, 39.867233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458035, -0.680024, 0.572513,
		-0.884715, 0.286056, -0.368036,
		0.086503, -0.675084, -0.732652,
		26.223246, 29.504850, 39.647438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.636045, 29.580181, 40.286846>,  <26.162693, 29.977409, 40.160294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.636045, 29.580181, 40.286846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.848465, 29.341475, 40.046230>,  <25.975918, 29.198250, 39.901859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.848465, 29.341475, 40.046230>,  <25.636045, 29.580181, 40.286846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.848465, 29.341475, 40.046230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257899, -0.790074, 0.556121,
		-0.807137, -0.140193, -0.573476,
		0.531053, -0.596766, -0.601543,
		26.007780, 29.162445, 39.865768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.292091, 29.030767, 40.461826>,  <25.636045, 29.580181, 40.286846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.292091, 29.030767, 40.461826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598547, 28.894203, 40.244030>,  <25.782421, 28.812265, 40.113354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598547, 28.894203, 40.244030>,  <25.292091, 29.030767, 40.461826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.598547, 28.894203, 40.244030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044895, -0.873587, 0.484593,
		-0.641105, -0.346821, -0.684617,
		0.766139, -0.341411, -0.544490,
		25.828388, 28.791780, 40.080685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.163624, 28.311632, 40.047680>,  <25.292091, 29.030767, 40.461826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.163624, 28.311632, 40.047680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.512516, 28.411768, 40.215748>,  <25.721851, 28.471849, 40.316589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.512516, 28.411768, 40.215748>,  <25.163624, 28.311632, 40.047680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.512516, 28.411768, 40.215748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023746, -0.836388, 0.547623,
		0.488517, -0.487631, -0.723579,
		0.872231, 0.250341, 0.420169,
		25.774185, 28.486870, 40.341797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605059, 27.815973, 39.962990>,  <25.163624, 28.311632, 40.047680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605059, 27.815973, 39.962990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702654, 27.999117, 40.304947>,  <25.761211, 28.109003, 40.510120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.702654, 27.999117, 40.304947>,  <25.605059, 27.815973, 39.962990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.702654, 27.999117, 40.304947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229979, -0.829065, 0.509667,
		0.942114, -0.320960, -0.096985,
		0.243989, 0.457860, 0.854888,
		25.775850, 28.136475, 40.561413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.158695, 27.389467, 40.427357>,  <25.605059, 27.815973, 39.962990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.158695, 27.389467, 40.427357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931446, 27.641237, 40.639420>,  <25.795097, 27.792299, 40.766659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931446, 27.641237, 40.639420>,  <26.158695, 27.389467, 40.427357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931446, 27.641237, 40.639420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397485, -0.773965, 0.492934,
		0.720586, 0.069318, 0.689892,
		-0.568121, 0.629423, 0.530156,
		25.761009, 27.830065, 40.798466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405436, 27.193180, 41.022186>,  <26.158695, 27.389467, 40.427357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405436, 27.193180, 41.022186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508678, 27.528263, 41.214699>,  <26.570623, 27.729313, 41.330204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508678, 27.528263, 41.214699>,  <26.405436, 27.193180, 41.022186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508678, 27.528263, 41.214699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922700, 0.361402, -0.134213,
		-0.286366, -0.409433, 0.866233,
		0.258107, 0.837707, 0.481277,
		26.586111, 27.779575, 41.359081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873350, 27.351521, 41.525864>,  <26.405436, 27.193180, 41.022186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873350, 27.351521, 41.525864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074009, 27.670845, 41.392570>,  <26.194405, 27.862440, 41.312595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074009, 27.670845, 41.392570>,  <25.873350, 27.351521, 41.525864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074009, 27.670845, 41.392570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863848, 0.441802, -0.242028,
		-0.045991, 0.409277, 0.911250,
		0.501649, 0.798313, -0.333234,
		26.224504, 27.910339, 41.292599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725271, 27.907238, 41.965729>,  <25.873350, 27.351521, 41.525864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725271, 27.907238, 41.965729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791460, 28.018145, 41.587154>,  <25.831173, 28.084688, 41.360008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791460, 28.018145, 41.587154>,  <25.725271, 27.907238, 41.965729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.791460, 28.018145, 41.587154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900075, 0.434699, -0.030018,
		0.403092, 0.856831, 0.321494,
		0.165473, 0.277269, -0.946436,
		25.841103, 28.101326, 41.303223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153164, 27.672010, 42.494129>,  <25.725271, 27.907238, 41.965729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153164, 27.672010, 42.494129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507433, 27.826815, 42.596737>,  <26.719995, 27.919697, 42.658302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507433, 27.826815, 42.596737>,  <26.153164, 27.672010, 42.494129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.507433, 27.826815, 42.596737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168532, 0.782762, -0.599066,
		-0.432642, 0.487345, 0.758496,
		0.885674, 0.387012, 0.256522,
		26.773134, 27.942919, 42.673695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996979, 28.322552, 42.629650>,  <26.153164, 27.672010, 42.494129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996979, 28.322552, 42.629650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386091, 28.281469, 42.546558>,  <26.619558, 28.256821, 42.496704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386091, 28.281469, 42.546558>,  <25.996979, 28.322552, 42.629650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386091, 28.281469, 42.546558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041804, 0.803944, -0.593234,
		0.227933, 0.585770, 0.777766,
		0.972779, -0.102704, -0.207733,
		26.677925, 28.250658, 42.484238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255507, 28.953863, 42.598198>,  <25.996979, 28.322552, 42.629650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255507, 28.953863, 42.598198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539598, 28.752466, 42.401394>,  <26.710052, 28.631628, 42.283310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539598, 28.752466, 42.401394>,  <26.255507, 28.953863, 42.598198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.539598, 28.752466, 42.401394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268264, 0.839740, -0.472092,
		0.650854, 0.203305, 0.731475,
		0.710228, -0.503491, -0.492009,
		26.752666, 28.601419, 42.253792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793808, 29.347700, 42.698437>,  <26.255507, 28.953863, 42.598198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793808, 29.347700, 42.698437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902151, 29.104532, 42.399887>,  <26.967157, 28.958632, 42.220757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902151, 29.104532, 42.399887>,  <26.793808, 29.347700, 42.698437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902151, 29.104532, 42.399887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449776, 0.765437, -0.460225,
		0.851079, -0.211044, 0.480754,
		0.270859, -0.607919, -0.746371,
		26.983408, 28.922157, 42.175976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511415, 29.473310, 42.553059>,  <26.793808, 29.347700, 42.698437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511415, 29.473310, 42.553059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324139, 29.328718, 42.230537>,  <27.211773, 29.241962, 42.037025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324139, 29.328718, 42.230537>,  <27.511415, 29.473310, 42.553059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324139, 29.328718, 42.230537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589607, 0.551847, -0.589770,
		0.658148, -0.751528, -0.045239,
		-0.468194, -0.361483, -0.806303,
		27.183680, 29.220274, 41.988647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031843, 29.166462, 42.065765>,  <27.511415, 29.473310, 42.553059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031843, 29.166462, 42.065765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709503, 29.296497, 41.867805>,  <27.516098, 29.374517, 41.749031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709503, 29.296497, 41.867805>,  <28.031843, 29.166462, 42.065765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709503, 29.296497, 41.867805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587007, 0.548194, -0.595740,
		0.077631, -0.770586, -0.632591,
		-0.805851, 0.325087, -0.494896,
		27.467749, 29.394024, 41.719337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225853, 29.217838, 41.418415>,  <28.031843, 29.166462, 42.065765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225853, 29.217838, 41.418415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903749, 29.453461, 41.391376>,  <27.710487, 29.594835, 41.375153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903749, 29.453461, 41.391376>,  <28.225853, 29.217838, 41.418415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903749, 29.453461, 41.391376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452950, 0.537580, -0.711227,
		-0.382617, -0.603339, -0.699704,
		-0.805258, 0.589058, -0.067595,
		27.662172, 29.630178, 41.371098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.227776, 29.279486, 40.783226>,  <28.225853, 29.217838, 41.418415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.227776, 29.279486, 40.783226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991852, 29.580429, 40.900585>,  <27.850298, 29.760996, 40.971001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991852, 29.580429, 40.900585>,  <28.227776, 29.279486, 40.783226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991852, 29.580429, 40.900585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424369, 0.597877, -0.680040,
		-0.687048, -0.276587, -0.671912,
		-0.589810, 0.752358, 0.293395,
		27.814909, 29.806137, 40.988605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949446, 29.532705, 40.122589>,  <28.227776, 29.279486, 40.783226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949446, 29.532705, 40.122589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928633, 29.813931, 40.406277>,  <27.916145, 29.982666, 40.576488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928633, 29.813931, 40.406277>,  <27.949446, 29.532705, 40.122589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928633, 29.813931, 40.406277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594577, 0.592401, -0.543636,
		-0.802353, 0.393398, -0.448851,
		-0.052034, 0.703064, 0.709220,
		27.913023, 30.024849, 40.619041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738197, 30.122509, 39.776352>,  <27.949446, 29.532705, 40.122589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738197, 30.122509, 39.776352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876331, 30.266886, 40.122868>,  <27.959211, 30.353512, 40.330776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876331, 30.266886, 40.122868>,  <27.738197, 30.122509, 39.776352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876331, 30.266886, 40.122868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441588, 0.752015, -0.489360,
		-0.828097, 0.551537, 0.100309,
		0.345334, 0.360943, 0.866294,
		27.979931, 30.375168, 40.382755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508440, 30.756107, 39.793995>,  <27.738197, 30.122509, 39.776352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508440, 30.756107, 39.793995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838690, 30.731436, 40.018330>,  <28.036840, 30.716633, 40.152931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838690, 30.731436, 40.018330>,  <27.508440, 30.756107, 39.793995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838690, 30.731436, 40.018330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397617, 0.768839, -0.500788,
		-0.400306, 0.636461, 0.659297,
		0.825625, -0.061679, 0.560838,
		28.086378, 30.712933, 40.186581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692387, 31.453859, 40.054771>,  <27.508440, 30.756107, 39.793995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692387, 31.453859, 40.054771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028130, 31.239033, 40.088333>,  <28.229574, 31.110136, 40.108471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028130, 31.239033, 40.088333>,  <27.692387, 31.453859, 40.054771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028130, 31.239033, 40.088333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519999, 0.748351, -0.411791,
		0.158373, 0.389267, 0.907408,
		0.839356, -0.537068, 0.083900,
		28.279936, 31.077913, 40.113503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161070, 31.814054, 40.417233>,  <27.692387, 31.453859, 40.054771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161070, 31.814054, 40.417233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388021, 31.562338, 40.204792>,  <28.524193, 31.411308, 40.077328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388021, 31.562338, 40.204792>,  <28.161070, 31.814054, 40.417233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388021, 31.562338, 40.204792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579579, 0.763343, -0.285299,
		0.584951, -0.145943, 0.797830,
		0.567381, -0.629291, -0.531104,
		28.558235, 31.373550, 40.045460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813877, 32.129959, 40.533928>,  <28.161070, 31.814054, 40.417233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813877, 32.129959, 40.533928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897333, 31.857355, 40.253353>,  <28.947407, 31.693792, 40.085011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897333, 31.857355, 40.253353>,  <28.813877, 32.129959, 40.533928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897333, 31.857355, 40.253353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778152, 0.550131, -0.303044,
		0.592409, -0.482594, 0.645101,
		0.208642, -0.681512, -0.701434,
		28.959927, 31.652901, 40.042923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521788, 31.968954, 40.597149>,  <28.813877, 32.129959, 40.533928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521788, 31.968954, 40.597149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372576, 31.920349, 40.229218>,  <29.283049, 31.891186, 40.008457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372576, 31.920349, 40.229218>,  <29.521788, 31.968954, 40.597149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372576, 31.920349, 40.229218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599434, 0.725144, -0.338888,
		0.708186, -0.677792, -0.197664,
		-0.373031, -0.121509, -0.919828,
		29.260668, 31.883896, 39.953270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154093, 32.060329, 40.220802>,  <29.521788, 31.968954, 40.597149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154093, 32.060329, 40.220802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854160, 32.075844, 39.956608>,  <29.674200, 32.085152, 39.798092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854160, 32.075844, 39.956608>,  <30.154093, 32.060329, 40.220802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854160, 32.075844, 39.956608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558625, 0.572033, -0.600596,
		0.354525, -0.819313, -0.450598,
		-0.749833, 0.038789, -0.660489,
		29.629210, 32.087482, 39.758461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429312, 32.055424, 39.633121>,  <30.154093, 32.060329, 40.220802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429312, 32.055424, 39.633121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074228, 32.201256, 39.520657>,  <29.861177, 32.288757, 39.453178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074228, 32.201256, 39.520657>,  <30.429312, 32.055424, 39.633121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074228, 32.201256, 39.520657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459946, 0.674932, -0.576989,
		-0.020592, -0.641519, -0.766831,
		-0.887709, 0.364582, -0.281166,
		29.807917, 32.310631, 39.436306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326281, 32.061050, 38.919792>,  <30.429312, 32.055424, 39.633121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326281, 32.061050, 38.919792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068228, 32.351257, 39.015648>,  <29.913395, 32.525383, 39.073162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068228, 32.351257, 39.015648>,  <30.326281, 32.061050, 38.919792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068228, 32.351257, 39.015648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362623, 0.566789, -0.739766,
		-0.672538, -0.390350, -0.628745,
		-0.645134, 0.725518, 0.239637,
		29.874687, 32.568913, 39.087540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058985, 32.340427, 38.257912>,  <30.326281, 32.061050, 38.919792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058985, 32.340427, 38.257912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957468, 32.618679, 38.526745>,  <29.896559, 32.785629, 38.688046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957468, 32.618679, 38.526745>,  <30.058985, 32.340427, 38.257912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957468, 32.618679, 38.526745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183563, 0.716839, -0.672641,
		-0.949682, -0.047341, -0.309619,
		-0.253790, 0.695630, 0.672079,
		29.881330, 32.827370, 38.728367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657593, 32.827522, 37.864372>,  <30.058985, 32.340427, 38.257912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657593, 32.827522, 37.864372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764084, 33.016571, 38.200409>,  <29.827978, 33.130001, 38.402031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764084, 33.016571, 38.200409>,  <29.657593, 32.827522, 37.864372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764084, 33.016571, 38.200409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114473, 0.849876, -0.514399,
		-0.957089, 0.233115, 0.172158,
		0.266227, 0.472618, 0.840092,
		29.843952, 33.158356, 38.452438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185074, 33.358685, 37.851303>,  <29.657593, 32.827522, 37.864372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185074, 33.358685, 37.851303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479340, 33.459126, 38.102936>,  <29.655899, 33.519390, 38.253918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479340, 33.459126, 38.102936>,  <29.185074, 33.358685, 37.851303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479340, 33.459126, 38.102936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118583, 0.962148, -0.245377,
		-0.666887, 0.105916, 0.737593,
		0.735663, 0.251105, 0.629084,
		29.700039, 33.534458, 38.291660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883955, 33.960846, 38.253315>,  <29.185074, 33.358685, 37.851303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883955, 33.960846, 38.253315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276968, 34.000099, 38.316563>,  <29.512775, 34.023651, 38.354511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276968, 34.000099, 38.316563>,  <28.883955, 33.960846, 38.253315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276968, 34.000099, 38.316563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079181, 0.989364, -0.122019,
		-0.168412, 0.107368, 0.979852,
		0.982531, 0.098136, 0.158120,
		29.571728, 34.029541, 38.363998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994148, 34.589546, 38.713802>,  <28.883955, 33.960846, 38.253315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994148, 34.589546, 38.713802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335981, 34.515785, 38.519615>,  <29.541082, 34.471527, 38.403103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335981, 34.515785, 38.519615>,  <28.994148, 34.589546, 38.713802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335981, 34.515785, 38.519615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088564, 0.972888, -0.213647,
		0.511704, 0.139584, 0.847747,
		0.854585, -0.184404, -0.485468,
		29.592358, 34.460464, 38.373974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415874, 35.182716, 38.911427>,  <28.994148, 34.589546, 38.713802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415874, 35.182716, 38.911427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561125, 35.016773, 38.577713>,  <29.648275, 34.917210, 38.377483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.561125, 35.016773, 38.577713>,  <29.415874, 35.182716, 38.911427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561125, 35.016773, 38.577713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008060, 0.896773, -0.442417,
		0.931706, 0.153928, 0.328984,
		0.363125, -0.414854, -0.834288,
		29.670063, 34.892319, 38.327427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832371, 35.781834, 38.796261>,  <29.415874, 35.182716, 38.911427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832371, 35.781834, 38.796261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.796719, 35.551594, 38.471119>,  <29.775328, 35.413448, 38.276031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.796719, 35.551594, 38.471119>,  <29.832371, 35.781834, 38.796261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796719, 35.551594, 38.471119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033688, 0.813896, -0.580033,
		0.995450, -0.079084, -0.053154,
		-0.089133, -0.575603, -0.812857,
		29.769979, 35.378914, 38.227261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199038, 36.092918, 38.363991>,  <29.832371, 35.781834, 38.796261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199038, 36.092918, 38.363991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963938, 35.878250, 38.121822>,  <29.822878, 35.749451, 37.976521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963938, 35.878250, 38.121822>,  <30.199038, 36.092918, 38.363991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963938, 35.878250, 38.121822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061765, 0.775897, -0.627829,
		0.806685, -0.331609, -0.489177,
		-0.587744, -0.536674, -0.605422,
		29.787613, 35.717247, 37.940197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326870, 35.945404, 37.662525>,  <30.199038, 36.092918, 38.363991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326870, 35.945404, 37.662525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515167, 35.799217, 37.341320>,  <30.628145, 35.711506, 37.148598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515167, 35.799217, 37.341320>,  <30.326870, 35.945404, 37.662525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515167, 35.799217, 37.341320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874519, 0.072904, 0.479481,
		-0.116693, -0.927964, 0.353928,
		0.470744, -0.365469, -0.803015,
		30.656391, 35.689575, 37.100414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762026, 35.376476, 37.823158>,  <30.326870, 35.945404, 37.662525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762026, 35.376476, 37.823158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905476, 35.564705, 37.500679>,  <30.991547, 35.677643, 37.307194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905476, 35.564705, 37.500679>,  <30.762026, 35.376476, 37.823158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905476, 35.564705, 37.500679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848120, 0.196546, 0.491998,
		0.389975, -0.860194, -0.328613,
		0.358626, 0.470570, -0.806195,
		31.013063, 35.705875, 37.258820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440033, 35.092304, 37.642170>,  <30.762026, 35.376476, 37.823158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440033, 35.092304, 37.642170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437422, 35.487961, 37.583447>,  <31.435854, 35.725353, 37.548210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437422, 35.487961, 37.583447>,  <31.440033, 35.092304, 37.642170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437422, 35.487961, 37.583447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789954, 0.095121, 0.605743,
		0.613131, -0.112019, -0.781999,
		-0.006530, 0.989143, -0.146812,
		31.435463, 35.784702, 37.539402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205357, 35.329258, 37.538185>,  <31.440033, 35.092304, 37.642170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205357, 35.329258, 37.538185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962912, 35.631485, 37.637573>,  <31.817444, 35.812820, 37.697205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962912, 35.631485, 37.637573>,  <32.205357, 35.329258, 37.538185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962912, 35.631485, 37.637573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708815, 0.371392, 0.599708,
		0.360842, 0.539610, -0.760666,
		-0.606114, 0.755572, 0.248470,
		31.781078, 35.858158, 37.712112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588985, 35.909424, 37.416885>,  <32.205357, 35.329258, 37.538185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588985, 35.909424, 37.416885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320801, 35.964661, 37.708477>,  <32.159889, 35.997803, 37.883430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320801, 35.964661, 37.708477>,  <32.588985, 35.909424, 37.416885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320801, 35.964661, 37.708477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732206, 0.281805, 0.620048,
		-0.119808, 0.949483, -0.290049,
		-0.670462, 0.138089, 0.728980,
		32.119663, 36.006088, 37.927170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626751, 36.632557, 37.754246>,  <32.588985, 35.909424, 37.416885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626751, 36.632557, 37.754246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500004, 36.374611, 38.032452>,  <32.423958, 36.219841, 38.199375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500004, 36.374611, 38.032452>,  <32.626751, 36.632557, 37.754246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500004, 36.374611, 38.032452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693279, 0.342960, 0.633832,
		-0.647272, 0.683024, 0.338403,
		-0.316864, -0.644870, 0.695515,
		32.404945, 36.181149, 38.241104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492153, 37.020061, 38.322769>,  <32.626751, 36.632557, 37.754246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492153, 37.020061, 38.322769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586441, 36.637787, 38.393307>,  <32.643013, 36.408421, 38.435631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586441, 36.637787, 38.393307>,  <32.492153, 37.020061, 38.322769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586441, 36.637787, 38.393307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588995, 0.284828, 0.756279,
		-0.772994, -0.074406, 0.630035,
		0.235723, -0.955687, 0.176345,
		32.657158, 36.351082, 38.446209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444324, 36.965462, 39.039135>,  <32.492153, 37.020061, 38.322769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444324, 36.965462, 39.039135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668114, 36.655544, 38.921364>,  <32.802387, 36.469593, 38.850700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668114, 36.655544, 38.921364>,  <32.444324, 36.965462, 39.039135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668114, 36.655544, 38.921364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535287, 0.066540, 0.842045,
		-0.632821, -0.628702, 0.451965,
		0.559469, -0.774795, -0.294428,
		32.835953, 36.423107, 38.833035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260387, 36.382294, 39.527309>,  <32.444324, 36.965462, 39.039135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260387, 36.382294, 39.527309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619385, 36.307041, 39.367752>,  <32.834782, 36.261890, 39.272018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619385, 36.307041, 39.367752>,  <32.260387, 36.382294, 39.527309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619385, 36.307041, 39.367752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389244, -0.087354, 0.916983,
		-0.207360, -0.978251, -0.005169,
		0.897491, -0.188133, -0.398892,
		32.888634, 36.250603, 39.248085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498688, 35.718441, 39.792622>,  <32.260387, 36.382294, 39.527309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498688, 35.718441, 39.792622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783882, 35.974998, 39.679298>,  <32.954998, 36.128933, 39.611305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783882, 35.974998, 39.679298>,  <32.498688, 35.718441, 39.792622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783882, 35.974998, 39.679298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424302, -0.072992, 0.902574,
		0.558231, -0.763728, -0.324188,
		0.712985, 0.641398, -0.283305,
		32.997776, 36.167419, 39.594307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071262, 35.450264, 39.964607>,  <32.498688, 35.718441, 39.792622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071262, 35.450264, 39.964607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214066, 35.816650, 39.891338>,  <33.299747, 36.036484, 39.847378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214066, 35.816650, 39.891338>,  <33.071262, 35.450264, 39.964607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214066, 35.816650, 39.891338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624965, -0.088482, 0.775622,
		0.694236, -0.391379, -0.604035,
		0.357008, 0.915966, -0.183171,
		33.321167, 36.091438, 39.836388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764809, 35.325043, 40.031475>,  <33.071262, 35.450264, 39.964607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764809, 35.325043, 40.031475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697815, 35.716812, 40.076534>,  <33.657619, 35.951874, 40.103569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697815, 35.716812, 40.076534>,  <33.764809, 35.325043, 40.031475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697815, 35.716812, 40.076534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657301, 0.025771, 0.753187,
		0.734783, 0.200186, -0.648089,
		-0.167480, 0.979419, 0.112646,
		33.647572, 36.010639, 40.110329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445538, 35.650715, 40.030548>,  <33.764809, 35.325043, 40.031475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445538, 35.650715, 40.030548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187263, 35.900391, 40.206490>,  <34.032299, 36.050198, 40.312054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187263, 35.900391, 40.206490>,  <34.445538, 35.650715, 40.030548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187263, 35.900391, 40.206490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593602, 0.047957, 0.803329,
		0.480337, 0.779798, -0.401486,
		-0.645689, 0.624191, 0.439854,
		33.993557, 36.087646, 40.338448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930229, 36.039070, 40.464092>,  <34.445538, 35.650715, 40.030548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930229, 36.039070, 40.464092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552582, 36.093437, 40.584206>,  <34.325993, 36.126057, 40.656273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552582, 36.093437, 40.584206>,  <34.930229, 36.039070, 40.464092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552582, 36.093437, 40.584206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325759, 0.245795, 0.912944,
		0.050276, 0.959745, -0.276335,
		-0.944115, 0.135918, 0.300288,
		34.269348, 36.134212, 40.674294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965649, 36.650066, 40.911968>,  <34.930229, 36.039070, 40.464092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965649, 36.650066, 40.911968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632027, 36.448936, 41.002758>,  <34.431854, 36.328259, 41.057232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632027, 36.448936, 41.002758>,  <34.965649, 36.650066, 40.911968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632027, 36.448936, 41.002758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216952, 0.079316, 0.972955,
		-0.507227, 0.860742, 0.042934,
		-0.834058, -0.502824, 0.226971,
		34.381809, 36.298088, 41.070850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622234, 37.018787, 41.433201>,  <34.965649, 36.650066, 40.911968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622234, 37.018787, 41.433201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492073, 36.641670, 41.462200>,  <34.413979, 36.415401, 41.479599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492073, 36.641670, 41.462200>,  <34.622234, 37.018787, 41.433201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492073, 36.641670, 41.462200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037930, 0.063599, 0.997254,
		-0.944815, 0.327258, 0.015064,
		-0.325401, -0.942792, 0.072502,
		34.394451, 36.358833, 41.483952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307720, 37.038013, 42.073624>,  <34.622234, 37.018787, 41.433201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307720, 37.038013, 42.073624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346706, 36.644302, 42.014706>,  <34.370098, 36.408077, 41.979355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346706, 36.644302, 42.014706>,  <34.307720, 37.038013, 42.073624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346706, 36.644302, 42.014706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258878, -0.117831, 0.958696,
		-0.960980, -0.131569, 0.243324,
		0.097463, -0.984279, -0.147294,
		34.375946, 36.349018, 41.970516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041847, 36.723637, 42.687798>,  <34.307720, 37.038013, 42.073624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041847, 36.723637, 42.687798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255234, 36.430889, 42.518196>,  <34.383266, 36.255241, 42.416435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255234, 36.430889, 42.518196>,  <34.041847, 36.723637, 42.687798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255234, 36.430889, 42.518196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295801, -0.308211, 0.904161,
		-0.792410, -0.607763, 0.052067,
		0.533468, -0.731868, -0.424006,
		34.415276, 36.211330, 42.390995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798126, 36.178154, 42.850163>,  <34.041847, 36.723637, 42.687798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798126, 36.178154, 42.850163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178307, 36.071632, 42.786003>,  <34.406414, 36.007721, 42.747509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178307, 36.071632, 42.786003>,  <33.798126, 36.178154, 42.850163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178307, 36.071632, 42.786003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080574, -0.287294, 0.954448,
		-0.300250, -0.920080, -0.251602,
		0.950451, -0.266300, -0.160395,
		34.463440, 35.991741, 42.737885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922134, 35.689709, 43.272579>,  <33.798126, 36.178154, 42.850163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922134, 35.689709, 43.272579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295811, 35.766876, 43.152538>,  <34.520016, 35.813175, 43.080513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.295811, 35.766876, 43.152538>,  <33.922134, 35.689709, 43.272579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295811, 35.766876, 43.152538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344133, -0.265420, 0.900624,
		0.094095, -0.944634, -0.314344,
		0.934194, 0.192920, -0.300106,
		34.576069, 35.824753, 43.062508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186554, 35.109402, 43.605698>,  <33.922134, 35.689709, 43.272579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186554, 35.109402, 43.605698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476952, 35.373180, 43.527660>,  <34.651188, 35.531448, 43.480839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476952, 35.373180, 43.527660>,  <34.186554, 35.109402, 43.605698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476952, 35.373180, 43.527660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423135, -0.204707, 0.882639,
		0.542118, -0.723341, -0.427652,
		0.725992, 0.659449, -0.195096,
		34.694748, 35.571014, 43.469131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772285, 34.735630, 43.662029>,  <34.186554, 35.109402, 43.605698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772285, 34.735630, 43.662029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889168, 35.114071, 43.717888>,  <34.959297, 35.341137, 43.751404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889168, 35.114071, 43.717888>,  <34.772285, 34.735630, 43.662029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889168, 35.114071, 43.717888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398226, -0.253130, 0.881669,
		0.869500, -0.202019, -0.450729,
		0.292208, 0.946104, 0.139648,
		34.976830, 35.397903, 43.759781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285511, 34.668941, 44.197086>,  <34.772285, 34.735630, 43.662029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285511, 34.668941, 44.197086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231197, 35.063904, 44.164600>,  <35.198608, 35.300880, 44.145111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231197, 35.063904, 44.164600>,  <35.285511, 34.668941, 44.197086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231197, 35.063904, 44.164600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205975, 0.108313, 0.972544,
		0.969091, 0.115324, -0.218088,
		-0.135780, 0.987405, -0.081211,
		35.190464, 35.360126, 44.140236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960579, 35.085995, 44.281860>,  <35.285511, 34.668941, 44.197086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960579, 35.085995, 44.281860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633339, 35.288219, 44.391487>,  <35.436993, 35.409554, 44.457264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633339, 35.288219, 44.391487>,  <35.960579, 35.085995, 44.281860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633339, 35.288219, 44.391487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276622, -0.071860, 0.958288,
		0.504169, 0.859792, -0.081061,
		-0.818104, 0.505562, 0.274067,
		35.387909, 35.439888, 44.473709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184917, 35.614285, 44.740040>,  <35.960579, 35.085995, 44.281860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184917, 35.614285, 44.740040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803661, 35.530170, 44.827038>,  <35.574909, 35.479702, 44.879234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803661, 35.530170, 44.827038>,  <36.184917, 35.614285, 44.740040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803661, 35.530170, 44.827038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205477, 0.077661, 0.975576,
		-0.222037, 0.974551, -0.030814,
		-0.953142, -0.210282, 0.217491,
		35.517719, 35.467087, 44.892284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031261, 36.057190, 45.289604>,  <36.184917, 35.614285, 44.740040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031261, 36.057190, 45.289604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727932, 35.798519, 45.322495>,  <35.545933, 35.643318, 45.342228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727932, 35.798519, 45.322495>,  <36.031261, 36.057190, 45.289604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727932, 35.798519, 45.322495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021095, 0.150411, 0.988398,
		-0.651538, 0.747790, -0.127702,
		-0.758323, -0.646673, 0.082224,
		35.500435, 35.604519, 45.347160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468258, 36.413399, 45.653156>,  <36.031261, 36.057190, 45.289604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468258, 36.413399, 45.653156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406982, 36.025967, 45.731518>,  <35.370216, 35.793507, 45.778534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406982, 36.025967, 45.731518>,  <35.468258, 36.413399, 45.653156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406982, 36.025967, 45.731518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027015, 0.202276, 0.978956,
		-0.987828, 0.144673, -0.057153,
		-0.153189, -0.968584, 0.195906,
		35.361027, 35.735390, 45.790291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180611, 36.505909, 46.259571>,  <35.468258, 36.413399, 45.653156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180611, 36.505909, 46.259571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244526, 36.111645, 46.237885>,  <35.282875, 35.875088, 46.224873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244526, 36.111645, 46.237885>,  <35.180611, 36.505909, 46.259571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244526, 36.111645, 46.237885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056499, -0.045701, 0.997356,
		-0.985533, -0.162430, 0.048386,
		0.159790, -0.985661, -0.054217,
		35.292461, 35.815945, 46.221619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557461, 36.122181, 46.639931>,  <35.180611, 36.505909, 46.259571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557461, 36.122181, 46.639931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865299, 35.868183, 46.613091>,  <35.050003, 35.715786, 46.596985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865299, 35.868183, 46.613091>,  <34.557461, 36.122181, 46.639931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865299, 35.868183, 46.613091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028737, -0.139421, 0.989816,
		-0.637882, -0.759832, -0.125546,
		0.769598, -0.634993, -0.067099,
		35.096180, 35.677685, 46.592960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320568, 35.566948, 47.032322>,  <34.557461, 36.122181, 46.639931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320568, 35.566948, 47.032322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716660, 35.526970, 46.993408>,  <34.954315, 35.502983, 46.970058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716660, 35.526970, 46.993408>,  <34.320568, 35.566948, 47.032322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716660, 35.526970, 46.993408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065066, -0.285947, 0.956034,
		-0.123373, -0.953019, -0.276648,
		0.990225, -0.099948, -0.097287,
		35.013725, 35.496986, 46.964222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528164, 34.917686, 47.317146>,  <34.320568, 35.566948, 47.032322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528164, 34.917686, 47.317146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842697, 35.161419, 47.357937>,  <35.031418, 35.307659, 47.382412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842697, 35.161419, 47.357937>,  <34.528164, 34.917686, 47.317146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842697, 35.161419, 47.357937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040711, -0.215803, 0.975588,
		0.616462, -0.762984, -0.194500,
		0.786332, 0.609331, 0.101972,
		35.078598, 35.344219, 47.388527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918655, 34.541874, 47.683018>,  <34.528164, 34.917686, 47.317146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918655, 34.541874, 47.683018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116928, 34.887825, 47.714725>,  <35.235889, 35.095398, 47.733749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116928, 34.887825, 47.714725>,  <34.918655, 34.541874, 47.683018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116928, 34.887825, 47.714725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125988, -0.161915, 0.978729,
		0.859319, -0.475148, -0.189222,
		0.495680, 0.864880, 0.079274,
		35.265633, 35.147289, 47.738506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417553, 34.329498, 48.153168>,  <34.918655, 34.541874, 47.683018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417553, 34.329498, 48.153168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399879, 34.729065, 48.159035>,  <35.389275, 34.968803, 48.162556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399879, 34.729065, 48.159035>,  <35.417553, 34.329498, 48.153168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399879, 34.729065, 48.159035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295687, -0.000948, 0.955284,
		0.954263, 0.046543, -0.295325,
		-0.044182, 0.998916, 0.014667,
		35.386623, 35.028740, 48.163433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998627, 34.505821, 48.490826>,  <35.417553, 34.329498, 48.153168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998627, 34.505821, 48.490826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746693, 34.815681, 48.513527>,  <35.595531, 35.001598, 48.527145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746693, 34.815681, 48.513527>,  <35.998627, 34.505821, 48.490826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746693, 34.815681, 48.513527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084731, -0.004102, 0.996395,
		0.772090, 0.632377, -0.063053,
		-0.629839, 0.774650, 0.056749,
		35.557739, 35.048077, 48.530552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405846, 34.965672, 48.821861>,  <35.998627, 34.505821, 48.490826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405846, 34.965672, 48.821861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020889, 35.053650, 48.885643>,  <35.789917, 35.106438, 48.923912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020889, 35.053650, 48.885643>,  <36.405846, 34.965672, 48.821861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020889, 35.053650, 48.885643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154976, -0.037591, 0.987203,
		0.223129, 0.974787, 0.002091,
		-0.962391, 0.219950, 0.159456,
		35.732174, 35.119637, 48.933479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445606, 35.366955, 49.455322>,  <36.405846, 34.965672, 48.821861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445606, 35.366955, 49.455322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053268, 35.291752, 49.434925>,  <35.817867, 35.246628, 49.422688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053268, 35.291752, 49.434925>,  <36.445606, 35.366955, 49.455322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053268, 35.291752, 49.434925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030230, -0.111703, 0.993282,
		-0.192445, 0.975794, 0.103880,
		-0.980842, -0.188012, -0.050995,
		35.759014, 35.235348, 49.419628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172894, 35.896828, 49.844418>,  <36.445606, 35.366955, 49.455322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172894, 35.896828, 49.844418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913780, 35.592117, 49.840885>,  <35.758312, 35.409290, 49.838764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913780, 35.592117, 49.840885>,  <36.172894, 35.896828, 49.844418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913780, 35.592117, 49.840885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018540, 0.004169, 0.999819,
		-0.761601, 0.647828, -0.016824,
		-0.647781, -0.761775, -0.008835,
		35.719444, 35.363586, 49.838234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827217, 36.058472, 50.423229>,  <36.172894, 35.896828, 49.844418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827217, 36.058472, 50.423229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727688, 35.678867, 50.345802>,  <35.667969, 35.451107, 50.299347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.727688, 35.678867, 50.345802>,  <35.827217, 36.058472, 50.423229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727688, 35.678867, 50.345802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092029, -0.175784, 0.980118,
		-0.964166, 0.261692, -0.043597,
		-0.248825, -0.949008, -0.193569,
		35.653042, 35.394165, 50.287731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379967, 35.981216, 50.867580>,  <35.827217, 36.058472, 50.423229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379967, 35.981216, 50.867580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457703, 35.606503, 50.751194>,  <35.504345, 35.381672, 50.681362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.457703, 35.606503, 50.751194>,  <35.379967, 35.981216, 50.867580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457703, 35.606503, 50.751194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152522, -0.321868, 0.934419,
		-0.969004, -0.137215, -0.205433,
		0.194339, -0.936789, -0.290963,
		35.516003, 35.325466, 50.663906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791710, 35.522964, 51.119862>,  <35.379967, 35.981216, 50.867580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791710, 35.522964, 51.119862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138454, 35.324783, 51.097683>,  <35.346500, 35.205875, 51.084377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138454, 35.324783, 51.097683>,  <34.791710, 35.522964, 51.119862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138454, 35.324783, 51.097683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080361, -0.248629, 0.965259,
		-0.492023, -0.832294, -0.255343,
		0.866865, -0.495450, -0.055447,
		35.398514, 35.176147, 51.081047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597847, 34.962700, 51.546680>,  <34.791710, 35.522964, 51.119862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597847, 34.962700, 51.546680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994934, 34.931427, 51.510006>,  <35.233185, 34.912663, 51.488003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994934, 34.931427, 51.510006>,  <34.597847, 34.962700, 51.546680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994934, 34.931427, 51.510006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067320, -0.271202, 0.960165,
		-0.099936, -0.959342, -0.263962,
		0.992714, -0.078185, -0.091686,
		35.292747, 34.907970, 51.482502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802212, 34.232288, 51.794724>,  <34.597847, 34.962700, 51.546680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802212, 34.232288, 51.794724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125961, 34.466194, 51.816521>,  <35.320210, 34.606537, 51.829597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125961, 34.466194, 51.816521>,  <34.802212, 34.232288, 51.794724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125961, 34.466194, 51.816521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062046, -0.177399, 0.982181,
		0.584010, -0.791569, -0.179864,
		0.809372, 0.584763, 0.054489,
		35.368774, 34.641624, 51.832867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337414, 33.896164, 52.097397>,  <34.802212, 34.232288, 51.794724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337414, 33.896164, 52.097397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440411, 34.278969, 52.150818>,  <35.502209, 34.508652, 52.182869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440411, 34.278969, 52.150818>,  <35.337414, 33.896164, 52.097397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440411, 34.278969, 52.150818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122772, -0.169492, 0.977855,
		0.958450, -0.235391, -0.161136,
		0.257489, 0.957008, 0.133551,
		35.517658, 34.566071, 52.190884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877934, 33.935131, 52.632736>,  <35.337414, 33.896164, 52.097397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877934, 33.935131, 52.632736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750137, 34.313866, 52.647865>,  <35.673458, 34.541107, 52.656944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750137, 34.313866, 52.647865>,  <35.877934, 33.935131, 52.632736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750137, 34.313866, 52.647865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039903, -0.026434, 0.998854,
		0.946748, 0.320636, -0.029336,
		-0.319493, 0.946833, 0.037821,
		35.654289, 34.597916, 52.659210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240978, 34.203018, 53.143867>,  <35.877934, 33.935131, 52.632736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240978, 34.203018, 53.143867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938274, 34.464302, 53.133770>,  <35.756653, 34.621071, 53.127712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938274, 34.464302, 53.133770>,  <36.240978, 34.203018, 53.143867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938274, 34.464302, 53.133770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049131, 0.095347, 0.994231,
		0.651848, 0.751150, -0.104247,
		-0.756756, 0.653210, -0.025247,
		35.711246, 34.660267, 53.126198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385696, 34.787468, 53.611370>,  <36.240978, 34.203018, 53.143867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385696, 34.787468, 53.611370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990044, 34.800461, 53.554020>,  <35.752651, 34.808258, 53.519608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990044, 34.800461, 53.554020>,  <36.385696, 34.787468, 53.611370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990044, 34.800461, 53.554020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141482, 0.054658, 0.988431,
		0.039947, 0.997976, -0.049468,
		-0.989134, 0.032486, -0.143379,
		35.693302, 34.810207, 53.511005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267845, 35.458363, 53.858944>,  <36.385696, 34.787468, 53.611370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267845, 35.458363, 53.858944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920082, 35.262672, 53.886597>,  <35.711422, 35.145256, 53.903191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920082, 35.262672, 53.886597>,  <36.267845, 35.458363, 53.858944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920082, 35.262672, 53.886597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105116, 0.319864, 0.941614,
		-0.482778, 0.811383, -0.329520,
		-0.869411, -0.489229, 0.069134,
		35.659260, 35.115902, 53.907337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958534, 35.818398, 54.271820>,  <36.267845, 35.458363, 53.858944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958534, 35.818398, 54.271820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686825, 35.524929, 54.278862>,  <35.523800, 35.348846, 54.283089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686825, 35.524929, 54.278862>,  <35.958534, 35.818398, 54.271820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686825, 35.524929, 54.278862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380692, 0.372770, 0.846236,
		-0.627425, 0.568123, -0.532516,
		-0.679273, -0.733675, 0.017605,
		35.483044, 35.304825, 54.284145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347481, 36.066345, 54.346840>,  <35.958534, 35.818398, 54.271820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347481, 36.066345, 54.346840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335800, 35.703110, 54.513947>,  <35.328793, 35.485168, 54.614212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335800, 35.703110, 54.513947>,  <35.347481, 36.066345, 54.346840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335800, 35.703110, 54.513947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431031, 0.388531, 0.814405,
		-0.901865, -0.156286, -0.402759,
		-0.029205, -0.908085, 0.417766,
		35.327038, 35.430683, 54.639275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640957, 35.759003, 54.520603>,  <35.347481, 36.066345, 54.346840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640957, 35.759003, 54.520603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921375, 35.629959, 54.774994>,  <35.089626, 35.552532, 54.927628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921375, 35.629959, 54.774994>,  <34.640957, 35.759003, 54.520603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921375, 35.629959, 54.774994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532319, 0.356698, 0.767725,
		-0.474525, -0.876750, 0.078330,
		0.701043, -0.322609, 0.635973,
		35.131687, 35.533176, 54.965786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337349, 35.347645, 55.057842>,  <34.640957, 35.759003, 54.520603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337349, 35.347645, 55.057842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587746, 35.637047, 55.174232>,  <34.737984, 35.810688, 55.244068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587746, 35.637047, 55.174232>,  <34.337349, 35.347645, 55.057842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587746, 35.637047, 55.174232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740303, 0.434064, 0.513361,
		0.245119, -0.536771, 0.807338,
		0.625993, 0.723509, 0.290975,
		34.775543, 35.854099, 55.261524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232224, 35.372540, 55.797577>,  <34.337349, 35.347645, 55.057842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232224, 35.372540, 55.797577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383785, 35.720890, 55.672359>,  <34.474724, 35.929901, 55.597229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383785, 35.720890, 55.672359>,  <34.232224, 35.372540, 55.797577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383785, 35.720890, 55.672359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735899, 0.488652, 0.468692,
		0.561146, 0.052783, 0.826032,
		0.378903, 0.870881, -0.313048,
		34.497456, 35.982155, 55.578445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645378, 34.767090, 55.400845>,  <34.232224, 35.372540, 55.797577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645378, 34.767090, 55.400845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838879, 35.038784, 55.621616>,  <34.954979, 35.201801, 55.754082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838879, 35.038784, 55.621616>,  <34.645378, 34.767090, 55.400845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838879, 35.038784, 55.621616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867301, -0.287461, -0.406393,
		-0.117377, 0.675283, -0.728159,
		0.483748, 0.679234, 0.551932,
		34.984001, 35.242554, 55.787197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048122, 34.457825, 55.776524>,  <34.645378, 34.767090, 55.400845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048122, 34.457825, 55.776524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319679, 34.310284, 56.030468>,  <34.482613, 34.221760, 56.182835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319679, 34.310284, 56.030468>,  <34.048122, 34.457825, 55.776524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319679, 34.310284, 56.030468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566601, -0.813107, 0.133491,
		0.466975, -0.450341, -0.761004,
		0.678894, -0.368849, 0.634865,
		34.523346, 34.199631, 56.220928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476643, 34.050312, 55.849636>,  <34.048122, 34.457825, 55.776524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476643, 34.050312, 55.849636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431091, 33.715233, 56.063286>,  <33.403763, 33.514183, 56.191475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431091, 33.715233, 56.063286>,  <33.476643, 34.050312, 55.849636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431091, 33.715233, 56.063286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112924, -0.523225, -0.844679,
		0.987056, -0.156503, -0.035015,
		-0.113874, -0.837700, 0.534126,
		33.396931, 33.463924, 56.223522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932476, 33.623726, 55.595539>,  <33.476643, 34.050312, 55.849636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932476, 33.623726, 55.595539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626007, 33.423168, 55.756329>,  <33.442123, 33.302834, 55.852802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626007, 33.423168, 55.756329>,  <33.932476, 33.623726, 55.595539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626007, 33.423168, 55.756329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208957, -0.397144, -0.893652,
		0.607711, -0.768689, 0.199512,
		-0.766176, -0.501392, 0.401972,
		33.396156, 33.272751, 55.876919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105759, 32.800510, 55.558807>,  <33.932476, 33.623726, 55.595539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105759, 32.800510, 55.558807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732780, 32.944859, 55.551682>,  <33.508995, 33.031467, 55.547405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732780, 32.944859, 55.551682>,  <34.105759, 32.800510, 55.558807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732780, 32.944859, 55.551682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042356, -0.158146, -0.986507,
		-0.358823, -0.919108, 0.162747,
		-0.932444, 0.360874, -0.017816,
		33.453049, 33.053120, 55.546337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575218, 32.339615, 55.286247>,  <34.105759, 32.800510, 55.558807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575218, 32.339615, 55.286247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453499, 32.713039, 55.210487>,  <33.380466, 32.937092, 55.165031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453499, 32.713039, 55.210487>,  <33.575218, 32.339615, 55.286247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453499, 32.713039, 55.210487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061319, -0.217615, -0.974107,
		-0.950602, -0.284802, 0.123464,
		-0.304295, 0.933558, -0.189402,
		33.362209, 32.993107, 55.153667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999268, 32.369057, 54.812382>,  <33.575218, 32.339615, 55.286247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999268, 32.369057, 54.812382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203873, 32.712208, 54.792789>,  <33.326637, 32.918098, 54.781033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203873, 32.712208, 54.792789>,  <32.999268, 32.369057, 54.812382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203873, 32.712208, 54.792789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108122, 0.007707, -0.994108,
		-0.852444, 0.513799, 0.096697,
		0.511516, 0.857876, -0.048983,
		33.357327, 32.969570, 54.778095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685280, 32.734562, 54.330044>,  <32.999268, 32.369057, 54.812382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685280, 32.734562, 54.330044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034405, 32.929668, 54.336735>,  <33.243881, 33.046734, 54.340748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034405, 32.929668, 54.336735>,  <32.685280, 32.734562, 54.330044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034405, 32.929668, 54.336735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104139, 0.219607, -0.970014,
		-0.476816, 0.844899, 0.242472,
		0.872813, 0.487769, 0.016725,
		33.296249, 33.076000, 54.341751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583752, 33.330399, 53.953335>,  <32.685280, 32.734562, 54.330044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583752, 33.330399, 53.953335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976742, 33.258167, 53.934887>,  <33.212536, 33.214828, 53.923820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976742, 33.258167, 53.934887>,  <32.583752, 33.330399, 53.953335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976742, 33.258167, 53.934887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027806, 0.102654, -0.994328,
		0.184284, 0.978190, 0.095835,
		0.982480, -0.180574, -0.046117,
		33.271484, 33.203995, 53.921051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878284, 33.786972, 53.388680>,  <32.583752, 33.330399, 53.953335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878284, 33.786972, 53.388680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121868, 33.474895, 53.445908>,  <33.268017, 33.287647, 53.480244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121868, 33.474895, 53.445908>,  <32.878284, 33.786972, 53.388680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121868, 33.474895, 53.445908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212905, -0.012977, -0.976987,
		0.764096, 0.625402, 0.158205,
		0.608957, -0.780195, 0.143067,
		33.304554, 33.240837, 53.488827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435764, 33.961269, 52.912861>,  <32.878284, 33.786972, 53.388680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435764, 33.961269, 52.912861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467842, 33.571747, 52.997963>,  <33.487087, 33.338032, 53.049023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467842, 33.571747, 52.997963>,  <33.435764, 33.961269, 52.912861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467842, 33.571747, 52.997963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165295, -0.197497, -0.966267,
		0.982979, 0.112653, 0.145128,
		0.080190, -0.973809, 0.212757,
		33.491898, 33.279606, 53.061790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036499, 33.764397, 52.694431>,  <33.435764, 33.961269, 52.912861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036499, 33.764397, 52.694431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825146, 33.425369, 52.714165>,  <33.698334, 33.221951, 52.726006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825146, 33.425369, 52.714165>,  <34.036499, 33.764397, 52.694431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825146, 33.425369, 52.714165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138630, -0.143465, -0.979898,
		0.837611, -0.510922, 0.193303,
		-0.528384, -0.847571, 0.049338,
		33.666630, 33.171097, 52.728966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385475, 33.252388, 52.277481>,  <34.036499, 33.764397, 52.694431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385475, 33.252388, 52.277481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013496, 33.107727, 52.304028>,  <33.790310, 33.020931, 52.319954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013496, 33.107727, 52.304028>,  <34.385475, 33.252388, 52.277481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013496, 33.107727, 52.304028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091943, -0.403482, -0.910356,
		0.356009, -0.840483, 0.408468,
		-0.929948, -0.361651, 0.066367,
		33.734512, 32.999233, 52.323936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582695, 32.606171, 52.129635>,  <34.385475, 33.252388, 52.277481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582695, 32.606171, 52.129635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195694, 32.670242, 52.051380>,  <33.963493, 32.708687, 52.004429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195694, 32.670242, 52.051380>,  <34.582695, 32.606171, 52.129635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195694, 32.670242, 52.051380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123922, -0.374033, -0.919099,
		-0.220398, -0.913477, 0.342029,
		-0.967506, 0.160183, -0.195636,
		33.905441, 32.718296, 51.992691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403099, 31.991337, 51.813763>,  <34.582695, 32.606171, 52.129635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403099, 31.991337, 51.813763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127388, 32.260609, 51.706638>,  <33.961960, 32.422173, 51.642365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127388, 32.260609, 51.706638>,  <34.403099, 31.991337, 51.813763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127388, 32.260609, 51.706638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100784, -0.276964, -0.955580,
		-0.717450, -0.685654, 0.123061,
		-0.689280, 0.673179, -0.267811,
		33.920605, 32.462563, 51.626293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955627, 31.672152, 51.314350>,  <34.403099, 31.991337, 51.813763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955627, 31.672152, 51.314350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879864, 32.062019, 51.266781>,  <33.834404, 32.295940, 51.238239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879864, 32.062019, 51.266781>,  <33.955627, 31.672152, 51.314350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879864, 32.062019, 51.266781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043896, -0.129395, -0.990621,
		-0.980916, -0.182416, 0.067293,
		-0.189413, 0.974670, -0.118919,
		33.823040, 32.354420, 51.231106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396584, 31.630772, 50.797409>,  <33.955627, 31.672152, 51.314350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396584, 31.630772, 50.797409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520863, 32.010880, 50.788857>,  <33.595428, 32.238945, 50.783726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520863, 32.010880, 50.788857>,  <33.396584, 31.630772, 50.797409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520863, 32.010880, 50.788857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100762, 0.010559, -0.994855,
		-0.945153, 0.311252, 0.099031,
		0.310696, 0.950269, -0.021382,
		33.614071, 32.295959, 50.782440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000408, 31.945618, 50.335873>,  <33.396584, 31.630772, 50.797409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000408, 31.945618, 50.335873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309624, 32.197254, 50.368492>,  <33.495155, 32.348236, 50.388065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309624, 32.197254, 50.368492>,  <33.000408, 31.945618, 50.335873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309624, 32.197254, 50.368492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116405, 0.267053, -0.956626,
		-0.623581, 0.730020, 0.279673,
		0.773043, 0.629089, 0.081551,
		33.541538, 32.385983, 50.392956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695400, 32.569324, 49.991901>,  <33.000408, 31.945618, 50.335873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695400, 32.569324, 49.991901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094700, 32.581596, 50.012093>,  <33.334282, 32.588959, 50.024208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094700, 32.581596, 50.012093>,  <32.695400, 32.569324, 49.991901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094700, 32.581596, 50.012093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028452, 0.499185, -0.866028,
		-0.051772, 0.865952, 0.497441,
		0.998254, 0.030683, 0.050481,
		33.394176, 32.590801, 50.027237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897877, 33.271023, 49.902092>,  <32.695400, 32.569324, 49.991901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897877, 33.271023, 49.902092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226822, 33.063557, 49.808533>,  <33.424191, 32.939075, 49.752399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226822, 33.063557, 49.808533>,  <32.897877, 33.271023, 49.902092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226822, 33.063557, 49.808533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075776, 0.507266, -0.858452,
		0.563896, 0.688234, 0.456459,
		0.822362, -0.518666, -0.233893,
		33.473530, 32.907955, 49.738365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209244, 33.699539, 49.346741>,  <32.897877, 33.271023, 49.902092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209244, 33.699539, 49.346741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414135, 33.356628, 49.325966>,  <33.537067, 33.150883, 49.313499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414135, 33.356628, 49.325966>,  <33.209244, 33.699539, 49.346741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414135, 33.356628, 49.325966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225105, 0.192372, -0.955155,
		0.828827, 0.477562, 0.291516,
		0.512225, -0.857279, -0.051941,
		33.567802, 33.099445, 49.310383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911575, 33.853634, 49.093494>,  <33.209244, 33.699539, 49.346741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911575, 33.853634, 49.093494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800446, 33.478413, 49.010670>,  <33.733768, 33.253281, 48.960976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800446, 33.478413, 49.010670>,  <33.911575, 33.853634, 49.093494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800446, 33.478413, 49.010670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255674, 0.135565, -0.957211,
		0.925984, -0.318872, 0.202173,
		-0.277821, -0.938053, -0.207058,
		33.717098, 33.196999, 48.948551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458511, 33.585560, 48.650646>,  <33.911575, 33.853634, 49.093494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458511, 33.585560, 48.650646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174423, 33.312572, 48.581566>,  <34.003971, 33.148781, 48.540115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174423, 33.312572, 48.581566>,  <34.458511, 33.585560, 48.650646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174423, 33.312572, 48.581566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228625, 0.008423, -0.973478,
		0.665819, -0.730870, 0.150047,
		-0.710222, -0.682465, -0.172704,
		33.961357, 33.107834, 48.529755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697243, 33.160793, 48.004635>,  <34.458511, 33.585560, 48.650646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697243, 33.160793, 48.004635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304749, 33.088943, 48.032654>,  <34.069252, 33.045834, 48.049465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304749, 33.088943, 48.032654>,  <34.697243, 33.160793, 48.004635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304749, 33.088943, 48.032654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055091, -0.086952, -0.994688,
		0.184761, -0.979885, 0.075425,
		-0.981238, -0.179625, 0.070048,
		34.010376, 33.035057, 48.053669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527901, 32.600506, 47.504520>,  <34.697243, 33.160793, 48.004635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527901, 32.600506, 47.504520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182434, 32.780788, 47.594807>,  <33.975155, 32.888958, 47.648979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182434, 32.780788, 47.594807>,  <34.527901, 32.600506, 47.504520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182434, 32.780788, 47.594807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332068, -0.171852, -0.927469,
		-0.379229, -0.875973, 0.298088,
		-0.863664, 0.450708, 0.225711,
		33.923336, 32.916000, 47.662521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072033, 32.218174, 47.271824>,  <34.527901, 32.600506, 47.504520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072033, 32.218174, 47.271824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879837, 32.566719, 47.311535>,  <33.764519, 32.775845, 47.335361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879837, 32.566719, 47.311535>,  <34.072033, 32.218174, 47.271824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879837, 32.566719, 47.311535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461976, -0.155255, -0.873198,
		-0.745458, -0.465429, 0.477147,
		-0.480491, 0.871362, 0.099281,
		33.735691, 32.828129, 47.341320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401775, 32.052162, 47.105713>,  <34.072033, 32.218174, 47.271824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401775, 32.052162, 47.105713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440369, 32.446228, 47.048935>,  <33.463524, 32.682667, 47.014870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440369, 32.446228, 47.048935>,  <33.401775, 32.052162, 47.105713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440369, 32.446228, 47.048935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397536, -0.092602, -0.912902,
		-0.912500, 0.144508, 0.382702,
		0.096482, 0.985161, -0.141946,
		33.469315, 32.741776, 47.006351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797565, 32.248737, 46.956314>,  <33.401775, 32.052162, 47.105713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797565, 32.248737, 46.956314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050404, 32.523117, 46.812126>,  <33.202106, 32.687744, 46.725613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050404, 32.523117, 46.812126>,  <32.797565, 32.248737, 46.956314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050404, 32.523117, 46.812126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596747, 0.134156, -0.791135,
		-0.494317, 0.715179, 0.494135,
		0.632095, 0.685945, -0.360466,
		33.240032, 32.728901, 46.703987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363682, 32.777172, 46.770252>,  <32.797565, 32.248737, 46.956314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363682, 32.777172, 46.770252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692310, 32.833195, 46.549198>,  <32.889488, 32.866810, 46.416565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692310, 32.833195, 46.549198>,  <32.363682, 32.777172, 46.770252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692310, 32.833195, 46.549198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569682, 0.164145, -0.805306,
		-0.022077, 0.976443, 0.214646,
		0.821568, 0.140059, -0.552638,
		32.938782, 32.875214, 46.383408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126312, 33.195869, 46.190708>,  <32.363682, 32.777172, 46.770252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126312, 33.195869, 46.190708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496075, 33.104954, 46.068188>,  <32.717930, 33.050404, 45.994675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496075, 33.104954, 46.068188>,  <32.126312, 33.195869, 46.190708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496075, 33.104954, 46.068188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261796, 0.205919, -0.942900,
		0.277381, 0.951808, 0.130850,
		0.924404, -0.227287, -0.306297,
		32.773396, 33.036766, 45.976299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424828, 33.779182, 45.681232>,  <32.126312, 33.195869, 46.190708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424828, 33.779182, 45.681232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618820, 33.446247, 45.573902>,  <32.735214, 33.246487, 45.509502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618820, 33.446247, 45.573902>,  <32.424828, 33.779182, 45.681232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618820, 33.446247, 45.573902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278291, 0.143989, -0.949643,
		0.829064, 0.535232, -0.161802,
		0.484982, -0.832343, -0.268326,
		32.764317, 33.196545, 45.493404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764507, 33.906818, 45.045391>,  <32.424828, 33.779182, 45.681232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764507, 33.906818, 45.045391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774513, 33.506981, 45.050953>,  <32.780518, 33.267078, 45.054291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774513, 33.506981, 45.050953>,  <32.764507, 33.906818, 45.045391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774513, 33.506981, 45.050953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114414, -0.016685, -0.993293,
		0.993118, 0.023260, -0.114785,
		0.025019, -0.999590, 0.013909,
		32.782021, 33.207104, 45.055126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150940, 33.701958, 44.477215>,  <32.764507, 33.906818, 45.045391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150940, 33.701958, 44.477215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976383, 33.350628, 44.555302>,  <32.871651, 33.139832, 44.602154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976383, 33.350628, 44.555302>,  <33.150940, 33.701958, 44.477215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976383, 33.350628, 44.555302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139138, -0.148484, -0.979078,
		0.888934, -0.454422, -0.057411,
		-0.436390, -0.878324, 0.195221,
		32.845467, 33.087132, 44.613869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570026, 33.194736, 44.124825>,  <33.150940, 33.701958, 44.477215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570026, 33.194736, 44.124825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198120, 33.050751, 44.155716>,  <32.974976, 32.964359, 44.174252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198120, 33.050751, 44.155716>,  <33.570026, 33.194736, 44.124825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198120, 33.050751, 44.155716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103552, 0.054393, -0.993136,
		0.353298, -0.931377, -0.087848,
		-0.929762, -0.359969, 0.077229,
		32.919193, 32.942760, 44.178886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601723, 32.821541, 43.546261>,  <33.570026, 33.194736, 44.124825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601723, 32.821541, 43.546261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218033, 32.846119, 43.656620>,  <32.987820, 32.860867, 43.722836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218033, 32.846119, 43.656620>,  <33.601723, 32.821541, 43.546261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218033, 32.846119, 43.656620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275145, 0.020542, -0.961183,
		-0.064733, -0.997899, -0.002796,
		-0.959221, 0.061451, 0.275897,
		32.930267, 32.864555, 43.739388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375114, 32.282158, 43.166862>,  <33.601723, 32.821541, 43.546261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375114, 32.282158, 43.166862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088081, 32.538479, 43.276005>,  <32.915863, 32.692272, 43.341488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088081, 32.538479, 43.276005>,  <33.375114, 32.282158, 43.166862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088081, 32.538479, 43.276005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389483, -0.044429, -0.919962,
		-0.577392, -0.766418, 0.281464,
		-0.717580, 0.640804, 0.272853,
		32.872807, 32.730721, 43.357861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841511, 32.118031, 42.651409>,  <33.375114, 32.282158, 43.166862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841511, 32.118031, 42.651409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706345, 32.468651, 42.788509>,  <32.625244, 32.679024, 42.870770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706345, 32.468651, 42.788509>,  <32.841511, 32.118031, 42.651409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706345, 32.468651, 42.788509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283702, 0.252374, -0.925106,
		-0.897402, -0.409843, 0.163398,
		-0.337911, 0.876547, 0.342754,
		32.604973, 32.731617, 42.891335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111607, 32.250084, 42.413090>,  <32.841511, 32.118031, 42.651409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111607, 32.250084, 42.413090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260399, 32.611420, 42.498520>,  <32.349674, 32.828220, 42.549778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260399, 32.611420, 42.498520>,  <32.111607, 32.250084, 42.413090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260399, 32.611420, 42.498520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222002, 0.309983, -0.924460,
		-0.901303, 0.296467, 0.315850,
		0.371980, 0.903337, 0.213572,
		32.371994, 32.882420, 42.562592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604340, 32.679501, 42.054024>,  <32.111607, 32.250084, 42.413090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604340, 32.679501, 42.054024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910597, 32.923153, 42.136723>,  <32.094353, 33.069344, 42.186340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910597, 32.923153, 42.136723>,  <31.604340, 32.679501, 42.054024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910597, 32.923153, 42.136723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111220, 0.441915, -0.890136,
		-0.633575, 0.658534, 0.406098,
		0.765645, 0.609134, 0.206744,
		32.140289, 33.105892, 42.198746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391106, 33.423359, 41.891350>,  <31.604340, 32.679501, 42.054024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391106, 33.423359, 41.891350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791006, 33.415718, 41.886803>,  <32.030949, 33.411133, 41.884075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791006, 33.415718, 41.886803>,  <31.391106, 33.423359, 41.891350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791006, 33.415718, 41.886803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003361, 0.375719, -0.926728,
		0.021972, 0.926537, 0.375562,
		0.999753, -0.019100, -0.011369,
		32.090931, 33.409988, 41.883392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441946, 33.998734, 41.530651>,  <31.391106, 33.423359, 41.891350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441946, 33.998734, 41.530651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791594, 33.806095, 41.505413>,  <32.001381, 33.690510, 41.490269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791594, 33.806095, 41.505413>,  <31.441946, 33.998734, 41.530651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791594, 33.806095, 41.505413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136076, 0.367514, -0.920009,
		0.466265, 0.795610, 0.386784,
		0.874117, -0.481600, -0.063096,
		32.053829, 33.661613, 41.486485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999222, 34.516888, 41.347557>,  <31.441946, 33.998734, 41.530651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999222, 34.516888, 41.347557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142284, 34.160465, 41.235771>,  <32.228123, 33.946613, 41.168701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142284, 34.160465, 41.235771>,  <31.999222, 34.516888, 41.347557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142284, 34.160465, 41.235771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045398, 0.315494, -0.947841,
		0.932749, 0.326314, 0.153290,
		0.357656, -0.891057, -0.279463,
		32.249580, 33.893147, 41.151932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676682, 34.588192, 41.018585>,  <31.999222, 34.516888, 41.347557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676682, 34.588192, 41.018585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545246, 34.236889, 40.879623>,  <32.466385, 34.026108, 40.796246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545246, 34.236889, 40.879623>,  <32.676682, 34.588192, 41.018585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545246, 34.236889, 40.879623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414992, 0.196162, -0.888427,
		0.848416, -0.436100, 0.300013,
		-0.328592, -0.878259, -0.347404,
		32.446671, 33.973412, 40.775402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256840, 34.411346, 40.634823>,  <32.676682, 34.588192, 41.018585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256840, 34.411346, 40.634823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986988, 34.137058, 40.525520>,  <32.825077, 33.972485, 40.459938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986988, 34.137058, 40.525520>,  <33.256840, 34.411346, 40.634823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986988, 34.137058, 40.525520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397572, -0.025628, -0.917213,
		0.621947, -0.727415, 0.289912,
		-0.674624, -0.685719, -0.273261,
		32.784599, 33.931343, 40.443542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646049, 33.758404, 40.301861>,  <33.256840, 34.411346, 40.634823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646049, 33.758404, 40.301861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275600, 33.766899, 40.151211>,  <33.053329, 33.771996, 40.060822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275600, 33.766899, 40.151211>,  <33.646049, 33.758404, 40.301861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275600, 33.766899, 40.151211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358967, -0.257193, -0.897215,
		-0.115919, -0.966127, 0.230569,
		-0.926124, 0.021238, -0.376621,
		32.997765, 33.773270, 40.038223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522133, 33.139786, 39.730797>,  <33.646049, 33.758404, 40.301861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522133, 33.139786, 39.730797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239208, 33.413441, 39.659607>,  <33.069454, 33.577633, 39.616894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239208, 33.413441, 39.659607>,  <33.522133, 33.139786, 39.730797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239208, 33.413441, 39.659607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151410, -0.099306, -0.983470,
		-0.690499, -0.722564, -0.033345,
		-0.707308, 0.684134, -0.177975,
		33.027016, 33.618679, 39.606213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824154, 32.460491, 39.589710>,  <33.522133, 33.139786, 39.730797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824154, 32.460491, 39.589710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108997, 32.346687, 39.332977>,  <34.279903, 32.278404, 39.178936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108997, 32.346687, 39.332977>,  <33.824154, 32.460491, 39.589710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108997, 32.346687, 39.332977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271802, -0.731198, 0.625678,
		-0.647319, -0.620005, -0.443364,
		0.712111, -0.284506, -0.641837,
		34.322632, 32.261337, 39.140427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728489, 31.780722, 39.514904>,  <33.824154, 32.460491, 39.589710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728489, 31.780722, 39.514904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110245, 31.835014, 39.408539>,  <34.339298, 31.867590, 39.344719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110245, 31.835014, 39.408539>,  <33.728489, 31.780722, 39.514904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110245, 31.835014, 39.408539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273098, -0.756779, 0.593888,
		-0.120628, -0.639423, -0.759333,
		0.954393, 0.135733, -0.265914,
		34.396564, 31.875734, 39.328766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002705, 31.120897, 39.306240>,  <33.728489, 31.780722, 39.514904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002705, 31.120897, 39.306240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313026, 31.340055, 39.431427>,  <34.499218, 31.471550, 39.506538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313026, 31.340055, 39.431427>,  <34.002705, 31.120897, 39.306240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313026, 31.340055, 39.431427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104653, -0.600860, 0.792474,
		0.622240, -0.582048, -0.523486,
		0.775800, 0.547893, 0.312966,
		34.545765, 31.504423, 39.525318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384480, 30.662354, 39.835686>,  <34.002705, 31.120897, 39.306240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384480, 30.662354, 39.835686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545780, 31.024664, 39.887772>,  <34.642559, 31.242050, 39.919022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545780, 31.024664, 39.887772>,  <34.384480, 30.662354, 39.835686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545780, 31.024664, 39.887772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091876, -0.181653, 0.979061,
		0.910465, -0.382846, -0.156471,
		0.403253, 0.905777, 0.130214,
		34.666756, 31.296396, 39.926834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936489, 30.487425, 40.222389>,  <34.384480, 30.662354, 39.835686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936489, 30.487425, 40.222389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869064, 30.877769, 40.277935>,  <34.828609, 31.111977, 40.311264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869064, 30.877769, 40.277935>,  <34.936489, 30.487425, 40.222389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869064, 30.877769, 40.277935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137103, -0.116300, 0.983706,
		0.976110, 0.184852, -0.114190,
		-0.168559, 0.975861, 0.138865,
		34.818497, 31.170528, 40.319595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500412, 30.750544, 40.671661>,  <34.936489, 30.487425, 40.222389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500412, 30.750544, 40.671661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203499, 31.017084, 40.699924>,  <35.025352, 31.177008, 40.716881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203499, 31.017084, 40.699924>,  <35.500412, 30.750544, 40.671661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203499, 31.017084, 40.699924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114578, 0.022327, 0.993163,
		0.660217, 0.745305, -0.092922,
		-0.742284, 0.666350, 0.070655,
		34.980812, 31.216990, 40.721123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700680, 31.181770, 41.269676>,  <35.500412, 30.750544, 40.671661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700680, 31.181770, 41.269676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311001, 31.262459, 41.229191>,  <35.077194, 31.310873, 41.204899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311001, 31.262459, 41.229191>,  <35.700680, 31.181770, 41.269676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311001, 31.262459, 41.229191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086745, 0.079323, 0.993068,
		0.208353, 0.976225, -0.059778,
		-0.974199, 0.201723, -0.101209,
		35.018742, 31.322975, 41.198830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586494, 31.818584, 41.672615>,  <35.700680, 31.181770, 41.269676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586494, 31.818584, 41.672615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232819, 31.632898, 41.651798>,  <35.020611, 31.521486, 41.639309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.232819, 31.632898, 41.651798>,  <35.586494, 31.818584, 41.672615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232819, 31.632898, 41.651798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035736, -0.043872, 0.998398,
		-0.465756, 0.884634, 0.022202,
		-0.884191, -0.464216, -0.052047,
		34.967560, 31.493633, 41.636185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258137, 32.061535, 42.284599>,  <35.586494, 31.818584, 41.672615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258137, 32.061535, 42.284599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050098, 31.748753, 42.147175>,  <34.925274, 31.561083, 42.064720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050098, 31.748753, 42.147175>,  <35.258137, 32.061535, 42.284599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050098, 31.748753, 42.147175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094271, -0.347236, 0.933028,
		-0.848887, 0.517656, 0.106881,
		-0.520100, -0.781959, -0.343563,
		34.894070, 31.514164, 42.044106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723267, 32.053970, 42.715828>,  <35.258137, 32.061535, 42.284599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723267, 32.053970, 42.715828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714432, 31.681288, 42.570816>,  <34.709129, 31.457678, 42.483810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714432, 31.681288, 42.570816>,  <34.723267, 32.053970, 42.715828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714432, 31.681288, 42.570816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111778, -0.358041, 0.926991,
		-0.993488, 0.060999, -0.096236,
		-0.022089, -0.931711, -0.362528,
		34.707806, 31.401775, 42.462059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164948, 31.702890, 43.184692>,  <34.723267, 32.053970, 42.715828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164948, 31.702890, 43.184692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393726, 31.424358, 43.011253>,  <34.530994, 31.257238, 42.907192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393726, 31.424358, 43.011253>,  <34.164948, 31.702890, 43.184692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393726, 31.424358, 43.011253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037350, -0.505931, 0.861765,
		-0.819442, -0.509077, -0.263356,
		0.571944, -0.696330, -0.433595,
		34.565311, 31.215460, 42.881176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859760, 31.146696, 43.377544>,  <34.164948, 31.702890, 43.184692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859760, 31.146696, 43.377544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234543, 31.057461, 43.269951>,  <34.459412, 31.003920, 43.205395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234543, 31.057461, 43.269951>,  <33.859760, 31.146696, 43.377544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234543, 31.057461, 43.269951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129526, -0.493196, 0.860221,
		-0.324564, -0.840827, -0.433206,
		0.936953, -0.223085, -0.268983,
		34.515629, 30.990536, 43.189255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962711, 30.431620, 43.551079>,  <33.859760, 31.146696, 43.377544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962711, 30.431620, 43.551079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322392, 30.606386, 43.560444>,  <34.538200, 30.711246, 43.566063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322392, 30.606386, 43.560444>,  <33.962711, 30.431620, 43.551079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322392, 30.606386, 43.560444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144824, -0.347694, 0.926355,
		0.412882, -0.829585, -0.375922,
		0.899196, 0.436919, 0.023413,
		34.592152, 30.737461, 43.567467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394810, 29.941362, 43.902397>,  <33.962711, 30.431620, 43.551079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394810, 29.941362, 43.902397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589909, 30.289070, 43.934582>,  <34.706970, 30.497694, 43.953892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589909, 30.289070, 43.934582>,  <34.394810, 29.941362, 43.902397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589909, 30.289070, 43.934582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244262, -0.224382, 0.943392,
		0.838115, -0.440484, -0.321771,
		0.487749, 0.869267, 0.080465,
		34.736233, 30.549850, 43.958721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984371, 29.830296, 44.298134>,  <34.394810, 29.941362, 43.902397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984371, 29.830296, 44.298134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973732, 30.230055, 44.289219>,  <34.967350, 30.469910, 44.283871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973732, 30.230055, 44.289219>,  <34.984371, 29.830296, 44.298134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973732, 30.230055, 44.289219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467624, 0.032143, 0.883343,
		0.883527, 0.013074, -0.468197,
		-0.026598, 0.999398, -0.022285,
		34.965752, 30.529875, 44.282532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642273, 30.043896, 44.698765>,  <34.984371, 29.830296, 44.298134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642273, 30.043896, 44.698765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429237, 30.382231, 44.710850>,  <35.301418, 30.585232, 44.718102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429237, 30.382231, 44.710850>,  <35.642273, 30.043896, 44.698765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429237, 30.382231, 44.710850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281020, 0.143051, 0.948981,
		0.798361, 0.513904, -0.313884,
		-0.532586, 0.845837, 0.030211,
		35.269463, 30.635983, 44.719913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100513, 30.577408, 44.906200>,  <35.642273, 30.043896, 44.698765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100513, 30.577408, 44.906200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721523, 30.671959, 44.992374>,  <35.494129, 30.728689, 45.044079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721523, 30.671959, 44.992374>,  <36.100513, 30.577408, 44.906200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721523, 30.671959, 44.992374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249662, 0.125666, 0.960144,
		0.199886, 0.963500, -0.178081,
		-0.947478, 0.236379, 0.215430,
		35.437279, 30.742872, 45.057003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161480, 31.182011, 45.222992>,  <36.100513, 30.577408, 44.906200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161480, 31.182011, 45.222992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813614, 31.017586, 45.332325>,  <35.604893, 30.918930, 45.397923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.813614, 31.017586, 45.332325>,  <36.161480, 31.182011, 45.222992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813614, 31.017586, 45.332325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153860, 0.300400, 0.941322,
		-0.469051, 0.860690, -0.198001,
		-0.869666, -0.411064, 0.273329,
		35.552715, 30.894266, 45.414322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910141, 31.574322, 45.682419>,  <36.161480, 31.182011, 45.222992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910141, 31.574322, 45.682419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682178, 31.252222, 45.747879>,  <35.545403, 31.058962, 45.787155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682178, 31.252222, 45.747879>,  <35.910141, 31.574322, 45.682419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682178, 31.252222, 45.747879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051400, 0.233704, 0.970948,
		-0.820101, 0.544937, -0.174579,
		-0.569905, -0.805249, 0.163651,
		35.511208, 31.010647, 45.796974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269222, 31.762392, 46.040451>,  <35.910141, 31.574322, 45.682419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269222, 31.762392, 46.040451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337788, 31.374527, 46.110165>,  <35.378929, 31.141808, 46.151993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337788, 31.374527, 46.110165>,  <35.269222, 31.762392, 46.040451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337788, 31.374527, 46.110165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021131, 0.173240, 0.984653,
		-0.984972, -0.172469, 0.009206,
		0.171417, -0.969661, 0.174281,
		35.389214, 31.083630, 46.162449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690727, 31.474108, 46.361042>,  <35.269222, 31.762392, 46.040451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690727, 31.474108, 46.361042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994400, 31.236984, 46.468540>,  <35.176605, 31.094711, 46.533039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994400, 31.236984, 46.468540>,  <34.690727, 31.474108, 46.361042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994400, 31.236984, 46.468540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240494, 0.128196, 0.962148,
		-0.604821, -0.795076, -0.045242,
		0.759180, -0.592808, 0.268746,
		35.222153, 31.059141, 46.549164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385456, 30.969067, 46.837742>,  <34.690727, 31.474108, 46.361042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385456, 30.969067, 46.837742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778900, 30.981350, 46.908806>,  <35.014969, 30.988720, 46.951443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778900, 30.981350, 46.908806>,  <34.385456, 30.969067, 46.837742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778900, 30.981350, 46.908806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172363, -0.128846, 0.976570,
		0.052879, -0.991189, -0.121442,
		0.983613, 0.030708, 0.177658,
		35.073982, 30.990562, 46.962105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528610, 30.453945, 47.338699>,  <34.385456, 30.969067, 46.837742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528610, 30.453945, 47.338699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848026, 30.692533, 47.371078>,  <35.039677, 30.835686, 47.390507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848026, 30.692533, 47.371078>,  <34.528610, 30.453945, 47.338699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848026, 30.692533, 47.371078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049723, -0.068648, 0.996401,
		0.599881, -0.799694, -0.025161,
		0.798543, 0.596471, 0.080944,
		35.087589, 30.871475, 47.395363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928940, 30.184423, 47.893867>,  <34.528610, 30.453945, 47.338699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928940, 30.184423, 47.893867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096882, 30.546103, 47.862503>,  <35.197647, 30.763109, 47.843685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096882, 30.546103, 47.862503>,  <34.928940, 30.184423, 47.893867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096882, 30.546103, 47.862503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098976, 0.040263, 0.994275,
		0.902178, -0.425212, -0.072589,
		0.419855, 0.904198, -0.078410,
		35.222839, 30.817362, 47.838982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525414, 30.165211, 48.282078>,  <34.928940, 30.184423, 47.893867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525414, 30.165211, 48.282078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439114, 30.555387, 48.264339>,  <35.387333, 30.789494, 48.253696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439114, 30.555387, 48.264339>,  <35.525414, 30.165211, 48.282078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439114, 30.555387, 48.264339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348396, 0.119327, 0.929721,
		0.912180, 0.185136, -0.365584,
		-0.215749, 0.975441, -0.044347,
		35.374390, 30.848021, 48.251034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165970, 30.541758, 48.401600>,  <35.525414, 30.165211, 48.282078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165970, 30.541758, 48.401600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862339, 30.787569, 48.487537>,  <35.680161, 30.935055, 48.539101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862339, 30.787569, 48.487537>,  <36.165970, 30.541758, 48.401600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862339, 30.787569, 48.487537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481451, 0.307796, 0.820650,
		0.438185, 0.726373, -0.529506,
		-0.759078, 0.614528, 0.214842,
		35.634617, 30.971928, 48.551991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416988, 31.081234, 48.663170>,  <36.165970, 30.541758, 48.401600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416988, 31.081234, 48.663170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046364, 31.139261, 48.801987>,  <35.823990, 31.174078, 48.885277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046364, 31.139261, 48.801987>,  <36.416988, 31.081234, 48.663170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046364, 31.139261, 48.801987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372646, 0.228464, 0.899410,
		0.051187, 0.962684, -0.265744,
		-0.926561, 0.145067, 0.347046,
		35.768394, 31.182781, 48.906101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482143, 31.601343, 49.171352>,  <36.416988, 31.081234, 48.663170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482143, 31.601343, 49.171352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115002, 31.468704, 49.258606>,  <35.894714, 31.389120, 49.310959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115002, 31.468704, 49.258606>,  <36.482143, 31.601343, 49.171352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115002, 31.468704, 49.258606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087194, 0.367700, 0.925848,
		-0.387217, 0.868815, -0.308583,
		-0.917857, -0.331597, 0.218135,
		35.839645, 31.369225, 49.324047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069191, 32.183586, 49.497154>,  <36.482143, 31.601343, 49.171352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069191, 32.183586, 49.497154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882168, 31.843977, 49.595581>,  <35.769955, 31.640211, 49.654636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882168, 31.843977, 49.595581>,  <36.069191, 32.183586, 49.497154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882168, 31.843977, 49.595581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233911, 0.149613, 0.960678,
		-0.852454, 0.506728, 0.128644,
		-0.467556, -0.849024, 0.246068,
		35.741901, 31.589270, 49.669403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650002, 32.363209, 50.021587>,  <36.069191, 32.183586, 49.497154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650002, 32.363209, 50.021587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659443, 31.967270, 50.077656>,  <35.665108, 31.729708, 50.111298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659443, 31.967270, 50.077656>,  <35.650002, 32.363209, 50.021587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659443, 31.967270, 50.077656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064113, 0.141419, 0.987871,
		-0.997663, -0.014327, 0.066800,
		0.023600, -0.989846, 0.140170,
		35.666523, 31.670317, 50.119705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269485, 32.342079, 50.597595>,  <35.650002, 32.363209, 50.021587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269485, 32.342079, 50.597595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458504, 31.991198, 50.563629>,  <35.571915, 31.780668, 50.543251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458504, 31.991198, 50.563629>,  <35.269485, 32.342079, 50.597595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458504, 31.991198, 50.563629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298453, 0.068626, 0.951954,
		-0.829230, -0.475189, 0.294234,
		0.472550, -0.877203, -0.084915,
		35.600269, 31.728037, 50.538155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166393, 32.039352, 51.226875>,  <35.269485, 32.342079, 50.597595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166393, 32.039352, 51.226875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480915, 31.846766, 51.071999>,  <35.669628, 31.731213, 50.979073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480915, 31.846766, 51.071999>,  <35.166393, 32.039352, 51.226875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480915, 31.846766, 51.071999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420867, -0.041403, 0.906177,
		-0.452328, -0.875484, 0.170079,
		0.786302, -0.481470, -0.387190,
		35.716805, 31.702324, 50.955841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305775, 31.510666, 51.677853>,  <35.166393, 32.039352, 51.226875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305775, 31.510666, 51.677853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642921, 31.626385, 51.496353>,  <35.845211, 31.695816, 51.387455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642921, 31.626385, 51.496353>,  <35.305775, 31.510666, 51.677853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642921, 31.626385, 51.496353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502872, -0.123273, 0.855525,
		0.191566, -0.949269, -0.249382,
		0.842866, 0.289296, -0.453746,
		35.895782, 31.713173, 51.360229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754471, 31.088137, 51.964779>,  <35.305775, 31.510666, 51.677853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754471, 31.088137, 51.964779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988983, 31.369081, 51.803303>,  <36.129688, 31.537649, 51.706417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988983, 31.369081, 51.803303>,  <35.754471, 31.088137, 51.964779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988983, 31.369081, 51.803303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637888, -0.093065, 0.764485,
		0.499377, -0.705708, -0.502591,
		0.586277, 0.702363, -0.403688,
		36.164867, 31.579790, 51.682198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422245, 30.871660, 51.991871>,  <35.754471, 31.088137, 51.964779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422245, 30.871660, 51.991871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481621, 31.266483, 51.967609>,  <36.517246, 31.503378, 51.953053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481621, 31.266483, 51.967609>,  <36.422245, 30.871660, 51.991871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481621, 31.266483, 51.967609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548822, -0.031206, 0.835357,
		0.822654, -0.157290, -0.546352,
		0.148443, 0.987059, -0.060652,
		36.526154, 31.562601, 51.949413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128773, 30.984289, 52.034084>,  <36.422245, 30.871660, 51.991871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128773, 30.984289, 52.034084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968227, 31.337545, 52.131214>,  <36.871899, 31.549500, 52.189491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968227, 31.337545, 52.131214>,  <37.128773, 30.984289, 52.034084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968227, 31.337545, 52.131214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646510, 0.085375, 0.758114,
		0.648791, 0.461270, -0.605227,
		-0.401367, 0.883143, 0.242825,
		36.847816, 31.602488, 52.204063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664326, 31.548441, 52.064468>,  <37.128773, 30.984289, 52.034084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664326, 31.548441, 52.064468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355450, 31.615149, 52.309715>,  <37.170124, 31.655172, 52.456863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355450, 31.615149, 52.309715>,  <37.664326, 31.548441, 52.064468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355450, 31.615149, 52.309715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634856, 0.162960, 0.755250,
		0.026040, 0.972436, -0.231711,
		-0.772192, 0.166770, 0.613113,
		37.123791, 31.665180, 52.493649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922710, 31.670847, 52.693466>,  <37.664326, 31.548441, 52.064468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922710, 31.670847, 52.693466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559967, 31.625347, 52.855785>,  <37.342323, 31.598047, 52.953178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559967, 31.625347, 52.855785>,  <37.922710, 31.670847, 52.693466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559967, 31.625347, 52.855785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401566, 0.058969, 0.913930,
		-0.127889, 0.991758, -0.007798,
		-0.906857, -0.113750, 0.405798,
		37.287910, 31.591223, 52.977524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643211, 31.809696, 52.616058>,  <37.922710, 31.670847, 52.693466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643211, 31.809696, 52.616058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042999, 31.821695, 52.621063>,  <39.282871, 31.828894, 52.624065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.042999, 31.821695, 52.621063>,  <38.643211, 31.809696, 52.616058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042999, 31.821695, 52.621063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021220, -0.310592, -0.950307,
		-0.024619, 0.950070, -0.311064,
		0.999472, 0.029996, 0.012514,
		39.342842, 31.830694, 52.624817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946880, 32.219120, 52.008404>,  <38.643211, 31.809696, 52.616058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946880, 32.219120, 52.008404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236507, 31.969110, 52.125076>,  <39.410282, 31.819105, 52.195080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236507, 31.969110, 52.125076>,  <38.946880, 32.219120, 52.008404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236507, 31.969110, 52.125076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012133, -0.434365, -0.900655,
		0.689623, 0.648596, -0.322093,
		0.724067, -0.625020, 0.291679,
		39.453728, 31.781605, 52.212582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623169, 32.358654, 51.499657>,  <38.946880, 32.219120, 52.008404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623169, 32.358654, 51.499657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610409, 31.991800, 51.658573>,  <39.602753, 31.771687, 51.753922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610409, 31.991800, 51.658573>,  <39.623169, 32.358654, 51.499657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610409, 31.991800, 51.658573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271579, -0.390493, -0.879637,
		0.961887, 0.079838, 0.261531,
		-0.031898, -0.917138, 0.397292,
		39.600838, 31.716660, 51.777760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183578, 31.933157, 51.177147>,  <39.623169, 32.358654, 51.499657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183578, 31.933157, 51.177147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894695, 31.678926, 51.286297>,  <39.721367, 31.526388, 51.351788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894695, 31.678926, 51.286297>,  <40.183578, 31.933157, 51.177147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894695, 31.678926, 51.286297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173553, -0.548403, -0.818006,
		0.669550, -0.543411, 0.506367,
		-0.722206, -0.635577, 0.272873,
		39.678032, 31.488253, 51.368160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379185, 31.388308, 50.833836>,  <40.183578, 31.933157, 51.177147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379185, 31.388308, 50.833836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014126, 31.285322, 50.960823>,  <39.795090, 31.223530, 51.037018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014126, 31.285322, 50.960823>,  <40.379185, 31.388308, 50.833836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014126, 31.285322, 50.960823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132582, -0.548236, -0.825748,
		0.386652, -0.795706, 0.466210,
		-0.912646, -0.257466, 0.317473,
		39.740334, 31.208082, 51.056065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288544, 30.631916, 50.797279>,  <40.379185, 31.388308, 50.833836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288544, 30.631916, 50.797279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927795, 30.802729, 50.771114>,  <39.711346, 30.905216, 50.755417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927795, 30.802729, 50.771114>,  <40.288544, 30.631916, 50.797279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927795, 30.802729, 50.771114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174116, -0.497860, -0.849599,
		-0.395370, -0.754838, 0.523357,
		-0.901868, 0.427031, -0.065409,
		39.657234, 30.930838, 50.751492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019894, 30.091496, 50.481289>,  <40.288544, 30.631916, 50.797279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019894, 30.091496, 50.481289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747223, 30.383507, 50.461792>,  <39.583622, 30.558714, 50.450096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747223, 30.383507, 50.461792>,  <40.019894, 30.091496, 50.481289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747223, 30.383507, 50.461792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259680, -0.303685, -0.916701,
		-0.684020, -0.612237, 0.396589,
		-0.681677, 0.730028, -0.048741,
		39.542721, 30.602514, 50.447170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462997, 29.754871, 49.965591>,  <40.019894, 30.091496, 50.481289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462997, 29.754871, 49.965591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380135, 30.142340, 50.020378>,  <39.330418, 30.374821, 50.053249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380135, 30.142340, 50.020378>,  <39.462997, 29.754871, 49.965591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380135, 30.142340, 50.020378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286677, 0.073746, -0.955185,
		-0.935361, -0.237141, 0.262419,
		-0.207161, 0.968672, 0.136962,
		39.317986, 30.432941, 50.061466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699886, 29.847157, 49.640934>,  <39.462997, 29.754871, 49.965591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699886, 29.847157, 49.640934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898441, 30.193090, 49.671021>,  <39.017574, 30.400652, 49.689072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898441, 30.193090, 49.671021>,  <38.699886, 29.847157, 49.640934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898441, 30.193090, 49.671021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247541, 0.224061, -0.942614,
		-0.832059, 0.449283, 0.325304,
		0.496388, 0.864836, 0.075216,
		39.047359, 30.452541, 49.693584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253368, 30.481380, 49.501633>,  <38.699886, 29.847157, 49.640934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253368, 30.481380, 49.501633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622311, 30.603027, 49.406330>,  <38.843678, 30.676016, 49.349148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622311, 30.603027, 49.406330>,  <38.253368, 30.481380, 49.501633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622311, 30.603027, 49.406330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302576, 0.185209, -0.934957,
		-0.240209, 0.934457, 0.262847,
		0.922360, 0.304116, -0.238256,
		38.899017, 30.694262, 49.334854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089611, 30.965698, 48.965614>,  <38.253368, 30.481380, 49.501633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089611, 30.965698, 48.965614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481857, 30.906548, 48.914192>,  <38.717205, 30.871058, 48.883339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.481857, 30.906548, 48.914192>,  <38.089611, 30.965698, 48.965614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481857, 30.906548, 48.914192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119886, 0.066186, -0.990579,
		0.154992, 0.986789, 0.047174,
		0.980614, -0.147876, -0.128560,
		38.776043, 30.862185, 48.875626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319813, 31.467491, 48.558041>,  <38.089611, 30.965698, 48.965614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319813, 31.467491, 48.558041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624840, 31.214418, 48.504059>,  <38.807854, 31.062574, 48.471672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624840, 31.214418, 48.504059>,  <38.319813, 31.467491, 48.558041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624840, 31.214418, 48.504059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079964, 0.114824, -0.990162,
		0.641951, 0.765854, 0.036969,
		0.762564, -0.632680, -0.134952,
		38.853611, 31.024614, 48.463573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769417, 31.769030, 48.125191>,  <38.319813, 31.467491, 48.558041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769417, 31.769030, 48.125191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875793, 31.383720, 48.110321>,  <38.939621, 31.152534, 48.101398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875793, 31.383720, 48.110321>,  <38.769417, 31.769030, 48.125191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875793, 31.383720, 48.110321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066197, 0.056725, -0.996193,
		0.961714, 0.262467, 0.078851,
		0.265940, -0.963272, -0.037179,
		38.955574, 31.094738, 48.099167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301315, 31.667461, 47.727875>,  <38.769417, 31.769030, 48.125191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301315, 31.667461, 47.727875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120346, 31.310890, 47.717495>,  <39.011765, 31.096947, 47.711266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120346, 31.310890, 47.717495>,  <39.301315, 31.667461, 47.727875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120346, 31.310890, 47.717495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072198, -0.007610, -0.997361,
		0.888878, -0.453100, 0.067802,
		-0.452420, -0.891427, -0.025948,
		38.984619, 31.043463, 47.709709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673668, 31.309011, 47.237873>,  <39.301315, 31.667461, 47.727875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673668, 31.309011, 47.237873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333076, 31.100069, 47.256313>,  <39.128719, 30.974703, 47.267376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333076, 31.100069, 47.256313>,  <39.673668, 31.309011, 47.237873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333076, 31.100069, 47.256313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034348, -0.032158, -0.998892,
		0.523260, -0.852121, 0.009440,
		-0.851480, -0.522356, 0.046096,
		39.077633, 30.943361, 47.270142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634384, 30.973701, 46.607639>,  <39.673668, 31.309011, 47.237873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634384, 30.973701, 46.607639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260929, 30.926062, 46.742775>,  <39.036858, 30.897478, 46.823856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.260929, 30.926062, 46.742775>,  <39.634384, 30.973701, 46.607639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260929, 30.926062, 46.742775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338918, -0.011719, -0.940743,
		0.116004, -0.992813, -0.029425,
		-0.933637, -0.119103, 0.337842,
		38.980839, 30.890331, 46.844128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358021, 30.343119, 46.268814>,  <39.634384, 30.973701, 46.607639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358021, 30.343119, 46.268814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056438, 30.586882, 46.366936>,  <38.875488, 30.733139, 46.425808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056438, 30.586882, 46.366936>,  <39.358021, 30.343119, 46.268814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056438, 30.586882, 46.366936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330234, -0.028802, -0.943459,
		-0.567886, -0.792334, 0.222963,
		-0.753957, 0.609408, 0.245300,
		38.830250, 30.769705, 46.440525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756447, 29.949406, 46.187866>,  <39.358021, 30.343119, 46.268814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756447, 29.949406, 46.187866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607590, 30.320665, 46.185158>,  <38.518276, 30.543421, 46.183533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607590, 30.320665, 46.185158>,  <38.756447, 29.949406, 46.187866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607590, 30.320665, 46.185158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610082, -0.250100, -0.751831,
		-0.699507, -0.275657, 0.659321,
		-0.372143, 0.928151, -0.006774,
		38.495945, 30.599110, 46.183125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144917, 29.902328, 45.863525>,  <38.756447, 29.949406, 46.187866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144917, 29.902328, 45.863525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244423, 30.287161, 45.818779>,  <38.304127, 30.518061, 45.791931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244423, 30.287161, 45.818779>,  <38.144917, 29.902328, 45.863525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244423, 30.287161, 45.818779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472525, 0.019727, -0.881097,
		-0.845481, 0.272043, 0.459515,
		0.248761, 0.962083, -0.111869,
		38.319050, 30.575787, 45.785217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540039, 30.142632, 45.736294>,  <38.144917, 29.902328, 45.863525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540039, 30.142632, 45.736294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770721, 30.436607, 45.593594>,  <37.909130, 30.612993, 45.507973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770721, 30.436607, 45.593594>,  <37.540039, 30.142632, 45.736294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770721, 30.436607, 45.593594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572890, 0.052505, -0.817949,
		-0.582412, 0.676096, 0.451320,
		0.576709, 0.734940, -0.356749,
		37.943733, 30.657089, 45.486568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090313, 30.725014, 45.437679>,  <37.540039, 30.142632, 45.736294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090313, 30.725014, 45.437679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449814, 30.759022, 45.265625>,  <37.665516, 30.779427, 45.162392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449814, 30.759022, 45.265625>,  <37.090313, 30.725014, 45.437679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449814, 30.759022, 45.265625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438240, 0.143427, -0.887341,
		-0.013750, 0.986002, 0.166165,
		0.898753, 0.085022, -0.430133,
		37.719440, 30.784529, 45.136585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906830, 31.118065, 44.910927>,  <37.090313, 30.725014, 45.437679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906830, 31.118065, 44.910927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275318, 30.995111, 44.815544>,  <37.496410, 30.921339, 44.758316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.275318, 30.995111, 44.815544>,  <36.906830, 31.118065, 44.910927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275318, 30.995111, 44.815544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162308, 0.253369, -0.953656,
		0.353554, 0.917235, 0.183519,
		0.921225, -0.307382, -0.238454,
		37.551685, 30.902897, 44.744007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185246, 31.620949, 44.410862>,  <36.906830, 31.118065, 44.910927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185246, 31.620949, 44.410862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360764, 31.263130, 44.376812>,  <37.466076, 31.048439, 44.356384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360764, 31.263130, 44.376812>,  <37.185246, 31.620949, 44.410862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360764, 31.263130, 44.376812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080505, 0.055211, -0.995224,
		0.894973, 0.443554, -0.047789,
		0.438797, -0.894545, -0.085121,
		37.492401, 30.994766, 44.351276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726963, 31.713520, 43.803261>,  <37.185246, 31.620949, 44.410862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726963, 31.713520, 43.803261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667629, 31.320896, 43.851490>,  <37.632030, 31.085321, 43.880428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667629, 31.320896, 43.851490>,  <37.726963, 31.713520, 43.803261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667629, 31.320896, 43.851490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167445, -0.095238, -0.981271,
		0.974659, -0.165742, -0.150230,
		-0.148330, -0.981560, 0.120578,
		37.623131, 31.026428, 43.887665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049091, 31.400473, 43.134026>,  <37.726963, 31.713520, 43.803261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049091, 31.400473, 43.134026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795776, 31.131176, 43.286705>,  <37.643787, 30.969599, 43.378311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795776, 31.131176, 43.286705>,  <38.049091, 31.400473, 43.134026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795776, 31.131176, 43.286705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234511, -0.303082, -0.923659,
		0.737531, -0.674454, 0.034056,
		-0.633287, -0.673241, 0.381699,
		37.605789, 30.929203, 43.401215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259254, 30.799860, 42.905975>,  <38.049091, 31.400473, 43.134026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259254, 30.799860, 42.905975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871170, 30.761740, 42.995068>,  <37.638321, 30.738867, 43.048523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871170, 30.761740, 42.995068>,  <38.259254, 30.799860, 42.905975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871170, 30.761740, 42.995068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172634, -0.373026, -0.911619,
		0.169962, -0.922913, 0.345462,
		-0.970211, -0.095302, 0.222726,
		37.580105, 30.733149, 43.061886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090721, 30.093815, 42.794182>,  <38.259254, 30.799860, 42.905975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090721, 30.093815, 42.794182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758862, 30.315424, 42.766655>,  <37.559746, 30.448389, 42.750137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758862, 30.315424, 42.766655>,  <38.090721, 30.093815, 42.794182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758862, 30.315424, 42.766655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069474, -0.224766, -0.971933,
		-0.553942, -0.801585, 0.224967,
		-0.829651, 0.554024, -0.068818,
		37.509968, 30.481630, 42.746010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656593, 29.721945, 42.402252>,  <38.090721, 30.093815, 42.794182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656593, 29.721945, 42.402252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559120, 30.108654, 42.371353>,  <37.500637, 30.340679, 42.352814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559120, 30.108654, 42.371353>,  <37.656593, 29.721945, 42.402252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559120, 30.108654, 42.371353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093692, -0.055810, -0.994036,
		-0.965320, -0.249463, -0.076979,
		-0.243679, 0.966775, -0.077247,
		37.486015, 30.398687, 42.348179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339909, 29.750298, 41.720207>,  <37.656593, 29.721945, 42.402252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339909, 29.750298, 41.720207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394688, 30.143005, 41.772930>,  <37.427555, 30.378630, 41.804565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394688, 30.143005, 41.772930>,  <37.339909, 29.750298, 41.720207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394688, 30.143005, 41.772930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038668, 0.127662, -0.991064,
		-0.989823, 0.140824, -0.020479,
		0.136951, 0.981769, 0.131809,
		37.435772, 30.437536, 41.812473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881699, 30.184042, 41.150852>,  <37.339909, 29.750298, 41.720207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881699, 30.184042, 41.150852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161999, 30.432423, 41.291351>,  <37.330177, 30.581451, 41.375648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161999, 30.432423, 41.291351>,  <36.881699, 30.184042, 41.150852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161999, 30.432423, 41.291351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259253, 0.237039, -0.936269,
		-0.664635, 0.747150, 0.005121,
		0.700748, 0.620950, 0.351246,
		37.372223, 30.618708, 41.396725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782398, 30.728319, 40.758106>,  <36.881699, 30.184042, 41.150852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782398, 30.728319, 40.758106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148056, 30.800152, 40.903481>,  <37.367451, 30.843252, 40.990707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148056, 30.800152, 40.903481>,  <36.782398, 30.728319, 40.758106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148056, 30.800152, 40.903481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239612, 0.483794, -0.841742,
		-0.326991, 0.856559, 0.399228,
		0.914146, 0.179582, 0.363438,
		37.422298, 30.854027, 41.012512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009300, 31.200403, 40.302986>,  <36.782398, 30.728319, 40.758106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009300, 31.200403, 40.302986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343571, 31.119440, 40.507214>,  <37.544132, 31.070862, 40.629749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343571, 31.119440, 40.507214>,  <37.009300, 31.200403, 40.302986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343571, 31.119440, 40.507214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546289, 0.402338, -0.734637,
		-0.056723, 0.892835, 0.446798,
		0.835674, -0.202410, 0.510568,
		37.594273, 31.058718, 40.660385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397995, 31.811779, 40.409420>,  <37.009300, 31.200403, 40.302986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397995, 31.811779, 40.409420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657513, 31.507906, 40.391766>,  <37.813225, 31.325583, 40.381172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657513, 31.507906, 40.391766>,  <37.397995, 31.811779, 40.409420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657513, 31.507906, 40.391766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523015, 0.487301, -0.699280,
		0.552741, 0.430602, 0.713484,
		0.648793, -0.759684, -0.044140,
		37.852150, 31.280001, 40.378525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883980, 32.147976, 39.911301>,  <37.397995, 31.811779, 40.409420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883980, 32.147976, 39.911301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032948, 31.780407, 39.963272>,  <38.122326, 31.559864, 39.994457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.032948, 31.780407, 39.963272>,  <37.883980, 32.147976, 39.911301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032948, 31.780407, 39.963272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747351, 0.213940, -0.629043,
		0.550246, 0.331371, 0.766435,
		0.372417, -0.918925, 0.129931,
		38.144672, 31.504730, 40.002251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630409, 32.138702, 40.125294>,  <37.883980, 32.147976, 39.911301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630409, 32.138702, 40.125294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541264, 31.804152, 39.924973>,  <38.487778, 31.603420, 39.804779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541264, 31.804152, 39.924973>,  <38.630409, 32.138702, 40.125294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541264, 31.804152, 39.924973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680290, 0.234528, -0.694407,
		0.698239, -0.495450, 0.516712,
		-0.222861, -0.836377, -0.500806,
		38.474407, 31.553238, 39.774731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200653, 31.797703, 39.971397>,  <38.630409, 32.138702, 40.125294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200653, 31.797703, 39.971397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984306, 31.633869, 39.677540>,  <38.854500, 31.535568, 39.501225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984306, 31.633869, 39.677540>,  <39.200653, 31.797703, 39.971397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984306, 31.633869, 39.677540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682682, 0.296445, -0.667881,
		0.491336, -0.862764, 0.119279,
		-0.540864, -0.409584, -0.734648,
		38.822048, 31.510994, 39.457146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655991, 31.553768, 39.412739>,  <39.200653, 31.797703, 39.971397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655991, 31.553768, 39.412739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297340, 31.544830, 39.235851>,  <39.082150, 31.539467, 39.129719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297340, 31.544830, 39.235851>,  <39.655991, 31.553768, 39.412739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297340, 31.544830, 39.235851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404625, 0.364262, -0.838804,
		0.179826, -0.931029, -0.317567,
		-0.896628, -0.022343, -0.442221,
		39.028351, 31.538126, 39.103184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720669, 31.149958, 38.873119>,  <39.655991, 31.553768, 39.412739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720669, 31.149958, 38.873119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416260, 31.388708, 38.771461>,  <39.233616, 31.531958, 38.710468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416260, 31.388708, 38.771461>,  <39.720669, 31.149958, 38.873119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416260, 31.388708, 38.771461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461187, 0.222260, -0.859015,
		-0.456239, -0.770935, -0.444415,
		-0.761021, 0.596874, -0.254141,
		39.187954, 31.567770, 38.695221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445843, 30.924679, 38.196011>,  <39.720669, 31.149958, 38.873119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445843, 30.924679, 38.196011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337631, 31.307457, 38.238098>,  <39.272705, 31.537123, 38.263351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337631, 31.307457, 38.238098>,  <39.445843, 30.924679, 38.196011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337631, 31.307457, 38.238098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476530, 0.228075, -0.849059,
		-0.836499, -0.179557, -0.517714,
		-0.270532, 0.956944, 0.105220,
		39.256470, 31.594540, 38.269665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335957, 31.036194, 37.529812>,  <39.445843, 30.924679, 38.196011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335957, 31.036194, 37.529812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366085, 31.401794, 37.689274>,  <39.384163, 31.621155, 37.784950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.366085, 31.401794, 37.689274>,  <39.335957, 31.036194, 37.529812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366085, 31.401794, 37.689274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482074, 0.316586, -0.816932,
		-0.872886, 0.253715, -0.416771,
		0.075324, 0.914003, 0.398653,
		39.388683, 31.675995, 37.808868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961807, 31.583826, 37.111034>,  <39.335957, 31.036194, 37.529812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961807, 31.583826, 37.111034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304195, 31.646244, 37.308201>,  <39.509628, 31.683695, 37.426498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304195, 31.646244, 37.308201>,  <38.961807, 31.583826, 37.111034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304195, 31.646244, 37.308201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358346, 0.508172, -0.783166,
		-0.372695, 0.847001, 0.379062,
		0.855971, 0.156047, 0.492913,
		39.560986, 31.693058, 37.456074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131039, 32.298634, 37.049744>,  <38.961807, 31.583826, 37.111034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131039, 32.298634, 37.049744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466583, 32.091751, 37.117638>,  <39.667912, 31.967621, 37.158375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466583, 32.091751, 37.117638>,  <39.131039, 32.298634, 37.049744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466583, 32.091751, 37.117638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475332, 0.544027, -0.691443,
		0.265278, 0.660705, 0.702208,
		0.838860, -0.517207, 0.169736,
		39.718243, 31.936588, 37.168560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712154, 32.737736, 37.282719>,  <39.131039, 32.298634, 37.049744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712154, 32.737736, 37.282719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894337, 32.409023, 37.145756>,  <40.003647, 32.211796, 37.063580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894337, 32.409023, 37.145756>,  <39.712154, 32.737736, 37.282719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894337, 32.409023, 37.145756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559999, 0.563445, -0.607396,
		0.692073, 0.084892, 0.716818,
		0.455451, -0.821780, -0.342405,
		40.030972, 32.162491, 37.043034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437973, 32.711533, 37.368931>,  <39.712154, 32.737736, 37.282719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437973, 32.711533, 37.368931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246929, 32.570843, 37.046890>,  <40.132301, 32.486431, 36.853668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246929, 32.570843, 37.046890>,  <40.437973, 32.711533, 37.368931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246929, 32.570843, 37.046890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439431, 0.697881, -0.565564,
		0.760783, -0.623903, -0.178757,
		-0.477608, -0.351720, -0.805098,
		40.103645, 32.465328, 36.805359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967079, 32.723377, 36.939049>,  <40.437973, 32.711533, 37.368931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967079, 32.723377, 36.939049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625492, 32.732079, 36.731098>,  <40.420540, 32.737301, 36.606327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625492, 32.732079, 36.731098>,  <40.967079, 32.723377, 36.939049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625492, 32.732079, 36.731098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421500, 0.614752, -0.666646,
		0.305093, -0.788420, -0.534145,
		-0.853964, 0.021753, -0.519876,
		40.369301, 32.738605, 36.575134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087814, 32.455269, 36.315178>,  <40.967079, 32.723377, 36.939049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087814, 32.455269, 36.315178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797199, 32.725468, 36.264824>,  <40.622829, 32.887589, 36.234612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.797199, 32.725468, 36.264824>,  <41.087814, 32.455269, 36.315178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797199, 32.725468, 36.264824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544027, 0.453587, -0.705899,
		-0.419735, -0.581345, -0.697037,
		-0.726538, 0.675498, -0.125881,
		40.579239, 32.928116, 36.227058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856293, 32.744488, 36.347080>,  <41.087814, 32.455269, 36.315178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856293, 32.744488, 36.347080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013474, 32.379410, 36.391937>,  <42.107780, 32.160362, 36.418850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013474, 32.379410, 36.391937>,  <41.856293, 32.744488, 36.347080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013474, 32.379410, 36.391937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919497, 0.388571, -0.059484,
		0.010716, 0.126490, 0.991910,
		0.392952, -0.912695, 0.112143,
		42.131359, 32.105602, 36.425579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398842, 32.996250, 36.055279>,  <41.856293, 32.744488, 36.347080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398842, 32.996250, 36.055279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762764, 33.145874, 35.983353>,  <42.981117, 33.235649, 35.940197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762764, 33.145874, 35.983353>,  <42.398842, 32.996250, 36.055279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762764, 33.145874, 35.983353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226571, 0.084633, -0.970311,
		-0.347734, 0.923536, 0.161751,
		0.909806, 0.374058, -0.179816,
		43.035706, 33.258091, 35.929409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.325443, 33.615784, 35.624405>,  <42.398842, 32.996250, 36.055279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.325443, 33.615784, 35.624405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698479, 33.489609, 35.554234>,  <42.922302, 33.413906, 35.512131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698479, 33.489609, 35.554234>,  <42.325443, 33.615784, 35.624405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698479, 33.489609, 35.554234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118148, 0.192469, -0.974165,
		0.341048, 0.929224, 0.142228,
		0.932592, -0.315433, -0.175427,
		42.978256, 33.394978, 35.501606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556900, 34.168869, 35.219044>,  <42.325443, 33.615784, 35.624405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556900, 34.168869, 35.219044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828754, 33.880474, 35.164970>,  <42.991867, 33.707436, 35.132526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.828754, 33.880474, 35.164970>,  <42.556900, 34.168869, 35.219044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828754, 33.880474, 35.164970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022745, 0.204909, -0.978517,
		0.733197, 0.661960, 0.155663,
		0.679636, -0.720986, -0.135182,
		43.032646, 33.664177, 35.124416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281326, 34.441734, 34.986401>,  <42.556900, 34.168869, 35.219044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281326, 34.441734, 34.986401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248322, 34.057392, 34.880608>,  <43.228519, 33.826786, 34.817131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248322, 34.057392, 34.880608>,  <43.281326, 34.441734, 34.986401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248322, 34.057392, 34.880608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274532, 0.233200, -0.932872,
		0.958031, -0.149584, 0.244543,
		-0.082515, -0.960855, -0.264478,
		43.223568, 33.769135, 34.801266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797516, 34.299885, 34.449825>,  <43.281326, 34.441734, 34.986401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797516, 34.299885, 34.449825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.585415, 33.964451, 34.399857>,  <43.458157, 33.763191, 34.369873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.585415, 33.964451, 34.399857>,  <43.797516, 34.299885, 34.449825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.585415, 33.964451, 34.399857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271767, -0.028539, -0.961940,
		0.803106, -0.544018, 0.243033,
		-0.530248, -0.838588, -0.124926,
		43.426342, 33.712875, 34.362377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231510, 33.700859, 34.090538>,  <43.797516, 34.299885, 34.449825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231510, 33.700859, 34.090538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839146, 33.661438, 34.023476>,  <43.603729, 33.637787, 33.983238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839146, 33.661438, 34.023476>,  <44.231510, 33.700859, 34.090538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839146, 33.661438, 34.023476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170875, -0.025163, -0.984971,
		0.092854, -0.994814, 0.041523,
		-0.980908, -0.098553, -0.167652,
		43.544872, 33.631874, 33.973179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198242, 33.056007, 33.673775>,  <44.231510, 33.700859, 34.090538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198242, 33.056007, 33.673775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840027, 33.219563, 33.603558>,  <43.625095, 33.317696, 33.561428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840027, 33.219563, 33.603558>,  <44.198242, 33.056007, 33.673775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840027, 33.219563, 33.603558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132482, -0.131596, -0.982411,
		-0.424799, -0.903045, 0.063679,
		-0.895541, 0.408890, -0.175539,
		43.571365, 33.342228, 33.550896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025303, 32.735970, 33.117882>,  <44.198242, 33.056007, 33.673775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025303, 32.735970, 33.117882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751747, 33.027302, 33.100792>,  <43.587612, 33.202103, 33.090538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751747, 33.027302, 33.100792>,  <44.025303, 32.735970, 33.117882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751747, 33.027302, 33.100792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139461, 0.073016, -0.987532,
		-0.716134, -0.681320, -0.151509,
		-0.683888, 0.728335, -0.042728,
		43.546581, 33.245804, 33.087975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418011, 32.472992, 32.741653>,  <44.025303, 32.735970, 33.117882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418011, 32.472992, 32.741653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481529, 32.867794, 32.731831>,  <43.519642, 33.104675, 32.725937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.481529, 32.867794, 32.731831>,  <43.418011, 32.472992, 32.741653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481529, 32.867794, 32.731831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323114, -0.075459, -0.943347,
		-0.932942, 0.141863, -0.330898,
		0.158795, 0.987006, -0.024561,
		43.529167, 33.163895, 32.724461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161976, 32.695747, 32.050732>,  <43.418011, 32.472992, 32.741653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161976, 32.695747, 32.050732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345268, 33.035324, 32.156048>,  <43.455246, 33.239071, 32.219238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345268, 33.035324, 32.156048>,  <43.161976, 32.695747, 32.050732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345268, 33.035324, 32.156048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282360, 0.141841, -0.948764,
		-0.842790, 0.509099, -0.174710,
		0.458234, 0.848940, 0.263291,
		43.482738, 33.290005, 32.235035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897717, 33.314133, 31.586325>,  <43.161976, 32.695747, 32.050732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897717, 33.314133, 31.586325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265278, 33.395336, 31.721622>,  <43.485813, 33.444057, 31.802801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265278, 33.395336, 31.721622>,  <42.897717, 33.314133, 31.586325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265278, 33.395336, 31.721622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321881, 0.109853, -0.940385,
		-0.228063, 0.972995, 0.035600,
		0.918901, 0.203008, 0.338242,
		43.540947, 33.456238, 31.823095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026165, 33.922756, 31.234659>,  <42.897717, 33.314133, 31.586325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026165, 33.922756, 31.234659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.384632, 33.785877, 31.347645>,  <43.599712, 33.703751, 31.415436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.384632, 33.785877, 31.347645>,  <43.026165, 33.922756, 31.234659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384632, 33.785877, 31.347645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319016, 0.054433, -0.946185,
		0.308402, 0.938052, 0.157946,
		0.896168, -0.342193, 0.282466,
		43.653484, 33.683220, 31.432384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514969, 34.332115, 30.913609>,  <43.026165, 33.922756, 31.234659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514969, 34.332115, 30.913609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729145, 34.006351, 31.003084>,  <43.857651, 33.810894, 31.056770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729145, 34.006351, 31.003084>,  <43.514969, 34.332115, 30.913609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729145, 34.006351, 31.003084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328171, -0.043423, -0.943620,
		0.778210, 0.578658, 0.244017,
		0.535437, -0.814413, 0.223691,
		43.889778, 33.762028, 31.070192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253910, 34.491337, 30.734550>,  <43.514969, 34.332115, 30.913609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253910, 34.491337, 30.734550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211449, 34.093792, 30.747057>,  <44.185970, 33.855267, 30.754560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211449, 34.093792, 30.747057>,  <44.253910, 34.491337, 30.734550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211449, 34.093792, 30.747057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499086, -0.080454, -0.862809,
		0.860025, -0.075989, 0.504561,
		-0.106158, -0.993858, 0.031268,
		44.179600, 33.795635, 30.756437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.832939, 34.247040, 30.405325>,  <44.253910, 34.491337, 30.734550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.832939, 34.247040, 30.405325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586563, 33.933578, 30.373064>,  <44.438736, 33.745502, 30.353708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586563, 33.933578, 30.373064>,  <44.832939, 34.247040, 30.405325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.586563, 33.933578, 30.373064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361192, -0.189932, -0.912944,
		0.700114, -0.591448, 0.400036,
		-0.615939, -0.783655, -0.080652,
		44.401783, 33.698483, 30.348867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203541, 33.654522, 30.154758>,  <44.832939, 34.247040, 30.405325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203541, 33.654522, 30.154758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822369, 33.585171, 30.055275>,  <44.593666, 33.543560, 29.995584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822369, 33.585171, 30.055275>,  <45.203541, 33.654522, 30.154758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822369, 33.585171, 30.055275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295369, -0.345966, -0.890542,
		0.068357, -0.922089, 0.380894,
		-0.952935, -0.173379, -0.248707,
		44.536488, 33.533157, 29.980663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199226, 33.102352, 29.701096>,  <45.203541, 33.654522, 30.154758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199226, 33.102352, 29.701096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837002, 33.264973, 29.652636>,  <44.619667, 33.362545, 29.623560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.837002, 33.264973, 29.652636>,  <45.199226, 33.102352, 29.701096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837002, 33.264973, 29.652636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091340, -0.092023, -0.991559,
		-0.414268, -0.908982, 0.046197,
		-0.905560, 0.406551, -0.121149,
		44.565334, 33.386936, 29.616291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.900089, 32.636841, 29.263809>,  <45.199226, 33.102352, 29.701096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.900089, 32.636841, 29.263809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674683, 32.967083, 29.275335>,  <44.539440, 33.165226, 29.282251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674683, 32.967083, 29.275335>,  <44.900089, 32.636841, 29.263809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674683, 32.967083, 29.275335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096946, -0.031450, -0.994793,
		-0.820396, -0.563377, 0.097761,
		-0.563518, 0.825601, 0.028816,
		44.505627, 33.214764, 29.283979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.388935, 32.583290, 28.722082>,  <44.900089, 32.636841, 29.263809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.388935, 32.583290, 28.722082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371597, 32.978344, 28.782360>,  <44.361195, 33.215374, 28.818527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371597, 32.978344, 28.782360>,  <44.388935, 32.583290, 28.722082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371597, 32.978344, 28.782360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065282, 0.153312, -0.986019,
		-0.996925, -0.032898, -0.071119,
		-0.043341, 0.987630, 0.150693,
		44.358593, 33.274632, 28.827568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.099243, 32.859825, 28.039431>,  <44.388935, 32.583290, 28.722082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.099243, 32.859825, 28.039431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258671, 33.183144, 28.212774>,  <44.354328, 33.377136, 28.316780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258671, 33.183144, 28.212774>,  <44.099243, 32.859825, 28.039431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258671, 33.183144, 28.212774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217042, 0.375964, -0.900857,
		-0.891089, 0.453107, -0.025588,
		0.398565, 0.808298, 0.433360,
		44.378239, 33.425632, 28.342783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835655, 33.483349, 27.809580>,  <44.099243, 32.859825, 28.039431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835655, 33.483349, 27.809580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196922, 33.597221, 27.938110>,  <44.413681, 33.665546, 28.015228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196922, 33.597221, 27.938110>,  <43.835655, 33.483349, 27.809580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196922, 33.597221, 27.938110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256966, 0.241098, -0.935863,
		-0.343895, 0.927808, 0.144597,
		0.903164, 0.284682, 0.321327,
		44.467873, 33.682625, 28.034508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962959, 34.068993, 27.543306>,  <43.835655, 33.483349, 27.809580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962959, 34.068993, 27.543306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324268, 33.910694, 27.609627>,  <44.541054, 33.815716, 27.649420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324268, 33.910694, 27.609627>,  <43.962959, 34.068993, 27.543306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324268, 33.910694, 27.609627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210460, 0.071896, -0.974955,
		0.373917, 0.915540, 0.148231,
		0.903268, -0.395749, 0.165802,
		44.595249, 33.791969, 27.659367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.386120, 34.440601, 27.063063>,  <43.962959, 34.068993, 27.543306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.386120, 34.440601, 27.063063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.587723, 34.113804, 27.175135>,  <44.708683, 33.917725, 27.242378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.587723, 34.113804, 27.175135>,  <44.386120, 34.440601, 27.063063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.587723, 34.113804, 27.175135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278723, -0.153187, -0.948076,
		0.817492, 0.555926, 0.150508,
		0.504004, -0.816995, 0.280178,
		44.738922, 33.868706, 27.259188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.081608, 34.495628, 26.964848>,  <44.386120, 34.440601, 27.063063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.081608, 34.495628, 26.964848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931881, 34.125675, 26.938061>,  <44.842045, 33.903706, 26.921989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.931881, 34.125675, 26.938061>,  <45.081608, 34.495628, 26.964848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.931881, 34.125675, 26.938061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253844, -0.032743, -0.966691,
		0.891880, -0.378847, 0.247031,
		-0.374317, -0.924880, -0.066966,
		44.819588, 33.848209, 26.917971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401081, 33.723213, 27.051113>,  <45.081608, 34.495628, 26.964848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401081, 33.723213, 27.051113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126503, 33.867332, 26.798456>,  <44.961754, 33.953804, 26.646862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126503, 33.867332, 26.798456>,  <45.401081, 33.723213, 27.051113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126503, 33.867332, 26.798456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661702, -0.050728, -0.748049,
		-0.301565, -0.931455, -0.203589,
		-0.686447, 0.360301, -0.631644,
		44.920570, 33.975422, 26.608963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.073936, 33.692902, 26.898727>,  <45.401081, 33.723213, 27.051113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.073936, 33.692902, 26.898727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456432, 33.796738, 26.844748>,  <46.685932, 33.859039, 26.812359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456432, 33.796738, 26.844748>,  <46.073936, 33.692902, 26.898727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.456432, 33.796738, 26.844748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290094, -0.901147, 0.322147,
		-0.037985, -0.347200, -0.937022,
		0.956244, 0.259588, -0.134951,
		46.743305, 33.874615, 26.804262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.425026, 33.332302, 26.393217>,  <46.073936, 33.692902, 26.898727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.425026, 33.332302, 26.393217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.648148, 33.385159, 26.720972>,  <46.782021, 33.416874, 26.917625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.648148, 33.385159, 26.720972>,  <46.425026, 33.332302, 26.393217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.648148, 33.385159, 26.720972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079117, -0.991214, 0.105997,
		0.826194, 0.005702, -0.563357,
		0.557803, 0.132145, 0.819386,
		46.815487, 33.424801, 26.966787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.113239, 32.885384, 26.390051>,  <46.425026, 33.332302, 26.393217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.113239, 32.885384, 26.390051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.022541, 32.958206, 26.772766>,  <46.968121, 33.001900, 27.002396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.022541, 32.958206, 26.772766>,  <47.113239, 32.885384, 26.390051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.022541, 32.958206, 26.772766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358641, -0.897739, 0.255815,
		0.905518, 0.401149, 0.138267,
		-0.226748, 0.182057, 0.956787,
		46.954517, 33.012825, 27.059803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.691864, 33.077862, 26.854540>,  <47.113239, 32.885384, 26.390051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.691864, 33.077862, 26.854540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.378101, 32.872669, 26.994001>,  <47.189846, 32.749554, 27.077679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.378101, 32.872669, 26.994001>,  <47.691864, 33.077862, 26.854540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.378101, 32.872669, 26.994001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610986, -0.735849, 0.291930,
		0.106803, 0.442014, 0.890627,
		-0.784404, -0.512982, 0.348655,
		47.142780, 32.718773, 27.098598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.870358, 32.736198, 27.441673>,  <47.691864, 33.077862, 26.854540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.870358, 32.736198, 27.441673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.578571, 32.522331, 27.271023>,  <47.403500, 32.394009, 27.168633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.578571, 32.522331, 27.271023>,  <47.870358, 32.736198, 27.441673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.578571, 32.522331, 27.271023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530230, -0.836024, 0.141138,
		-0.432134, -0.123257, 0.893347,
		-0.729463, -0.534670, -0.426629,
		47.359734, 32.361931, 27.143034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.558731, 33.060871, 28.030281>,  <47.870358, 32.736198, 27.441673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.558731, 33.060871, 28.030281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.168190, 33.011154, 27.959530>,  <46.933865, 32.981323, 27.917080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.168190, 33.011154, 27.959530>,  <47.558731, 33.060871, 28.030281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.168190, 33.011154, 27.959530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135121, -0.287809, 0.948108,
		-0.168753, 0.949587, 0.264208,
		-0.976353, -0.124296, -0.176878,
		46.875282, 32.973866, 27.906467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.984623, 33.493565, 28.260857>,  <47.558731, 33.060871, 28.030281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.984623, 33.493565, 28.260857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866806, 33.111382, 28.253496>,  <46.796116, 32.882072, 28.249081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866806, 33.111382, 28.253496>,  <46.984623, 33.493565, 28.260857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.866806, 33.111382, 28.253496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034704, -0.008547, 0.999361,
		-0.955008, 0.294992, -0.030641,
		-0.294542, -0.955462, -0.018400,
		46.778442, 32.824741, 28.247976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.418770, 33.493885, 28.710716>,  <46.984623, 33.493565, 28.260857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.418770, 33.493885, 28.710716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.529694, 33.110397, 28.685534>,  <46.596249, 32.880306, 28.670424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.529694, 33.110397, 28.685534>,  <46.418770, 33.493885, 28.710716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.529694, 33.110397, 28.685534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241336, -0.132930, 0.961294,
		-0.929977, -0.251381, -0.268235,
		0.277308, -0.958717, -0.062955,
		46.612885, 32.822781, 28.666647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.836571, 32.984890, 28.904797>,  <46.418770, 33.493885, 28.710716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.836571, 32.984890, 28.904797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.184570, 32.796238, 28.962311>,  <46.393368, 32.683048, 28.996819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.184570, 32.796238, 28.962311>,  <45.836571, 32.984890, 28.904797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.184570, 32.796238, 28.962311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219558, -0.109462, 0.969439,
		-0.441475, -0.874977, -0.198782,
		0.869997, -0.471628, 0.143783,
		46.445568, 32.654751, 29.005445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.658520, 32.386799, 29.263109>,  <45.836571, 32.984890, 28.904797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.658520, 32.386799, 29.263109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.044888, 32.468826, 29.326279>,  <46.276711, 32.518044, 29.364180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.044888, 32.468826, 29.326279>,  <45.658520, 32.386799, 29.263109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.044888, 32.468826, 29.326279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164255, 0.014123, 0.986317,
		0.200036, -0.978645, 0.047326,
		0.965922, 0.205073, 0.157922,
		46.334663, 32.530346, 29.373655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624084, 32.212654, 29.907246>,  <45.658520, 32.386799, 29.263109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624084, 32.212654, 29.907246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.974186, 32.398518, 29.853533>,  <46.184246, 32.510036, 29.821306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.974186, 32.398518, 29.853533>,  <45.624084, 32.212654, 29.907246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.974186, 32.398518, 29.853533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071672, 0.149964, 0.986090,
		0.478330, -0.872700, 0.097953,
		0.875251, 0.464656, -0.134281,
		46.236763, 32.537914, 29.813248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.949127, 31.930363, 30.393290>,  <45.624084, 32.212654, 29.907246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.949127, 31.930363, 30.393290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.125832, 32.277794, 30.303474>,  <46.231853, 32.486252, 30.249586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.125832, 32.277794, 30.303474>,  <45.949127, 31.930363, 30.393290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.125832, 32.277794, 30.303474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188911, 0.154610, 0.969746,
		0.877018, -0.470812, -0.095783,
		0.441760, 0.868580, -0.224538,
		46.258358, 32.538368, 30.236113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.520535, 31.938702, 30.813318>,  <45.949127, 31.930363, 30.393290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.520535, 31.938702, 30.813318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.529518, 32.327862, 30.721264>,  <46.534908, 32.561359, 30.666031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.529518, 32.327862, 30.721264>,  <46.520535, 31.938702, 30.813318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.529518, 32.327862, 30.721264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035274, 0.229278, 0.972722,
		0.999125, -0.029961, -0.029170,
		0.022455, 0.972900, -0.230134,
		46.536255, 32.619732, 30.652224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.211193, 32.294338, 30.951254>,  <46.520535, 31.938702, 30.813318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.211193, 32.294338, 30.951254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892433, 32.533695, 30.984404>,  <46.701176, 32.677311, 31.004293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892433, 32.533695, 30.984404>,  <47.211193, 32.294338, 30.951254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892433, 32.533695, 30.984404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241121, 0.189278, 0.951859,
		0.553903, 0.778521, -0.295122,
		-0.796902, 0.598397, 0.082876,
		46.653362, 32.713215, 31.009266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.475929, 32.811337, 31.401396>,  <47.211193, 32.294338, 30.951254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.475929, 32.811337, 31.401396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.090508, 32.917961, 31.392426>,  <46.859253, 32.981937, 31.387043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.090508, 32.917961, 31.392426>,  <47.475929, 32.811337, 31.401396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.090508, 32.917961, 31.392426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107609, 0.462991, 0.879806,
		0.244905, 0.845331, -0.474803,
		-0.963557, 0.266562, -0.022424,
		46.801441, 32.997929, 31.385698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.418930, 33.480988, 31.632391>,  <47.475929, 32.811337, 31.401396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.418930, 33.480988, 31.632391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.052521, 33.329880, 31.686337>,  <46.832676, 33.239216, 31.718704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.052521, 33.329880, 31.686337>,  <47.418930, 33.480988, 31.632391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.052521, 33.329880, 31.686337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084911, 0.511216, 0.855248,
		-0.392035, 0.771975, -0.500363,
		-0.916023, -0.377774, 0.134865,
		46.777714, 33.216549, 31.726795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.948902, 34.032547, 31.814629>,  <47.418930, 33.480988, 31.632391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.948902, 34.032547, 31.814629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.779957, 33.701920, 31.963432>,  <46.678589, 33.503544, 32.052715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.779957, 33.701920, 31.963432>,  <46.948902, 34.032547, 31.814629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.779957, 33.701920, 31.963432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106614, 0.452868, 0.885180,
		-0.900134, 0.334207, -0.279399,
		-0.422364, -0.826569, 0.372011,
		46.653248, 33.453949, 32.075035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.327148, 34.274380, 32.094166>,  <46.948902, 34.032547, 31.814629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.327148, 34.274380, 32.094166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408936, 33.922047, 32.264965>,  <46.458008, 33.710648, 32.367447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408936, 33.922047, 32.264965>,  <46.327148, 34.274380, 32.094166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.408936, 33.922047, 32.264965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228455, 0.381230, 0.895808,
		-0.951840, -0.280718, -0.123279,
		0.204472, -0.880830, 0.427002,
		46.470276, 33.657799, 32.393066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.771282, 34.137085, 32.543934>,  <46.327148, 34.274380, 32.094166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.771282, 34.137085, 32.543934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.056419, 33.885632, 32.668308>,  <46.227501, 33.734760, 32.742931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.056419, 33.885632, 32.668308>,  <45.771282, 34.137085, 32.543934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.056419, 33.885632, 32.668308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204416, 0.237868, 0.949543,
		-0.670872, -0.740435, 0.041061,
		0.712843, -0.628629, 0.310937,
		46.270271, 33.697044, 32.761589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579750, 33.747829, 33.120300>,  <45.771282, 34.137085, 32.543934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579750, 33.747829, 33.120300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.971004, 33.695305, 33.184799>,  <46.205757, 33.663792, 33.223499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.971004, 33.695305, 33.184799>,  <45.579750, 33.747829, 33.120300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.971004, 33.695305, 33.184799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164149, -0.011474, 0.986369,
		-0.127671, -0.991275, -0.032778,
		0.978139, -0.131311, 0.161252,
		46.264446, 33.655910, 33.233173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.590912, 33.407856, 33.756676>,  <45.579750, 33.747829, 33.120300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.590912, 33.407856, 33.756676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.974178, 33.512096, 33.709328>,  <46.204136, 33.574642, 33.680920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.974178, 33.512096, 33.709328>,  <45.590912, 33.407856, 33.756676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.974178, 33.512096, 33.709328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146151, -0.089856, 0.985173,
		0.246103, -0.961255, -0.124184,
		0.958161, 0.260603, -0.118375,
		46.261627, 33.590279, 33.673817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.041504, 32.883362, 33.997910>,  <45.590912, 33.407856, 33.756676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.041504, 32.883362, 33.997910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.244907, 33.226227, 34.030613>,  <46.366951, 33.431946, 34.050236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.244907, 33.226227, 34.030613>,  <46.041504, 32.883362, 33.997910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.244907, 33.226227, 34.030613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054666, -0.062627, 0.996539,
		0.859320, -0.511217, 0.015011,
		0.508508, 0.857167, 0.081763,
		46.397461, 33.483376, 34.055141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.253639, 33.027218, 34.678471>,  <46.041504, 32.883362, 33.997910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.253639, 33.027218, 34.678471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.328682, 33.404438, 34.568596>,  <46.373707, 33.630772, 34.502670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.328682, 33.404438, 34.568596>,  <46.253639, 33.027218, 34.678471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.328682, 33.404438, 34.568596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566496, 0.332340, 0.754077,
		0.802426, 0.014145, 0.596584,
		0.187603, 0.943054, -0.274691,
		46.384964, 33.687355, 34.486187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.528950, 33.371384, 35.240337>,  <46.253639, 33.027218, 34.678471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.528950, 33.371384, 35.240337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391670, 33.655228, 34.994194>,  <46.309303, 33.825535, 34.846508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391670, 33.655228, 34.994194>,  <46.528950, 33.371384, 35.240337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.391670, 33.655228, 34.994194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396311, 0.484572, 0.779825,
		0.851558, 0.511510, 0.114921,
		-0.343201, 0.709611, -0.615358,
		46.288712, 33.868111, 34.809586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.562759, 33.906723, 35.648201>,  <46.528950, 33.371384, 35.240337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.562759, 33.906723, 35.648201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.300747, 34.000259, 35.360798>,  <46.143539, 34.056381, 35.188358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.300747, 34.000259, 35.360798>,  <46.562759, 33.906723, 35.648201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.300747, 34.000259, 35.360798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646966, 0.317664, 0.693199,
		0.390342, 0.918917, -0.056793,
		-0.655033, 0.233841, -0.718506,
		46.104237, 34.070412, 35.145245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.495972, 34.627125, 35.758686>,  <46.562759, 33.906723, 35.648201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.495972, 34.627125, 35.758686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.179588, 34.503334, 35.547554>,  <45.989758, 34.429058, 35.420876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.179588, 34.503334, 35.547554>,  <46.495972, 34.627125, 35.758686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.179588, 34.503334, 35.547554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605557, 0.519498, 0.602845,
		0.087637, 0.796457, -0.598311,
		-0.790962, -0.309480, -0.527828,
		45.942299, 34.410492, 35.389206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033913, 35.121792, 35.921654>,  <46.495972, 34.627125, 35.758686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033913, 35.121792, 35.921654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.840656, 34.820427, 35.743240>,  <45.724701, 34.639610, 35.636192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.840656, 34.820427, 35.743240>,  <46.033913, 35.121792, 35.921654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.840656, 34.820427, 35.743240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806119, 0.183972, 0.562429,
		-0.341681, 0.631290, -0.696223,
		-0.483142, -0.753410, -0.446035,
		45.695713, 34.594402, 35.609428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.463978, 35.142437, 36.494316>,  <46.033913, 35.121792, 35.921654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.463978, 35.142437, 36.494316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458714, 35.246101, 36.108017>,  <46.455555, 35.308300, 35.876240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458714, 35.246101, 36.108017>,  <46.463978, 35.142437, 36.494316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.458714, 35.246101, 36.108017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307248, 0.920151, 0.242735,
		0.951539, -0.293529, -0.091734,
		-0.013159, 0.259157, -0.965746,
		46.454765, 35.323849, 35.818295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.114006, 35.418072, 36.317951>,  <46.463978, 35.142437, 36.494316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.114006, 35.418072, 36.317951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.847080, 35.597496, 36.080132>,  <46.686924, 35.705151, 35.937439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.847080, 35.597496, 36.080132>,  <47.114006, 35.418072, 36.317951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.847080, 35.597496, 36.080132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258677, 0.888183, 0.379759,
		0.698410, 0.099624, -0.708730,
		-0.667316, 0.448559, -0.594545,
		46.646885, 35.732063, 35.901768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.386433, 35.930248, 35.923130>,  <47.114006, 35.418072, 36.317951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.386433, 35.930248, 35.923130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.000359, 36.034832, 35.920204>,  <46.768715, 36.097584, 35.918449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.000359, 36.034832, 35.920204>,  <47.386433, 35.930248, 35.923130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.000359, 36.034832, 35.920204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251678, 0.935967, 0.246218,
		0.071226, 0.235804, -0.969187,
		-0.965187, 0.261460, -0.007319,
		46.710804, 36.113270, 35.918007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.521534, 35.505867, 35.216312>,  <47.386433, 35.930248, 35.923130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.521534, 35.505867, 35.216312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.577908, 35.239414, 34.923355>,  <47.611732, 35.079540, 34.747581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.577908, 35.239414, 34.923355>,  <47.521534, 35.505867, 35.216312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.577908, 35.239414, 34.923355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982180, 0.186989, 0.018931,
		0.124339, -0.722011, 0.680617,
		0.140936, -0.666135, -0.732395,
		47.620190, 35.039574, 34.703636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.604053, 36.116737, 46.324486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353580, 36.414818, 46.416206>,  <38.203297, 36.593666, 46.471237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353580, 36.414818, 46.416206>,  <38.604053, 36.116737, 46.324486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353580, 36.414818, 46.416206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388458, -0.043186, -0.920454,
		-0.676017, -0.665444, 0.316520,
		-0.626180, 0.745197, 0.229302,
		38.165726, 36.638378, 46.484997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836819, 35.896755, 46.172909>,  <38.604053, 36.116737, 46.324486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836819, 35.896755, 46.172909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.851601, 36.296482, 46.172585>,  <37.860470, 36.536320, 46.172390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.851601, 36.296482, 46.172585>,  <37.836819, 35.896755, 46.172909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851601, 36.296482, 46.172585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471071, 0.016702, -0.881937,
		-0.881321, 0.032977, 0.471366,
		0.036956, 0.999317, -0.000814,
		37.862686, 36.596275, 46.172340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210152, 36.051952, 45.914970>,  <37.836819, 35.896755, 46.172909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210152, 36.051952, 45.914970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.396133, 36.405529, 45.895149>,  <37.507725, 36.617676, 45.883255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.396133, 36.405529, 45.895149>,  <37.210152, 36.051952, 45.914970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396133, 36.405529, 45.895149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398990, 0.159246, -0.903022,
		-0.790331, 0.439638, 0.426728,
		0.464957, 0.883945, -0.049554,
		37.535622, 36.670712, 45.880283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699654, 36.478691, 45.770126>,  <37.210152, 36.051952, 45.914970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699654, 36.478691, 45.770126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.025219, 36.674984, 45.645729>,  <37.220558, 36.792759, 45.571091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.025219, 36.674984, 45.645729>,  <36.699654, 36.478691, 45.770126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025219, 36.674984, 45.645729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406840, 0.099285, -0.908088,
		-0.414754, 0.865634, 0.280460,
		0.813917, 0.490736, -0.310995,
		37.269394, 36.822205, 45.552429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461777, 36.976151, 45.285690>,  <36.699654, 36.478691, 45.770126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461777, 36.976151, 45.285690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.850235, 36.919243, 45.209126>,  <37.083309, 36.885098, 45.163185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.850235, 36.919243, 45.209126>,  <36.461777, 36.976151, 45.285690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850235, 36.919243, 45.209126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164886, 0.179355, -0.969868,
		0.172314, 0.973443, 0.150721,
		0.971144, -0.142270, -0.191412,
		37.141579, 36.876560, 45.151703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630383, 37.456280, 44.851471>,  <36.461777, 36.976151, 45.285690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630383, 37.456280, 44.851471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.926331, 37.192200, 44.799740>,  <37.103897, 37.033752, 44.768700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.926331, 37.192200, 44.799740>,  <36.630383, 37.456280, 44.851471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926331, 37.192200, 44.799740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002939, 0.189068, -0.981960,
		0.672745, 0.726901, 0.137945,
		0.739868, -0.660203, -0.129331,
		37.148293, 36.994141, 44.760941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914845, 37.654556, 44.305122>,  <36.630383, 37.456280, 44.851471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914845, 37.654556, 44.305122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.039883, 37.277676, 44.353348>,  <37.114906, 37.051548, 44.382282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.039883, 37.277676, 44.353348>,  <36.914845, 37.654556, 44.305122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039883, 37.277676, 44.353348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051421, -0.143524, -0.988310,
		0.948493, 0.302742, -0.093314,
		0.312596, -0.942204, 0.120564,
		37.133663, 36.995014, 44.389519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212246, 37.474174, 43.644493>,  <36.914845, 37.654556, 44.305122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212246, 37.474174, 43.644493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.199047, 37.101089, 43.788139>,  <37.191128, 36.877239, 43.874325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.199047, 37.101089, 43.788139>,  <37.212246, 37.474174, 43.644493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199047, 37.101089, 43.788139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221346, -0.343566, -0.912671,
		0.974637, -0.109607, -0.195114,
		-0.033001, -0.932711, 0.359113,
		37.189148, 36.821278, 43.895874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753101, 37.155018, 43.271774>,  <37.212246, 37.474174, 43.644493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753101, 37.155018, 43.271774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.507244, 36.866364, 43.399181>,  <37.359730, 36.693172, 43.475624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.507244, 36.866364, 43.399181>,  <37.753101, 37.155018, 43.271774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507244, 36.866364, 43.399181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066492, -0.354962, -0.932513,
		0.785996, -0.594344, 0.170193,
		-0.614646, -0.721635, 0.318517,
		37.322849, 36.649872, 43.494736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115227, 36.537617, 43.096230>,  <37.753101, 37.155018, 43.271774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115227, 36.537617, 43.096230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725204, 36.456955, 43.133320>,  <37.491192, 36.408558, 43.155575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725204, 36.456955, 43.133320>,  <38.115227, 36.537617, 43.096230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725204, 36.456955, 43.133320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004596, -0.436021, -0.899925,
		0.221901, -0.877053, 0.426073,
		-0.975058, -0.201653, 0.092723,
		37.432686, 36.396458, 43.161137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059334, 36.012661, 42.670815>,  <38.115227, 36.537617, 43.096230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059334, 36.012661, 42.670815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.691803, 36.164818, 42.712864>,  <37.471283, 36.256111, 42.738094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.691803, 36.164818, 42.712864>,  <38.059334, 36.012661, 42.670815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691803, 36.164818, 42.712864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248519, -0.350769, -0.902884,
		-0.306568, -0.855727, 0.416832,
		-0.918833, 0.380386, 0.105130,
		37.416153, 36.278934, 42.744404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694061, 35.454849, 42.436367>,  <38.059334, 36.012661, 42.670815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694061, 35.454849, 42.436367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.461159, 35.775826, 42.384098>,  <37.321419, 35.968410, 42.352737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.461159, 35.775826, 42.384098>,  <37.694061, 35.454849, 42.436367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461159, 35.775826, 42.384098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151699, -0.265136, -0.952203,
		-0.798730, -0.534599, 0.276105,
		-0.582252, 0.802438, -0.130674,
		37.286484, 36.016556, 42.344894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116020, 35.213455, 42.019718>,  <37.694061, 35.454849, 42.436367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116020, 35.213455, 42.019718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.089905, 35.609707, 41.971722>,  <37.074234, 35.847458, 41.942924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.089905, 35.609707, 41.971722>,  <37.116020, 35.213455, 42.019718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089905, 35.609707, 41.971722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108755, -0.126599, -0.985974,
		-0.991922, -0.051324, 0.116001,
		-0.065290, 0.990625, -0.119995,
		37.070316, 35.906895, 41.935722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478176, 35.297062, 41.722420>,  <37.116020, 35.213455, 42.019718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478176, 35.297062, 41.722420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713707, 35.612705, 41.652470>,  <36.855026, 35.802094, 41.610500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713707, 35.612705, 41.652470>,  <36.478176, 35.297062, 41.722420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713707, 35.612705, 41.652470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142629, -0.111521, -0.983474,
		-0.795574, 0.604040, 0.046883,
		0.588829, 0.789113, -0.174876,
		36.890354, 35.849438, 41.600006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182617, 35.625908, 41.149345>,  <36.478176, 35.297062, 41.722420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182617, 35.625908, 41.149345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.540550, 35.803570, 41.167255>,  <36.755310, 35.910168, 41.178001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.540550, 35.803570, 41.167255>,  <36.182617, 35.625908, 41.149345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540550, 35.803570, 41.167255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035317, 0.029540, -0.998939,
		-0.445009, 0.895461, 0.010748,
		0.894829, 0.444157, 0.044770,
		36.808998, 35.936817, 41.180687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162312, 36.260685, 40.768867>,  <36.182617, 35.625908, 41.149345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162312, 36.260685, 40.768867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.546711, 36.150074, 40.767735>,  <36.777351, 36.083706, 40.767056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.546711, 36.150074, 40.767735>,  <36.162312, 36.260685, 40.768867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546711, 36.150074, 40.767735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021007, 0.083218, -0.996310,
		0.275744, 0.957396, 0.085782,
		0.961002, -0.276529, -0.002835,
		36.835011, 36.067116, 40.766884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512516, 36.548927, 40.095657>,  <36.162312, 36.260685, 40.768867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512516, 36.548927, 40.095657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.781273, 36.271885, 40.200619>,  <36.942528, 36.105659, 40.263596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.781273, 36.271885, 40.200619>,  <36.512516, 36.548927, 40.095657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781273, 36.271885, 40.200619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398736, 0.039692, -0.916206,
		0.624157, 0.720221, 0.302837,
		0.671891, -0.692609, 0.262404,
		36.982841, 36.064102, 40.279339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208340, 36.811966, 39.833035>,  <36.512516, 36.548927, 40.095657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208340, 36.811966, 39.833035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.230721, 36.415611, 39.882034>,  <37.244148, 36.177799, 39.911434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.230721, 36.415611, 39.882034>,  <37.208340, 36.811966, 39.833035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230721, 36.415611, 39.882034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414528, -0.088561, -0.905717,
		0.908315, 0.101453, 0.405797,
		0.055950, -0.990891, 0.122496,
		37.247505, 36.118343, 39.918781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882957, 36.611286, 39.503410>,  <37.208340, 36.811966, 39.833035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882957, 36.611286, 39.503410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.714947, 36.248325, 39.508968>,  <37.614140, 36.030548, 39.512302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.714947, 36.248325, 39.508968>,  <37.882957, 36.611286, 39.503410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714947, 36.248325, 39.508968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439331, -0.216714, -0.871793,
		0.794080, -0.360076, 0.489677,
		-0.420031, -0.907403, 0.013896,
		37.588936, 35.976105, 39.513138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412247, 36.138454, 39.272110>,  <37.882957, 36.611286, 39.503410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412247, 36.138454, 39.272110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.062042, 35.947803, 39.240349>,  <37.851921, 35.833412, 39.221291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.062042, 35.947803, 39.240349>,  <38.412247, 36.138454, 39.272110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062042, 35.947803, 39.240349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248851, -0.303910, -0.919626,
		0.414189, -0.824902, 0.384686,
		-0.875511, -0.476629, -0.079402,
		37.799389, 35.804813, 39.216530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613964, 35.466843, 38.967705>,  <38.412247, 36.138454, 39.272110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613964, 35.466843, 38.967705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.219158, 35.425121, 38.918854>,  <37.982273, 35.400089, 38.889545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.219158, 35.425121, 38.918854>,  <38.613964, 35.466843, 38.967705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219158, 35.425121, 38.918854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156069, -0.443509, -0.882577,
		0.037895, -0.890180, 0.454031,
		-0.987019, -0.104305, -0.122123,
		37.923054, 35.393829, 38.882217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351372, 34.680237, 38.909550>,  <38.613964, 35.466843, 38.967705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351372, 34.680237, 38.909550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.128155, 34.960041, 38.730991>,  <37.994225, 35.127926, 38.623856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.128155, 34.960041, 38.730991>,  <38.351372, 34.680237, 38.909550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128155, 34.960041, 38.730991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225208, -0.390085, -0.892813,
		-0.798666, -0.598761, 0.060149,
		-0.558045, 0.699513, -0.446393,
		37.960743, 35.169895, 38.597073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130901, 34.427406, 38.310978>,  <38.351372, 34.680237, 38.909550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130901, 34.427406, 38.310978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.042507, 34.802647, 38.204292>,  <37.989471, 35.027790, 38.140282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.042507, 34.802647, 38.204292>,  <38.130901, 34.427406, 38.310978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042507, 34.802647, 38.204292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264442, -0.205599, -0.942231,
		-0.938743, -0.278747, -0.202639,
		-0.220981, 0.938099, -0.266717,
		37.976212, 35.084076, 38.124279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916569, 34.189541, 38.357250>,  <38.130901, 34.427406, 38.310978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916569, 34.189541, 38.357250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.291553, 34.124725, 38.480484>,  <39.516544, 34.085838, 38.554424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.291553, 34.124725, 38.480484>,  <38.916569, 34.189541, 38.357250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291553, 34.124725, 38.480484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330305, -0.134747, 0.934206,
		-0.109852, -0.977543, -0.179837,
		0.937460, -0.162025, 0.308086,
		39.572792, 34.076115, 38.572910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823132, 33.638668, 38.784977>,  <38.916569, 34.189541, 38.357250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823132, 33.638668, 38.784977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.162212, 33.834732, 38.866116>,  <39.365662, 33.952370, 38.914799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.162212, 33.834732, 38.866116>,  <38.823132, 33.638668, 38.784977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162212, 33.834732, 38.866116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219598, -0.023829, 0.975299,
		0.482886, -0.871307, 0.087438,
		0.847702, 0.490160, 0.202844,
		39.416523, 33.981781, 38.926968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949947, 33.402084, 39.396622>,  <38.823132, 33.638668, 38.784977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949947, 33.402084, 39.396622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.216541, 33.700211, 39.389645>,  <39.376495, 33.879086, 39.385460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.216541, 33.700211, 39.389645>,  <38.949947, 33.402084, 39.396622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216541, 33.700211, 39.389645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172318, 0.176765, 0.969052,
		0.725332, -0.642852, 0.246242,
		0.666483, 0.745316, -0.017439,
		39.416485, 33.923805, 39.384415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492977, 33.276005, 39.897099>,  <38.949947, 33.402084, 39.396622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492977, 33.276005, 39.897099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.486061, 33.667904, 39.817295>,  <39.481911, 33.903042, 39.769413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.486061, 33.667904, 39.817295>,  <39.492977, 33.276005, 39.897099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486061, 33.667904, 39.817295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188654, 0.192755, 0.962941,
		0.981892, 0.054285, 0.181500,
		-0.017288, 0.979744, -0.199506,
		39.480873, 33.961826, 39.757442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972275, 33.502674, 40.346828>,  <39.492977, 33.276005, 39.897099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972275, 33.502674, 40.346828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.698471, 33.769909, 40.230141>,  <39.534187, 33.930252, 40.160130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.698471, 33.769909, 40.230141>,  <39.972275, 33.502674, 40.346828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698471, 33.769909, 40.230141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232293, 0.179411, 0.955956,
		0.691003, 0.722126, 0.032384,
		-0.684510, 0.668091, -0.291718,
		39.493118, 33.970337, 40.142624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007557, 34.044716, 40.846355>,  <39.972275, 33.502674, 40.346828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007557, 34.044716, 40.846355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.653259, 34.103752, 40.670319>,  <39.440681, 34.139175, 40.564697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.653259, 34.103752, 40.670319>,  <40.007557, 34.044716, 40.846355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653259, 34.103752, 40.670319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405956, 0.213435, 0.888620,
		0.225084, 0.965744, -0.129131,
		-0.885741, 0.147593, -0.440090,
		39.387539, 34.148029, 40.538292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781071, 34.704315, 41.134964>,  <40.007557, 34.044716, 40.846355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781071, 34.704315, 41.134964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.459930, 34.520664, 40.982838>,  <39.267246, 34.410473, 40.891563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.459930, 34.520664, 40.982838>,  <39.781071, 34.704315, 41.134964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459930, 34.520664, 40.982838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514883, 0.212379, 0.830536,
		-0.300552, 0.862610, -0.406905,
		-0.802848, -0.459128, -0.380312,
		39.219078, 34.382927, 40.868744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228611, 35.184574, 41.227131>,  <39.781071, 34.704315, 41.134964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228611, 35.184574, 41.227131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.055691, 34.826813, 41.181232>,  <38.951939, 34.612156, 41.153694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.055691, 34.826813, 41.181232>,  <39.228611, 35.184574, 41.227131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055691, 34.826813, 41.181232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458800, 0.108614, 0.881876,
		-0.776287, 0.433880, -0.457305,
		-0.432298, -0.894400, -0.114748,
		38.926003, 34.558495, 41.146809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625523, 35.215351, 41.713070>,  <39.228611, 35.184574, 41.227131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625523, 35.215351, 41.713070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.630360, 34.820831, 41.647255>,  <38.633263, 34.584122, 41.607765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.630360, 34.820831, 41.647255>,  <38.625523, 35.215351, 41.713070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630360, 34.820831, 41.647255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343431, -0.158639, 0.925683,
		-0.939100, 0.045316, -0.340643,
		0.012091, -0.986296, -0.164541,
		38.633987, 34.524944, 41.597893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003975, 34.927349, 41.997196>,  <38.625523, 35.215351, 41.713070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003975, 34.927349, 41.997196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.238998, 34.605415, 41.963669>,  <38.380013, 34.412254, 41.943550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.238998, 34.605415, 41.963669>,  <38.003975, 34.927349, 41.997196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238998, 34.605415, 41.963669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221243, -0.259424, 0.940080,
		-0.778350, -0.533805, -0.330489,
		0.587556, -0.804830, -0.083823,
		38.415264, 34.363968, 41.938522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606953, 34.345798, 42.198086>,  <38.003975, 34.927349, 41.997196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606953, 34.345798, 42.198086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.988220, 34.239597, 42.256023>,  <38.216980, 34.175877, 42.290787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.988220, 34.239597, 42.256023>,  <37.606953, 34.345798, 42.198086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988220, 34.239597, 42.256023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176080, -0.097752, 0.979510,
		-0.245906, -0.959141, -0.139924,
		0.953166, -0.265505, 0.144848,
		38.274170, 34.159946, 42.299477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588768, 33.668861, 42.544937>,  <37.606953, 34.345798, 42.198086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588768, 33.668861, 42.544937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.929008, 33.856201, 42.640533>,  <38.133152, 33.968605, 42.697891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.929008, 33.856201, 42.640533>,  <37.588768, 33.668861, 42.544937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929008, 33.856201, 42.640533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129131, -0.254528, 0.958405,
		0.509702, -0.846086, -0.156024,
		0.850606, 0.468354, 0.238989,
		38.184189, 33.996708, 42.712231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839016, 33.279587, 43.115360>,  <37.588768, 33.668861, 42.544937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839016, 33.279587, 43.115360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.059074, 33.612801, 43.138660>,  <38.191109, 33.812729, 43.152641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.059074, 33.612801, 43.138660>,  <37.839016, 33.279587, 43.115360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059074, 33.612801, 43.138660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044783, -0.099088, 0.994071,
		0.833868, -0.544274, -0.091818,
		0.550144, 0.833035, 0.058252,
		38.224117, 33.862713, 43.156136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290062, 33.153553, 43.553291>,  <37.839016, 33.279587, 43.115360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290062, 33.153553, 43.553291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330555, 33.551498, 43.553860>,  <38.354851, 33.790264, 43.554199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330555, 33.551498, 43.553860>,  <38.290062, 33.153553, 43.553291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330555, 33.551498, 43.553860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028872, -0.004364, 0.999574,
		0.994444, -0.101151, -0.029165,
		0.101235, 0.994862, 0.001419,
		38.360924, 33.849957, 43.554287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811501, 33.298592, 44.038574>,  <38.290062, 33.153553, 43.553291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811501, 33.298592, 44.038574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.617920, 33.645241, 43.989971>,  <38.501774, 33.853230, 43.960808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.617920, 33.645241, 43.989971>,  <38.811501, 33.298592, 44.038574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617920, 33.645241, 43.989971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118565, 0.202505, 0.972077,
		0.867028, 0.456027, -0.200753,
		-0.483947, 0.866620, -0.121509,
		38.472736, 33.905228, 43.953518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266045, 33.855671, 44.330517>,  <38.811501, 33.298592, 44.038574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266045, 33.855671, 44.330517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.892860, 33.998543, 44.312630>,  <38.668949, 34.084267, 44.301895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.892860, 33.998543, 44.312630>,  <39.266045, 33.855671, 44.330517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892860, 33.998543, 44.312630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086065, 0.341965, 0.935763,
		0.349529, 0.869184, -0.349782,
		-0.932964, 0.357181, -0.044720,
		38.612972, 34.105698, 44.299213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334133, 34.519810, 44.604443>,  <39.266045, 33.855671, 44.330517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334133, 34.519810, 44.604443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.946720, 34.434986, 44.656548>,  <38.714272, 34.384090, 44.687813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.946720, 34.434986, 44.656548>,  <39.334133, 34.519810, 44.604443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946720, 34.434986, 44.656548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091263, 0.184333, 0.978618,
		-0.231537, 0.959715, -0.159180,
		-0.968536, -0.212059, 0.130267,
		38.656158, 34.371368, 44.695629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.100117, 35.000561, 45.076050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.842941, 34.694328, 45.085148>,  <38.688637, 34.510590, 45.090607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.842941, 34.694328, 45.085148>,  <39.100117, 35.000561, 45.076050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842941, 34.694328, 45.085148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320779, -0.242191, 0.915666,
		-0.695505, 0.596016, 0.401296,
		-0.642942, -0.765577, 0.022745,
		38.650059, 34.464657, 45.091972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609299, 35.138538, 45.652206>,  <39.100117, 35.000561, 45.076050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609299, 35.138538, 45.652206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.587204, 34.748394, 45.566769>,  <38.573948, 34.514309, 45.515507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.587204, 34.748394, 45.566769>,  <38.609299, 35.138538, 45.652206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587204, 34.748394, 45.566769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109386, -0.218544, 0.969677,
		-0.992463, 0.030200, 0.118763,
		-0.055239, -0.975360, -0.213594,
		38.570633, 34.455788, 45.502689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113052, 34.927937, 46.107979>,  <38.609299, 35.138538, 45.652206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113052, 34.927937, 46.107979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.312088, 34.598801, 45.998188>,  <38.431511, 34.401318, 45.932316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.312088, 34.598801, 45.998188>,  <38.113052, 34.927937, 46.107979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312088, 34.598801, 45.998188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061459, -0.282189, 0.957388,
		-0.865233, -0.493255, -0.089843,
		0.497589, -0.822842, -0.274475,
		38.461365, 34.351948, 45.915844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807087, 34.426601, 46.432415>,  <38.113052, 34.927937, 46.107979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807087, 34.426601, 46.432415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.167805, 34.277855, 46.344330>,  <38.384235, 34.188606, 46.291481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.167805, 34.277855, 46.344330>,  <37.807087, 34.426601, 46.432415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167805, 34.277855, 46.344330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156414, -0.194162, 0.968419,
		-0.402875, -0.907755, -0.116929,
		0.901790, -0.371863, -0.220209,
		38.438343, 34.166298, 46.278267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844410, 33.984848, 46.988552>,  <37.807087, 34.426601, 46.432415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844410, 33.984848, 46.988552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.217491, 33.997189, 46.844822>,  <38.441338, 34.004593, 46.758583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.217491, 33.997189, 46.844822>,  <37.844410, 33.984848, 46.988552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217491, 33.997189, 46.844822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360502, -0.051040, 0.931361,
		0.010400, -0.998220, -0.058730,
		0.932701, 0.030859, -0.359329,
		38.497303, 34.006447, 46.737022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187202, 33.352764, 47.141304>,  <37.844410, 33.984848, 46.988552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187202, 33.352764, 47.141304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.464531, 33.636131, 47.088455>,  <38.630928, 33.806152, 47.056747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.464531, 33.636131, 47.088455>,  <38.187202, 33.352764, 47.141304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464531, 33.636131, 47.088455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437847, -0.268497, 0.858020,
		0.572360, -0.652732, -0.496332,
		0.693321, 0.708414, -0.132120,
		38.672527, 33.848656, 47.048820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785793, 33.052471, 47.339493>,  <38.187202, 33.352764, 47.141304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785793, 33.052471, 47.339493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.915703, 33.430328, 47.358116>,  <38.993649, 33.657043, 47.369289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.915703, 33.430328, 47.358116>,  <38.785793, 33.052471, 47.339493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915703, 33.430328, 47.358116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260570, -0.136684, 0.955731,
		0.909191, -0.298262, -0.290538,
		0.324770, 0.944647, 0.046554,
		39.013134, 33.713722, 47.372082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430309, 33.096153, 47.690037>,  <38.785793, 33.052471, 47.339493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430309, 33.096153, 47.690037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.312046, 33.478058, 47.702763>,  <39.241089, 33.707199, 47.710400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.312046, 33.478058, 47.702763>,  <39.430309, 33.096153, 47.690037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312046, 33.478058, 47.702763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279402, 0.054575, 0.958622,
		0.913520, 0.292317, -0.282898,
		-0.295661, 0.954763, 0.031819,
		39.223347, 33.764488, 47.712307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028687, 33.560268, 48.009220>,  <39.430309, 33.096153, 47.690037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028687, 33.560268, 48.009220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.700947, 33.788067, 48.035564>,  <39.504303, 33.924744, 48.051373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.700947, 33.788067, 48.035564>,  <40.028687, 33.560268, 48.009220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700947, 33.788067, 48.035564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282734, 0.301464, 0.910594,
		0.498722, 0.764720, -0.408020,
		-0.819353, 0.569494, 0.065865,
		39.455139, 33.958916, 48.055325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242218, 34.227940, 48.346519>,  <40.028687, 33.560268, 48.009220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242218, 34.227940, 48.346519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.846134, 34.209110, 48.399082>,  <39.608482, 34.197811, 48.430618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.846134, 34.209110, 48.399082>,  <40.242218, 34.227940, 48.346519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846134, 34.209110, 48.399082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127131, 0.084566, 0.988274,
		-0.057635, 0.995305, -0.077754,
		-0.990210, -0.047074, 0.131408,
		39.549072, 34.194988, 48.438503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907631, 34.877655, 48.643906>,  <40.242218, 34.227940, 48.346519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907631, 34.877655, 48.643906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.698612, 34.551823, 48.744629>,  <39.573200, 34.356323, 48.805061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.698612, 34.551823, 48.744629>,  <39.907631, 34.877655, 48.643906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698612, 34.551823, 48.744629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209037, 0.163918, 0.964072,
		-0.826585, 0.556413, 0.084621,
		-0.522552, -0.814576, 0.251803,
		39.541847, 34.307449, 48.820171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547630, 35.188675, 49.185707>,  <39.907631, 34.877655, 48.643906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547630, 35.188675, 49.185707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.520668, 34.789730, 49.196415>,  <39.504490, 34.550362, 49.202839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.520668, 34.789730, 49.196415>,  <39.547630, 35.188675, 49.185707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520668, 34.789730, 49.196415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090208, 0.020630, 0.995709,
		-0.993639, 0.069532, 0.088580,
		-0.067406, -0.997366, 0.026771,
		39.500446, 34.490520, 49.204445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069611, 35.017258, 49.785240>,  <39.547630, 35.188675, 49.185707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069611, 35.017258, 49.785240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.256321, 34.671993, 49.708229>,  <39.368347, 34.464832, 49.662022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.256321, 34.671993, 49.708229>,  <39.069611, 35.017258, 49.785240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256321, 34.671993, 49.708229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122896, -0.152282, 0.980667,
		-0.875796, -0.481411, 0.034998,
		0.466774, -0.863165, -0.192532,
		39.396355, 34.413044, 49.650471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859844, 34.552082, 50.253101>,  <39.069611, 35.017258, 49.785240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859844, 34.552082, 50.253101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.187149, 34.370377, 50.112190>,  <39.383530, 34.261353, 50.027645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.187149, 34.370377, 50.112190>,  <38.859844, 34.552082, 50.253101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187149, 34.370377, 50.112190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136105, -0.442291, 0.886484,
		-0.558508, -0.773318, -0.300080,
		0.818257, -0.454266, -0.352275,
		39.432625, 34.234097, 50.006508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819153, 33.907860, 50.440571>,  <38.859844, 34.552082, 50.253101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819153, 33.907860, 50.440571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.212463, 33.953625, 50.383904>,  <39.448452, 33.981083, 50.349903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.212463, 33.953625, 50.383904>,  <38.819153, 33.907860, 50.440571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212463, 33.953625, 50.383904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175396, -0.385951, 0.905692,
		0.048944, -0.915397, -0.399565,
		0.983280, 0.114410, -0.141667,
		39.507446, 33.987949, 50.341404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163425, 33.241875, 50.551712>,  <38.819153, 33.907860, 50.440571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163425, 33.241875, 50.551712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.457466, 33.507858, 50.604557>,  <39.633892, 33.667446, 50.636265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.457466, 33.507858, 50.604557>,  <39.163425, 33.241875, 50.551712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457466, 33.507858, 50.604557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058174, -0.256015, 0.964921,
		0.675452, -0.701633, -0.226882,
		0.735105, 0.664957, 0.132109,
		39.677998, 33.707344, 50.644188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695518, 32.962997, 50.850334>,  <39.163425, 33.241875, 50.551712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695518, 32.962997, 50.850334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.778305, 33.345303, 50.933945>,  <39.827976, 33.574684, 50.984112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.778305, 33.345303, 50.933945>,  <39.695518, 32.962997, 50.850334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778305, 33.345303, 50.933945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295642, -0.264762, 0.917876,
		0.932611, -0.128169, -0.337358,
		0.206962, 0.955758, 0.209028,
		39.840393, 33.632030, 50.996655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328667, 32.965645, 51.245686>,  <39.695518, 32.962997, 50.850334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328667, 32.965645, 51.245686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.149384, 33.316280, 51.315773>,  <40.041813, 33.526661, 51.357826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.149384, 33.316280, 51.315773>,  <40.328667, 32.965645, 51.245686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149384, 33.316280, 51.315773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332815, -0.018286, 0.942815,
		0.829664, 0.480894, -0.283546,
		-0.448208, 0.876588, 0.175220,
		40.014919, 33.579258, 51.368340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781334, 33.293205, 51.670094>,  <40.328667, 32.965645, 51.245686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781334, 33.293205, 51.670094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.448456, 33.507072, 51.728859>,  <40.248730, 33.635391, 51.764118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.448456, 33.507072, 51.728859>,  <40.781334, 33.293205, 51.670094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448456, 33.507072, 51.728859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291697, 0.196815, 0.936043,
		0.471556, 0.821824, -0.319749,
		-0.832195, 0.534667, 0.146914,
		40.198799, 33.667473, 51.772934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007851, 33.880657, 52.106869>,  <40.781334, 33.293205, 51.670094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007851, 33.880657, 52.106869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.609962, 33.884590, 52.147720>,  <40.371227, 33.886951, 52.172234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.609962, 33.884590, 52.147720>,  <41.007851, 33.880657, 52.106869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609962, 33.884590, 52.147720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102584, 0.115375, 0.988011,
		-0.002066, 0.993273, -0.115775,
		-0.994722, 0.009835, 0.102133,
		40.311546, 33.887539, 52.178360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839935, 34.423332, 52.489761>,  <41.007851, 33.880657, 52.106869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839935, 34.423332, 52.489761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.529488, 34.181499, 52.561443>,  <40.343220, 34.036400, 52.604454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.529488, 34.181499, 52.561443>,  <40.839935, 34.423332, 52.489761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529488, 34.181499, 52.561443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098265, 0.164762, 0.981426,
		-0.622878, 0.779317, -0.068466,
		-0.776123, -0.604581, 0.179206,
		40.296650, 34.000126, 52.615204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389507, 34.816746, 53.038635>,  <40.839935, 34.423332, 52.489761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389507, 34.816746, 53.038635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.295650, 34.427959, 53.044605>,  <40.239334, 34.194687, 53.048187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.295650, 34.427959, 53.044605>,  <40.389507, 34.816746, 53.038635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295650, 34.427959, 53.044605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054347, 0.002217, 0.998520,
		-0.970560, 0.235111, 0.052304,
		-0.234647, -0.971966, 0.014930,
		40.225258, 34.136368, 53.049084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694172, 34.672726, 53.334225>,  <40.389507, 34.816746, 53.038635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694172, 34.672726, 53.334225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.942745, 34.360317, 53.358940>,  <40.091888, 34.172871, 53.373768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.942745, 34.360317, 53.358940>,  <39.694172, 34.672726, 53.334225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942745, 34.360317, 53.358940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036390, 0.050006, 0.998086,
		-0.782619, -0.622495, 0.002654,
		0.621436, -0.781025, 0.061788,
		40.129177, 34.126011, 53.377476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102242, 34.527271, 53.006256>,  <39.694172, 34.672726, 53.334225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102242, 34.527271, 53.006256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.375504, 34.336124, 52.785370>,  <39.539463, 34.221436, 52.652836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.375504, 34.336124, 52.785370>,  <39.102242, 34.527271, 53.006256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375504, 34.336124, 52.785370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650161, 0.053649, 0.757900,
		-0.332547, -0.876794, 0.347338,
		0.683157, -0.477863, -0.552217,
		39.580452, 34.192764, 52.619705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049469, 34.960781, 53.682789>,  <39.102242, 34.527271, 53.006256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049469, 34.960781, 53.682789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.794876, 35.240135, 53.813725>,  <38.642120, 35.407745, 53.892284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.794876, 35.240135, 53.813725>,  <39.049469, 34.960781, 53.682789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794876, 35.240135, 53.813725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714581, -0.374224, -0.591042,
		-0.290275, -0.610098, 0.737238,
		-0.636486, 0.698381, 0.327336,
		38.603931, 35.449650, 53.911926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432663, 34.655766, 53.931774>,  <39.049469, 34.960781, 53.682789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432663, 34.655766, 53.931774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.327595, 35.019867, 53.803749>,  <38.264553, 35.238327, 53.726933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.327595, 35.019867, 53.803749>,  <38.432663, 34.655766, 53.931774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327595, 35.019867, 53.803749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518803, -0.412920, -0.748559,
		-0.813540, -0.030574, 0.580704,
		-0.262671, 0.910254, -0.320066,
		38.248795, 35.292942, 53.707729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694561, 34.726807, 53.743954>,  <38.432663, 34.655766, 53.931774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694561, 34.726807, 53.743954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.798531, 35.064873, 53.557133>,  <37.860912, 35.267712, 53.445038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.798531, 35.064873, 53.557133>,  <37.694561, 34.726807, 53.743954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798531, 35.064873, 53.557133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510585, -0.290243, -0.809359,
		-0.819599, 0.448843, 0.356087,
		0.259923, 0.845162, -0.467055,
		37.876507, 35.318420, 53.417015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026680, 35.065041, 53.469463>,  <37.694561, 34.726807, 53.743954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026680, 35.065041, 53.469463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329739, 35.219868, 53.259262>,  <37.511574, 35.312763, 53.133141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329739, 35.219868, 53.259262>,  <37.026680, 35.065041, 53.469463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329739, 35.219868, 53.259262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570561, 0.001832, -0.821253,
		-0.316918, 0.922049, 0.222234,
		0.757643, 0.387068, -0.525504,
		37.557030, 35.335987, 53.101612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680080, 35.426376, 52.861355>,  <37.026680, 35.065041, 53.469463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680080, 35.426376, 52.861355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.062344, 35.456451, 52.747467>,  <37.291702, 35.474495, 52.679134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.062344, 35.456451, 52.747467>,  <36.680080, 35.426376, 52.861355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062344, 35.456451, 52.747467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292105, 0.119376, -0.948907,
		-0.037355, 0.989998, 0.136044,
		0.955657, 0.075185, -0.284724,
		37.349041, 35.479008, 52.662048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781181, 35.994259, 52.406921>,  <36.680080, 35.426376, 52.861355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781181, 35.994259, 52.406921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.108185, 35.780998, 52.319805>,  <37.304386, 35.653042, 52.267536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.108185, 35.780998, 52.319805>,  <36.781181, 35.994259, 52.406921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108185, 35.780998, 52.319805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142556, 0.179058, -0.973456,
		0.557999, 0.826851, 0.070376,
		0.817505, -0.533155, -0.217787,
		37.353436, 35.621052, 52.254471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140781, 36.333153, 51.853050>,  <36.781181, 35.994259, 52.406921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140781, 36.333153, 51.853050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.284241, 35.959816, 51.846832>,  <37.370316, 35.735813, 51.843102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.284241, 35.959816, 51.846832>,  <37.140781, 36.333153, 51.853050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284241, 35.959816, 51.846832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048354, -0.001949, -0.998828,
		0.932219, 0.358981, -0.045830,
		0.358650, -0.933343, -0.015541,
		37.391834, 35.679813, 51.842171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832451, 36.287415, 51.498100>,  <37.140781, 36.333153, 51.853050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832451, 36.287415, 51.498100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660690, 35.926903, 51.475082>,  <37.557636, 35.710594, 51.461273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.660690, 35.926903, 51.475082>,  <37.832451, 36.287415, 51.498100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660690, 35.926903, 51.475082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154879, -0.010716, -0.987876,
		0.889736, -0.433104, 0.144192,
		-0.429398, -0.901281, -0.057544,
		37.531872, 35.656517, 51.457821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288582, 35.880314, 51.048893>,  <37.832451, 36.287415, 51.498100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288582, 35.880314, 51.048893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.955002, 35.659599, 51.045910>,  <37.754852, 35.527168, 51.044121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.955002, 35.659599, 51.045910>,  <38.288582, 35.880314, 51.048893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955002, 35.659599, 51.045910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108128, -0.150138, -0.982735,
		0.541144, -0.820357, 0.184871,
		-0.833949, -0.551791, -0.007457,
		37.704819, 35.494061, 51.043674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411274, 35.275181, 50.737408>,  <38.288582, 35.880314, 51.048893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411274, 35.275181, 50.737408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016899, 35.315247, 50.683910>,  <37.780273, 35.339287, 50.651810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016899, 35.315247, 50.683910>,  <38.411274, 35.275181, 50.737408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016899, 35.315247, 50.683910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123787, -0.099821, -0.987275,
		-0.112255, -0.989950, 0.086016,
		-0.985939, 0.100179, -0.133749,
		37.721115, 35.345295, 50.643787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169624, 34.796417, 50.259346>,  <38.411274, 35.275181, 50.737408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169624, 34.796417, 50.259346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.899319, 35.090820, 50.243153>,  <37.737137, 35.267460, 50.233437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.899319, 35.090820, 50.243153>,  <38.169624, 34.796417, 50.259346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899319, 35.090820, 50.243153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179469, 0.111015, -0.977480,
		-0.714935, -0.667812, -0.207110,
		-0.675765, 0.736004, -0.040483,
		37.696590, 35.311623, 50.231007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868183, 34.723331, 49.595280>,  <38.169624, 34.796417, 50.259346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868183, 34.723331, 49.595280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.768978, 35.086170, 49.731319>,  <37.709457, 35.303871, 49.812943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.768978, 35.086170, 49.731319>,  <37.868183, 34.723331, 49.595280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768978, 35.086170, 49.731319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077185, 0.368458, -0.926435,
		-0.965678, -0.203513, -0.161395,
		-0.248008, 0.907095, 0.340103,
		37.694576, 35.358299, 49.833351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363972, 34.979816, 49.141216>,  <37.868183, 34.723331, 49.595280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363972, 34.979816, 49.141216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.530346, 35.298138, 49.317261>,  <37.630169, 35.489128, 49.422890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.530346, 35.298138, 49.317261>,  <37.363972, 34.979816, 49.141216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530346, 35.298138, 49.317261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049992, 0.463225, -0.884830,
		-0.908019, 0.390034, 0.152888,
		0.415936, 0.795799, 0.440116,
		37.655128, 35.536877, 49.449295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008442, 35.538612, 48.784512>,  <37.363972, 34.979816, 49.141216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008442, 35.538612, 48.784512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.330540, 35.697693, 48.960426>,  <37.523800, 35.793140, 49.065975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.330540, 35.697693, 48.960426>,  <37.008442, 35.538612, 48.784512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330540, 35.697693, 48.960426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237730, 0.462937, -0.853917,
		-0.543196, 0.792164, 0.278233,
		0.805247, 0.397700, 0.439786,
		37.572113, 35.817001, 49.092361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036407, 36.290127, 48.554920>,  <37.008442, 35.538612, 48.784512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036407, 36.290127, 48.554920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.400414, 36.210606, 48.700439>,  <37.618816, 36.162891, 48.787750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.400414, 36.210606, 48.700439>,  <37.036407, 36.290127, 48.554920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400414, 36.210606, 48.700439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414511, 0.421022, -0.806796,
		0.007229, 0.884995, 0.465544,
		0.910015, -0.198806, 0.363797,
		37.673420, 36.150963, 48.809578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518391, 36.900803, 48.491180>,  <37.036407, 36.290127, 48.554920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518391, 36.900803, 48.491180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.734077, 36.564270, 48.476139>,  <37.863491, 36.362350, 48.467113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.734077, 36.564270, 48.476139>,  <37.518391, 36.900803, 48.491180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734077, 36.564270, 48.476139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372688, 0.278426, -0.885202,
		0.755215, 0.463300, 0.463684,
		0.539216, -0.841328, -0.037605,
		37.895844, 36.311871, 48.464859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243862, 37.196148, 48.390465>,  <37.518391, 36.900803, 48.491180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243862, 37.196148, 48.390465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212547, 36.829479, 48.233707>,  <38.193756, 36.609478, 48.139652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212547, 36.829479, 48.233707>,  <38.243862, 37.196148, 48.390465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212547, 36.829479, 48.233707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404013, 0.330198, -0.853078,
		0.911397, -0.225118, 0.344496,
		-0.078292, -0.916674, -0.391892,
		38.189060, 36.554478, 48.116138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782711, 37.234173, 48.032864>,  <38.243862, 37.196148, 48.390465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782711, 37.234173, 48.032864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566341, 36.953579, 47.847252>,  <38.436520, 36.785221, 47.735886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.566341, 36.953579, 47.847252>,  <38.782711, 37.234173, 48.032864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566341, 36.953579, 47.847252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180292, 0.442178, -0.878620,
		0.821522, -0.558926, -0.112712,
		-0.540922, -0.701484, -0.464029,
		38.404064, 36.743134, 47.708042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182354, 37.030090, 47.362099>,  <38.782711, 37.234173, 48.032864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182354, 37.030090, 47.362099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.800976, 36.911640, 47.339268>,  <38.572151, 36.840569, 47.325569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.800976, 36.911640, 47.339268>,  <39.182354, 37.030090, 47.362099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800976, 36.911640, 47.339268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001065, 0.192554, -0.981286,
		0.301577, -0.935537, -0.183904,
		-0.953441, -0.296130, -0.057073,
		38.514942, 36.822803, 47.322147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067867, 36.829075, 46.720200>,  <39.182354, 37.030090, 47.362099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067867, 36.829075, 46.720200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.685333, 36.841915, 46.836403>,  <38.455814, 36.849621, 46.906124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.685333, 36.841915, 46.836403>,  <39.067867, 36.829075, 46.720200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685333, 36.841915, 46.836403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282208, 0.157265, -0.946376,
		-0.076072, -0.987035, -0.141337,
		-0.956333, 0.032107, 0.290512,
		38.398434, 36.851547, 46.923557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.435963, 34.160927, 28.762585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.152760, 34.029827, 28.512363>,  <44.982838, 33.951168, 28.362230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.152760, 34.029827, 28.512363>,  <45.435963, 34.160927, 28.762585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.152760, 34.029827, 28.512363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656197, -0.022099, 0.754266,
		-0.261031, 0.944508, -0.199420,
		-0.708003, -0.327746, -0.625551,
		44.940357, 33.931503, 28.324697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.893810, 34.505844, 28.895109>,  <45.435963, 34.160927, 28.762585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.893810, 34.505844, 28.895109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.741222, 34.168869, 28.742908>,  <44.649670, 33.966686, 28.651588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.741222, 34.168869, 28.742908>,  <44.893810, 34.505844, 28.895109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.741222, 34.168869, 28.742908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567172, -0.111729, 0.815986,
		-0.729928, 0.527087, -0.435184,
		-0.381473, -0.842435, -0.380503,
		44.626781, 33.916138, 28.628757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194683, 34.557510, 29.108366>,  <44.893810, 34.505844, 28.895109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194683, 34.557510, 29.108366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.270020, 34.172283, 29.031387>,  <44.315220, 33.941147, 28.985201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.270020, 34.172283, 29.031387>,  <44.194683, 34.557510, 29.108366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.270020, 34.172283, 29.031387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567419, -0.266643, 0.779061,
		-0.801600, -0.037532, -0.596681,
		0.188340, -0.963064, -0.192445,
		44.326523, 33.883366, 28.973654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.717484, 34.283302, 29.329041>,  <44.194683, 34.557510, 29.108366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.717484, 34.283302, 29.329041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.932716, 33.946968, 29.305477>,  <44.061855, 33.745167, 29.291340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.932716, 33.946968, 29.305477>,  <43.717484, 34.283302, 29.329041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932716, 33.946968, 29.305477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316849, -0.266535, 0.910256,
		-0.781076, -0.471123, -0.409834,
		0.538078, -0.840834, -0.058909,
		44.094139, 33.694717, 29.287804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377441, 33.761044, 29.570871>,  <43.717484, 34.283302, 29.329041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377441, 33.761044, 29.570871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.768143, 33.680222, 29.599491>,  <44.002563, 33.631729, 29.616663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.768143, 33.680222, 29.599491>,  <43.377441, 33.761044, 29.570871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768143, 33.680222, 29.599491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109649, -0.184182, 0.976757,
		-0.184182, -0.961899, -0.202057,
		-0.976757, 0.202057, -0.071548,
		44.061169, 33.619606, 29.620956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.284622, 33.134544, 29.789793>,  <43.377441, 33.761044, 29.570871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.284622, 33.134544, 29.789793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.648029, 33.280586, 29.871069>,  <43.866074, 33.368214, 29.919834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.648029, 33.280586, 29.871069>,  <43.284622, 33.134544, 29.789793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648029, 33.280586, 29.871069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081476, -0.322151, 0.943176,
		0.409818, -0.873450, -0.262933,
		0.908521, 0.365107, 0.203189,
		43.920586, 33.390118, 29.932026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522816, 32.756115, 30.375174>,  <43.284622, 33.134544, 29.789793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522816, 32.756115, 30.375174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.809769, 33.034000, 30.354227>,  <43.981941, 33.200729, 30.341660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.809769, 33.034000, 30.354227>,  <43.522816, 32.756115, 30.375174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809769, 33.034000, 30.354227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058885, 0.014432, 0.998161,
		0.694188, -0.719144, -0.030555,
		0.717381, 0.694711, -0.052366,
		44.024982, 33.242413, 30.338518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969666, 32.566624, 30.930910>,  <43.522816, 32.756115, 30.375174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969666, 32.566624, 30.930910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.066742, 32.949741, 30.869287>,  <44.124989, 33.179611, 30.832314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.066742, 32.949741, 30.869287>,  <43.969666, 32.566624, 30.930910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066742, 32.949741, 30.869287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025626, 0.152420, 0.987984,
		0.969766, -0.243719, 0.012446,
		0.242688, 0.957794, -0.154057,
		44.139549, 33.237080, 30.823071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520256, 32.688610, 31.451313>,  <43.969666, 32.566624, 30.930910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520256, 32.688610, 31.451313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.337025, 33.026798, 31.341515>,  <44.227085, 33.229710, 31.275637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.337025, 33.026798, 31.341515>,  <44.520256, 32.688610, 31.451313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.337025, 33.026798, 31.341515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088565, 0.263853, 0.960488,
		0.884488, 0.464291, -0.045987,
		-0.458079, 0.845468, -0.274495,
		44.199600, 33.280437, 31.259167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807999, 33.276676, 31.912560>,  <44.520256, 32.688610, 31.451313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807999, 33.276676, 31.912560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.461411, 33.407455, 31.761654>,  <44.253456, 33.485924, 31.671110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.461411, 33.407455, 31.761654>,  <44.807999, 33.276676, 31.912560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.461411, 33.407455, 31.761654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340678, 0.165140, 0.925563,
		0.364912, 0.930502, -0.031705,
		-0.866474, 0.326948, -0.377263,
		44.201469, 33.505539, 31.648476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.666645, 33.862453, 32.280457>,  <44.807999, 33.276676, 31.912560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.666645, 33.862453, 32.280457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320091, 33.720890, 32.139526>,  <44.112160, 33.635952, 32.054970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.320091, 33.720890, 32.139526>,  <44.666645, 33.862453, 32.280457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320091, 33.720890, 32.139526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453854, 0.263700, 0.851163,
		-0.208322, 0.897337, -0.389085,
		-0.866382, -0.353904, -0.352326,
		44.060177, 33.614719, 32.033829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.220459, 34.328114, 32.505615>,  <44.666645, 33.862453, 32.280457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.220459, 34.328114, 32.505615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.980247, 34.020683, 32.417385>,  <43.836121, 33.836224, 32.364449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.980247, 34.020683, 32.417385>,  <44.220459, 34.328114, 32.505615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.980247, 34.020683, 32.417385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498122, 0.143798, 0.855100,
		-0.625494, 0.623384, -0.469201,
		-0.600526, -0.768579, -0.220576,
		43.800091, 33.790108, 32.351212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505054, 34.528137, 32.602314>,  <44.220459, 34.328114, 32.505615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505054, 34.528137, 32.602314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519890, 34.130272, 32.640820>,  <43.528790, 33.891552, 32.663921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.519890, 34.130272, 32.640820>,  <43.505054, 34.528137, 32.602314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519890, 34.130272, 32.640820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548215, 0.060290, 0.834162,
		-0.835515, -0.083707, -0.543054,
		0.037085, -0.994665, 0.096263,
		43.531013, 33.831871, 32.669697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871449, 34.284897, 32.934273>,  <43.505054, 34.528137, 32.602314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871449, 34.284897, 32.934273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.057800, 33.933968, 32.980347>,  <43.169609, 33.723412, 33.007992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.057800, 33.933968, 32.980347>,  <42.871449, 34.284897, 32.934273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057800, 33.933968, 32.980347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406929, -0.096829, 0.908313,
		-0.785728, -0.470035, -0.402117,
		0.465876, -0.877320, 0.115189,
		43.197563, 33.670773, 33.014904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397278, 33.911430, 33.364265>,  <42.871449, 34.284897, 32.934273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397278, 33.911430, 33.364265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.748966, 33.728172, 33.416527>,  <42.959980, 33.618217, 33.447884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.748966, 33.728172, 33.416527>,  <42.397278, 33.911430, 33.364265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748966, 33.728172, 33.416527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214141, -0.135063, 0.967420,
		-0.425575, -0.878554, -0.216859,
		0.879221, -0.458148, 0.130655,
		43.012733, 33.590729, 33.455723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259243, 33.442291, 33.771709>,  <42.397278, 33.911430, 33.364265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259243, 33.442291, 33.771709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.647236, 33.520348, 33.829762>,  <42.880032, 33.567181, 33.864594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.647236, 33.520348, 33.829762>,  <42.259243, 33.442291, 33.771709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647236, 33.520348, 33.829762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130668, -0.085122, 0.987765,
		0.205109, -0.977074, -0.057068,
		0.969977, 0.195142, 0.145131,
		42.938229, 33.578892, 33.873302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516178, 32.857914, 34.182114>,  <42.259243, 33.442291, 33.771709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516178, 32.857914, 34.182114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.815575, 33.117596, 34.236214>,  <42.995213, 33.273407, 34.268673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.815575, 33.117596, 34.236214>,  <42.516178, 32.857914, 34.182114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815575, 33.117596, 34.236214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171169, -0.386173, 0.906406,
		0.640675, -0.655285, -0.400171,
		0.748489, 0.649208, 0.135247,
		43.040123, 33.312359, 34.276787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.101559, 32.561466, 34.509914>,  <42.516178, 32.857914, 34.182114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.101559, 32.561466, 34.509914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.182217, 32.943237, 34.597931>,  <43.230610, 33.172298, 34.650742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.182217, 32.943237, 34.597931>,  <43.101559, 32.561466, 34.509914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.182217, 32.943237, 34.597931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226085, -0.263939, 0.937668,
		0.953009, -0.139326, -0.269002,
		0.201642, 0.954424, 0.220037,
		43.242710, 33.229565, 34.663940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695415, 32.500729, 34.891468>,  <43.101559, 32.561466, 34.509914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695415, 32.500729, 34.891468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.522419, 32.855156, 34.958202>,  <43.418621, 33.067814, 34.998241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.522419, 32.855156, 34.958202>,  <43.695415, 32.500729, 34.891468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522419, 32.855156, 34.958202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418983, 0.033658, 0.907370,
		0.798378, 0.462327, -0.385805,
		-0.432487, 0.886071, 0.166835,
		43.392673, 33.120975, 35.008251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163601, 33.017887, 35.205883>,  <43.695415, 32.500729, 34.891468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163601, 33.017887, 35.205883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.807766, 33.168484, 35.309341>,  <43.594265, 33.258842, 35.371418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.807766, 33.168484, 35.309341>,  <44.163601, 33.017887, 35.205883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807766, 33.168484, 35.309341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311733, 0.086528, 0.946222,
		0.333863, 0.922371, -0.194338,
		-0.889583, 0.376490, 0.258646,
		43.540890, 33.281429, 35.386936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186710, 33.720383, 35.593571>,  <44.163601, 33.017887, 35.205883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186710, 33.720383, 35.593571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.823483, 33.604019, 35.714088>,  <43.605545, 33.534199, 35.786400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.823483, 33.604019, 35.714088>,  <44.186710, 33.720383, 35.593571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823483, 33.604019, 35.714088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251315, 0.196982, 0.947649,
		-0.335031, 0.936252, -0.105763,
		-0.908072, -0.290911, 0.301290,
		43.551060, 33.516747, 35.804474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965015, 33.489384, 35.439541>,  <44.186710, 33.720383, 35.593571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965015, 33.489384, 35.439541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.153725, 33.841782, 35.453846>,  <45.266949, 34.053223, 35.462429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.153725, 33.841782, 35.453846>,  <44.965015, 33.489384, 35.439541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.153725, 33.841782, 35.453846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539104, -0.256117, -0.802353,
		-0.697711, 0.397805, -0.595777,
		0.471769, 0.880997, 0.035762,
		45.295254, 34.106079, 35.464573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.881493, 33.974220, 34.777466>,  <44.965015, 33.489384, 35.439541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.881493, 33.974220, 34.777466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.216633, 34.098858, 34.956760>,  <45.417717, 34.173641, 35.064339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.216633, 34.098858, 34.956760>,  <44.881493, 33.974220, 34.777466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.216633, 34.098858, 34.956760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513756, -0.172488, -0.840418,
		-0.184551, 0.934430, -0.304601,
		0.837852, 0.311591, 0.448236,
		45.467987, 34.192337, 35.091232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212101, 34.416485, 34.270359>,  <44.881493, 33.974220, 34.777466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212101, 34.416485, 34.270359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.498791, 34.315430, 34.530350>,  <45.670807, 34.254795, 34.686344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.498791, 34.315430, 34.530350>,  <45.212101, 34.416485, 34.270359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.498791, 34.315430, 34.530350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632790, -0.156059, -0.758434,
		0.293046, 0.954892, 0.048017,
		0.716729, -0.252641, 0.649978,
		45.713810, 34.239639, 34.725342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722157, 34.820400, 34.134125>,  <45.212101, 34.416485, 34.270359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722157, 34.820400, 34.134125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.906937, 34.518448, 34.320351>,  <46.017803, 34.337276, 34.432087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.906937, 34.518448, 34.320351>,  <45.722157, 34.820400, 34.134125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.906937, 34.518448, 34.320351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552639, -0.165576, -0.816808,
		0.693682, 0.634613, 0.340692,
		0.461946, -0.754885, 0.465569,
		46.045521, 34.291981, 34.460022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.463104, 34.903984, 34.063560>,  <45.722157, 34.820400, 34.134125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.463104, 34.903984, 34.063560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.437977, 34.524845, 34.188553>,  <46.422901, 34.297363, 34.263550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.437977, 34.524845, 34.188553>,  <46.463104, 34.903984, 34.063560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.437977, 34.524845, 34.188553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667025, -0.272777, -0.693304,
		0.742382, 0.164880, 0.649371,
		-0.062822, -0.947844, 0.312484,
		46.419132, 34.240494, 34.282299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.104881, 34.602322, 33.980858>,  <46.463104, 34.903984, 34.063560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.104881, 34.602322, 33.980858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.868191, 34.280617, 34.002838>,  <46.726177, 34.087593, 34.016026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.868191, 34.280617, 34.002838>,  <47.104881, 34.602322, 33.980858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.868191, 34.280617, 34.002838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390274, -0.345447, -0.853436,
		0.705370, -0.483555, 0.518293,
		-0.591726, -0.804264, 0.054949,
		46.690674, 34.039337, 34.019321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.515972, 34.021915, 33.747784>,  <47.104881, 34.602322, 33.980858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.515972, 34.021915, 33.747784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.135914, 33.912857, 33.687275>,  <46.907879, 33.847420, 33.650970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.135914, 33.912857, 33.687275>,  <47.515972, 34.021915, 33.747784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.135914, 33.912857, 33.687275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251369, -0.382763, -0.888991,
		0.184481, -0.882698, 0.432217,
		-0.950147, -0.272648, -0.151271,
		46.850868, 33.831062, 33.641895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.519958, 33.488068, 33.248589>,  <47.515972, 34.021915, 33.747784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.519958, 33.488068, 33.248589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.120956, 33.515247, 33.256283>,  <46.881557, 33.531555, 33.260899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.120956, 33.515247, 33.256283>,  <47.519958, 33.488068, 33.248589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.120956, 33.515247, 33.256283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039757, -0.315215, -0.948187,
		-0.058367, -0.946585, 0.317129,
		-0.997503, 0.067951, 0.019235,
		46.821705, 33.535633, 33.262054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.338779, 32.907997, 32.941254>,  <47.519958, 33.488068, 33.248589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.338779, 32.907997, 32.941254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.009117, 33.133873, 32.923882>,  <46.811321, 33.269398, 32.913460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.009117, 33.133873, 32.923882>,  <47.338779, 32.907997, 32.941254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.009117, 33.133873, 32.923882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231524, -0.405901, -0.884105,
		-0.516879, -0.718585, 0.465266,
		-0.824156, 0.564695, -0.043432,
		46.761871, 33.303280, 32.910851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.687134, 32.510357, 32.860886>,  <47.338779, 32.907997, 32.941254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.687134, 32.510357, 32.860886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.583160, 32.874832, 32.733032>,  <46.520775, 33.093517, 32.656319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.583160, 32.874832, 32.733032>,  <46.687134, 32.510357, 32.860886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.583160, 32.874832, 32.733032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270664, -0.386498, -0.881680,
		-0.926917, -0.142663, 0.347090,
		-0.259933, 0.911190, -0.319638,
		46.505180, 33.148190, 32.637142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.983879, 32.434372, 32.515015>,  <46.687134, 32.510357, 32.860886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.983879, 32.434372, 32.515015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.180988, 32.745689, 32.359360>,  <46.299255, 32.932480, 32.265965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.180988, 32.745689, 32.359360>,  <45.983879, 32.434372, 32.515015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180988, 32.745689, 32.359360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079893, -0.404850, -0.910886,
		-0.866480, 0.479953, -0.137321,
		0.492777, 0.778294, -0.389140,
		46.328823, 32.979179, 32.242619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.561996, 32.702740, 31.865351>,  <45.983879, 32.434372, 32.515015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.561996, 32.702740, 31.865351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.929939, 32.858372, 31.845407>,  <46.150703, 32.951752, 31.833441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.929939, 32.858372, 31.845407>,  <45.561996, 32.702740, 31.865351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.929939, 32.858372, 31.845407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063548, 0.022387, -0.997728,
		-0.387079, 0.920932, 0.045318,
		0.919854, 0.389080, -0.049858,
		46.205894, 32.975094, 31.830450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.519001, 33.224907, 31.336576>,  <45.561996, 32.702740, 31.865351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.519001, 33.224907, 31.336576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.913239, 33.161804, 31.360956>,  <46.149780, 33.123943, 31.375584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.913239, 33.161804, 31.360956>,  <45.519001, 33.224907, 31.336576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.913239, 33.161804, 31.360956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067829, 0.038586, -0.996951,
		0.154920, 0.986725, 0.048730,
		0.985596, -0.157753, 0.060951,
		46.208916, 33.114479, 31.379242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.811516, 33.685921, 30.925104>,  <45.519001, 33.224907, 31.336576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.811516, 33.685921, 30.925104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.077690, 33.389347, 30.959681>,  <46.237392, 33.211403, 30.980427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.077690, 33.389347, 30.959681>,  <45.811516, 33.685921, 30.925104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.077690, 33.389347, 30.959681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086738, -0.038217, -0.995498,
		0.741401, 0.669935, 0.038880,
		0.665433, -0.741436, 0.086443,
		46.277321, 33.166916, 30.985613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.294640, 33.852787, 30.323792>,  <45.811516, 33.685921, 30.925104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.294640, 33.852787, 30.323792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.380653, 33.477657, 30.432783>,  <46.432262, 33.252579, 30.498178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.380653, 33.477657, 30.432783>,  <46.294640, 33.852787, 30.323792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.380653, 33.477657, 30.432783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042010, -0.269864, -0.961982,
		0.975703, 0.218303, -0.018631,
		0.215032, -0.937826, 0.272478,
		46.445164, 33.196308, 30.514526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.872429, 33.647392, 29.945614>,  <46.294640, 33.852787, 30.323792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.872429, 33.647392, 29.945614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.702007, 33.298645, 30.042225>,  <46.599754, 33.089397, 30.100191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.702007, 33.298645, 30.042225>,  <46.872429, 33.647392, 29.945614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.702007, 33.298645, 30.042225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185588, -0.345519, -0.919877,
		0.885460, -0.347089, 0.309015,
		-0.426050, -0.871863, 0.241528,
		46.574192, 33.037086, 30.114683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.339294, 33.180790, 29.753380>,  <46.872429, 33.647392, 29.945614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.339294, 33.180790, 29.753380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.016338, 32.946712, 29.783493>,  <46.822563, 32.806267, 29.801561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.016338, 32.946712, 29.783493>,  <47.339294, 33.180790, 29.753380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.016338, 32.946712, 29.783493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171152, -0.354402, -0.919297,
		0.564649, -0.729345, 0.386298,
		-0.807390, -0.585196, 0.075284,
		46.774120, 32.771152, 29.806078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.571301, 32.518543, 29.670595>,  <47.339294, 33.180790, 29.753380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.571301, 32.518543, 29.670595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.183815, 32.521839, 29.571379>,  <46.951324, 32.523815, 29.511848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.183815, 32.521839, 29.571379>,  <47.571301, 32.518543, 29.670595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.183815, 32.521839, 29.571379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226453, -0.379612, -0.897003,
		-0.101549, -0.925109, 0.365870,
		-0.968714, 0.008238, -0.248043,
		46.893200, 32.524311, 29.496965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.549065, 31.996141, 29.152788>,  <47.571301, 32.518543, 29.670595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.549065, 31.996141, 29.152788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.214169, 32.207642, 29.097004>,  <47.013229, 32.334541, 29.063534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.214169, 32.207642, 29.097004>,  <47.549065, 31.996141, 29.152788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.214169, 32.207642, 29.097004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036527, -0.200384, -0.979036,
		-0.545611, -0.824784, 0.148456,
		-0.837242, 0.528750, -0.139459,
		46.962997, 32.366268, 29.055166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.041550, 31.608742, 28.704348>,  <47.549065, 31.996141, 29.152788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.041550, 31.608742, 28.704348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.923759, 31.989901, 28.675316>,  <46.853085, 32.218597, 28.657896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.923759, 31.989901, 28.675316>,  <47.041550, 31.608742, 28.704348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.923759, 31.989901, 28.675316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208610, -0.138213, -0.968183,
		-0.932612, -0.269967, 0.239485,
		-0.294478, 0.952898, -0.072581,
		46.835415, 32.275768, 28.653542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.448570, 31.559034, 28.299328>,  <47.041550, 31.608742, 28.704348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.448570, 31.559034, 28.299328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.557480, 31.942383, 28.264944>,  <46.622826, 32.172394, 28.244314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.557480, 31.942383, 28.264944>,  <46.448570, 31.559034, 28.299328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.557480, 31.942383, 28.264944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345585, 0.014021, -0.938283,
		-0.898020, 0.285173, 0.335016,
		0.272270, 0.958374, -0.085961,
		46.639160, 32.229897, 28.239157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.447117, 33.691292, 42.426922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073925, 33.831661, 42.394928>,  <38.850010, 33.915882, 42.375732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073925, 33.831661, 42.394928>,  <39.447117, 33.691292, 42.426922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073925, 33.831661, 42.394928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111782, 0.071281, -0.991173,
		-0.342123, -0.933688, -0.105731,
		-0.932983, 0.350922, -0.079983,
		38.794029, 33.936939, 42.370934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116489, 33.277405, 41.868885>,  <39.447117, 33.691292, 42.426922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116489, 33.277405, 41.868885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929119, 33.629929, 41.893799>,  <38.816696, 33.841442, 41.908749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929119, 33.629929, 41.893799>,  <39.116489, 33.277405, 41.868885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929119, 33.629929, 41.893799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118513, 0.132537, -0.984067,
		-0.875520, -0.453578, -0.166530,
		-0.468423, 0.881306, 0.062284,
		38.788593, 33.894321, 41.912483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619652, 33.265148, 41.425034>,  <39.116489, 33.277405, 41.868885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619652, 33.265148, 41.425034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657215, 33.661800, 41.460457>,  <38.679752, 33.899792, 41.481712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657215, 33.661800, 41.460457>,  <38.619652, 33.265148, 41.425034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657215, 33.661800, 41.460457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048793, 0.084260, -0.995249,
		-0.994384, 0.097788, -0.040471,
		0.093913, 0.991634, 0.088558,
		38.685390, 33.959290, 41.487022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175591, 33.547020, 40.925236>,  <38.619652, 33.265148, 41.425034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175591, 33.547020, 40.925236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439445, 33.842113, 40.982689>,  <38.597759, 34.019169, 41.017162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439445, 33.842113, 40.982689>,  <38.175591, 33.547020, 40.925236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439445, 33.842113, 40.982689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080089, 0.121022, -0.989414,
		-0.747308, 0.664153, 0.020745,
		0.659633, 0.737736, 0.143632,
		38.637337, 34.063435, 41.025780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102951, 33.979549, 40.375908>,  <38.175591, 33.547020, 40.925236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102951, 33.979549, 40.375908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452934, 34.101902, 40.526047>,  <38.662922, 34.175312, 40.616131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452934, 34.101902, 40.526047>,  <38.102951, 33.979549, 40.375908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452934, 34.101902, 40.526047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342797, 0.156171, -0.926337,
		-0.341970, 0.939173, 0.031787,
		0.874955, 0.305883, 0.375351,
		38.715420, 34.193668, 40.638653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297409, 34.575546, 39.986221>,  <38.102951, 33.979549, 40.375908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297409, 34.575546, 39.986221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637623, 34.447044, 40.152779>,  <38.841751, 34.369942, 40.252712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637623, 34.447044, 40.152779>,  <38.297409, 34.575546, 39.986221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637623, 34.447044, 40.152779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501713, 0.258227, -0.825593,
		0.157706, 0.911105, 0.380811,
		0.850537, -0.321259, 0.416389,
		38.892784, 34.350666, 40.277695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781361, 35.036213, 39.683212>,  <38.297409, 34.575546, 39.986221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781361, 35.036213, 39.683212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988083, 34.727192, 39.830765>,  <39.112114, 34.541779, 39.919296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988083, 34.727192, 39.830765>,  <38.781361, 35.036213, 39.683212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988083, 34.727192, 39.830765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598436, 0.017870, -0.800972,
		0.612202, 0.634697, 0.471559,
		0.516801, -0.772554, 0.368886,
		39.143124, 34.495426, 39.941429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562019, 35.183468, 39.498863>,  <38.781361, 35.036213, 39.683212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562019, 35.183468, 39.498863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504673, 34.797794, 39.588120>,  <39.470264, 34.566391, 39.641674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504673, 34.797794, 39.588120>,  <39.562019, 35.183468, 39.498863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504673, 34.797794, 39.588120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530198, -0.265214, -0.805327,
		0.835665, 0.002853, 0.549232,
		-0.143366, -0.964185, 0.223143,
		39.461662, 34.508537, 39.655064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231159, 34.989071, 39.420353>,  <39.562019, 35.183468, 39.498863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231159, 34.989071, 39.420353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977871, 34.680195, 39.399338>,  <39.825897, 34.494869, 39.386730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977871, 34.680195, 39.399338>,  <40.231159, 34.989071, 39.420353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977871, 34.680195, 39.399338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355345, -0.229747, -0.906061,
		0.687580, -0.592403, 0.419873,
		-0.633217, -0.772189, -0.052538,
		39.787907, 34.448540, 39.383575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612339, 34.452095, 39.147633>,  <40.231159, 34.989071, 39.420353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612339, 34.452095, 39.147633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245369, 34.306339, 39.083702>,  <40.025185, 34.218887, 39.045345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245369, 34.306339, 39.083702>,  <40.612339, 34.452095, 39.147633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245369, 34.306339, 39.083702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275632, -0.292312, -0.915740,
		0.286968, -0.884180, 0.368613,
		-0.917430, -0.364390, -0.159824,
		39.970139, 34.197021, 39.035755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723557, 33.722706, 38.882839>,  <40.612339, 34.452095, 39.147633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723557, 33.722706, 38.882839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361229, 33.871140, 38.801071>,  <40.143833, 33.960201, 38.752010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361229, 33.871140, 38.801071>,  <40.723557, 33.722706, 38.882839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361229, 33.871140, 38.801071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157034, -0.154063, -0.975502,
		-0.393488, -0.915729, 0.081280,
		-0.905818, 0.371085, -0.204423,
		40.089485, 33.982464, 38.739746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513924, 33.349030, 38.407063>,  <40.723557, 33.722706, 38.882839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513924, 33.349030, 38.407063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287418, 33.673504, 38.348663>,  <40.151516, 33.868191, 38.313625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287418, 33.673504, 38.348663>,  <40.513924, 33.349030, 38.407063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287418, 33.673504, 38.348663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118090, -0.095456, -0.988404,
		-0.815719, -0.576940, -0.041740,
		-0.566266, 0.811189, -0.145996,
		40.117538, 33.916862, 38.304863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943054, 33.265694, 37.868626>,  <40.513924, 33.349030, 38.407063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943054, 33.265694, 37.868626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972923, 33.664295, 37.853603>,  <39.990845, 33.903454, 37.844589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972923, 33.664295, 37.853603>,  <39.943054, 33.265694, 37.868626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972923, 33.664295, 37.853603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003445, -0.037916, -0.999275,
		-0.997202, 0.074492, -0.006264,
		0.074676, 0.996501, -0.037554,
		39.995327, 33.963245, 37.842339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177135, 32.656208, 38.156914>,  <39.943054, 33.265694, 37.868626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177135, 32.656208, 38.156914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932281, 32.430359, 37.935467>,  <39.785370, 32.294849, 37.802597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932281, 32.430359, 37.935467>,  <40.177135, 32.656208, 38.156914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932281, 32.430359, 37.935467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580779, -0.154116, 0.799339,
		-0.536648, 0.810831, -0.233582,
		-0.612131, -0.564624, -0.553620,
		39.748642, 32.260971, 37.769382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513149, 32.851112, 38.349545>,  <40.177135, 32.656208, 38.156914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513149, 32.851112, 38.349545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450867, 32.504013, 38.160748>,  <39.413498, 32.295753, 38.047470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450867, 32.504013, 38.160748>,  <39.513149, 32.851112, 38.349545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450867, 32.504013, 38.160748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598157, -0.297428, 0.744141,
		-0.786108, 0.398190, -0.472737,
		-0.155704, -0.867745, -0.471990,
		39.404156, 32.243690, 38.019150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793068, 32.757565, 38.369354>,  <39.513149, 32.851112, 38.349545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793068, 32.757565, 38.369354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958763, 32.395790, 38.328556>,  <39.058182, 32.178726, 38.304077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958763, 32.395790, 38.328556>,  <38.793068, 32.757565, 38.369354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958763, 32.395790, 38.328556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667455, -0.378054, 0.641544,
		-0.618795, -0.197675, -0.760275,
		0.414242, -0.904433, -0.101998,
		39.083035, 32.124458, 38.297958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193501, 32.365219, 38.434475>,  <38.793068, 32.757565, 38.369354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193501, 32.365219, 38.434475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495365, 32.114002, 38.510410>,  <38.676483, 31.963272, 38.555973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495365, 32.114002, 38.510410>,  <38.193501, 32.365219, 38.434475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495365, 32.114002, 38.510410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579244, -0.501858, 0.642352,
		-0.308153, -0.594724, -0.742526,
		0.754664, -0.628046, 0.189841,
		38.721764, 31.925589, 38.567364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960598, 31.639257, 38.407211>,  <38.193501, 32.365219, 38.434475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960598, 31.639257, 38.407211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278679, 31.632006, 38.649643>,  <38.469528, 31.627655, 38.795101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278679, 31.632006, 38.649643>,  <37.960598, 31.639257, 38.407211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278679, 31.632006, 38.649643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501500, -0.581491, 0.640598,
		0.340815, -0.813350, -0.471493,
		0.795200, -0.018128, 0.606076,
		38.517239, 31.626568, 38.831467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908615, 30.928875, 38.796558>,  <37.960598, 31.639257, 38.407211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908615, 30.928875, 38.796558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194088, 31.138475, 38.982494>,  <38.365372, 31.264236, 39.094055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194088, 31.138475, 38.982494>,  <37.908615, 30.928875, 38.796558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.194088, 31.138475, 38.982494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280345, -0.394466, 0.875102,
		0.641919, -0.754862, -0.134623,
		0.713685, 0.524004, 0.464837,
		38.408195, 31.295677, 39.121944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334648, 30.447496, 39.249706>,  <37.908615, 30.928875, 38.796558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334648, 30.447496, 39.249706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330261, 30.820662, 39.393681>,  <38.327629, 31.044559, 39.480064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330261, 30.820662, 39.393681>,  <38.334648, 30.447496, 39.249706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330261, 30.820662, 39.393681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203100, -0.354537, 0.912718,
		0.979096, -0.063095, 0.193362,
		-0.010966, 0.932911, 0.359940,
		38.326973, 31.100534, 39.501663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244686, 30.197021, 39.846199>,  <38.334648, 30.447496, 39.249706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244686, 30.197021, 39.846199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245411, 30.591612, 39.911758>,  <38.245846, 30.828365, 39.951096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245411, 30.591612, 39.911758>,  <38.244686, 30.197021, 39.846199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245411, 30.591612, 39.911758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310348, -0.155255, 0.937859,
		0.950621, -0.052562, 0.305870,
		0.001808, 0.986475, 0.163902,
		38.245953, 30.887554, 39.960930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653099, 30.333288, 40.349442>,  <38.244686, 30.197021, 39.846199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653099, 30.333288, 40.349442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402222, 30.644356, 40.366711>,  <38.251694, 30.830996, 40.377071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402222, 30.644356, 40.366711>,  <38.653099, 30.333288, 40.349442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402222, 30.644356, 40.366711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230508, -0.238285, 0.943444,
		0.743973, 0.581769, 0.328709,
		-0.627192, 0.777667, 0.043175,
		38.214066, 30.877655, 40.379662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811787, 30.717997, 40.961922>,  <38.653099, 30.333288, 40.349442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811787, 30.717997, 40.961922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434254, 30.831804, 40.894711>,  <38.207733, 30.900089, 40.854385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434254, 30.831804, 40.894711>,  <38.811787, 30.717997, 40.961922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434254, 30.831804, 40.894711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185590, -0.035735, 0.981977,
		0.273387, 0.958004, 0.086532,
		-0.943831, 0.284519, -0.168026,
		38.151104, 30.917160, 40.844303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636227, 31.185160, 41.440281>,  <38.811787, 30.717997, 40.961922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636227, 31.185160, 41.440281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268791, 31.074512, 41.327374>,  <38.048328, 31.008123, 41.259628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268791, 31.074512, 41.327374>,  <38.636227, 31.185160, 41.440281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268791, 31.074512, 41.327374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313913, 0.076780, 0.946342,
		-0.240104, 0.957908, -0.157363,
		-0.918591, -0.276619, -0.282265,
		37.993214, 30.991528, 41.242695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277172, 31.421942, 41.873959>,  <38.636227, 31.185160, 41.440281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277172, 31.421942, 41.873959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002220, 31.181372, 41.711082>,  <37.837250, 31.037029, 41.613358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002220, 31.181372, 41.711082>,  <38.277172, 31.421942, 41.873959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002220, 31.181372, 41.711082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404085, -0.149183, 0.902474,
		-0.603515, 0.784878, -0.140481,
		-0.687375, -0.601423, -0.407192,
		37.796009, 31.000944, 41.588924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590328, 31.698996, 42.147701>,  <38.277172, 31.421942, 41.873959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590328, 31.698996, 42.147701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557087, 31.315807, 42.037872>,  <37.537144, 31.085896, 41.971973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557087, 31.315807, 42.037872>,  <37.590328, 31.698996, 42.147701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557087, 31.315807, 42.037872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437177, -0.212553, 0.873897,
		-0.895528, 0.192657, -0.401139,
		-0.083099, -0.957969, -0.274573,
		37.532158, 31.028418, 41.955502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894775, 31.529398, 42.222305>,  <37.590328, 31.698996, 42.147701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894775, 31.529398, 42.222305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079231, 31.174496, 42.226814>,  <37.189903, 30.961554, 42.229519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079231, 31.174496, 42.226814>,  <36.894775, 31.529398, 42.222305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079231, 31.174496, 42.226814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431390, -0.213072, 0.876643,
		-0.775405, -0.409117, -0.481010,
		0.461139, -0.887256, 0.011272,
		37.217571, 30.908319, 42.230194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402828, 31.162930, 42.672073>,  <36.894775, 31.529398, 42.222305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402828, 31.162930, 42.672073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746586, 30.960701, 42.702660>,  <36.952839, 30.839363, 42.721012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746586, 30.960701, 42.702660>,  <36.402828, 31.162930, 42.672073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746586, 30.960701, 42.702660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095664, -0.012079, 0.995341,
		-0.502293, -0.862700, -0.058745,
		0.859389, -0.505572, 0.076462,
		37.004402, 30.809029, 42.725597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773758, 30.819902, 42.900177>,  <36.402828, 31.162930, 42.672073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773758, 30.819902, 42.900177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384792, 30.846373, 42.989655>,  <35.151413, 30.862255, 43.043339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384792, 30.846373, 42.989655>,  <35.773758, 30.819902, 42.900177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384792, 30.846373, 42.989655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221556, 0.038111, -0.974403,
		-0.073005, -0.997080, -0.022399,
		-0.972411, 0.066173, 0.223691,
		35.093067, 30.866224, 43.056763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420578, 30.350874, 42.422523>,  <35.773758, 30.819902, 42.900177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420578, 30.350874, 42.422523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159023, 30.624617, 42.551575>,  <35.002090, 30.788862, 42.629005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159023, 30.624617, 42.551575>,  <35.420578, 30.350874, 42.422523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159023, 30.624617, 42.551575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286134, 0.171068, -0.942795,
		-0.700401, -0.708794, 0.083959,
		-0.653886, 0.684358, 0.322626,
		34.962856, 30.829924, 42.648361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774086, 30.173752, 42.059536>,  <35.420578, 30.350874, 42.422523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774086, 30.173752, 42.059536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756374, 30.555908, 42.176338>,  <34.745747, 30.785202, 42.246418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756374, 30.555908, 42.176338>,  <34.774086, 30.173752, 42.059536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756374, 30.555908, 42.176338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510585, 0.229592, -0.828608,
		-0.858687, -0.185780, 0.477643,
		-0.044275, 0.955392, 0.292004,
		34.743092, 30.842525, 42.263939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216728, 30.386993, 41.761169>,  <34.774086, 30.173752, 42.059536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216728, 30.386993, 41.761169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398140, 30.733427, 41.845276>,  <34.506985, 30.941286, 41.895741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398140, 30.733427, 41.845276>,  <34.216728, 30.386993, 41.761169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398140, 30.733427, 41.845276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126128, 0.295923, -0.946848,
		-0.882272, 0.402901, 0.243447,
		0.453528, 0.866083, 0.210268,
		34.534199, 30.993252, 41.908356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834400, 30.885302, 41.550560>,  <34.216728, 30.386993, 41.761169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834400, 30.885302, 41.550560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181568, 31.083509, 41.564308>,  <34.389870, 31.202435, 41.572556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181568, 31.083509, 41.564308>,  <33.834400, 30.885302, 41.550560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181568, 31.083509, 41.564308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029779, 0.120972, -0.992209,
		-0.495815, 0.860132, 0.119750,
		0.867917, 0.495518, 0.034366,
		34.441944, 31.232164, 41.574619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749084, 31.404654, 41.096546>,  <33.834400, 30.885302, 41.550560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749084, 31.404654, 41.096546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146954, 31.378450, 41.128380>,  <34.385674, 31.362728, 41.147480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146954, 31.378450, 41.128380>,  <33.749084, 31.404654, 41.096546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146954, 31.378450, 41.128380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089914, 0.173850, -0.980659,
		0.050406, 0.982591, 0.178814,
		0.994673, -0.065509, 0.079585,
		34.445354, 31.358797, 41.152256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040192, 32.074974, 40.788200>,  <33.749084, 31.404654, 41.096546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040192, 32.074974, 40.788200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335056, 31.805367, 40.769077>,  <34.511974, 31.643600, 40.757603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335056, 31.805367, 40.769077>,  <34.040192, 32.074974, 40.788200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335056, 31.805367, 40.769077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125052, 0.205610, -0.970611,
		0.664044, 0.709519, 0.235857,
		0.737161, -0.674023, -0.047807,
		34.556206, 31.603159, 40.754734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611084, 32.412128, 40.604912>,  <34.040192, 32.074974, 40.788200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611084, 32.412128, 40.604912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685032, 32.030815, 40.509354>,  <34.729401, 31.802027, 40.452019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685032, 32.030815, 40.509354>,  <34.611084, 32.412128, 40.604912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685032, 32.030815, 40.509354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119536, 0.263091, -0.957337,
		0.975467, 0.148423, 0.162589,
		0.184866, -0.953286, -0.238894,
		34.740490, 31.744829, 40.437687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191681, 32.460419, 40.189777>,  <34.611084, 32.412128, 40.604912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191681, 32.460419, 40.189777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035744, 32.103611, 40.098278>,  <34.942181, 31.889526, 40.043377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035744, 32.103611, 40.098278>,  <35.191681, 32.460419, 40.189777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035744, 32.103611, 40.098278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030062, 0.235944, -0.971302,
		0.920389, -0.385535, -0.065166,
		-0.389846, -0.892017, -0.228750,
		34.918789, 31.836006, 40.029652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599922, 32.187668, 39.674313>,  <35.191681, 32.460419, 40.189777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599922, 32.187668, 39.674313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254536, 31.988403, 39.642651>,  <35.047306, 31.868845, 39.623653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254536, 31.988403, 39.642651>,  <35.599922, 32.187668, 39.674313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254536, 31.988403, 39.642651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081416, 0.292507, -0.952791,
		0.497797, -0.816256, -0.293128,
		-0.863464, -0.498162, -0.079153,
		34.995495, 31.838955, 39.618904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660313, 32.094288, 39.051685>,  <35.599922, 32.187668, 39.674313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660313, 32.094288, 39.051685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274654, 32.029327, 39.135647>,  <35.043259, 31.990351, 39.186024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274654, 32.029327, 39.135647>,  <35.660313, 32.094288, 39.051685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274654, 32.029327, 39.135647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259488, 0.410983, -0.873933,
		0.055660, -0.897061, -0.438386,
		-0.964141, -0.162399, 0.209901,
		34.985413, 31.980608, 39.198616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269604, 31.747616, 38.407921>,  <35.660313, 32.094288, 39.051685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269604, 31.747616, 38.407921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007923, 31.941422, 38.640221>,  <34.850914, 32.057705, 38.779598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007923, 31.941422, 38.640221>,  <35.269604, 31.747616, 38.407921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007923, 31.941422, 38.640221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249738, 0.586404, -0.770559,
		-0.713901, -0.649134, -0.262622,
		-0.654199, 0.484516, 0.580748,
		34.811665, 32.086777, 38.814445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.030479, 30.106009, 46.854973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.809566, 30.427118, 46.765053>,  <35.677017, 30.619785, 46.711102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.809566, 30.427118, 46.765053>,  <36.030479, 30.106009, 46.854973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809566, 30.427118, 46.765053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186885, -0.382014, -0.905063,
		-0.812440, -0.457837, 0.361006,
		-0.552281, 0.802776, -0.224800,
		35.643883, 30.667952, 46.697613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537109, 29.850363, 46.479763>,  <36.030479, 30.106009, 46.854973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537109, 29.850363, 46.479763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.504009, 30.237259, 46.383766>,  <35.484150, 30.469397, 46.326168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.504009, 30.237259, 46.383766>,  <35.537109, 29.850363, 46.479763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504009, 30.237259, 46.383766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372310, -0.253388, -0.892849,
		-0.924412, 0.015469, 0.381081,
		-0.082750, 0.967241, -0.239994,
		35.479183, 30.527431, 46.311768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853630, 29.997869, 46.142288>,  <35.537109, 29.850363, 46.479763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853630, 29.997869, 46.142288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.043922, 30.333288, 46.036060>,  <35.158096, 30.534538, 45.972324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.043922, 30.333288, 46.036060>,  <34.853630, 29.997869, 46.142288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043922, 30.333288, 46.036060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436905, -0.036766, -0.898756,
		-0.763411, 0.543591, 0.348874,
		0.475729, 0.838544, -0.265566,
		35.186642, 30.584852, 45.956390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367947, 30.418478, 45.762718>,  <34.853630, 29.997869, 46.142288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367947, 30.418478, 45.762718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.718578, 30.582291, 45.661617>,  <34.928959, 30.680578, 45.600956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.718578, 30.582291, 45.661617>,  <34.367947, 30.418478, 45.762718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718578, 30.582291, 45.661617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357675, 0.203014, -0.911512,
		-0.321981, 0.889420, 0.324438,
		0.876583, 0.409533, -0.252756,
		34.981552, 30.705151, 45.585789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208431, 30.980137, 45.375813>,  <34.367947, 30.418478, 45.762718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208431, 30.980137, 45.375813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.585392, 30.907160, 45.263672>,  <34.811569, 30.863375, 45.196388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.585392, 30.907160, 45.263672>,  <34.208431, 30.980137, 45.375813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585392, 30.907160, 45.263672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284348, 0.004422, -0.958711,
		0.176148, 0.983207, -0.047710,
		0.942400, -0.182442, -0.280352,
		34.868111, 30.852427, 45.179565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319668, 31.472748, 44.775066>,  <34.208431, 30.980137, 45.375813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319668, 31.472748, 44.775066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.619148, 31.207884, 44.762459>,  <34.798836, 31.048965, 44.754894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.619148, 31.207884, 44.762459>,  <34.319668, 31.472748, 44.775066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619148, 31.207884, 44.762459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155764, -0.129513, -0.979267,
		0.644352, 0.738084, -0.200107,
		0.748698, -0.662162, -0.031515,
		34.843758, 31.009235, 44.753006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626408, 31.742706, 44.188545>,  <34.319668, 31.472748, 44.775066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626408, 31.742706, 44.188545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.782204, 31.379068, 44.247665>,  <34.875679, 31.160885, 44.283138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.782204, 31.379068, 44.247665>,  <34.626408, 31.742706, 44.188545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782204, 31.379068, 44.247665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033858, -0.174492, -0.984076,
		0.920409, 0.378282, -0.098743,
		0.389488, -0.909096, 0.147796,
		34.899052, 31.106340, 44.292004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302017, 31.696514, 43.923225>,  <34.626408, 31.742706, 44.188545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302017, 31.696514, 43.923225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.121876, 31.339750, 43.939640>,  <35.013790, 31.125692, 43.949490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.121876, 31.339750, 43.939640>,  <35.302017, 31.696514, 43.923225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121876, 31.339750, 43.939640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127083, -0.109523, -0.985827,
		0.883760, -0.438755, 0.162670,
		-0.450353, -0.891907, 0.041034,
		34.986771, 31.072178, 43.951950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784096, 31.209993, 43.591557>,  <35.302017, 31.696514, 43.923225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784096, 31.209993, 43.591557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.400784, 31.096430, 43.604744>,  <35.170795, 31.028292, 43.612656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.400784, 31.096430, 43.604744>,  <35.784096, 31.209993, 43.591557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400784, 31.096430, 43.604744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026461, -0.026741, -0.999292,
		0.284590, -0.958478, 0.018113,
		-0.958284, -0.283909, 0.032973,
		35.113297, 31.011257, 43.614635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334888, 30.636189, 43.399261>,  <35.784096, 31.209993, 43.591557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334888, 30.636189, 43.399261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.719677, 30.677511, 43.298111>,  <36.950550, 30.702305, 43.237419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.719677, 30.677511, 43.298111>,  <36.334888, 30.636189, 43.399261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719677, 30.677511, 43.298111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268966, -0.196506, 0.942891,
		0.047714, -0.975045, -0.216818,
		0.961967, 0.103306, -0.252877,
		37.008266, 30.708504, 43.222248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725811, 30.079023, 43.818935>,  <36.334888, 30.636189, 43.399261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725811, 30.079023, 43.818935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.998196, 30.347301, 43.701317>,  <37.161625, 30.508268, 43.630745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.998196, 30.347301, 43.701317>,  <36.725811, 30.079023, 43.818935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998196, 30.347301, 43.701317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452625, -0.069816, 0.888964,
		0.575693, -0.738442, -0.351115,
		0.680961, 0.670694, -0.294045,
		37.202484, 30.548510, 43.613102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425461, 29.787430, 44.013157>,  <36.725811, 30.079023, 43.818935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425461, 29.787430, 44.013157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.462124, 30.183887, 43.974724>,  <37.484123, 30.421762, 43.951664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.462124, 30.183887, 43.974724>,  <37.425461, 29.787430, 44.013157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462124, 30.183887, 43.974724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366256, 0.056169, 0.928817,
		0.925989, -0.120324, -0.357864,
		0.091658, 0.991144, -0.096081,
		37.489620, 30.481232, 43.945900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018951, 29.827507, 44.418114>,  <37.425461, 29.787430, 44.013157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018951, 29.827507, 44.418114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.883282, 30.200274, 44.366741>,  <37.801880, 30.423933, 44.335918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.883282, 30.200274, 44.366741>,  <38.018951, 29.827507, 44.418114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883282, 30.200274, 44.366741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498183, 0.293741, 0.815800,
		0.797982, 0.212718, -0.563894,
		-0.339174, 0.931916, -0.128427,
		37.781528, 30.479849, 44.328213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582802, 30.340641, 44.331318>,  <38.018951, 29.827507, 44.418114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582802, 30.340641, 44.331318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.267487, 30.537027, 44.479671>,  <38.078297, 30.654860, 44.568684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.267487, 30.537027, 44.479671>,  <38.582802, 30.340641, 44.331318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267487, 30.537027, 44.479671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525392, 0.223350, 0.821022,
		0.320257, 0.842061, -0.434014,
		-0.788288, 0.490966, 0.370883,
		38.030998, 30.684317, 44.590935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841095, 30.978359, 44.498787>,  <38.582802, 30.340641, 44.331318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841095, 30.978359, 44.498787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.498764, 30.926640, 44.699120>,  <38.293365, 30.895609, 44.819321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.498764, 30.926640, 44.699120>,  <38.841095, 30.978359, 44.498787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498764, 30.926640, 44.699120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454130, 0.275709, 0.847201,
		-0.247626, 0.952505, -0.177243,
		-0.855831, -0.129298, 0.500834,
		38.242016, 30.887850, 44.849369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843575, 31.546579, 45.030689>,  <38.841095, 30.978359, 44.498787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843575, 31.546579, 45.030689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.571030, 31.282022, 45.156105>,  <38.407501, 31.123287, 45.231354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.571030, 31.282022, 45.156105>,  <38.843575, 31.546579, 45.030689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571030, 31.282022, 45.156105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231228, 0.211922, 0.949538,
		-0.694464, 0.719477, 0.008537,
		-0.681361, -0.661394, 0.313536,
		38.366623, 31.083605, 45.250164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623749, 31.795307, 45.657204>,  <38.843575, 31.546579, 45.030689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623749, 31.795307, 45.657204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.524315, 31.410076, 45.698551>,  <38.464653, 31.178938, 45.723358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.524315, 31.410076, 45.698551>,  <38.623749, 31.795307, 45.657204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524315, 31.410076, 45.698551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319350, 0.019258, 0.947441,
		-0.914451, 0.268530, 0.302772,
		-0.248585, -0.963079, 0.103366,
		38.449738, 31.121153, 45.729561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158226, 31.845051, 46.195145>,  <38.623749, 31.795307, 45.657204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158226, 31.845051, 46.195145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.257019, 31.457487, 46.189285>,  <38.316296, 31.224949, 46.185772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.257019, 31.457487, 46.189285>,  <38.158226, 31.845051, 46.195145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257019, 31.457487, 46.189285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336414, 0.071560, 0.938991,
		-0.908750, -0.236839, 0.343629,
		0.246980, -0.968910, -0.014646,
		38.331112, 31.166815, 46.184891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863132, 31.464888, 46.880569>,  <38.158226, 31.845051, 46.195145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863132, 31.464888, 46.880569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.161266, 31.241867, 46.734356>,  <38.340145, 31.108055, 46.646629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.161266, 31.241867, 46.734356>,  <37.863132, 31.464888, 46.880569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161266, 31.241867, 46.734356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245123, -0.280696, 0.927968,
		-0.619992, -0.781247, -0.072544,
		0.745335, -0.557551, -0.365531,
		38.384869, 31.074602, 46.624695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751835, 30.834185, 47.204472>,  <37.863132, 31.464888, 46.880569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751835, 30.834185, 47.204472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.136326, 30.825212, 47.094528>,  <38.367020, 30.819830, 47.028564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.136326, 30.825212, 47.094528>,  <37.751835, 30.834185, 47.204472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136326, 30.825212, 47.094528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263530, -0.218919, 0.939482,
		-0.081242, -0.975485, -0.204520,
		0.961224, -0.022429, -0.274855,
		38.424694, 30.818483, 47.012070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997341, 30.183687, 47.387978>,  <37.751835, 30.834185, 47.204472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997341, 30.183687, 47.387978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.327534, 30.407124, 47.355579>,  <38.525650, 30.541185, 47.336140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.327534, 30.407124, 47.355579>,  <37.997341, 30.183687, 47.387978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327534, 30.407124, 47.355579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212140, -0.174066, 0.961612,
		0.523051, -0.810972, -0.262188,
		0.825478, 0.558593, -0.080994,
		38.575176, 30.574701, 47.331280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509159, 29.856232, 47.684475>,  <37.997341, 30.183687, 47.387978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509159, 29.856232, 47.684475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.647926, 30.231380, 47.687126>,  <38.731186, 30.456470, 47.688717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.647926, 30.231380, 47.687126>,  <38.509159, 29.856232, 47.684475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647926, 30.231380, 47.687126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089030, -0.039965, 0.995227,
		0.933660, -0.344673, -0.097363,
		0.346919, 0.937872, 0.006628,
		38.752003, 30.512741, 47.689114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106766, 29.794044, 48.027729>,  <38.509159, 29.856232, 47.684475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106766, 29.794044, 48.027729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.073536, 30.192492, 48.039352>,  <39.053596, 30.431561, 48.046326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.073536, 30.192492, 48.039352>,  <39.106766, 29.794044, 48.027729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073536, 30.192492, 48.039352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178694, -0.013793, 0.983808,
		0.980391, 0.086922, -0.176855,
		-0.083075, 0.996120, 0.029055,
		39.048615, 30.491327, 48.048069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.841087, 36.116199, 48.717503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.073318, 35.794662, 48.665707>,  <35.212658, 35.601742, 48.634628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.073318, 35.794662, 48.665707>,  <34.841087, 36.116199, 48.717503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073318, 35.794662, 48.665707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111362, 0.235938, -0.965366,
		0.806552, 0.546052, 0.226498,
		0.580579, -0.803841, -0.129486,
		35.247494, 35.553509, 48.626862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298527, 36.355381, 48.181011>,  <34.841087, 36.116199, 48.717503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298527, 36.355381, 48.181011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.350075, 35.958736, 48.177078>,  <35.381004, 35.720749, 48.174721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.350075, 35.958736, 48.177078>,  <35.298527, 36.355381, 48.181011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350075, 35.958736, 48.177078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173988, 0.032368, -0.984216,
		0.976279, 0.125127, 0.176700,
		0.128872, -0.991613, -0.009829,
		35.388737, 35.661251, 48.174129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931541, 36.246666, 47.927967>,  <35.298527, 36.355381, 48.181011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931541, 36.246666, 47.927967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.702858, 35.925514, 47.860394>,  <35.565647, 35.732822, 47.819851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.702858, 35.925514, 47.860394>,  <35.931541, 36.246666, 47.927967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702858, 35.925514, 47.860394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020746, 0.191689, -0.981237,
		0.820195, -0.564486, -0.092933,
		-0.571708, -0.802877, -0.168933,
		35.531345, 35.684650, 47.809715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213200, 36.013046, 47.383907>,  <35.931541, 36.246666, 47.927967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213200, 36.013046, 47.383907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869728, 35.808125, 47.378185>,  <35.663643, 35.685169, 47.374752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.869728, 35.808125, 47.378185>,  <36.213200, 36.013046, 47.383907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869728, 35.808125, 47.378185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097332, -0.135614, -0.985969,
		0.503180, -0.848027, 0.166314,
		-0.858683, -0.512308, -0.014302,
		35.612122, 35.654434, 47.373894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337936, 35.482124, 46.855854>,  <36.213200, 36.013046, 47.383907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337936, 35.482124, 46.855854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.939236, 35.465584, 46.883480>,  <35.700016, 35.455658, 46.900055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.939236, 35.465584, 46.883480>,  <36.337936, 35.482124, 46.855854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939236, 35.465584, 46.883480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063693, -0.119584, -0.990779,
		0.049230, -0.991963, 0.116562,
		-0.996755, -0.041352, 0.069068,
		35.640209, 35.453178, 46.904202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036320, 34.832771, 46.520523>,  <36.337936, 35.482124, 46.855854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036320, 34.832771, 46.520523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.736279, 35.096081, 46.545883>,  <35.556255, 35.254066, 46.561100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.736279, 35.096081, 46.545883>,  <36.036320, 34.832771, 46.520523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736279, 35.096081, 46.545883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200103, -0.134552, -0.970492,
		-0.630320, -0.740655, 0.232651,
		-0.750104, 0.658275, 0.063397,
		35.511246, 35.293564, 46.564903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479542, 34.491135, 46.294998>,  <36.036320, 34.832771, 46.520523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479542, 34.491135, 46.294998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.416424, 34.884964, 46.264751>,  <35.378551, 35.121262, 46.246605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.416424, 34.884964, 46.264751>,  <35.479542, 34.491135, 46.294998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416424, 34.884964, 46.264751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201467, -0.107061, -0.973627,
		-0.966702, -0.138399, 0.215252,
		-0.157794, 0.984573, -0.075613,
		35.369087, 35.180336, 46.242069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928917, 34.521210, 45.937897>,  <35.479542, 34.491135, 46.294998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928917, 34.521210, 45.937897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.072815, 34.891258, 45.889347>,  <35.159153, 35.113289, 45.860218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.072815, 34.891258, 45.889347>,  <34.928917, 34.521210, 45.937897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072815, 34.891258, 45.889347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191629, -0.054058, -0.979978,
		-0.913162, 0.375798, 0.157833,
		0.359742, 0.925123, -0.121377,
		35.180737, 35.168797, 45.852936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488350, 34.799610, 45.448006>,  <34.928917, 34.521210, 45.937897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488350, 34.799610, 45.448006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.796741, 35.053699, 45.429718>,  <34.981777, 35.206154, 45.418747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.796741, 35.053699, 45.429718>,  <34.488350, 34.799610, 45.448006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796741, 35.053699, 45.429718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091956, 0.039999, -0.994959,
		-0.630191, 0.771293, 0.089251,
		0.770975, 0.635222, -0.045718,
		35.028034, 35.244267, 45.416004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247673, 35.416771, 45.084900>,  <34.488350, 34.799610, 45.448006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247673, 35.416771, 45.084900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.645729, 35.389988, 45.056000>,  <34.884563, 35.373920, 45.038662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.645729, 35.389988, 45.056000>,  <34.247673, 35.416771, 45.084900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645729, 35.389988, 45.056000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047339, 0.318119, -0.946868,
		0.086379, 0.945684, 0.313402,
		0.995137, -0.066954, -0.072246,
		34.944271, 35.369904, 45.034325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321915, 36.031342, 44.841549>,  <34.247673, 35.416771, 45.084900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321915, 36.031342, 44.841549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.662643, 35.850788, 44.735222>,  <34.867081, 35.742455, 44.671425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.662643, 35.850788, 44.735222>,  <34.321915, 36.031342, 44.841549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662643, 35.850788, 44.735222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077980, 0.392520, -0.916432,
		0.518002, 0.801361, 0.299156,
		0.851817, -0.451386, -0.265816,
		34.918190, 35.715374, 44.655476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713478, 36.503845, 44.473335>,  <34.321915, 36.031342, 44.841549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713478, 36.503845, 44.473335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.872562, 36.159016, 44.347694>,  <34.968014, 35.952118, 44.272308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.872562, 36.159016, 44.347694>,  <34.713478, 36.503845, 44.473335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872562, 36.159016, 44.347694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092129, 0.378137, -0.921154,
		0.912874, 0.337414, 0.229810,
		0.397710, -0.862070, -0.314106,
		34.991875, 35.900394, 44.253464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279251, 36.655773, 43.935112>,  <34.713478, 36.503845, 44.473335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279251, 36.655773, 43.935112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.167236, 36.277210, 43.870750>,  <35.100025, 36.050072, 43.832134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.167236, 36.277210, 43.870750>,  <35.279251, 36.655773, 43.935112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167236, 36.277210, 43.870750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023631, 0.174354, -0.984399,
		0.959698, -0.271868, -0.071190,
		-0.280039, -0.946408, -0.160902,
		35.083225, 35.993286, 43.822479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596992, 36.529858, 43.271400>,  <35.279251, 36.655773, 43.935112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596992, 36.529858, 43.271400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.326134, 36.241615, 43.331013>,  <35.163620, 36.068672, 43.366779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.326134, 36.241615, 43.331013>,  <35.596992, 36.529858, 43.271400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326134, 36.241615, 43.331013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202157, -0.012559, -0.979272,
		0.707538, -0.693235, -0.137171,
		-0.677143, -0.720603, 0.149029,
		35.122990, 36.025436, 43.375721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207718, 36.014988, 43.365005>,  <35.596992, 36.529858, 43.271400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207718, 36.014988, 43.365005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.582386, 36.137829, 43.297680>,  <36.807186, 36.211533, 43.257286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.582386, 36.137829, 43.297680>,  <36.207718, 36.014988, 43.365005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582386, 36.137829, 43.297680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177110, -0.000786, 0.984191,
		0.302119, -0.951675, -0.055127,
		0.936673, 0.307106, -0.168314,
		36.863388, 36.229961, 43.247185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481247, 35.713024, 43.902264>,  <36.207718, 36.014988, 43.365005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481247, 35.713024, 43.902264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.738869, 35.999016, 43.793453>,  <36.893440, 36.170612, 43.728168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.738869, 35.999016, 43.793453>,  <36.481247, 35.713024, 43.902264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738869, 35.999016, 43.793453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353683, 0.037000, 0.934633,
		0.678309, -0.698165, -0.229046,
		0.644054, 0.714980, -0.272026,
		36.932083, 36.213509, 43.711845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051212, 35.585472, 44.282490>,  <36.481247, 35.713024, 43.902264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051212, 35.585472, 44.282490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.092449, 35.967133, 44.170078>,  <37.117191, 36.196129, 44.102631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.092449, 35.967133, 44.170078>,  <37.051212, 35.585472, 44.282490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092449, 35.967133, 44.170078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511051, 0.191580, 0.837928,
		0.853345, -0.230002, -0.467868,
		0.103091, 0.954147, -0.281027,
		37.123375, 36.253376, 44.085770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665001, 35.720886, 44.460102>,  <37.051212, 35.585472, 44.282490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665001, 35.720886, 44.460102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.521152, 36.092308, 44.423309>,  <37.434845, 36.315163, 44.401234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.521152, 36.092308, 44.423309>,  <37.665001, 35.720886, 44.460102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521152, 36.092308, 44.423309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512750, 0.279012, 0.811936,
		0.779591, 0.244822, -0.576455,
		-0.359618, 0.928555, -0.091983,
		37.413269, 36.370876, 44.395714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166462, 36.225620, 44.604263>,  <37.665001, 35.720886, 44.460102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166462, 36.225620, 44.604263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.847446, 36.459908, 44.662045>,  <37.656036, 36.600479, 44.696712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.847446, 36.459908, 44.662045>,  <38.166462, 36.225620, 44.604263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847446, 36.459908, 44.662045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370744, 0.286984, 0.883283,
		0.475898, 0.758009, -0.446031,
		-0.797540, 0.585716, 0.144452,
		37.608185, 36.635624, 44.705379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406826, 36.901920, 44.830891>,  <38.166462, 36.225620, 44.604263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406826, 36.901920, 44.830891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.020199, 36.864494, 44.926388>,  <37.788223, 36.842041, 44.983688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.020199, 36.864494, 44.926388>,  <38.406826, 36.901920, 44.830891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020199, 36.864494, 44.926388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210712, 0.240789, 0.947429,
		-0.146131, 0.966057, -0.213024,
		-0.966564, -0.093562, 0.238746,
		37.730228, 36.836426, 44.998013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385979, 37.433121, 45.237461>,  <38.406826, 36.901920, 44.830891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385979, 37.433121, 45.237461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.041523, 37.245193, 45.315132>,  <37.834850, 37.132439, 45.361736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.041523, 37.245193, 45.315132>,  <38.385979, 37.433121, 45.237461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041523, 37.245193, 45.315132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205480, 0.027691, 0.978269,
		-0.464986, 0.882329, 0.072693,
		-0.861142, -0.469818, 0.194177,
		37.783180, 37.104248, 45.373386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144012, 37.828339, 45.691273>,  <38.385979, 37.433121, 45.237461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144012, 37.828339, 45.691273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.944489, 37.487988, 45.757233>,  <37.824776, 37.283775, 45.796806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.944489, 37.487988, 45.757233>,  <38.144012, 37.828339, 45.691273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944489, 37.487988, 45.757233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265499, 0.031099, 0.963609,
		-0.825045, 0.524437, 0.210396,
		-0.498809, -0.850881, 0.164896,
		37.794846, 37.232723, 45.806702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659267, 37.880978, 46.285217>,  <38.144012, 37.828339, 45.691273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659267, 37.880978, 46.285217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751938, 37.493351, 46.251194>,  <37.807541, 37.260777, 46.230778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.751938, 37.493351, 46.251194>,  <37.659267, 37.880978, 46.285217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751938, 37.493351, 46.251194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060529, -0.072912, 0.995500,
		-0.970908, -0.235783, 0.041765,
		0.231677, -0.969067, -0.085062,
		37.821442, 37.202629, 46.225674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310978, 37.568531, 46.811356>,  <37.659267, 37.880978, 46.285217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310978, 37.568531, 46.811356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.583984, 37.292503, 46.715034>,  <37.747787, 37.126888, 46.657242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.583984, 37.292503, 46.715034>,  <37.310978, 37.568531, 46.811356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583984, 37.292503, 46.715034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134897, -0.204869, 0.969449,
		-0.718315, -0.694146, -0.046739,
		0.682515, -0.690064, -0.240799,
		37.788738, 37.085484, 46.642796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155041, 36.962566, 47.099651>,  <37.310978, 37.568531, 46.811356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155041, 36.962566, 47.099651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548767, 36.926071, 47.039249>,  <37.785004, 36.904175, 47.003010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548767, 36.926071, 47.039249>,  <37.155041, 36.962566, 47.099651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548767, 36.926071, 47.039249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068522, -0.591008, 0.803750,
		-0.162574, -0.801489, -0.575486,
		0.984314, -0.091236, -0.151002,
		37.844063, 36.898701, 46.993950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245754, 36.291798, 47.080570>,  <37.155041, 36.962566, 47.099651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245754, 36.291798, 47.080570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.587414, 36.464939, 47.195858>,  <37.792408, 36.568825, 47.265030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.587414, 36.464939, 47.195858>,  <37.245754, 36.291798, 47.080570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587414, 36.464939, 47.195858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036124, -0.602275, 0.797471,
		0.518775, -0.670746, -0.530068,
		0.854147, 0.432856, 0.288215,
		37.843658, 36.594795, 47.282322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709343, 35.735573, 47.249313>,  <37.245754, 36.291798, 47.080570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709343, 35.735573, 47.249313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.890400, 36.055882, 47.406223>,  <37.999035, 36.248066, 47.500370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.890400, 36.055882, 47.406223>,  <37.709343, 35.735573, 47.249313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890400, 36.055882, 47.406223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237623, -0.532336, 0.812498,
		0.859450, -0.274554, -0.431238,
		0.452638, 0.800774, 0.392275,
		38.026192, 36.296112, 47.523907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262539, 35.477299, 47.476395>,  <37.709343, 35.735573, 47.249313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262539, 35.477299, 47.476395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.230373, 35.811764, 47.693417>,  <38.211075, 36.012444, 47.823631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.230373, 35.811764, 47.693417>,  <38.262539, 35.477299, 47.476395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230373, 35.811764, 47.693417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106007, -0.534061, 0.838774,
		0.991109, 0.124962, -0.045694,
		-0.080412, 0.836160, 0.542560,
		38.206249, 36.062611, 47.856186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692947, 34.911278, 47.688335>,  <38.262539, 35.477299, 47.476395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692947, 34.911278, 47.688335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.873428, 34.554661, 47.704174>,  <38.981716, 34.340691, 47.713676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.873428, 34.554661, 47.704174>,  <38.692947, 34.911278, 47.688335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873428, 34.554661, 47.704174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111036, -0.100112, -0.988761,
		0.885486, 0.441736, -0.144164,
		0.451204, -0.891542, 0.039599,
		39.008789, 34.287197, 47.716053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281094, 35.038940, 47.278610>,  <38.692947, 34.911278, 47.688335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281094, 35.038940, 47.278610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.166454, 34.657192, 47.312183>,  <39.097672, 34.428143, 47.332329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.166454, 34.657192, 47.312183>,  <39.281094, 35.038940, 47.278610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166454, 34.657192, 47.312183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089302, -0.060619, -0.994158,
		0.953881, -0.292415, -0.067854,
		-0.286593, -0.954368, 0.083937,
		39.080475, 34.370880, 47.337364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650211, 34.681229, 46.760918>,  <39.281094, 35.038940, 47.278610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650211, 34.681229, 46.760918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.351578, 34.432072, 46.854393>,  <39.172398, 34.282578, 46.910480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.351578, 34.432072, 46.854393>,  <39.650211, 34.681229, 46.760918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351578, 34.432072, 46.854393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218799, -0.101832, -0.970442,
		0.628279, -0.775651, -0.060262,
		-0.746587, -0.622893, 0.233690,
		39.127602, 34.245205, 46.924500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743404, 34.256023, 46.266190>,  <39.650211, 34.681229, 46.760918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743404, 34.256023, 46.266190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.371632, 34.201218, 46.403233>,  <39.148567, 34.168335, 46.485458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.371632, 34.201218, 46.403233>,  <39.743404, 34.256023, 46.266190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371632, 34.201218, 46.403233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350415, 0.036886, -0.935868,
		0.115593, -0.989882, -0.082296,
		-0.929434, -0.137017, 0.342606,
		39.092800, 34.160114, 46.506016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591354, 33.648827, 45.987171>,  <39.743404, 34.256023, 46.266190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591354, 33.648827, 45.987171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.241539, 33.817947, 46.082184>,  <39.031651, 33.919422, 46.139191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.241539, 33.817947, 46.082184>,  <39.591354, 33.648827, 45.987171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241539, 33.817947, 46.082184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262947, -0.001856, -0.964809,
		-0.407485, -0.906219, 0.112798,
		-0.874537, 0.422805, 0.237531,
		38.979179, 33.944790, 46.153442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032681, 33.222965, 45.530643>,  <39.591354, 33.648827, 45.987171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032681, 33.222965, 45.530643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.885262, 33.574364, 45.652241>,  <38.796810, 33.785202, 45.725201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.885262, 33.574364, 45.652241>,  <39.032681, 33.222965, 45.530643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885262, 33.574364, 45.652241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490277, 0.094147, -0.866467,
		-0.789809, -0.468378, 0.396009,
		-0.368551, 0.878498, 0.303993,
		38.774696, 33.837914, 45.743439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553272, 33.291759, 45.073681>,  <39.032681, 33.222965, 45.530643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553272, 33.291759, 45.073681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.524422, 33.649807, 45.249660>,  <38.507111, 33.864635, 45.355247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.524422, 33.649807, 45.249660>,  <38.553272, 33.291759, 45.073681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524422, 33.649807, 45.249660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684569, 0.276364, -0.674528,
		-0.725371, -0.349824, 0.592841,
		-0.072126, 0.895124, 0.439945,
		38.502785, 33.918343, 45.381645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823830, 33.458538, 45.170921>,  <38.553272, 33.291759, 45.073681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823830, 33.458538, 45.170921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.072487, 33.769165, 45.129913>,  <38.221680, 33.955540, 45.105309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.072487, 33.769165, 45.129913>,  <37.823830, 33.458538, 45.170921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072487, 33.769165, 45.129913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455141, 0.251575, -0.854141,
		-0.637502, 0.577632, 0.509836,
		0.621641, 0.776564, -0.102524,
		38.258980, 34.002132, 45.099155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405960, 34.006462, 44.825405>,  <37.823830, 33.458538, 45.170921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405960, 34.006462, 44.825405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.795074, 34.090633, 44.786598>,  <38.028542, 34.141136, 44.763313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.795074, 34.090633, 44.786598>,  <37.405960, 34.006462, 44.825405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795074, 34.090633, 44.786598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152426, 0.265768, -0.951911,
		-0.174528, 0.940790, 0.290610,
		0.972783, 0.210431, -0.097017,
		38.086910, 34.153763, 44.757492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336769, 34.470253, 44.177551>,  <37.405960, 34.006462, 44.825405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336769, 34.470253, 44.177551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.724983, 34.383663, 44.219883>,  <37.957912, 34.331711, 44.245281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.724983, 34.383663, 44.219883>,  <37.336769, 34.470253, 44.177551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724983, 34.383663, 44.219883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150446, 0.201300, -0.967907,
		0.188224, 0.955310, 0.227937,
		0.970535, -0.216476, 0.105833,
		38.016144, 34.318722, 44.251633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795925, 35.007423, 43.876945>,  <37.336769, 34.470253, 44.177551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795925, 35.007423, 43.876945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.050087, 34.699604, 43.902409>,  <38.202583, 34.514912, 43.917686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.050087, 34.699604, 43.902409>,  <37.795925, 35.007423, 43.876945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050087, 34.699604, 43.902409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261650, 0.137017, -0.955387,
		0.726495, 0.623716, 0.288414,
		0.635409, -0.769548, 0.063653,
		38.240711, 34.468739, 43.921505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361240, 35.136776, 43.518169>,  <37.795925, 35.007423, 43.876945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361240, 35.136776, 43.518169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.355263, 34.737068, 43.532219>,  <38.351677, 34.497242, 43.540649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.355263, 34.737068, 43.532219>,  <38.361240, 35.136776, 43.518169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355263, 34.737068, 43.532219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304990, -0.038012, -0.951597,
		0.952238, -0.003508, 0.305336,
		-0.014945, -0.999271, 0.035127,
		38.350780, 34.437286, 43.542755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998650, 34.969852, 43.254414>,  <38.361240, 35.136776, 43.518169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998650, 34.969852, 43.254414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.776730, 34.642174, 43.196281>,  <38.643578, 34.445568, 43.161404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.776730, 34.642174, 43.196281>,  <38.998650, 34.969852, 43.254414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776730, 34.642174, 43.196281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329394, -0.055868, -0.942538,
		0.764002, -0.570789, 0.300833,
		-0.554798, -0.819194, -0.145331,
		38.610291, 34.396416, 43.152683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356766, 34.414276, 42.808922>,  <38.998650, 34.969852, 43.254414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356766, 34.414276, 42.808922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.974602, 34.298862, 42.783794>,  <38.745304, 34.229614, 42.768719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.974602, 34.298862, 42.783794>,  <39.356766, 34.414276, 42.808922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974602, 34.298862, 42.783794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105705, -0.135542, -0.985117,
		0.275729, -0.947826, 0.159997,
		-0.955406, -0.288538, -0.062817,
		38.687981, 34.212299, 42.764950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.928673, 28.557735, 39.431404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.584839, 28.597240, 39.631947>,  <26.378538, 28.620943, 39.752274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.584839, 28.597240, 39.631947>,  <26.928673, 28.557735, 39.431404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584839, 28.597240, 39.631947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295303, 0.704706, -0.645124,
		-0.417025, -0.702591, -0.576590,
		-0.859585, 0.098764, 0.501357,
		26.326963, 28.626869, 39.782352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.437958, 28.340601, 38.983776>,  <26.928673, 28.557735, 39.431404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.437958, 28.340601, 38.983776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.316072, 28.606703, 39.256420>,  <26.242941, 28.766363, 39.420006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.316072, 28.606703, 39.256420>,  <26.437958, 28.340601, 38.983776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316072, 28.606703, 39.256420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015591, 0.719028, -0.694806,
		-0.952317, -0.201089, -0.229469,
		-0.304712, 0.665253, 0.681607,
		26.224659, 28.806278, 39.460903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204517, 28.794294, 38.557262>,  <26.437958, 28.340601, 38.983776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204517, 28.794294, 38.557262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.194603, 29.006447, 38.896221>,  <26.188654, 29.133738, 39.099598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.194603, 29.006447, 38.896221>,  <26.204517, 28.794294, 38.557262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.194603, 29.006447, 38.896221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171272, 0.837377, -0.519100,
		-0.984912, 0.132269, -0.111594,
		-0.024786, 0.530381, 0.847397,
		26.187168, 29.165562, 39.150440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671492, 29.350389, 38.416370>,  <26.204517, 28.794294, 38.557262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671492, 29.350389, 38.416370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.897823, 29.460850, 38.727131>,  <26.033623, 29.527126, 38.913589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.897823, 29.460850, 38.727131>,  <25.671492, 29.350389, 38.416370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897823, 29.460850, 38.727131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251665, 0.839440, -0.481669,
		-0.785176, 0.468062, 0.405483,
		0.565830, 0.276149, 0.776903,
		26.067572, 29.543694, 38.960201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413040, 30.051851, 38.475979>,  <25.671492, 29.350389, 38.416370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413040, 30.051851, 38.475979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.752157, 30.023542, 38.686211>,  <25.955627, 30.006557, 38.812351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.752157, 30.023542, 38.686211>,  <25.413040, 30.051851, 38.475979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.752157, 30.023542, 38.686211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290808, 0.890807, -0.349134,
		-0.443483, 0.448837, 0.775802,
		0.847793, -0.070774, 0.525583,
		26.006495, 30.002310, 38.843887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.496552, 30.682034, 38.919506>,  <25.413040, 30.051851, 38.475979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.496552, 30.682034, 38.919506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.863604, 30.534081, 38.861343>,  <26.083834, 30.445309, 38.826447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.863604, 30.534081, 38.861343>,  <25.496552, 30.682034, 38.919506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863604, 30.534081, 38.861343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265451, 0.842687, -0.468418,
		0.295792, 0.391235, 0.871460,
		0.917629, -0.369884, -0.145406,
		26.138893, 30.423115, 38.817722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983780, 31.216074, 39.081020>,  <25.496552, 30.682034, 38.919506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983780, 31.216074, 39.081020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.184914, 30.958048, 38.850872>,  <26.305593, 30.803232, 38.712784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.184914, 30.958048, 38.850872>,  <25.983780, 31.216074, 39.081020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184914, 30.958048, 38.850872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520978, 0.757322, -0.393757,
		0.689740, -0.101762, 0.716871,
		0.502833, -0.645064, -0.575371,
		26.335764, 30.764528, 38.678261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.567600, 31.511036, 39.006351>,  <25.983780, 31.216074, 39.081020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.567600, 31.511036, 39.006351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.527987, 31.289007, 38.675999>,  <26.504219, 31.155790, 38.477787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.527987, 31.289007, 38.675999>,  <26.567600, 31.511036, 39.006351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527987, 31.289007, 38.675999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410241, 0.733377, -0.542089,
		0.906584, -0.392498, 0.155084,
		-0.099034, -0.555071, -0.825886,
		26.498276, 31.122486, 38.428234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934797, 31.848835, 38.664062>,  <26.567600, 31.511036, 39.006351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934797, 31.848835, 38.664062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.830925, 31.574966, 38.391651>,  <26.768600, 31.410646, 38.228207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.830925, 31.574966, 38.391651>,  <26.934797, 31.848835, 38.664062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.830925, 31.574966, 38.391651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459326, 0.532764, -0.710762,
		0.849462, -0.497384, 0.176137,
		-0.259682, -0.684669, -0.681024,
		26.753021, 31.369566, 38.187344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482376, 31.698393, 38.165512>,  <26.934797, 31.848835, 38.664062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482376, 31.698393, 38.165512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.133602, 31.619169, 37.986404>,  <26.924337, 31.571634, 37.878941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.133602, 31.619169, 37.986404>,  <27.482376, 31.698393, 38.165512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133602, 31.619169, 37.986404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337747, 0.418803, -0.842930,
		0.354477, -0.886215, -0.298277,
		-0.871936, -0.198057, -0.447773,
		26.872021, 31.559752, 37.852074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727266, 31.520861, 37.474056>,  <27.482376, 31.698393, 38.165512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727266, 31.520861, 37.474056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.338152, 31.613262, 37.466881>,  <27.104683, 31.668703, 37.462578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.338152, 31.613262, 37.466881>,  <27.727266, 31.520861, 37.474056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338152, 31.613262, 37.466881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154242, 0.587870, -0.794115,
		-0.172900, -0.775272, -0.607503,
		-0.972788, 0.231005, -0.017936,
		27.046316, 31.682564, 37.461498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384809, 31.373825, 36.790394>,  <27.727266, 31.520861, 37.474056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384809, 31.373825, 36.790394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.156433, 31.649187, 36.969337>,  <27.019407, 31.814404, 37.076702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.156433, 31.649187, 36.969337>,  <27.384809, 31.373825, 36.790394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156433, 31.649187, 36.969337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092632, 0.595434, -0.798046,
		-0.815750, -0.414196, -0.403725,
		-0.570939, 0.688404, 0.447358,
		26.985151, 31.855709, 37.103546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892820, 31.626051, 36.174572>,  <27.384809, 31.373825, 36.790394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892820, 31.626051, 36.174572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.904100, 31.859606, 36.499111>,  <26.910868, 31.999739, 36.693832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.904100, 31.859606, 36.499111>,  <26.892820, 31.626051, 36.174572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904100, 31.859606, 36.499111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107833, 0.805156, -0.583178,
		-0.993769, 0.103935, -0.040257,
		0.028200, 0.583885, 0.811346,
		26.912560, 32.034771, 36.742516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860435, 32.253498, 35.886566>,  <26.892820, 31.626051, 36.174572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860435, 32.253498, 35.886566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.933109, 32.377300, 36.259918>,  <26.976713, 32.451580, 36.483929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.933109, 32.377300, 36.259918>,  <26.860435, 32.253498, 35.886566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.933109, 32.377300, 36.259918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424746, 0.831369, -0.358352,
		-0.886894, 0.461557, 0.019587,
		0.181684, 0.309501, 0.933381,
		26.987614, 32.470150, 36.539932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604650, 32.971378, 35.961609>,  <26.860435, 32.253498, 35.886566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604650, 32.971378, 35.961609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.900057, 32.931427, 36.228329>,  <27.077301, 32.907455, 36.388359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.900057, 32.931427, 36.228329>,  <26.604650, 32.971378, 35.961609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900057, 32.931427, 36.228329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337229, 0.911095, -0.237028,
		-0.583841, 0.399913, 0.706540,
		0.738516, -0.099879, 0.666797,
		27.121613, 32.901463, 36.428368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550444, 33.603909, 36.366730>,  <26.604650, 32.971378, 35.961609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550444, 33.603909, 36.366730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.907400, 33.439724, 36.441734>,  <27.121574, 33.341213, 36.486736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.907400, 33.439724, 36.441734>,  <26.550444, 33.603909, 36.366730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907400, 33.439724, 36.441734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433357, 0.895384, -0.102424,
		-0.125850, 0.172659, 0.976909,
		0.892392, -0.410460, 0.187507,
		27.175117, 33.316586, 36.497986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852219, 33.857178, 37.008484>,  <26.550444, 33.603909, 36.366730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.852219, 33.857178, 37.008484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.147047, 33.745262, 36.762413>,  <27.323944, 33.678112, 36.614769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.147047, 33.745262, 36.762413>,  <26.852219, 33.857178, 37.008484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147047, 33.745262, 36.762413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377477, 0.925488, 0.031351,
		0.560570, -0.255324, 0.787763,
		0.737070, -0.279788, -0.615180,
		27.368168, 33.661327, 36.577858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428799, 33.992413, 37.374393>,  <26.852219, 33.857178, 37.008484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428799, 33.992413, 37.374393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.501663, 33.974773, 36.981483>,  <27.545382, 33.964191, 36.745735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.501663, 33.974773, 36.981483>,  <27.428799, 33.992413, 37.374393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501663, 33.974773, 36.981483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434136, 0.899954, 0.040109,
		0.882237, -0.433749, 0.183083,
		0.182164, -0.044098, -0.982279,
		27.556313, 33.961544, 36.686798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995388, 34.275215, 37.358116>,  <27.428799, 33.992413, 37.374393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995388, 34.275215, 37.358116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.934521, 34.286339, 36.962933>,  <27.898001, 34.293015, 36.725822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.934521, 34.286339, 36.962933>,  <27.995388, 34.275215, 37.358116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934521, 34.286339, 36.962933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457764, 0.887908, -0.045510,
		0.875955, -0.459179, -0.147843,
		-0.152168, 0.027812, -0.987963,
		27.888870, 34.294682, 36.666542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650761, 34.386845, 36.935272>,  <27.995388, 34.275215, 37.358116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650761, 34.386845, 36.935272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.350800, 34.525017, 36.709591>,  <28.170822, 34.607918, 36.574181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.350800, 34.525017, 36.709591>,  <28.650761, 34.386845, 36.935272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350800, 34.525017, 36.709591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458062, 0.886460, -0.066099,
		0.477312, -0.308008, -0.822985,
		-0.749902, 0.345428, -0.564204,
		28.125830, 34.628647, 36.540329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942516, 35.022820, 37.249702>,  <28.650761, 34.386845, 36.935272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942516, 35.022820, 37.249702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.242769, 35.218761, 37.427059>,  <29.422920, 35.336327, 37.533474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.242769, 35.218761, 37.427059>,  <28.942516, 35.022820, 37.249702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242769, 35.218761, 37.427059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300683, -0.850811, 0.430942,
		0.588340, -0.190158, -0.785936,
		0.750630, 0.489858, 0.443389,
		29.467958, 35.365719, 37.560078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492987, 34.590908, 37.194199>,  <28.942516, 35.022820, 37.249702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492987, 34.590908, 37.194199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.593884, 34.840702, 37.489872>,  <29.654423, 34.990578, 37.667274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.593884, 34.840702, 37.489872>,  <29.492987, 34.590908, 37.194199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593884, 34.840702, 37.489872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558190, -0.717884, 0.416014,
		0.790441, 0.307667, -0.529664,
		0.252243, 0.624487, 0.739181,
		29.669556, 35.028049, 37.711628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239202, 34.466000, 37.289089>,  <29.492987, 34.590908, 37.194199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239202, 34.466000, 37.289089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.048931, 34.589760, 37.618454>,  <29.934769, 34.664017, 37.816071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.048931, 34.589760, 37.618454>,  <30.239202, 34.466000, 37.289089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048931, 34.589760, 37.618454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282565, -0.832734, 0.476142,
		0.833000, 0.459156, 0.308685,
		-0.475676, 0.309403, 0.823409,
		29.906229, 34.682579, 37.865479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708897, 34.261700, 37.737118>,  <30.239202, 34.466000, 37.289089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708897, 34.261700, 37.737118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.366953, 34.305088, 37.940075>,  <30.161787, 34.331123, 38.061852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.366953, 34.305088, 37.940075>,  <30.708897, 34.261700, 37.737118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366953, 34.305088, 37.940075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187480, -0.847258, 0.496996,
		0.483807, 0.519988, 0.703948,
		-0.854858, 0.108474, 0.507397,
		30.110497, 34.337631, 38.092293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877996, 34.142746, 38.441074>,  <30.708897, 34.261700, 37.737118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877996, 34.142746, 38.441074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.480684, 34.104313, 38.415283>,  <30.242296, 34.081253, 38.399807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.480684, 34.104313, 38.415283>,  <30.877996, 34.142746, 38.441074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480684, 34.104313, 38.415283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053186, -0.873968, 0.483064,
		-0.102767, 0.476389, 0.873208,
		-0.993283, -0.096085, -0.064478,
		30.182699, 34.075489, 38.395939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651165, 33.955769, 39.084957>,  <30.877996, 34.142746, 38.441074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651165, 33.955769, 39.084957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.362919, 33.827919, 38.838848>,  <30.189972, 33.751209, 38.691181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.362919, 33.827919, 38.838848>,  <30.651165, 33.955769, 39.084957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362919, 33.827919, 38.838848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105753, -0.826354, 0.553133,
		-0.685224, 0.463662, 0.561681,
		-0.720613, -0.319620, -0.615272,
		30.146734, 33.732033, 38.654266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060102, 33.776661, 39.554970>,  <30.651165, 33.955769, 39.084957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060102, 33.776661, 39.554970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.993378, 33.590076, 39.207500>,  <29.953342, 33.478127, 38.999020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.993378, 33.590076, 39.207500>,  <30.060102, 33.776661, 39.554970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993378, 33.590076, 39.207500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338486, -0.800383, 0.494787,
		-0.926068, 0.376570, -0.024377,
		-0.166811, -0.466457, -0.868673,
		29.943335, 33.450138, 38.946899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.433062, 33.598793, 39.679150>,  <30.060102, 33.776661, 39.554970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.433062, 33.598793, 39.679150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.571064, 33.365494, 39.384995>,  <29.653866, 33.225513, 39.208500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.571064, 33.365494, 39.384995>,  <29.433062, 33.598793, 39.679150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571064, 33.365494, 39.384995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402191, -0.799785, 0.445630,
		-0.848065, 0.142023, -0.510504,
		0.345004, -0.583243, -0.735391,
		29.674566, 33.190521, 39.164379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894135, 33.193077, 39.565395>,  <29.433062, 33.598793, 39.679150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894135, 33.193077, 39.565395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.205391, 33.009911, 39.393436>,  <29.392145, 32.900009, 39.290260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.205391, 33.009911, 39.393436>,  <28.894135, 33.193077, 39.565395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205391, 33.009911, 39.393436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352696, -0.884913, 0.304193,
		-0.519713, -0.085084, -0.850093,
		0.778141, -0.457918, -0.429893,
		29.438833, 32.872536, 39.264469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603537, 32.695171, 39.167969>,  <28.894135, 33.193077, 39.565395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603537, 32.695171, 39.167969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.977274, 32.567524, 39.231419>,  <29.201517, 32.490936, 39.269489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.977274, 32.567524, 39.231419>,  <28.603537, 32.695171, 39.167969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977274, 32.567524, 39.231419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355140, -0.870732, 0.340150,
		0.029572, -0.374152, -0.926896,
		0.934345, -0.319119, 0.158626,
		29.257578, 32.471786, 39.279007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533905, 32.032944, 38.964657>,  <28.603537, 32.695171, 39.167969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533905, 32.032944, 38.964657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.878473, 32.050648, 39.167042>,  <29.085215, 32.061272, 39.288471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.878473, 32.050648, 39.167042>,  <28.533905, 32.032944, 38.964657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878473, 32.050648, 39.167042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157710, -0.923637, 0.349315,
		0.482784, -0.380703, -0.788660,
		0.861422, 0.044264, 0.505958,
		29.136900, 32.063927, 39.318829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906013, 31.447227, 38.834835>,  <28.533905, 32.032944, 38.964657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906013, 31.447227, 38.834835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.996822, 31.593494, 39.195889>,  <29.051308, 31.681253, 39.412521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.996822, 31.593494, 39.195889>,  <28.906013, 31.447227, 38.834835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996822, 31.593494, 39.195889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122298, -0.908794, 0.398920,
		0.966180, -0.200955, -0.161597,
		0.227023, 0.365665, 0.902635,
		29.064930, 31.703194, 39.466679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228155, 30.839230, 39.031860>,  <28.906013, 31.447227, 38.834835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228155, 30.839230, 39.031860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.145802, 31.066483, 39.350567>,  <29.096390, 31.202835, 39.541790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.145802, 31.066483, 39.350567>,  <29.228155, 30.839230, 39.031860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145802, 31.066483, 39.350567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303441, -0.811142, 0.499973,
		0.930342, -0.138835, 0.339395,
		-0.205883, 0.568132, 0.796767,
		29.084036, 31.236921, 39.589596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392372, 30.517380, 39.555531>,  <29.228155, 30.839230, 39.031860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392372, 30.517380, 39.555531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139553, 30.778126, 39.723145>,  <28.987862, 30.934572, 39.823715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139553, 30.778126, 39.723145>,  <29.392372, 30.517380, 39.555531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139553, 30.778126, 39.723145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341058, -0.719549, 0.604920,
		0.695843, 0.239421, 0.677111,
		-0.632046, 0.651864, 0.419037,
		28.949940, 30.973684, 39.848854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.345219, 30.403543, 40.196007>,  <29.392372, 30.517380, 39.555531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.345219, 30.403543, 40.196007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.017372, 30.630445, 40.163876>,  <28.820663, 30.766586, 40.144596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.017372, 30.630445, 40.163876>,  <29.345219, 30.403543, 40.196007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017372, 30.630445, 40.163876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390091, -0.449871, 0.803396,
		0.419593, 0.689811, 0.590002,
		-0.819616, 0.567254, -0.080326,
		28.771488, 30.800621, 40.139778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132170, 30.713165, 40.956482>,  <29.345219, 30.403543, 40.196007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132170, 30.713165, 40.956482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.814835, 30.696081, 40.713570>,  <28.624434, 30.685831, 40.567822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.814835, 30.696081, 40.713570>,  <29.132170, 30.713165, 40.956482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814835, 30.696081, 40.713570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507592, -0.504329, 0.698571,
		-0.336105, 0.862455, 0.378425,
		-0.793337, -0.042708, -0.607283,
		28.576834, 30.683270, 40.531384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614319, 30.685230, 41.431393>,  <29.132170, 30.713165, 40.956482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614319, 30.685230, 41.431393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.399343, 30.624634, 41.099560>,  <28.270357, 30.588276, 40.900459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.399343, 30.624634, 41.099560>,  <28.614319, 30.685230, 41.431393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399343, 30.624634, 41.099560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711125, -0.447346, 0.542386,
		-0.453277, 0.881437, 0.132693,
		-0.537439, -0.151490, -0.829584,
		28.238111, 30.579187, 40.850685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890045, 31.007593, 41.505127>,  <28.614319, 30.685230, 41.431393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890045, 31.007593, 41.505127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.912994, 30.688875, 41.264519>,  <27.926764, 30.497644, 41.120155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.912994, 30.688875, 41.264519>,  <27.890045, 31.007593, 41.505127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912994, 30.688875, 41.264519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774187, -0.415929, 0.477114,
		-0.630351, 0.438313, -0.640734,
		0.057374, -0.796796, -0.601517,
		27.930206, 30.449837, 41.084064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156158, 30.891184, 41.306759>,  <27.890045, 31.007593, 41.505127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156158, 30.891184, 41.306759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.361977, 30.559015, 41.221302>,  <27.485468, 30.359715, 41.170029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.361977, 30.559015, 41.221302>,  <27.156158, 30.891184, 41.306759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361977, 30.559015, 41.221302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702541, -0.551134, 0.450208,
		-0.491608, -0.081560, -0.866989,
		0.514546, -0.830421, -0.213643,
		27.516340, 30.309889, 41.157207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706264, 30.385372, 41.100788>,  <27.156158, 30.891184, 41.306759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706264, 30.385372, 41.100788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.014290, 30.161253, 41.222820>,  <27.199104, 30.026781, 41.296040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.014290, 30.161253, 41.222820>,  <26.706264, 30.385372, 41.100788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014290, 30.161253, 41.222820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629313, -0.588626, 0.507429,
		-0.104735, -0.582740, -0.805881,
		0.770062, -0.560298, 0.305076,
		27.245308, 29.993164, 41.314342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387953, 29.659649, 40.965263>,  <26.706264, 30.385372, 41.100788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387953, 29.659649, 40.965263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.719347, 29.592726, 41.179035>,  <26.918184, 29.552572, 41.307301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.719347, 29.592726, 41.179035>,  <26.387953, 29.659649, 40.965263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719347, 29.592726, 41.179035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462423, -0.742675, 0.484355,
		0.315874, -0.648415, -0.692662,
		0.828486, -0.167307, 0.534434,
		26.967894, 29.542534, 41.339367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495960, 28.863424, 40.926311>,  <26.387953, 29.659649, 40.965263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.495960, 28.863424, 40.926311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.697969, 28.995689, 41.245213>,  <26.819176, 29.075048, 41.436554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.697969, 28.995689, 41.245213>,  <26.495960, 28.863424, 40.926311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697969, 28.995689, 41.245213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426536, -0.707412, 0.563592,
		0.750346, -0.624684, -0.216220,
		0.505024, 0.330663, 0.797253,
		26.849476, 29.094889, 41.484390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.752235, 30.084852, 48.278503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.483162, 30.375942, 48.332031>,  <39.321716, 30.550596, 48.364147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.483162, 30.375942, 48.332031>,  <39.752235, 30.084852, 48.278503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483162, 30.375942, 48.332031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162317, -0.031317, 0.986241,
		0.721905, 0.685152, -0.097055,
		-0.672686, 0.727726, 0.133820,
		39.281357, 30.594259, 48.372177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046932, 30.525702, 48.675301>,  <39.752235, 30.084852, 48.278503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046932, 30.525702, 48.675301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.663036, 30.630583, 48.715599>,  <39.432697, 30.693512, 48.739777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.663036, 30.630583, 48.715599>,  <40.046932, 30.525702, 48.675301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663036, 30.630583, 48.715599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148896, 0.170762, 0.973997,
		0.238180, 0.949784, -0.202928,
		-0.959740, 0.262202, 0.100747,
		39.375114, 30.709244, 48.745823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108334, 31.050985, 49.167503>,  <40.046932, 30.525702, 48.675301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108334, 31.050985, 49.167503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.734058, 30.911983, 49.191956>,  <39.509495, 30.828583, 49.206627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.734058, 30.911983, 49.191956>,  <40.108334, 31.050985, 49.167503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734058, 30.911983, 49.191956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008466, 0.151081, 0.988485,
		-0.352739, 0.925427, -0.138422,
		-0.935684, -0.347505, 0.061127,
		39.453354, 30.807732, 49.210293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733707, 31.525658, 49.560349>,  <40.108334, 31.050985, 49.167503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733707, 31.525658, 49.560349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.526772, 31.186588, 49.607361>,  <39.402611, 30.983147, 49.635567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.526772, 31.186588, 49.607361>,  <39.733707, 31.525658, 49.560349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526772, 31.186588, 49.607361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083982, 0.186958, 0.978772,
		-0.851651, 0.496485, -0.167909,
		-0.517337, -0.847673, 0.117527,
		39.371571, 30.932287, 49.642620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230679, 31.720430, 49.975864>,  <39.733707, 31.525658, 49.560349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230679, 31.720430, 49.975864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.248497, 31.322084, 50.007542>,  <39.259190, 31.083076, 50.026550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.248497, 31.322084, 50.007542>,  <39.230679, 31.720430, 49.975864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248497, 31.322084, 50.007542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297046, 0.062486, 0.952816,
		-0.953823, -0.065971, -0.293034,
		0.044548, -0.995863, 0.079197,
		39.261860, 31.023325, 50.031300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679066, 31.551546, 50.445770>,  <39.230679, 31.720430, 49.975864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679066, 31.551546, 50.445770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.949989, 31.257343, 50.452534>,  <39.112541, 31.080822, 50.456593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.949989, 31.257343, 50.452534>,  <38.679066, 31.551546, 50.445770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949989, 31.257343, 50.452534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017158, 0.038772, 0.999101,
		-0.735503, -0.676405, 0.038881,
		0.677304, -0.735509, 0.016911,
		39.153179, 31.036692, 50.457607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398857, 31.025766, 50.844730>,  <38.679066, 31.551546, 50.445770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398857, 31.025766, 50.844730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798058, 31.002018, 50.853470>,  <39.037579, 30.987770, 50.858715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.798058, 31.002018, 50.853470>,  <38.398857, 31.025766, 50.844730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798058, 31.002018, 50.853470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013637, 0.135354, 0.990703,
		-0.061776, -0.989017, 0.134273,
		0.997997, -0.059371, 0.021849,
		39.097458, 30.984207, 50.860023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560856, 30.876844, 51.588333>,  <38.398857, 31.025766, 50.844730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560856, 30.876844, 51.588333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.928516, 30.941591, 51.444695>,  <39.149113, 30.980438, 51.358509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.928516, 30.941591, 51.444695>,  <38.560856, 30.876844, 51.588333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928516, 30.941591, 51.444695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344218, 0.113115, 0.932051,
		0.191490, -0.980308, 0.048251,
		0.919155, 0.161869, -0.359100,
		39.204262, 30.990150, 51.336964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089165, 30.392086, 51.934502>,  <38.560856, 30.876844, 51.588333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089165, 30.392086, 51.934502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.262753, 30.727161, 51.801865>,  <39.366905, 30.928207, 51.722282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.262753, 30.727161, 51.801865>,  <39.089165, 30.392086, 51.934502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262753, 30.727161, 51.801865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327831, 0.195994, 0.924182,
		0.839166, -0.509770, -0.189565,
		0.433967, 0.837688, -0.331590,
		39.392944, 30.978468, 51.702389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716660, 30.509766, 52.349735>,  <39.089165, 30.392086, 51.934502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716660, 30.509766, 52.349735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.713142, 30.869076, 52.173996>,  <39.711033, 31.084661, 52.068554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.713142, 30.869076, 52.173996>,  <39.716660, 30.509766, 52.349735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713142, 30.869076, 52.173996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196103, 0.432380, 0.880108,
		0.980544, -0.078418, -0.179956,
		-0.008793, 0.898275, -0.439346,
		39.710506, 31.138557, 52.042191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274616, 30.851034, 52.670261>,  <39.716660, 30.509766, 52.349735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274616, 30.851034, 52.670261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.015762, 31.121168, 52.528763>,  <39.860451, 31.283249, 52.443863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.015762, 31.121168, 52.528763>,  <40.274616, 30.851034, 52.670261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015762, 31.121168, 52.528763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175032, 0.583229, 0.793226,
		0.742009, 0.451408, -0.495634,
		-0.647137, 0.675333, -0.353750,
		39.821621, 31.323769, 52.422638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593323, 31.499165, 52.700089>,  <40.274616, 30.851034, 52.670261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593323, 31.499165, 52.700089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.207607, 31.604834, 52.692509>,  <39.976177, 31.668236, 52.687962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.207607, 31.604834, 52.692509>,  <40.593323, 31.499165, 52.700089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207607, 31.604834, 52.692509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123751, 0.512661, 0.849626,
		0.234162, 0.816940, -0.527046,
		-0.964289, 0.264173, -0.018948,
		39.918320, 31.684086, 52.686825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507469, 32.272148, 52.877789>,  <40.593323, 31.499165, 52.700089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507469, 32.272148, 52.877789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.163967, 32.088558, 52.968895>,  <39.957867, 31.978403, 53.023560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.163967, 32.088558, 52.968895>,  <40.507469, 32.272148, 52.877789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163967, 32.088558, 52.968895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041389, 0.505205, 0.862006,
		-0.510712, 0.730825, -0.452844,
		-0.858755, -0.458979, 0.227767,
		39.906342, 31.950865, 53.037224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528202, 32.937778, 53.197277>,  <40.507469, 32.272148, 52.877789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528202, 32.937778, 53.197277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.341145, 33.278656, 53.291153>,  <40.228909, 33.483181, 53.347477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.341145, 33.278656, 53.291153>,  <40.528202, 32.937778, 53.197277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341145, 33.278656, 53.291153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381040, 0.045217, -0.923452,
		-0.797571, -0.521272, 0.303574,
		-0.467643, 0.852192, 0.234689,
		40.200851, 33.534313, 53.361561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845604, 32.880146, 52.987144>,  <40.528202, 32.937778, 53.197277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845604, 32.880146, 52.987144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.928249, 33.270901, 53.009090>,  <39.977837, 33.505352, 53.022259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.928249, 33.270901, 53.009090>,  <39.845604, 32.880146, 52.987144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928249, 33.270901, 53.009090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356721, 0.127428, -0.925479,
		-0.911076, 0.171647, 0.374803,
		0.206616, 0.976883, 0.054867,
		39.990234, 33.563965, 53.025551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246284, 33.302689, 52.828320>,  <39.845604, 32.880146, 52.987144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246284, 33.302689, 52.828320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.576359, 33.514244, 52.748981>,  <39.774403, 33.641178, 52.701378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.576359, 33.514244, 52.748981>,  <39.246284, 33.302689, 52.828320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576359, 33.514244, 52.748981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294167, 0.102603, -0.950231,
		-0.482213, 0.842468, 0.240248,
		0.825189, 0.528886, -0.198350,
		39.823914, 33.672909, 52.689476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037861, 33.828827, 52.368050>,  <39.246284, 33.302689, 52.828320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037861, 33.828827, 52.368050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.432880, 33.837265, 52.305706>,  <39.669891, 33.842327, 52.268299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.432880, 33.837265, 52.305706>,  <39.037861, 33.828827, 52.368050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432880, 33.837265, 52.305706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155875, -0.001019, -0.987776,
		-0.020996, 0.999777, 0.002282,
		0.987554, 0.021095, -0.155862,
		39.729145, 33.843594, 52.258949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191601, 34.423847, 51.914646>,  <39.037861, 33.828827, 52.368050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191601, 34.423847, 51.914646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.507252, 34.183144, 51.865383>,  <39.696640, 34.038719, 51.835827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.507252, 34.183144, 51.865383>,  <39.191601, 34.423847, 51.914646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507252, 34.183144, 51.865383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029297, 0.237145, -0.971033,
		0.613536, 0.762656, 0.204766,
		0.789123, -0.601763, -0.123153,
		39.743988, 34.002613, 51.828438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632702, 34.886940, 51.523567>,  <39.191601, 34.423847, 51.914646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632702, 34.886940, 51.523567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.732422, 34.501110, 51.489048>,  <39.792255, 34.269611, 51.468338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.732422, 34.501110, 51.489048>,  <39.632702, 34.886940, 51.523567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732422, 34.501110, 51.489048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081389, 0.109662, -0.990631,
		0.965000, 0.239942, 0.105844,
		0.249301, -0.964573, -0.086296,
		39.807213, 34.211739, 51.463158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193207, 34.866444, 51.089520>,  <39.632702, 34.886940, 51.523567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193207, 34.866444, 51.089520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.098389, 34.478489, 51.067158>,  <40.041496, 34.245716, 51.053741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.098389, 34.478489, 51.067158>,  <40.193207, 34.866444, 51.089520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098389, 34.478489, 51.067158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178522, 0.013074, -0.983849,
		0.954954, -0.243200, 0.170047,
		-0.237049, -0.969888, -0.055902,
		40.027275, 34.187523, 51.050388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628639, 34.606033, 50.674530>,  <40.193207, 34.866444, 51.089520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628639, 34.606033, 50.674530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.321262, 34.350349, 50.662441>,  <40.136837, 34.196941, 50.655190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.321262, 34.350349, 50.662441>,  <40.628639, 34.606033, 50.674530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321262, 34.350349, 50.662441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078064, 0.140509, -0.986997,
		0.635140, -0.756091, -0.157872,
		-0.768442, -0.639206, -0.030219,
		40.090729, 34.158588, 50.653374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.730209, 34.131207, 50.012417>,  <40.628639, 34.606033, 50.674530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.730209, 34.131207, 50.012417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.346714, 34.113415, 50.124725>,  <40.116615, 34.102741, 50.192112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.346714, 34.113415, 50.124725>,  <40.730209, 34.131207, 50.012417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346714, 34.113415, 50.124725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279427, -0.034227, -0.959557,
		0.052292, -0.998424, 0.020386,
		-0.958742, -0.044481, 0.280776,
		40.059090, 34.100071, 50.208958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552284, 33.655331, 49.593216>,  <40.730209, 34.131207, 50.012417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552284, 33.655331, 49.593216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.214565, 33.819473, 49.731071>,  <40.011936, 33.917957, 49.813786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.214565, 33.819473, 49.731071>,  <40.552284, 33.655331, 49.593216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214565, 33.819473, 49.731071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379638, -0.004126, -0.925126,
		-0.378211, -0.911915, 0.159271,
		-0.844293, 0.410358, 0.344637,
		39.961277, 33.942581, 49.834461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043163, 33.279587, 49.225079>,  <40.552284, 33.655331, 49.593216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043163, 33.279587, 49.225079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.852795, 33.598461, 49.373672>,  <39.738575, 33.789787, 49.462830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.852795, 33.598461, 49.373672>,  <40.043163, 33.279587, 49.225079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852795, 33.598461, 49.373672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533167, 0.074407, -0.842731,
		-0.699454, -0.599132, 0.389622,
		-0.475917, 0.797185, 0.371482,
		39.710018, 33.837616, 49.485119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391685, 33.176929, 49.066544>,  <40.043163, 33.279587, 49.225079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391685, 33.176929, 49.066544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.419418, 33.571831, 49.123859>,  <39.436058, 33.808769, 49.158249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.419418, 33.571831, 49.123859>,  <39.391685, 33.176929, 49.066544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419418, 33.571831, 49.123859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381459, 0.158953, -0.910617,
		-0.921782, 0.008476, 0.387616,
		0.069331, 0.987250, 0.143287,
		39.440216, 33.868004, 49.166847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653999, 33.446232, 48.856525>,  <39.391685, 33.176929, 49.066544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653999, 33.446232, 48.856525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.953491, 33.711349, 48.852364>,  <39.133186, 33.870419, 48.849869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.953491, 33.711349, 48.852364>,  <38.653999, 33.446232, 48.856525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953491, 33.711349, 48.852364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310511, 0.336819, -0.888896,
		-0.585652, 0.668772, 0.457991,
		0.748729, 0.662795, -0.010402,
		39.178108, 33.910187, 48.849243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292892, 34.004860, 48.670750>,  <38.653999, 33.446232, 48.856525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292892, 34.004860, 48.670750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.682396, 34.056778, 48.595963>,  <38.916096, 34.087929, 48.551090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.682396, 34.056778, 48.595963>,  <38.292892, 34.004860, 48.670750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682396, 34.056778, 48.595963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210280, 0.198718, -0.957232,
		-0.087093, 0.971424, 0.220796,
		0.973754, 0.129797, -0.186964,
		38.974522, 34.095718, 48.539875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324821, 34.612080, 48.221455>,  <38.292892, 34.004860, 48.670750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324821, 34.612080, 48.221455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.667057, 34.409061, 48.180729>,  <38.872398, 34.287251, 48.156292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.667057, 34.409061, 48.180729>,  <38.324821, 34.612080, 48.221455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667057, 34.409061, 48.180729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083576, 0.058664, -0.994773,
		0.510867, 0.859625, 0.007773,
		0.855588, -0.507547, -0.101814,
		38.923733, 34.256798, 48.150185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508575, 35.240208, 48.681297>,  <38.324821, 34.612080, 48.221455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508575, 35.240208, 48.681297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.366066, 35.609016, 48.620708>,  <38.280560, 35.830303, 48.584354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.366066, 35.609016, 48.620708>,  <38.508575, 35.240208, 48.681297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366066, 35.609016, 48.620708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303324, 0.039207, 0.952080,
		0.883778, 0.385147, 0.265703,
		-0.356274, 0.922022, -0.151474,
		38.259182, 35.885624, 48.575268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799530, 35.744549, 49.224201>,  <38.508575, 35.240208, 48.681297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799530, 35.744549, 49.224201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.452686, 35.905087, 49.106190>,  <38.244579, 36.001411, 49.035381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.452686, 35.905087, 49.106190>,  <38.799530, 35.744549, 49.224201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452686, 35.905087, 49.106190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357995, -0.090278, 0.929349,
		0.346357, 0.911466, 0.221961,
		-0.867108, 0.401347, -0.295032,
		38.192554, 36.025490, 49.017681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668629, 36.290108, 49.632252>,  <38.799530, 35.744549, 49.224201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668629, 36.290108, 49.632252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.322376, 36.155071, 49.484352>,  <38.114624, 36.074051, 49.395615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.322376, 36.155071, 49.484352>,  <38.668629, 36.290108, 49.632252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322376, 36.155071, 49.484352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383593, -0.027426, 0.923095,
		-0.321766, 0.940895, -0.105755,
		-0.865635, -0.337587, -0.369745,
		38.062687, 36.053795, 49.373428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108833, 36.634933, 49.933151>,  <38.668629, 36.290108, 49.632252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108833, 36.634933, 49.933151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.952400, 36.292713, 49.797451>,  <37.858540, 36.087379, 49.716030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.952400, 36.292713, 49.797451>,  <38.108833, 36.634933, 49.933151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952400, 36.292713, 49.797451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489950, -0.118500, 0.863659,
		-0.779104, 0.503976, -0.372834,
		-0.391082, -0.855550, -0.339247,
		37.835075, 36.036049, 49.695679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465210, 36.630157, 50.169376>,  <38.108833, 36.634933, 49.933151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465210, 36.630157, 50.169376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.522659, 36.243649, 50.083866>,  <37.557129, 36.011745, 50.032558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.522659, 36.243649, 50.083866>,  <37.465210, 36.630157, 50.169376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522659, 36.243649, 50.083866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484473, -0.257009, 0.836202,
		-0.862937, -0.016526, -0.505041,
		0.143619, -0.966268, -0.213776,
		37.565746, 35.953770, 50.019733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886959, 36.374786, 50.378742>,  <37.465210, 36.630157, 50.169376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886959, 36.374786, 50.378742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.130665, 36.061115, 50.331650>,  <37.276890, 35.872913, 50.303394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.130665, 36.061115, 50.331650>,  <36.886959, 36.374786, 50.378742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130665, 36.061115, 50.331650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268043, -0.343398, 0.900128,
		-0.746292, -0.516858, -0.419413,
		0.609263, -0.784179, -0.117735,
		37.313442, 35.825863, 50.296329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504612, 35.816685, 50.495571>,  <36.886959, 36.374786, 50.378742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504612, 35.816685, 50.495571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.882347, 35.693882, 50.542854>,  <37.108990, 35.620201, 50.571224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.882347, 35.693882, 50.542854>,  <36.504612, 35.816685, 50.495571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882347, 35.693882, 50.542854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173046, -0.157954, 0.972165,
		-0.279789, -0.938508, -0.202289,
		0.944338, -0.307006, 0.118212,
		37.165649, 35.601780, 50.578320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566578, 35.154175, 50.764294>,  <36.504612, 35.816685, 50.495571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566578, 35.154175, 50.764294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.886696, 35.367527, 50.873863>,  <37.078766, 35.495541, 50.939606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.886696, 35.367527, 50.873863>,  <36.566578, 35.154175, 50.764294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886696, 35.367527, 50.873863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186898, -0.212176, 0.959193,
		0.569737, -0.818831, -0.070115,
		0.800293, 0.533383, 0.273923,
		37.126785, 35.527542, 50.956039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484005, 34.414658, 50.933571>,  <36.566578, 35.154175, 50.764294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484005, 34.414658, 50.933571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.164017, 34.652889, 50.962776>,  <35.972023, 34.795826, 50.980301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.164017, 34.652889, 50.962776>,  <36.484005, 34.414658, 50.933571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164017, 34.652889, 50.962776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148404, -0.078484, -0.985808,
		-0.581392, -0.799457, 0.151171,
		-0.799975, 0.595574, 0.073013,
		35.924023, 34.831562, 50.984680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113171, 34.229088, 50.360641>,  <36.484005, 34.414658, 50.933571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113171, 34.229088, 50.360641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.911957, 34.556293, 50.472218>,  <35.791229, 34.752617, 50.539162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.911957, 34.556293, 50.472218>,  <36.113171, 34.229088, 50.360641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911957, 34.556293, 50.472218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430667, 0.042576, -0.901506,
		-0.749323, -0.573617, 0.330875,
		-0.503032, 0.818016, 0.278941,
		35.761047, 34.801697, 50.555901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387833, 34.137180, 50.113781>,  <36.113171, 34.229088, 50.360641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387833, 34.137180, 50.113781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.450642, 34.528492, 50.167908>,  <35.488327, 34.763279, 50.200382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.450642, 34.528492, 50.167908>,  <35.387833, 34.137180, 50.113781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450642, 34.528492, 50.167908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440992, 0.192049, -0.876723,
		-0.883669, 0.077990, 0.461570,
		0.157020, 0.978281, 0.135314,
		35.497749, 34.821976, 50.208504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821529, 34.393158, 49.751385>,  <35.387833, 34.137180, 50.113781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821529, 34.393158, 49.751385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.073551, 34.700409, 49.797016>,  <35.224766, 34.884758, 49.824394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.073551, 34.700409, 49.797016>,  <34.821529, 34.393158, 49.751385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073551, 34.700409, 49.797016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291294, 0.369957, -0.882202,
		-0.719846, 0.522605, 0.456844,
		0.630056, 0.768125, 0.114080,
		35.262569, 34.930847, 49.831242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508038, 34.993000, 49.533661>,  <34.821529, 34.393158, 49.751385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508038, 34.993000, 49.533661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.899689, 35.050438, 49.476124>,  <35.134678, 35.084900, 49.441601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.899689, 35.050438, 49.476124>,  <34.508038, 34.993000, 49.533661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899689, 35.050438, 49.476124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191949, 0.420605, -0.886706,
		-0.066826, 0.895808, 0.439388,
		0.979127, 0.143595, -0.143843,
		35.193428, 35.093517, 49.432972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509151, 35.509441, 49.067688>,  <34.508038, 34.993000, 49.533661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509151, 35.509441, 49.067688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.895969, 35.411861, 49.038532>,  <35.128059, 35.353313, 49.021038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.895969, 35.411861, 49.038532>,  <34.509151, 35.509441, 49.067688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895969, 35.411861, 49.038532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045761, 0.448157, -0.892783,
		0.250459, 0.860026, 0.444551,
		0.967045, -0.243949, -0.072890,
		35.186085, 35.338676, 49.016666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.344646, 32.304546, 53.122936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.282333, 32.337360, 53.516689>,  <35.244946, 32.357048, 53.752941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.282333, 32.337360, 53.516689>,  <35.344646, 32.304546, 53.122936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282333, 32.337360, 53.516689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925582, 0.335940, -0.174478,
		-0.345006, -0.938304, 0.023600,
		-0.155785, 0.082040, 0.984378,
		35.235600, 32.361973, 53.812004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076057, 32.163429, 53.169334>,  <35.344646, 32.304546, 53.122936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076057, 32.163429, 53.169334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.393612, 32.027718, 52.967491>,  <36.584145, 31.946291, 52.846386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.393612, 32.027718, 52.967491>,  <36.076057, 32.163429, 53.169334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393612, 32.027718, 52.967491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449201, 0.232076, -0.862763,
		0.409825, 0.911609, 0.031838,
		0.793891, -0.339279, -0.504606,
		36.631779, 31.925934, 52.816109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198677, 32.654682, 52.615860>,  <36.076057, 32.163429, 53.169334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198677, 32.654682, 52.615860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.365566, 32.308620, 52.504555>,  <36.465698, 32.100983, 52.437771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.365566, 32.308620, 52.504555>,  <36.198677, 32.654682, 52.615860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365566, 32.308620, 52.504555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272549, 0.172975, -0.946465,
		0.866975, 0.470723, -0.163630,
		0.417219, -0.865159, -0.278260,
		36.490730, 32.049072, 52.421078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488628, 32.860180, 51.906967>,  <36.198677, 32.654682, 52.615860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488628, 32.860180, 51.906967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.534607, 32.463329, 51.926861>,  <36.562195, 32.225220, 51.938797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.534607, 32.463329, 51.926861>,  <36.488628, 32.860180, 51.906967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534607, 32.463329, 51.926861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381027, -0.090275, -0.920146,
		0.917390, 0.086818, -0.388404,
		0.114948, -0.992125, 0.049737,
		36.569092, 32.165691, 51.941780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802010, 32.571888, 51.258553>,  <36.488628, 32.860180, 51.906967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802010, 32.571888, 51.258553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.593300, 32.265480, 51.408737>,  <36.468075, 32.081635, 51.498848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.593300, 32.265480, 51.408737>,  <36.802010, 32.571888, 51.258553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593300, 32.265480, 51.408737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425543, -0.147741, -0.892797,
		0.739370, -0.625609, -0.248887,
		-0.521770, -0.766020, 0.375459,
		36.436768, 32.035675, 51.521374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940468, 32.159061, 50.728848>,  <36.802010, 32.571888, 51.258553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940468, 32.159061, 50.728848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.633617, 31.985355, 50.917709>,  <36.449505, 31.881132, 51.031025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.633617, 31.985355, 50.917709>,  <36.940468, 32.159061, 50.728848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633617, 31.985355, 50.917709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434514, -0.189707, -0.880459,
		0.471924, -0.880582, -0.043165,
		-0.767128, -0.434266, 0.472153,
		36.403481, 31.855076, 51.059357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881115, 31.509912, 50.543049>,  <36.940468, 32.159061, 50.728848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881115, 31.509912, 50.543049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.506943, 31.513016, 50.684414>,  <36.282440, 31.514877, 50.769234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.506943, 31.513016, 50.684414>,  <36.881115, 31.509912, 50.543049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506943, 31.513016, 50.684414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337769, -0.314519, -0.887125,
		0.104275, -0.949220, 0.296831,
		-0.935435, 0.007756, 0.353413,
		36.226311, 31.515343, 50.790440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475296, 30.813791, 50.380730>,  <36.881115, 31.509912, 50.543049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.475296, 30.813791, 50.380730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.190567, 31.092314, 50.417522>,  <36.019730, 31.259428, 50.439598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.190567, 31.092314, 50.417522>,  <36.475296, 30.813791, 50.380730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190567, 31.092314, 50.417522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529704, -0.446223, -0.721317,
		-0.461227, -0.562162, 0.686472,
		-0.711816, 0.696318, 0.091970,
		35.977020, 31.301207, 50.445118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840794, 30.424656, 50.379532>,  <36.475296, 30.813791, 50.380730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840794, 30.424656, 50.379532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.768188, 30.804817, 50.278503>,  <35.724625, 31.032913, 50.217888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.768188, 30.804817, 50.278503>,  <35.840794, 30.424656, 50.379532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768188, 30.804817, 50.278503> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555450, -0.311026, -0.771192,
		-0.811498, 0.000308, 0.584355,
		-0.181512, 0.950402, -0.252569,
		35.713734, 31.089937, 50.202732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259563, 30.445578, 49.993412>,  <35.840794, 30.424656, 50.379532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259563, 30.445578, 49.993412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.388813, 30.810188, 49.891659>,  <35.466362, 31.028955, 49.830608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.388813, 30.810188, 49.891659>,  <35.259563, 30.445578, 49.993412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388813, 30.810188, 49.891659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367741, -0.126740, -0.921251,
		-0.871985, 0.391224, 0.294254,
		0.323122, 0.911526, -0.254384,
		35.485748, 31.083647, 49.815342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719620, 30.831501, 49.773327>,  <35.259563, 30.445578, 49.993412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719620, 30.831501, 49.773327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.055691, 30.971516, 49.607635>,  <35.257332, 31.055525, 49.508221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.055691, 30.971516, 49.607635>,  <34.719620, 30.831501, 49.773327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055691, 30.971516, 49.607635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432748, -0.027629, -0.901092,
		-0.326860, 0.936328, 0.128265,
		0.840174, 0.350038, -0.414225,
		35.307743, 31.076527, 49.483368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596722, 31.419180, 49.388756>,  <34.719620, 30.831501, 49.773327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596722, 31.419180, 49.388756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.957432, 31.326796, 49.242626>,  <35.173859, 31.271366, 49.154949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.957432, 31.326796, 49.242626>,  <34.596722, 31.419180, 49.388756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957432, 31.326796, 49.242626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391342, -0.077560, -0.916971,
		0.183448, 0.969867, -0.160326,
		0.901775, -0.230959, -0.365321,
		35.227962, 31.257507, 49.133030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441444, 32.079044, 49.591030>,  <34.596722, 31.419180, 49.388756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441444, 32.079044, 49.591030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.151096, 32.350285, 49.637165>,  <33.976887, 32.513027, 49.664845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.151096, 32.350285, 49.637165>,  <34.441444, 32.079044, 49.591030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151096, 32.350285, 49.637165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248949, 0.102680, 0.963058,
		0.641204, 0.727765, -0.243343,
		-0.725866, 0.678097, 0.115338,
		33.933338, 32.553715, 49.671768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676441, 32.622944, 49.979321>,  <34.441444, 32.079044, 49.591030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676441, 32.622944, 49.979321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.278122, 32.613907, 50.014805>,  <34.039131, 32.608486, 50.036095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.278122, 32.613907, 50.014805>,  <34.676441, 32.622944, 49.979321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278122, 32.613907, 50.014805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087596, 0.046317, 0.995079,
		-0.026586, 0.998671, -0.044144,
		-0.995801, -0.022588, 0.088711,
		33.979382, 32.607132, 50.041420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654293, 33.095440, 50.422688>,  <34.676441, 32.622944, 49.979321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654293, 33.095440, 50.422688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.302341, 32.905361, 50.421394>,  <34.091171, 32.791313, 50.420616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.302341, 32.905361, 50.421394>,  <34.654293, 33.095440, 50.422688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302341, 32.905361, 50.421394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023764, 0.037196, 0.999025,
		-0.474609, 0.879095, -0.044020,
		-0.879876, -0.475192, -0.003237,
		34.038380, 32.762802, 50.420422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094826, 33.492382, 50.861774>,  <34.654293, 33.095440, 50.422688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094826, 33.492382, 50.861774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.934689, 33.126926, 50.833492>,  <33.838608, 32.907654, 50.816525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.934689, 33.126926, 50.833492>,  <34.094826, 33.492382, 50.861774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934689, 33.126926, 50.833492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150717, -0.010456, 0.988522,
		-0.903888, 0.406400, -0.133514,
		-0.400339, -0.913636, -0.070702,
		33.814587, 32.852837, 50.812283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465302, 33.591774, 51.113045>,  <34.094826, 33.492382, 50.861774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465302, 33.591774, 51.113045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.564041, 33.205936, 51.150181>,  <33.623287, 32.974434, 51.172462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.564041, 33.205936, 51.150181>,  <33.465302, 33.591774, 51.113045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564041, 33.205936, 51.150181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087785, 0.073148, 0.993450,
		-0.965069, -0.253384, -0.066620,
		0.246851, -0.964596, 0.092836,
		33.638096, 32.916557, 51.178032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940197, 33.273346, 51.466335>,  <33.465302, 33.591774, 51.113045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940197, 33.273346, 51.466335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.240582, 33.011631, 51.502037>,  <33.420811, 32.854603, 51.523457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.240582, 33.011631, 51.502037>,  <32.940197, 33.273346, 51.466335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240582, 33.011631, 51.502037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133638, -0.018214, 0.990863,
		-0.646682, -0.756028, -0.101115,
		0.750962, -0.654286, 0.089255,
		33.465870, 32.815346, 51.528812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650455, 32.798485, 51.773724>,  <32.940197, 33.273346, 51.466335>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650455, 32.798485, 51.773724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.044991, 32.772961, 51.834476>,  <33.281712, 32.757645, 51.870930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.044991, 32.772961, 51.834476>,  <32.650455, 32.798485, 51.773724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044991, 32.772961, 51.834476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154764, -0.042937, 0.987018,
		-0.056481, -0.997037, -0.052229,
		0.986336, -0.063831, 0.151880,
		33.340893, 32.753819, 51.880039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738388, 32.260281, 52.273804>,  <32.650455, 32.798485, 51.773724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738388, 32.260281, 52.273804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.060204, 32.496380, 52.300110>,  <33.253292, 32.638039, 52.315895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.060204, 32.496380, 52.300110>,  <32.738388, 32.260281, 52.273804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060204, 32.496380, 52.300110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014141, -0.129745, 0.991446,
		0.593729, -0.796730, -0.112732,
		0.804541, 0.590244, 0.065767,
		33.301567, 32.673454, 52.319839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070766, 32.039379, 52.790459>,  <32.738388, 32.260281, 52.273804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070766, 32.039379, 52.790459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.249004, 32.396145, 52.759659>,  <33.355949, 32.610203, 52.741177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.249004, 32.396145, 52.759659>,  <33.070766, 32.039379, 52.790459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249004, 32.396145, 52.759659> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013447, 0.079337, 0.996757,
		0.895132, -0.445189, 0.023359,
		0.445598, 0.891915, -0.077004,
		33.382683, 32.663719, 52.736557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583870, 32.009579, 53.206230>,  <33.070766, 32.039379, 52.790459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583870, 32.009579, 53.206230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.531860, 32.404903, 53.174393>,  <33.500652, 32.642097, 53.155289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.531860, 32.404903, 53.174393>,  <33.583870, 32.009579, 53.206230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531860, 32.404903, 53.174393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032980, 0.084543, 0.995874,
		0.990962, 0.126865, -0.043587,
		-0.130026, 0.988311, -0.079595,
		33.492851, 32.701397, 53.150513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098637, 32.254848, 53.658562>,  <33.583870, 32.009579, 53.206230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098637, 32.254848, 53.658562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.867298, 32.575043, 53.595650>,  <33.728497, 32.767159, 53.557903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.867298, 32.575043, 53.595650>,  <34.098637, 32.254848, 53.658562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867298, 32.575043, 53.595650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129486, 0.280425, 0.951102,
		0.805450, 0.529700, -0.265835,
		-0.578346, 0.800487, -0.157279,
		33.693794, 32.815189, 53.548466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505356, 32.874397, 53.780720>,  <34.098637, 32.254848, 53.658562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505356, 32.874397, 53.780720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.124386, 32.983097, 53.835915>,  <33.895805, 33.048317, 53.869034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.124386, 32.983097, 53.835915>,  <34.505356, 32.874397, 53.780720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124386, 32.983097, 53.835915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146729, 0.012008, 0.989104,
		0.267128, 0.962294, -0.051310,
		-0.952425, 0.271746, 0.137989,
		33.838657, 33.064621, 53.877312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538475, 33.425549, 54.343372>,  <34.505356, 32.874397, 53.780720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538475, 33.425549, 54.343372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.146542, 33.346931, 54.328979>,  <33.911381, 33.299759, 54.320343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.146542, 33.346931, 54.328979>,  <34.538475, 33.425549, 54.343372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146542, 33.346931, 54.328979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067784, 0.157567, 0.985179,
		-0.187963, 0.967752, -0.167712,
		-0.979834, -0.196545, -0.035981,
		33.852592, 33.287968, 54.318184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186253, 33.995789, 54.630756>,  <34.538475, 33.425549, 54.343372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186253, 33.995789, 54.630756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.972919, 33.660503, 54.676273>,  <33.844921, 33.459332, 54.703583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.972919, 33.660503, 54.676273>,  <34.186253, 33.995789, 54.630756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972919, 33.660503, 54.676273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160647, 0.232441, 0.959252,
		-0.830513, 0.493318, -0.258625,
		-0.533331, -0.838218, 0.113795,
		33.812920, 33.409039, 54.710411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837910, 34.220608, 54.431149>,  <34.186253, 33.995789, 54.630756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837910, 34.220608, 54.431149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.994061, 34.583256, 54.367081>,  <35.087749, 34.800842, 54.328640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.994061, 34.583256, 54.367081>,  <34.837910, 34.220608, 54.431149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994061, 34.583256, 54.367081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017701, -0.181334, -0.983262,
		-0.920486, 0.381006, -0.086836,
		0.390375, 0.906616, -0.160172,
		35.111172, 34.855240, 54.319031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531361, 34.568932, 53.972637>,  <34.837910, 34.220608, 54.431149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531361, 34.568932, 53.972637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.884384, 34.756001, 53.953163>,  <35.096199, 34.868244, 53.941479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.884384, 34.756001, 53.953163>,  <34.531361, 34.568932, 53.972637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884384, 34.756001, 53.953163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046426, -0.189705, -0.980743,
		-0.467904, 0.863303, -0.189138,
		0.882559, 0.467675, -0.048684,
		35.149151, 34.896301, 53.938557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453629, 34.881386, 53.286545>,  <34.531361, 34.568932, 53.972637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453629, 34.881386, 53.286545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.843140, 34.900146, 53.375595>,  <35.076847, 34.911404, 53.429024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.843140, 34.900146, 53.375595>,  <34.453629, 34.881386, 53.286545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843140, 34.900146, 53.375595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225988, -0.086324, -0.970298,
		-0.026295, 0.995162, -0.094660,
		0.973775, 0.046906, 0.222625,
		35.135273, 34.914219, 53.442383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743584, 35.521996, 52.926941>,  <34.453629, 34.881386, 53.286545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743584, 35.521996, 52.926941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.057594, 35.283539, 52.994293>,  <35.246002, 35.140465, 53.034706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.057594, 35.283539, 52.994293>,  <34.743584, 35.521996, 52.926941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057594, 35.283539, 52.994293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289675, 0.113007, -0.950430,
		0.547560, 0.794889, 0.261400,
		0.785026, -0.596138, 0.168381,
		35.293102, 35.104698, 53.044807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328999, 35.822121, 52.690334>,  <34.743584, 35.521996, 52.926941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328999, 35.822121, 52.690334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.445126, 35.439487, 52.679955>,  <35.514801, 35.209908, 52.673725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.445126, 35.439487, 52.679955>,  <35.328999, 35.822121, 52.690334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445126, 35.439487, 52.679955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319435, 0.122441, -0.939664,
		0.902041, 0.264509, 0.341112,
		0.290316, -0.956579, -0.025953,
		35.532219, 35.152515, 52.672169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928230, 35.821594, 52.366917>,  <35.328999, 35.822121, 52.690334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928230, 35.821594, 52.366917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.815098, 35.440773, 52.320278>,  <35.747219, 35.212280, 52.292297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.815098, 35.440773, 52.320278>,  <35.928230, 35.821594, 52.366917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815098, 35.440773, 52.320278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156905, 0.073994, -0.984838,
		0.946249, -0.296836, 0.128455,
		-0.282830, -0.952057, -0.116592,
		35.730247, 35.155155, 52.285301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417591, 35.526997, 51.855549>,  <35.928230, 35.821594, 52.366917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417591, 35.526997, 51.855549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.101093, 35.282513, 51.848026>,  <35.911194, 35.135822, 51.843513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.101093, 35.282513, 51.848026>,  <36.417591, 35.526997, 51.855549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101093, 35.282513, 51.848026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010213, 0.017539, -0.999794,
		0.611409, -0.791278, -0.007636,
		-0.791248, -0.611205, -0.018805,
		35.863720, 35.099152, 51.842384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544689, 34.861046, 51.561661>,  <36.417591, 35.526997, 51.855549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544689, 34.861046, 51.561661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.161949, 34.952717, 51.490204>,  <35.932304, 35.007721, 51.447330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.161949, 34.952717, 51.490204>,  <36.544689, 34.861046, 51.561661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161949, 34.952717, 51.490204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181651, -0.008087, -0.983330,
		-0.226807, -0.973350, -0.033893,
		-0.956850, 0.229183, -0.178644,
		35.874893, 35.021473, 51.436611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166500, 34.444870, 51.250225>,  <36.544689, 34.861046, 51.561661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166500, 34.444870, 51.250225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.253731, 34.825645, 51.336246>,  <37.306068, 35.054111, 51.387859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.253731, 34.825645, 51.336246>,  <37.166500, 34.444870, 51.250225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253731, 34.825645, 51.336246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021220, -0.224931, 0.974143,
		0.975701, -0.207875, -0.069253,
		0.218078, 0.951942, 0.215054,
		37.319153, 35.111229, 51.400764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542347, 34.403938, 51.847816>,  <37.166500, 34.444870, 51.250225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542347, 34.403938, 51.847816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.542248, 34.803349, 51.826099>,  <37.542187, 35.042995, 51.813068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.542248, 34.803349, 51.826099>,  <37.542347, 34.403938, 51.847816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542248, 34.803349, 51.826099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277685, 0.052229, 0.959251,
		0.960672, -0.014836, -0.277289,
		-0.000251, 0.998525, -0.054295,
		37.542171, 35.102905, 51.809811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234329, 34.676838, 52.022514>,  <37.542347, 34.403938, 51.847816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234329, 34.676838, 52.022514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.974174, 34.972698, 52.091702>,  <37.818081, 35.150215, 52.133213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.974174, 34.972698, 52.091702>,  <38.234329, 34.676838, 52.022514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974174, 34.972698, 52.091702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462080, 0.204514, 0.862935,
		0.602895, 0.641164, -0.474790,
		-0.650384, 0.739650, 0.172968,
		37.779060, 35.194592, 52.143593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517162, 35.204231, 52.238647>,  <38.234329, 34.676838, 52.022514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517162, 35.204231, 52.238647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.149956, 35.285328, 52.374966>,  <37.929630, 35.333984, 52.456757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.149956, 35.285328, 52.374966>,  <38.517162, 35.204231, 52.238647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149956, 35.285328, 52.374966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386353, 0.263752, 0.883836,
		0.089301, 0.943044, -0.320457,
		-0.918018, 0.202737, 0.340795,
		37.874550, 35.346149, 52.477203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587818, 35.839306, 52.442780>,  <38.517162, 35.204231, 52.238647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587818, 35.839306, 52.442780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.272530, 35.687527, 52.636570>,  <38.083355, 35.596458, 52.752846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.272530, 35.687527, 52.636570>,  <38.587818, 35.839306, 52.442780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272530, 35.687527, 52.636570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379913, 0.319284, 0.868173,
		-0.484116, 0.868374, -0.107508,
		-0.788225, -0.379452, 0.484477,
		38.036060, 35.573692, 52.781914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516987, 36.399204, 53.067768>,  <38.587818, 35.839306, 52.442780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516987, 36.399204, 53.067768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.324539, 36.056736, 53.143131>,  <38.209068, 35.851257, 53.188351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.324539, 36.056736, 53.143131>,  <38.516987, 36.399204, 53.067768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324539, 36.056736, 53.143131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305879, 0.037465, 0.951333,
		-0.821560, 0.515337, 0.243858,
		-0.481121, -0.856168, 0.188411,
		38.180202, 35.799885, 53.199654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960274, 36.573769, 53.584637>,  <38.516987, 36.399204, 53.067768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960274, 36.573769, 53.584637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.049007, 36.185184, 53.618233>,  <38.102245, 35.952034, 53.638390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.049007, 36.185184, 53.618233>,  <37.960274, 36.573769, 53.584637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049007, 36.185184, 53.618233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298989, 0.149755, 0.942433,
		-0.928115, -0.183947, 0.323677,
		0.221830, -0.971461, 0.083991,
		38.115555, 35.893745, 53.643429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798771, 36.477287, 54.244427>,  <37.960274, 36.573769, 53.584637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798771, 36.477287, 54.244427> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.042706, 36.179039, 54.136978>,  <38.189068, 36.000092, 54.072510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.042706, 36.179039, 54.136978>,  <37.798771, 36.477287, 54.244427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042706, 36.179039, 54.136978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430324, 0.026906, 0.902273,
		-0.665523, -0.665832, 0.337266,
		0.609837, -0.745617, -0.268617,
		38.225658, 35.955353, 54.056393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.936287, 35.751602, 37.988461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204418, 35.543312, 38.199932>,  <37.365299, 35.418339, 38.326817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204418, 35.543312, 38.199932>,  <36.936287, 35.751602, 37.988461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204418, 35.543312, 38.199932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452034, 0.278462, 0.847422,
		-0.588493, -0.807033, -0.048725,
		0.670330, -0.520727, 0.528679,
		37.405518, 35.387093, 38.358536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660900, 35.509335, 38.622936>,  <36.936287, 35.751602, 37.988461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660900, 35.509335, 38.622936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043694, 35.453239, 38.724537>,  <37.273369, 35.419582, 38.785500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.043694, 35.453239, 38.724537>,  <36.660900, 35.509335, 38.622936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043694, 35.453239, 38.724537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198038, 0.324101, 0.925062,
		-0.212049, -0.935571, 0.282387,
		0.956983, -0.140235, 0.254004,
		37.330788, 35.411167, 38.800739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649662, 35.125908, 39.138798>,  <36.660900, 35.509335, 38.622936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649662, 35.125908, 39.138798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995052, 35.323814, 39.178024>,  <37.202286, 35.442558, 39.201561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995052, 35.323814, 39.178024>,  <36.649662, 35.125908, 39.138798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995052, 35.323814, 39.178024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173680, 0.109112, 0.978739,
		0.473543, -0.862151, 0.180146,
		0.863477, 0.494763, 0.098069,
		37.254097, 35.472244, 39.207443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102398, 34.784718, 39.591038>,  <36.649662, 35.125908, 39.138798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102398, 34.784718, 39.591038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213367, 35.168770, 39.577236>,  <37.279949, 35.399200, 39.568954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213367, 35.168770, 39.577236>,  <37.102398, 34.784718, 39.591038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213367, 35.168770, 39.577236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095245, 0.063225, 0.993444,
		0.956014, -0.272321, 0.108988,
		0.277427, 0.960127, -0.034507,
		37.296597, 35.456806, 39.566883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437229, 34.876343, 40.208527>,  <37.102398, 34.784718, 39.591038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437229, 34.876343, 40.208527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362492, 35.255859, 40.106636>,  <37.317650, 35.483570, 40.045502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362492, 35.255859, 40.106636>,  <37.437229, 34.876343, 40.208527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362492, 35.255859, 40.106636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095348, 0.240556, 0.965941,
		0.977752, 0.204764, 0.045520,
		-0.186840, 0.948791, -0.254728,
		37.306438, 35.540497, 40.030216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930141, 35.271996, 40.640480>,  <37.437229, 34.876343, 40.208527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930141, 35.271996, 40.640480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637001, 35.518639, 40.525429>,  <37.461117, 35.666626, 40.456398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637001, 35.518639, 40.525429>,  <37.930141, 35.271996, 40.640480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637001, 35.518639, 40.525429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070925, 0.351197, 0.933611,
		0.676685, 0.704595, -0.213641,
		-0.732848, 0.616609, -0.287624,
		37.417145, 35.703621, 40.439140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078419, 35.827690, 40.974377>,  <37.930141, 35.271996, 40.640480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078419, 35.827690, 40.974377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694271, 35.910164, 40.899357>,  <37.463783, 35.959648, 40.854343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694271, 35.910164, 40.899357>,  <38.078419, 35.827690, 40.974377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694271, 35.910164, 40.899357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122358, 0.292723, 0.948336,
		0.250430, 0.933704, -0.255895,
		-0.960371, 0.206181, -0.187553,
		37.406158, 35.972019, 40.843090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945915, 36.523537, 41.156029>,  <38.078419, 35.827690, 40.974377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945915, 36.523537, 41.156029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611847, 36.303905, 41.168682>,  <37.411404, 36.172127, 41.176273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611847, 36.303905, 41.168682>,  <37.945915, 36.523537, 41.156029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611847, 36.303905, 41.168682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121555, 0.240373, 0.963040,
		-0.536383, 0.800462, -0.267496,
		-0.835175, -0.549074, 0.031632,
		37.361294, 36.139183, 41.178173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543491, 36.962837, 41.419262>,  <37.945915, 36.523537, 41.156029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543491, 36.962837, 41.419262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350559, 36.616817, 41.474464>,  <37.234802, 36.409206, 41.507587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350559, 36.616817, 41.474464>,  <37.543491, 36.962837, 41.419262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350559, 36.616817, 41.474464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199022, 0.261640, 0.944423,
		-0.853084, 0.428053, -0.298360,
		-0.482326, -0.865052, 0.138009,
		37.205860, 36.357304, 41.515865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897537, 37.148518, 41.827137>,  <37.543491, 36.962837, 41.419262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897537, 37.148518, 41.827137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940807, 36.753799, 41.875347>,  <36.966770, 36.516968, 41.904274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940807, 36.753799, 41.875347>,  <36.897537, 37.148518, 41.827137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940807, 36.753799, 41.875347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010356, 0.120112, 0.992706,
		-0.994078, -0.108631, 0.002774,
		0.108172, -0.986799, 0.120526,
		36.973259, 36.457760, 41.911507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352509, 36.969238, 42.323978>,  <36.897537, 37.148518, 41.827137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352509, 36.969238, 42.323978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630207, 36.681347, 42.325310>,  <36.796825, 36.508610, 42.326107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630207, 36.681347, 42.325310>,  <36.352509, 36.969238, 42.323978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630207, 36.681347, 42.325310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108755, 0.109471, 0.988023,
		-0.711475, -0.685568, 0.154274,
		0.694245, -0.719731, 0.003327,
		36.838482, 36.465427, 42.326309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184441, 36.589264, 42.865147>,  <36.352509, 36.969238, 42.323978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184441, 36.589264, 42.865147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570076, 36.489780, 42.827885>,  <36.801456, 36.430092, 42.805527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.570076, 36.489780, 42.827885>,  <36.184441, 36.589264, 42.865147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570076, 36.489780, 42.827885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106392, 0.040282, 0.993508,
		-0.243340, -0.967741, 0.065295,
		0.964089, -0.248707, -0.093157,
		36.859303, 36.415169, 42.799938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786575, 36.032921, 42.735405>,  <36.184441, 36.589264, 42.865147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786575, 36.032921, 42.735405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409847, 35.946045, 42.838020>,  <35.183811, 35.893921, 42.899590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409847, 35.946045, 42.838020>,  <35.786575, 36.032921, 42.735405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409847, 35.946045, 42.838020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226509, -0.153817, -0.961787,
		0.248348, -0.963935, 0.095672,
		-0.941816, -0.217188, 0.256540,
		35.127304, 35.880890, 42.914982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584717, 35.867062, 42.063465>,  <35.786575, 36.032921, 42.735405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584717, 35.867062, 42.063465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258675, 35.875168, 42.295044>,  <35.063049, 35.880032, 42.433990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258675, 35.875168, 42.295044>,  <35.584717, 35.867062, 42.063465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258675, 35.875168, 42.295044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579291, -0.021296, -0.814842,
		-0.004170, -0.999568, 0.029089,
		-0.815110, 0.020249, 0.578952,
		35.014141, 35.881248, 42.468731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119556, 35.227394, 41.942989>,  <35.584717, 35.867062, 42.063465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119556, 35.227394, 41.942989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904629, 35.537151, 42.076614>,  <34.775673, 35.723007, 42.156792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904629, 35.537151, 42.076614>,  <35.119556, 35.227394, 41.942989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904629, 35.537151, 42.076614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499619, 0.026847, -0.865829,
		-0.679463, -0.632132, 0.372477,
		-0.537318, 0.774396, 0.334067,
		34.743435, 35.769470, 42.176834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593555, 35.085236, 41.673500>,  <35.119556, 35.227394, 41.942989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593555, 35.085236, 41.673500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530632, 35.464550, 41.783775>,  <34.492878, 35.692139, 41.849941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530632, 35.464550, 41.783775>,  <34.593555, 35.085236, 41.673500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530632, 35.464550, 41.783775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574796, 0.139087, -0.806390,
		-0.803035, -0.285313, 0.523193,
		-0.157304, 0.948288, 0.275689,
		34.483440, 35.749035, 41.866482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808529, 35.199760, 41.630497>,  <34.593555, 35.085236, 41.673500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808529, 35.199760, 41.630497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988132, 35.554283, 41.585144>,  <34.095894, 35.766994, 41.557934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988132, 35.554283, 41.585144>,  <33.808529, 35.199760, 41.630497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988132, 35.554283, 41.585144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609033, 0.210728, -0.764639,
		-0.653811, 0.412382, 0.634407,
		0.449011, 0.886304, -0.113378,
		34.122837, 35.820175, 41.551132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301796, 35.621925, 41.331726>,  <33.808529, 35.199760, 41.630497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301796, 35.621925, 41.331726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629135, 35.844830, 41.275490>,  <33.825539, 35.978573, 41.241749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629135, 35.844830, 41.275490>,  <33.301796, 35.621925, 41.331726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629135, 35.844830, 41.275490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450095, 0.469305, -0.759715,
		-0.357378, 0.684992, 0.634876,
		0.818349, 0.557260, -0.140592,
		33.874641, 36.012009, 41.233311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133381, 36.382179, 41.230385>,  <33.301796, 35.621925, 41.331726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133381, 36.382179, 41.230385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472134, 36.307331, 41.031277>,  <33.675385, 36.262421, 40.911812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472134, 36.307331, 41.031277>,  <33.133381, 36.382179, 41.230385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472134, 36.307331, 41.031277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389838, 0.418185, -0.820456,
		0.361686, 0.888879, 0.281206,
		0.846882, -0.187123, -0.497771,
		33.726200, 36.251194, 40.881947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245544, 37.021866, 40.816410>,  <33.133381, 36.382179, 41.230385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245544, 37.021866, 40.816410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481033, 36.738537, 40.660618>,  <33.622326, 36.568542, 40.567142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481033, 36.738537, 40.660618>,  <33.245544, 37.021866, 40.816410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481033, 36.738537, 40.660618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119022, 0.400620, -0.908481,
		0.799527, 0.581197, 0.151547,
		0.588719, -0.708318, -0.389482,
		33.657650, 36.526043, 40.543774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523460, 37.358521, 40.290550>,  <33.245544, 37.021866, 40.816410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523460, 37.358521, 40.290550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546352, 36.966496, 40.214439>,  <33.560089, 36.731281, 40.168774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546352, 36.966496, 40.214439>,  <33.523460, 37.358521, 40.290550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546352, 36.966496, 40.214439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199277, 0.175537, -0.964093,
		0.978270, 0.093092, -0.185258,
		0.057230, -0.980061, -0.190274,
		33.563522, 36.672478, 40.157356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870293, 37.235519, 39.701839>,  <33.523460, 37.358521, 40.290550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870293, 37.235519, 39.701839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705372, 36.872028, 39.727840>,  <33.606419, 36.653934, 39.743439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705372, 36.872028, 39.727840>,  <33.870293, 37.235519, 39.701839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705372, 36.872028, 39.727840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285775, 0.061256, -0.956337,
		0.865068, -0.412871, -0.284947,
		-0.412298, -0.908727, 0.064998,
		33.581684, 36.599411, 39.747341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063278, 36.753624, 39.123146>,  <33.870293, 37.235519, 39.701839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063278, 36.753624, 39.123146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731567, 36.592739, 39.278336>,  <33.532539, 36.496208, 39.371449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731567, 36.592739, 39.278336>,  <34.063278, 36.753624, 39.123146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731567, 36.592739, 39.278336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264193, -0.329609, -0.906399,
		0.492444, -0.854157, 0.167076,
		-0.829277, -0.402211, 0.387977,
		33.482784, 36.472076, 39.394730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082878, 36.154919, 38.769516>,  <34.063278, 36.753624, 39.123146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082878, 36.154919, 38.769516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711197, 36.173710, 38.916142>,  <33.488186, 36.184986, 39.004116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711197, 36.173710, 38.916142>,  <34.082878, 36.154919, 38.769516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711197, 36.173710, 38.916142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344600, -0.468486, -0.813494,
		0.133509, -0.882221, 0.451510,
		-0.929207, 0.046982, 0.366561,
		33.432434, 36.187805, 39.026108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752060, 35.537220, 38.452888>,  <34.082878, 36.154919, 38.769516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752060, 35.537220, 38.452888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465710, 35.790802, 38.569939>,  <33.293900, 35.942951, 38.640171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465710, 35.790802, 38.569939>,  <33.752060, 35.537220, 38.452888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465710, 35.790802, 38.569939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571656, -0.291495, -0.766968,
		-0.400924, -0.716332, 0.571076,
		-0.715870, 0.633955, 0.292628,
		33.250950, 35.980988, 38.657726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121490, 35.237373, 38.294411>,  <33.752060, 35.537220, 38.452888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121490, 35.237373, 38.294411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026760, 35.624092, 38.332817>,  <32.969921, 35.856121, 38.355862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026760, 35.624092, 38.332817>,  <33.121490, 35.237373, 38.294411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026760, 35.624092, 38.332817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538737, -0.048440, -0.841080,
		-0.808502, -0.250920, 0.532320,
		-0.236829, 0.966795, 0.096016,
		32.955711, 35.914131, 38.361622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195053, 34.474583, 38.494450>,  <33.121490, 35.237373, 38.294411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195053, 34.474583, 38.494450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058842, 34.108242, 38.579536>,  <32.977116, 33.888435, 38.630589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058842, 34.108242, 38.579536>,  <33.195053, 34.474583, 38.494450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058842, 34.108242, 38.579536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378627, 0.340661, 0.860576,
		-0.860629, 0.212508, -0.462772,
		-0.340528, -0.915855, 0.212722,
		32.956684, 33.833485, 38.643353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559269, 34.560909, 38.785866>,  <33.195053, 34.474583, 38.494450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559269, 34.560909, 38.785866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700058, 34.216934, 38.933712>,  <32.784531, 34.010548, 39.022419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700058, 34.216934, 38.933712>,  <32.559269, 34.560909, 38.785866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700058, 34.216934, 38.933712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502040, 0.159840, 0.849945,
		-0.789983, -0.484719, -0.375466,
		0.351970, -0.859941, 0.369620,
		32.805649, 33.958950, 39.044598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972961, 34.156116, 39.217300>,  <32.559269, 34.560909, 38.785866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972961, 34.156116, 39.217300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301579, 33.978275, 39.360073>,  <32.498749, 33.871571, 39.445736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301579, 33.978275, 39.360073>,  <31.972961, 34.156116, 39.217300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301579, 33.978275, 39.360073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497007, -0.251694, 0.830442,
		-0.279386, -0.859636, -0.427750,
		0.821540, -0.444609, 0.356925,
		32.548042, 33.844894, 39.467152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748632, 33.741947, 39.778675>,  <31.972961, 34.156116, 39.217300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748632, 33.741947, 39.778675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143646, 33.733955, 39.841122>,  <32.380653, 33.729160, 39.878590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143646, 33.733955, 39.841122>,  <31.748632, 33.741947, 39.778675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143646, 33.733955, 39.841122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154934, -0.298022, 0.941902,
		0.027709, -0.954350, -0.297403,
		0.987536, -0.019979, 0.156119,
		32.439907, 33.727962, 39.887959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878448, 32.998749, 40.053009>,  <31.748632, 33.741947, 39.778675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878448, 32.998749, 40.053009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137100, 33.282185, 40.165985>,  <32.292290, 33.452248, 40.233768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137100, 33.282185, 40.165985>,  <31.878448, 32.998749, 40.053009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137100, 33.282185, 40.165985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117745, -0.273107, 0.954751,
		0.753663, -0.650625, -0.093166,
		0.646629, 0.708590, 0.282438,
		32.331089, 33.494762, 40.250717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239025, 32.687523, 40.504829>,  <31.878448, 32.998749, 40.053009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239025, 32.687523, 40.504829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307144, 33.076557, 40.568180>,  <32.348015, 33.309978, 40.606190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307144, 33.076557, 40.568180>,  <32.239025, 32.687523, 40.504829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307144, 33.076557, 40.568180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096599, -0.176428, 0.979562,
		0.980647, -0.151516, -0.123995,
		0.170295, 0.972582, 0.158377,
		32.358234, 33.368332, 40.615692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721828, 32.715458, 40.945801>,  <32.239025, 32.687523, 40.504829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721828, 32.715458, 40.945801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621475, 33.100090, 40.990383>,  <32.561264, 33.330868, 41.017132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621475, 33.100090, 40.990383>,  <32.721828, 32.715458, 40.945801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621475, 33.100090, 40.990383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056507, -0.129486, 0.989970,
		0.966368, 0.242065, 0.086821,
		-0.250879, 0.961581, 0.111453,
		32.546211, 33.388565, 41.023819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278999, 33.074223, 41.317810>,  <32.721828, 32.715458, 40.945801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278999, 33.074223, 41.317810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913845, 33.232010, 41.359840>,  <32.694752, 33.326683, 41.385059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913845, 33.232010, 41.359840>,  <33.278999, 33.074223, 41.317810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913845, 33.232010, 41.359840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091914, -0.052177, 0.994399,
		0.397739, 0.917428, 0.011375,
		-0.912883, 0.394466, 0.105077,
		32.639980, 33.350349, 41.391365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401363, 33.509838, 41.869690>,  <33.278999, 33.074223, 41.317810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401363, 33.509838, 41.869690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004578, 33.459431, 41.874283>,  <32.766506, 33.429184, 41.877041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004578, 33.459431, 41.874283>,  <33.401363, 33.509838, 41.869690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004578, 33.459431, 41.874283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026557, -0.118568, 0.992591,
		-0.123725, 0.984916, 0.120962,
		-0.991961, -0.126020, 0.011487,
		32.706989, 33.421623, 41.877728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184269, 33.825825, 42.478851>,  <33.401363, 33.509838, 41.869690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184269, 33.825825, 42.478851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861820, 33.606464, 42.389931>,  <32.668350, 33.474850, 42.336578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861820, 33.606464, 42.389931>,  <33.184269, 33.825825, 42.478851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861820, 33.606464, 42.389931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026339, -0.342040, 0.939316,
		-0.591158, 0.763062, 0.261283,
		-0.806126, -0.548402, -0.222298,
		32.619984, 33.441944, 42.323242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731899, 34.071659, 42.940994>,  <33.184269, 33.825825, 42.478851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731899, 34.071659, 42.940994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623066, 33.706455, 42.819420>,  <32.557766, 33.487331, 42.746475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623066, 33.706455, 42.819420>,  <32.731899, 34.071659, 42.940994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623066, 33.706455, 42.819420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047571, -0.328225, 0.943401,
		-0.961097, 0.242227, 0.132738,
		-0.272085, -0.913014, -0.303933,
		32.541439, 33.432552, 42.728241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241837, 33.894512, 43.380310>,  <32.731899, 34.071659, 42.940994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241837, 33.894512, 43.380310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355873, 33.543461, 43.226170>,  <32.424297, 33.332832, 43.133686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355873, 33.543461, 43.226170>,  <32.241837, 33.894512, 43.380310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355873, 33.543461, 43.226170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065217, -0.383344, 0.921300,
		-0.956278, -0.287788, -0.052053,
		0.285093, -0.877625, -0.385352,
		32.441402, 33.280174, 43.110565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813841, 33.433094, 43.605648>,  <32.241837, 33.894512, 43.380310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813841, 33.433094, 43.605648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146130, 33.230267, 43.513752>,  <32.345505, 33.108570, 43.458614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146130, 33.230267, 43.513752>,  <31.813841, 33.433094, 43.605648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146130, 33.230267, 43.513752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061383, -0.326739, 0.943119,
		-0.553294, -0.797572, -0.240303,
		0.830721, -0.507071, -0.229740,
		32.395348, 33.078144, 43.444832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674458, 32.844402, 43.948246>,  <31.813841, 33.433094, 43.605648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674458, 32.844402, 43.948246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069813, 32.843407, 43.887470>,  <32.307026, 32.842812, 43.851006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069813, 32.843407, 43.887470>,  <31.674458, 32.844402, 43.948246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069813, 32.843407, 43.887470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143940, -0.305233, 0.941336,
		-0.048718, -0.952274, -0.301330,
		0.988386, -0.002487, -0.151941,
		32.366329, 32.842659, 43.841888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864185, 32.146626, 44.259968>,  <31.674458, 32.844402, 43.948246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864185, 32.146626, 44.259968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179207, 32.392391, 44.240971>,  <32.368217, 32.539852, 44.229572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.179207, 32.392391, 44.240971>,  <31.864185, 32.146626, 44.259968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179207, 32.392391, 44.240971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261339, -0.263196, 0.928671,
		0.558089, -0.743789, -0.367851,
		0.787552, 0.614415, -0.047494,
		32.415474, 32.576717, 44.226723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226242, 31.961220, 44.883987>,  <31.864185, 32.146626, 44.259968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226242, 31.961220, 44.883987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416790, 32.298695, 44.784981>,  <32.531120, 32.501179, 44.725574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416790, 32.298695, 44.784981>,  <32.226242, 31.961220, 44.883987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416790, 32.298695, 44.784981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386214, 0.052115, 0.920936,
		0.789881, -0.534299, -0.301018,
		0.476368, 0.843687, -0.247518,
		32.559700, 32.551800, 44.710724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935471, 31.931574, 45.040779>,  <32.226242, 31.961220, 44.883987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935471, 31.931574, 45.040779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895081, 32.329514, 45.044384>,  <32.870846, 32.568275, 45.046547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895081, 32.329514, 45.044384>,  <32.935471, 31.931574, 45.040779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895081, 32.329514, 45.044384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328199, 0.024760, 0.944284,
		0.939196, 0.098306, -0.329008,
		-0.100975, 0.994848, 0.009009,
		32.864788, 32.627968, 45.047089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450787, 32.086628, 45.395226>,  <32.935471, 31.931574, 45.040779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450787, 32.086628, 45.395226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258846, 32.437229, 45.410625>,  <33.143681, 32.647591, 45.419865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258846, 32.437229, 45.410625>,  <33.450787, 32.086628, 45.395226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258846, 32.437229, 45.410625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368995, 0.161809, 0.915238,
		0.795982, 0.453383, -0.401070,
		-0.479850, 0.876505, 0.038499,
		33.114891, 32.700180, 45.422176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906719, 32.692497, 45.491791>,  <33.450787, 32.086628, 45.395226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906719, 32.692497, 45.491791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547470, 32.769238, 45.650066>,  <33.331921, 32.815281, 45.745033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547470, 32.769238, 45.650066>,  <33.906719, 32.692497, 45.491791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547470, 32.769238, 45.650066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428940, 0.183920, 0.884412,
		0.096901, 0.964036, -0.247476,
		-0.898121, 0.191853, 0.395692,
		33.278034, 32.826794, 45.768772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034767, 33.318665, 45.816750>,  <33.906719, 32.692497, 45.491791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034767, 33.318665, 45.816750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705109, 33.165989, 45.984131>,  <33.507313, 33.074383, 46.084560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705109, 33.165989, 45.984131>,  <34.034767, 33.318665, 45.816750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705109, 33.165989, 45.984131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308103, 0.317811, 0.896699,
		-0.475247, 0.867935, -0.144322,
		-0.824143, -0.381688, 0.418452,
		33.457867, 33.051483, 46.109665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798645, 33.799656, 46.281990>,  <34.034767, 33.318665, 45.816750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798645, 33.799656, 46.281990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625633, 33.462006, 46.408710>,  <33.521824, 33.259415, 46.484745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625633, 33.462006, 46.408710>,  <33.798645, 33.799656, 46.281990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625633, 33.462006, 46.408710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160526, 0.273662, 0.948336,
		-0.887213, 0.461041, 0.017137,
		-0.432532, -0.844127, 0.316806,
		33.495872, 33.208767, 46.503754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384037, 34.005836, 46.873543>,  <33.798645, 33.799656, 46.281990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384037, 34.005836, 46.873543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435383, 33.611778, 46.919182>,  <33.466190, 33.375343, 46.946564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435383, 33.611778, 46.919182>,  <33.384037, 34.005836, 46.873543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435383, 33.611778, 46.919182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233876, 0.141875, 0.961860,
		-0.963756, -0.096781, 0.248612,
		0.128362, -0.985142, 0.114098,
		33.473892, 33.316235, 46.953411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192070, 33.997448, 47.534752>,  <33.384037, 34.005836, 46.873543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192070, 33.997448, 47.534752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344608, 33.632896, 47.472832>,  <33.436131, 33.414165, 47.435680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344608, 33.632896, 47.472832>,  <33.192070, 33.997448, 47.534752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344608, 33.632896, 47.472832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186126, -0.088331, 0.978547,
		-0.905503, -0.401975, 0.135947,
		0.381343, -0.911380, -0.154802,
		33.459011, 33.359482, 47.426392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791931, 33.461048, 47.844322>,  <33.192070, 33.997448, 47.534752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791931, 33.461048, 47.844322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161064, 33.314457, 47.796860>,  <33.382545, 33.226501, 47.768383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161064, 33.314457, 47.796860>,  <32.791931, 33.461048, 47.844322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161064, 33.314457, 47.796860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028815, -0.241495, 0.969974,
		-0.384126, -0.898541, -0.212299,
		0.922831, -0.366475, -0.118656,
		33.437912, 33.204514, 47.761265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701237, 32.867844, 48.112404>,  <32.791931, 33.461048, 47.844322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701237, 32.867844, 48.112404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096569, 32.928699, 48.109364>,  <33.333767, 32.965214, 48.107540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096569, 32.928699, 48.109364>,  <32.701237, 32.867844, 48.112404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096569, 32.928699, 48.109364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062823, -0.361645, 0.930197,
		0.138767, -0.919819, -0.366983,
		0.988330, 0.152136, -0.007602,
		33.393066, 32.974339, 48.107082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947666, 32.361603, 48.260025>,  <32.701237, 32.867844, 48.112404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947666, 32.361603, 48.260025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246147, 32.601978, 48.374607>,  <33.425236, 32.746204, 48.443356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246147, 32.601978, 48.374607>,  <32.947666, 32.361603, 48.260025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246147, 32.601978, 48.374607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027015, -0.402611, 0.914973,
		0.665171, -0.690494, -0.284195,
		0.746203, 0.600935, 0.286459,
		33.470009, 32.782257, 48.460545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388428, 31.959808, 48.716698>,  <32.947666, 32.361603, 48.260025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388428, 31.959808, 48.716698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488201, 32.338585, 48.797775>,  <33.548065, 32.565849, 48.846424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488201, 32.338585, 48.797775>,  <33.388428, 31.959808, 48.716698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488201, 32.338585, 48.797775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060193, -0.224068, 0.972713,
		0.966520, -0.230423, -0.112888,
		0.249430, 0.946942, 0.202696,
		33.563030, 32.622669, 48.858585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084595, 31.971413, 49.001244>,  <33.388428, 31.959808, 48.716698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084595, 31.971413, 49.001244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925823, 32.321552, 49.111671>,  <33.830559, 32.531635, 49.177929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925823, 32.321552, 49.111671>,  <34.084595, 31.971413, 49.001244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925823, 32.321552, 49.111671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165515, -0.227581, 0.959589,
		0.902803, 0.426580, -0.054551,
		-0.396927, 0.875349, 0.276066,
		33.806744, 32.584156, 49.194492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741745, 31.926323, 48.767345>,  <34.084595, 31.971413, 49.001244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741745, 31.926323, 48.767345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014252, 31.645227, 48.685333>,  <35.177753, 31.476570, 48.636127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014252, 31.645227, 48.685333>,  <34.741745, 31.926323, 48.767345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014252, 31.645227, 48.685333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201502, 0.089244, -0.975414,
		0.703759, 0.705829, -0.080805,
		0.681264, -0.702738, -0.205032,
		35.218632, 31.434406, 48.623825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164646, 32.129284, 48.181858>,  <34.741745, 31.926323, 48.767345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164646, 32.129284, 48.181858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258503, 31.740847, 48.199383>,  <35.314819, 31.507784, 48.209900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258503, 31.740847, 48.199383>,  <35.164646, 32.129284, 48.181858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258503, 31.740847, 48.199383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025585, -0.051226, -0.998359,
		0.971744, 0.233140, -0.036865,
		0.234646, -0.971093, 0.043813,
		35.328896, 31.449518, 48.212528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607224, 32.036514, 47.648537>,  <35.164646, 32.129284, 48.181858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607224, 32.036514, 47.648537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496315, 31.658905, 47.720024>,  <35.429768, 31.432339, 47.762917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496315, 31.658905, 47.720024>,  <35.607224, 32.036514, 47.648537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496315, 31.658905, 47.720024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083241, -0.208916, -0.974385,
		0.957178, -0.255294, 0.136508,
		-0.277273, -0.944023, 0.178719,
		35.413132, 31.375698, 47.773640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146851, 31.669172, 47.341518>,  <35.607224, 32.036514, 47.648537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146851, 31.669172, 47.341518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827793, 31.429453, 47.368645>,  <35.636356, 31.285622, 47.384918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827793, 31.429453, 47.368645>,  <36.146851, 31.669172, 47.341518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827793, 31.429453, 47.368645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081673, -0.218731, -0.972361,
		0.597568, -0.770063, 0.223417,
		-0.797648, -0.599300, 0.067813,
		35.588497, 31.249662, 47.388988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421249, 31.024410, 47.027634>,  <36.146851, 31.669172, 47.341518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421249, 31.024410, 47.027634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021820, 31.044270, 47.019733>,  <35.782162, 31.056185, 47.014992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021820, 31.044270, 47.019733>,  <36.421249, 31.024410, 47.027634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021820, 31.044270, 47.019733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005631, -0.269852, -0.962885,
		-0.053133, -0.961621, 0.269187,
		-0.998572, 0.049645, -0.019753,
		35.722248, 31.059164, 47.013809>
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
