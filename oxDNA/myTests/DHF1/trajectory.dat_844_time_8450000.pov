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
	<6.141593, 4.707911, 4.436167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.982540, 4.668869, 4.071232>,  <5.887108, 4.645443, 3.852271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.982540, 4.668869, 4.071232>,  <6.141593, 4.707911, 4.436167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.982540, 4.668869, 4.071232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885228, -0.220759, 0.409436,
		-0.241370, 0.970432, 0.001377,
		-0.397634, -0.097607, -0.912338,
		5.863250, 4.639587, 3.797530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.505439, 4.958750, 4.486533>,  <6.141593, 4.707911, 4.436167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.505439, 4.958750, 4.486533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.464973, 4.680565, 4.201971>,  <5.440694, 4.513654, 4.031233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.464973, 4.680565, 4.201971>,  <5.505439, 4.958750, 4.486533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.464973, 4.680565, 4.201971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889766, -0.256647, 0.377423,
		-0.445064, 0.671165, -0.592837,
		-0.101163, -0.695463, -0.711405,
		5.434625, 4.471926, 3.988549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.750754, 4.916571, 4.238269>,  <5.505439, 4.958750, 4.486533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.750754, 4.916571, 4.238269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.961460, 4.579552, 4.193314>,  <5.087884, 4.377340, 4.166340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.961460, 4.579552, 4.193314>,  <4.750754, 4.916571, 4.238269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.961460, 4.579552, 4.193314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752049, -0.523589, 0.400344,
		-0.396155, -0.126366, -0.909447,
		0.526767, -0.842547, -0.112389,
		5.119490, 4.326787, 4.159597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.380184, 4.367389, 3.779750>,  <4.750754, 4.916571, 4.238269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.380184, 4.367389, 3.779750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.627209, 4.193886, 4.042191>,  <4.775424, 4.089784, 4.199656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.627209, 4.193886, 4.042191>,  <4.380184, 4.367389, 3.779750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.627209, 4.193886, 4.042191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684257, -0.707624, 0.176243,
		0.387828, -0.557784, -0.733803,
		0.617562, -0.433758, 0.656103,
		4.812477, 4.063758, 4.239022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.254531, 3.711593, 3.648556>,  <4.380184, 4.367389, 3.779750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.254531, 3.711593, 3.648556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.431309, 3.686600, 4.006501>,  <4.537375, 3.671604, 4.221269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.431309, 3.686600, 4.006501>,  <4.254531, 3.711593, 3.648556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.431309, 3.686600, 4.006501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625548, -0.736462, 0.257514,
		0.642943, -0.673587, -0.364561,
		0.441943, -0.062484, 0.894864,
		4.563892, 3.667855, 4.274961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.365276, 3.008345, 3.759656>,  <4.254531, 3.711593, 3.648556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.365276, 3.008345, 3.759656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.424995, 3.153923, 4.127407>,  <4.460827, 3.241270, 4.348057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.424995, 3.153923, 4.127407>,  <4.365276, 3.008345, 3.759656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.424995, 3.153923, 4.127407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457437, -0.798896, 0.390535,
		0.876619, -0.478863, 0.047208,
		0.149298, 0.363945, 0.919377,
		4.469785, 3.263107, 4.403220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.739645, 2.543554, 4.126586>,  <4.365276, 3.008345, 3.759656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.739645, 2.543554, 4.126586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.542290, 2.756584, 4.401667>,  <4.423877, 2.884403, 4.566715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.542290, 2.756584, 4.401667>,  <4.739645, 2.543554, 4.126586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.542290, 2.756584, 4.401667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326197, -0.846222, 0.421312,
		0.806328, -0.016456, 0.591240,
		-0.493387, 0.532577, 0.687700,
		4.394274, 2.916357, 4.607976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.891408, 2.245616, 4.855062>,  <4.739645, 2.543554, 4.126586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.891408, 2.245616, 4.855062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.555428, 2.461441, 4.831898>,  <4.353839, 2.590936, 4.818000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.555428, 2.461441, 4.831898>,  <4.891408, 2.245616, 4.855062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.555428, 2.461441, 4.831898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501827, -0.731702, 0.461282,
		0.206519, 0.416515, 0.885362,
		-0.839952, 0.539562, -0.057908,
		4.303442, 2.623310, 4.814526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.984264, 1.822768, 0.262820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.627060, 1.965622, 0.372357>,  <3.412738, 2.051334, 0.438080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.627060, 1.965622, 0.372357>,  <3.984264, 1.822768, 0.262820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.627060, 1.965622, 0.372357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329633, 0.933329, -0.142266,
		-0.306393, -0.036777, -0.951194,
		-0.893009, 0.357134, 0.273843,
		3.359157, 2.072762, 0.454510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.650992, 2.183487, -0.342920>,  <3.984264, 1.822768, 0.262820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.650992, 2.183487, -0.342920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.585213, 2.301369, 0.033612>,  <3.545745, 2.372098, 0.259532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.585213, 2.301369, 0.033612>,  <3.650992, 2.183487, -0.342920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.585213, 2.301369, 0.033612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515674, 0.839210, -0.172646,
		-0.840855, 0.457028, -0.289979,
		-0.164450, 0.294705, 0.941332,
		3.535878, 2.389780, 0.316012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.452469, 2.787822, -0.457656>,  <3.650992, 2.183487, -0.342920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.452469, 2.787822, -0.457656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.560280, 2.766022, -0.073076>,  <3.624966, 2.752942, 0.157672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.560280, 2.766022, -0.073076>,  <3.452469, 2.787822, -0.457656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.560280, 2.766022, -0.073076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681848, 0.715829, -0.150568,
		-0.680028, 0.696145, 0.230096,
		0.269527, -0.054500, 0.961449,
		3.641138, 2.749672, 0.215359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.400365, 3.445596, -0.044552>,  <3.452469, 2.787822, -0.457656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.400365, 3.445596, -0.044552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.694244, 3.192528, 0.053383>,  <3.870572, 3.040687, 0.112144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.694244, 3.192528, 0.053383>,  <3.400365, 3.445596, -0.044552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.694244, 3.192528, 0.053383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677783, 0.669267, -0.304453,
		0.028757, 0.389628, 0.920523,
		0.734699, -0.632670, 0.244837,
		3.914654, 3.002727, 0.126834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.837932, 3.684342, 0.513449>,  <3.400365, 3.445596, -0.044552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.837932, 3.684342, 0.513449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.029182, 3.445007, 0.256268>,  <4.143933, 3.301407, 0.101959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.029182, 3.445007, 0.256268>,  <3.837932, 3.684342, 0.513449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.029182, 3.445007, 0.256268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524149, 0.781786, -0.337755,
		0.704742, -0.175514, 0.687410,
		0.478127, -0.598336, -0.642953,
		4.172621, 3.265507, 0.063382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.613925, 3.693356, 0.614159>,  <3.837932, 3.684342, 0.513449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.613925, 3.693356, 0.614159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.551537, 3.562782, 0.241254>,  <4.514103, 3.484438, 0.017511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.551537, 3.562782, 0.241254>,  <4.613925, 3.693356, 0.614159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.551537, 3.562782, 0.241254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725287, 0.602863, -0.332437,
		0.670545, -0.728009, 0.142728,
		-0.155972, -0.326433, -0.932263,
		4.504745, 3.464852, -0.038425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.275671, 3.629743, 0.380522>,  <4.613925, 3.693356, 0.614159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.275671, 3.629743, 0.380522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.049889, 3.648094, 0.050847>,  <4.914419, 3.659105, -0.146958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.049889, 3.648094, 0.050847>,  <5.275671, 3.629743, 0.380522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.049889, 3.648094, 0.050847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753069, 0.437513, -0.491395,
		0.338047, -0.898041, -0.281508,
		-0.564456, 0.045880, -0.824187,
		4.880552, 3.661858, -0.196409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.682876, 3.362861, -0.200524>,  <5.275671, 3.629743, 0.380522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.682876, 3.362861, -0.200524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.400772, 3.615631, -0.329074>,  <5.231510, 3.767293, -0.406204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.400772, 3.615631, -0.329074>,  <5.682876, 3.362861, -0.200524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.400772, 3.615631, -0.329074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679508, 0.473245, -0.560632,
		-0.202188, -0.613767, -0.763158,
		-0.705258, 0.631925, -0.321375,
		5.189195, 3.805208, -0.425486>
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
