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
	<6.551402, 2.585342, 2.352173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.425026, 2.262787, 2.552141>,  <6.349200, 2.069254, 2.672122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.425026, 2.262787, 2.552141>,  <6.551402, 2.585342, 2.352173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.425026, 2.262787, 2.552141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729308, 0.543437, 0.415675,
		-0.606871, -0.233268, -0.759799,
		-0.315939, -0.806388, 0.499920,
		6.330244, 2.020870, 2.702117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.843993, 2.225441, 2.167230>,  <6.551402, 2.585342, 2.352173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.843993, 2.225441, 2.167230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.947212, 2.201859, 2.552962>,  <6.009144, 2.187709, 2.784402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.947212, 2.201859, 2.552962>,  <5.843993, 2.225441, 2.167230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.947212, 2.201859, 2.552962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822793, 0.509746, 0.251337,
		-0.506382, -0.858303, 0.083030,
		0.258048, -0.058956, 0.964332,
		6.024627, 2.184172, 2.842262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.495852, 1.999488, 2.801418>,  <5.843993, 2.225441, 2.167230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.495852, 1.999488, 2.801418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.323387, 2.227562, 3.081129>,  <5.219908, 2.364406, 3.248956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.323387, 2.227562, 3.081129>,  <5.495852, 1.999488, 2.801418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.323387, 2.227562, 3.081129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794801, -0.606851, 0.004762,
		0.427072, -0.553733, 0.714835,
		-0.431161, 0.570185, 0.699277,
		5.194039, 2.398618, 3.290912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.373142, 1.610692, 3.483994>,  <5.495852, 1.999488, 2.801418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.373142, 1.610692, 3.483994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.102989, 1.876846, 3.356795>,  <4.940898, 2.036539, 3.280476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.102989, 1.876846, 3.356795>,  <5.373142, 1.610692, 3.483994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.102989, 1.876846, 3.356795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686456, -0.724801, -0.058658,
		-0.269514, 0.178674, 0.946276,
		-0.675381, 0.665386, -0.317996,
		4.900375, 2.076462, 3.261396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.755914, 1.666620, 3.862440>,  <5.373142, 1.610692, 3.483994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.755914, 1.666620, 3.862440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.658173, 1.752586, 3.484212>,  <4.599528, 1.804166, 3.257276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.658173, 1.752586, 3.484212>,  <4.755914, 1.666620, 3.862440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.658173, 1.752586, 3.484212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577645, -0.815491, -0.036077,
		-0.778857, 0.537388, 0.323413,
		-0.244353, 0.214917, -0.945570,
		4.584867, 1.817061, 3.200541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.015114, 1.669221, 3.933608>,  <4.755914, 1.666620, 3.862440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.015114, 1.669221, 3.933608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.127388, 1.615906, 3.553408>,  <4.194752, 1.583916, 3.325288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.127388, 1.615906, 3.553408>,  <4.015114, 1.669221, 3.933608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.127388, 1.615906, 3.553408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596936, -0.799722, -0.064131,
		-0.751587, 0.585388, -0.304034,
		0.280684, -0.133289, -0.950500,
		4.211593, 1.575919, 3.268258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.325512, 1.581160, 3.643010>,  <4.015114, 1.669221, 3.933608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.325512, 1.581160, 3.643010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.588943, 1.416878, 3.390790>,  <3.747002, 1.318308, 3.239458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.588943, 1.416878, 3.390790>,  <3.325512, 1.581160, 3.643010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.588943, 1.416878, 3.390790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650368, -0.732163, -0.202386,
		-0.378545, 0.543377, -0.749297,
		0.658579, -0.410706, -0.630551,
		3.786517, 1.293666, 3.201625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.948833, 1.439063, 3.126663>,  <3.325512, 1.581160, 3.643010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.948833, 1.439063, 3.126663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.266975, 1.201195, 3.079713>,  <3.457860, 1.058474, 3.051543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.266975, 1.201195, 3.079713>,  <2.948833, 1.439063, 3.126663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.266975, 1.201195, 3.079713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604602, -0.764509, -0.223568,
		0.043215, 0.248781, -0.967595,
		0.795355, -0.594671, -0.117375,
		3.505582, 1.022793, 3.044501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.671244, 0.245567, 2.809846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.977554, 0.025444, 2.676731>,  <3.161341, -0.106630, 2.596861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.977554, 0.025444, 2.676731>,  <2.671244, 0.245567, 2.809846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.977554, 0.025444, 2.676731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641436, 0.690851, 0.333594,
		0.046328, -0.468921, 0.882025,
		0.765776, -0.550308, -0.332788,
		3.207287, -0.139648, 2.576894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.137531, -0.029420, 3.288407>,  <2.671244, 0.245567, 2.809846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.137531, -0.029420, 3.288407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.306610, 0.067001, 2.938957>,  <3.408058, 0.124854, 2.729287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.306610, 0.067001, 2.938957>,  <3.137531, -0.029420, 3.288407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.306610, 0.067001, 2.938957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533405, 0.713149, 0.454860,
		0.732671, -0.658264, 0.172865,
		0.422696, 0.241056, -0.873625,
		3.433420, 0.139317, 2.676870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.974511, -0.130108, 3.210525>,  <3.137531, -0.029420, 3.288407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.974511, -0.130108, 3.210525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.812927, 0.156807, 2.983434>,  <3.715977, 0.328956, 2.847179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.812927, 0.156807, 2.983434>,  <3.974511, -0.130108, 3.210525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.812927, 0.156807, 2.983434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677440, 0.651625, 0.341263,
		0.614730, -0.246746, -0.749149,
		-0.403959, 0.717288, -0.567729,
		3.691740, 0.371993, 2.813115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.466860, 0.227595, 2.857711>,  <3.974511, -0.130108, 3.210525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.466860, 0.227595, 2.857711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.160622, 0.484642, 2.869751>,  <3.976879, 0.638870, 2.876976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.160622, 0.484642, 2.869751>,  <4.466860, 0.227595, 2.857711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.160622, 0.484642, 2.869751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643172, 0.765590, 0.014199,
		-0.013921, 0.030231, -0.999446,
		-0.765595, 0.642618, 0.030101,
		3.930943, 0.677427, 2.878782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.629206, 0.782380, 2.366396>,  <4.466860, 0.227595, 2.857711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.629206, 0.782380, 2.366396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.371033, 0.963150, 2.612707>,  <4.216129, 1.071612, 2.760493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.371033, 0.963150, 2.612707>,  <4.629206, 0.782380, 2.366396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.371033, 0.963150, 2.612707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534065, 0.843370, -0.059171,
		-0.546068, 0.290674, -0.785696,
		-0.645433, 0.451924, 0.615777,
		4.177403, 1.098727, 2.797440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.417685, 1.440712, 2.017624>,  <4.629206, 0.782380, 2.366396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.417685, 1.440712, 2.017624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.367348, 1.466339, 2.413616>,  <4.337145, 1.481715, 2.651211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.367348, 1.466339, 2.413616>,  <4.417685, 1.440712, 2.017624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.367348, 1.466339, 2.413616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550254, 0.834845, 0.015919,
		-0.825460, 0.546744, -0.140312,
		-0.125842, 0.064067, 0.989979,
		4.329595, 1.485559, 2.710609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.276569, 2.159741, 2.036974>,  <4.417685, 1.440712, 2.017624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.276569, 2.159741, 2.036974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.376717, 2.044266, 2.406617>,  <4.436805, 1.974981, 2.628403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.376717, 2.044266, 2.406617>,  <4.276569, 2.159741, 2.036974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.376717, 2.044266, 2.406617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391767, 0.903078, 0.175977,
		-0.885344, 0.317976, 0.339201,
		0.250368, -0.288688, 0.924108,
		4.451827, 1.957659, 2.683849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.216434, 2.797324, 2.423301>,  <4.276569, 2.159741, 2.036974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.216434, 2.797324, 2.423301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.443680, 2.557632, 2.648928>,  <4.580027, 2.413817, 2.784304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.443680, 2.557632, 2.648928>,  <4.216434, 2.797324, 2.423301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.443680, 2.557632, 2.648928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653524, 0.745074, 0.133308,
		-0.500154, 0.292897, 0.814897,
		0.568113, -0.599230, 0.564067,
		4.614114, 2.377863, 2.818148>
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
