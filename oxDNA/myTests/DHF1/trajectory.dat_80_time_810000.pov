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
	<4.987293, 1.765905, 3.132177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.060044, 2.150425, 3.049404>,  <5.103695, 2.381137, 2.999740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.060044, 2.150425, 3.049404>,  <4.987293, 1.765905, 3.132177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.060044, 2.150425, 3.049404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980222, 0.160550, -0.115711,
		-0.078010, 0.223886, 0.971488,
		0.181878, 0.961300, -0.206933,
		5.114608, 2.438815, 2.987324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.661377, 2.022454, 3.670400>,  <4.987293, 1.765905, 3.132177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.661377, 2.022454, 3.670400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.705923, 2.264351, 3.354961>,  <4.732651, 2.409489, 3.165698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.705923, 2.264351, 3.354961>,  <4.661377, 2.022454, 3.670400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.705923, 2.264351, 3.354961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929408, 0.344331, 0.132803,
		0.351850, 0.718139, 0.600398,
		0.111364, 0.604741, -0.788597,
		4.739333, 2.445774, 3.118382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.520836, 2.829392, 3.895233>,  <4.661377, 2.022454, 3.670400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.520836, 2.829392, 3.895233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.433654, 2.656528, 3.545208>,  <4.381345, 2.552810, 3.335193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.433654, 2.656528, 3.545208>,  <4.520836, 2.829392, 3.895233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.433654, 2.656528, 3.545208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968039, 0.209723, 0.137540,
		0.124081, 0.877072, -0.464057,
		-0.217955, -0.432159, -0.875062,
		4.368268, 2.526881, 3.282689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.330538, 3.400907, 3.475607>,  <4.520836, 2.829392, 3.895233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.330538, 3.400907, 3.475607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.150194, 3.054295, 3.389956>,  <4.041988, 2.846327, 3.338564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.150194, 3.054295, 3.389956>,  <4.330538, 3.400907, 3.475607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.150194, 3.054295, 3.389956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869103, 0.371498, 0.326571,
		-0.203435, 0.333338, -0.920598,
		-0.450859, -0.866531, -0.214130,
		4.014936, 2.794335, 3.325717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.615330, 3.499376, 3.084623>,  <4.330538, 3.400907, 3.475607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.615330, 3.499376, 3.084623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.606929, 3.167652, 3.307981>,  <3.601888, 2.968618, 3.441997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.606929, 3.167652, 3.307981>,  <3.615330, 3.499376, 3.084623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.606929, 3.167652, 3.307981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879859, 0.280560, 0.383582,
		-0.474771, -0.483253, -0.735567,
		-0.021004, -0.829309, 0.558396,
		3.600628, 2.918859, 3.475500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.923576, 3.070571, 3.097941>,  <3.615330, 3.499376, 3.084623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.923576, 3.070571, 3.097941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.131264, 3.042240, 3.438622>,  <3.255876, 3.025241, 3.643030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.131264, 3.042240, 3.438622>,  <2.923576, 3.070571, 3.097941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.131264, 3.042240, 3.438622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831235, 0.189781, 0.522524,
		-0.198646, -0.979268, 0.039662,
		0.519218, -0.070829, 0.851702,
		3.287029, 3.020992, 3.694132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.446101, 2.717484, 3.739423>,  <2.923576, 3.070571, 3.097941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.446101, 2.717484, 3.739423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.727836, 2.962017, 3.883745>,  <2.896876, 3.108737, 3.970339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.727836, 2.962017, 3.883745>,  <2.446101, 2.717484, 3.739423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.727836, 2.962017, 3.883745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642207, 0.332194, 0.690809,
		0.302456, -0.718276, 0.626578,
		0.704337, 0.611332, 0.360808,
		2.939137, 3.145417, 3.991987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.582219, 2.494561, 4.449528>,  <2.446101, 2.717484, 3.739423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.582219, 2.494561, 4.449528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.683240, 2.879055, 4.405266>,  <2.743853, 3.109751, 4.378709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.683240, 2.879055, 4.405266>,  <2.582219, 2.494561, 4.449528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.683240, 2.879055, 4.405266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477802, 0.223340, 0.849603,
		0.841381, -0.161699, 0.515685,
		0.252553, 0.961235, -0.110654,
		2.759007, 3.167425, 4.372069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.272633, 6.108380, 3.712795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.625813, 5.929512, 3.655605>,  <3.837720, 5.822191, 3.621292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.625813, 5.929512, 3.655605>,  <3.272633, 6.108380, 3.712795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.625813, 5.929512, 3.655605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354861, -0.835084, 0.420366,
		-0.307370, -0.320425, -0.896020,
		0.882948, -0.447171, -0.142974,
		3.890697, 5.795361, 3.612713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.190599, 5.415102, 3.376281>,  <3.272633, 6.108380, 3.712795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.190599, 5.415102, 3.376281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.522076, 5.398064, 3.599514>,  <3.720962, 5.387840, 3.733454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.522076, 5.398064, 3.599514>,  <3.190599, 5.415102, 3.376281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.522076, 5.398064, 3.599514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340665, -0.829524, 0.442535,
		0.444092, -0.556844, -0.701931,
		0.828692, -0.042597, 0.558082,
		3.770683, 5.385284, 3.766939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.369558, 4.752240, 3.444099>,  <3.190599, 5.415102, 3.376281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.369558, 4.752240, 3.444099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.493401, 4.947510, 3.770493>,  <3.567706, 5.064672, 3.966329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.493401, 4.947510, 3.770493>,  <3.369558, 4.752240, 3.444099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.493401, 4.947510, 3.770493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292345, -0.767713, 0.570220,
		0.904809, -0.415092, -0.094973,
		0.309606, 0.488175, 0.815984,
		3.586282, 5.093962, 4.015287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.697648, 4.252464, 3.820193>,  <3.369558, 4.752240, 3.444099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.697648, 4.252464, 3.820193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.613743, 4.525520, 4.100193>,  <3.563400, 4.689354, 4.268193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.613743, 4.525520, 4.100193>,  <3.697648, 4.252464, 3.820193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.613743, 4.525520, 4.100193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272680, -0.728366, 0.628592,
		0.938960, -0.059021, 0.338926,
		-0.209763, 0.682641, 0.700001,
		3.550814, 4.730313, 4.310193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.406588, 4.239827, 4.539285>,  <3.697648, 4.252464, 3.820193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.406588, 4.239827, 4.539285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.194817, 3.910339, 4.458101>,  <3.067754, 3.712647, 4.409391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.194817, 3.910339, 4.458101>,  <3.406588, 4.239827, 4.539285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.194817, 3.910339, 4.458101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825468, -0.444993, -0.347251,
		0.195722, -0.351380, 0.915546,
		-0.529429, -0.823719, -0.202958,
		3.035988, 3.663224, 4.397214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.849677, 3.717452, 4.687725>,  <3.406588, 4.239827, 4.539285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.849677, 3.717452, 4.687725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.567379, 3.514206, 4.490244>,  <3.398000, 3.392258, 4.371755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.567379, 3.514206, 4.490244>,  <3.849677, 3.717452, 4.687725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.567379, 3.514206, 4.490244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705860, -0.564021, -0.428535,
		-0.060713, -0.650922, 0.756713,
		-0.705745, -0.508116, -0.493703,
		3.355656, 3.361771, 4.342133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.004734, 3.089124, 4.724419>,  <3.849677, 3.717452, 4.687725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.004734, 3.089124, 4.724419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.782719, 3.067062, 4.392422>,  <3.649509, 3.053825, 4.193223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.782719, 3.067062, 4.392422>,  <4.004734, 3.089124, 4.724419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.782719, 3.067062, 4.392422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752115, -0.459497, -0.472425,
		-0.355323, -0.886465, 0.296522,
		-0.555039, -0.055155, -0.829994,
		3.616207, 3.050516, 4.143424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.000942, 2.436356, 4.474461>,  <4.004734, 3.089124, 4.724419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.000942, 2.436356, 4.474461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.947548, 2.677536, 4.159847>,  <3.915512, 2.822244, 3.971079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.947548, 2.677536, 4.159847>,  <4.000942, 2.436356, 4.474461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.947548, 2.677536, 4.159847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764752, -0.442115, -0.468710,
		-0.630346, -0.664068, -0.402091,
		-0.133485, 0.602949, -0.786533,
		3.907502, 2.858421, 3.923887>
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
