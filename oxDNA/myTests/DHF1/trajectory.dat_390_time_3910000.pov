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
	<4.323326, 0.600691, 1.845077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.481453, 0.887726, 1.615715>,  <4.576329, 1.059947, 1.478098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.481453, 0.887726, 1.615715>,  <4.323326, 0.600691, 1.845077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.481453, 0.887726, 1.615715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435957, 0.696039, 0.570500,
		0.808496, 0.024452, 0.587993,
		0.395317, 0.717587, -0.573405,
		4.600048, 1.103002, 1.443694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.803638, 1.109216, 2.146304>,  <4.323326, 0.600691, 1.845077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.803638, 1.109216, 2.146304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.562809, 1.267410, 1.868858>,  <4.418312, 1.362327, 1.702391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.562809, 1.267410, 1.868858>,  <4.803638, 1.109216, 2.146304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.562809, 1.267410, 1.868858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489809, 0.503100, 0.712024,
		0.630553, 0.768427, -0.109190,
		-0.602072, 0.395487, -0.693614,
		4.382187, 1.386056, 1.660774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.780039, 1.826544, 2.190225>,  <4.803638, 1.109216, 2.146304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.780039, 1.826544, 2.190225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.430264, 1.755226, 2.009750>,  <4.220398, 1.712435, 1.901466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.430264, 1.755226, 2.009750>,  <4.780039, 1.826544, 2.190225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.430264, 1.755226, 2.009750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450237, 0.644616, 0.617864,
		0.180680, 0.743425, -0.643952,
		-0.874438, -0.178295, -0.451187,
		4.167932, 1.701738, 1.874394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.389821, 2.513841, 2.128227>,  <4.780039, 1.826544, 2.190225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.389821, 2.513841, 2.128227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.109970, 2.228851, 2.106674>,  <3.942060, 2.057858, 2.093743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.109970, 2.228851, 2.106674>,  <4.389821, 2.513841, 2.128227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.109970, 2.228851, 2.106674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644239, 0.596412, 0.478799,
		-0.308997, 0.369693, -0.876269,
		-0.699627, -0.712474, -0.053881,
		3.900082, 2.015109, 2.090510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.861527, 2.905553, 1.923239>,  <4.389821, 2.513841, 2.128227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.861527, 2.905553, 1.923239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.713642, 2.580177, 2.102852>,  <3.624911, 2.384952, 2.210619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.713642, 2.580177, 2.102852>,  <3.861527, 2.905553, 1.923239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.713642, 2.580177, 2.102852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589427, 0.578911, 0.563416,
		-0.718254, -0.056370, -0.693494,
		-0.369712, -0.813440, 0.449031,
		3.602729, 2.336145, 2.237561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.192783, 3.033152, 2.025177>,  <3.861527, 2.905553, 1.923239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.192783, 3.033152, 2.025177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.242008, 2.723999, 2.274178>,  <3.271544, 2.538507, 2.423578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.242008, 2.723999, 2.274178>,  <3.192783, 3.033152, 2.025177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.242008, 2.723999, 2.274178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738095, 0.348023, 0.578011,
		-0.663379, -0.530597, -0.527632,
		0.123063, -0.772882, 0.622502,
		3.278927, 2.492134, 2.460928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.517879, 2.584459, 2.109439>,  <3.192783, 3.033152, 2.025177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.517879, 2.584459, 2.109439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.751762, 2.542801, 2.431252>,  <2.892092, 2.517806, 2.624339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.751762, 2.542801, 2.431252>,  <2.517879, 2.584459, 2.109439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.751762, 2.542801, 2.431252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777238, 0.212208, 0.592342,
		-0.232418, -0.971659, 0.043132,
		0.584707, -0.104147, 0.804531,
		2.927175, 2.511557, 2.672611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.191393, 2.108026, 2.672095>,  <2.517879, 2.584459, 2.109439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.191393, 2.108026, 2.672095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.443810, 2.367943, 2.841591>,  <2.595260, 2.523893, 2.943288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.443810, 2.367943, 2.841591>,  <2.191393, 2.108026, 2.672095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.443810, 2.367943, 2.841591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699694, 0.240886, 0.672608,
		0.334983, -0.720932, 0.606666,
		0.631042, 0.649793, 0.423739,
		2.633122, 2.562881, 2.968713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.535116, 3.241629, 3.060334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.428850, 2.924751, 3.280098>,  <1.365091, 2.734625, 3.411956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.428850, 2.924751, 3.280098>,  <1.535116, 3.241629, 3.060334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.428850, 2.924751, 3.280098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953788, 0.132983, -0.269451,
		0.140398, -0.595596, -0.790919,
		-0.265663, -0.792200, 0.549402,
		1.349151, 2.687093, 3.444921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.191202, 3.521430, 3.413619>,  <1.535116, 3.241629, 3.060334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.191202, 3.521430, 3.413619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.123430, 3.166389, 3.584946>,  <2.082767, 2.953365, 3.687742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.123430, 3.166389, 3.584946>,  <2.191202, 3.521430, 3.413619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.123430, 3.166389, 3.584946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817207, -0.369452, -0.442356,
		0.550879, 0.275075, 0.787950,
		-0.169428, -0.887603, 0.428317,
		2.072602, 2.900109, 3.713441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.909472, 3.318012, 3.583439>,  <2.191202, 3.521430, 3.413619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.909472, 3.318012, 3.583439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.716339, 2.972855, 3.523720>,  <2.600460, 2.765760, 3.487888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.716339, 2.972855, 3.523720>,  <2.909472, 3.318012, 3.583439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.716339, 2.972855, 3.523720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833043, -0.400010, -0.382141,
		0.270026, -0.308881, 0.911964,
		-0.482831, -0.862893, -0.149298,
		2.571490, 2.713987, 3.478930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.369249, 2.808904, 3.895014>,  <2.909472, 3.318012, 3.583439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.369249, 2.808904, 3.895014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.134605, 2.650543, 3.612411>,  <2.993819, 2.555527, 3.442850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.134605, 2.650543, 3.612411>,  <3.369249, 2.808904, 3.895014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.134605, 2.650543, 3.612411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774997, -0.527652, -0.347797,
		-0.235096, -0.751562, 0.616348,
		-0.586608, -0.395903, -0.706507,
		2.958623, 2.531772, 3.400459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.683528, 2.192245, 3.648316>,  <3.369249, 2.808904, 3.895014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.683528, 2.192245, 3.648316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.420268, 2.287369, 3.362579>,  <3.262312, 2.344443, 3.191138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.420268, 2.287369, 3.362579>,  <3.683528, 2.192245, 3.648316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.420268, 2.287369, 3.362579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539441, -0.512924, -0.667766,
		-0.525212, -0.824834, 0.209288,
		-0.658145, 0.237820, -0.714343,
		3.222823, 2.358712, 3.148277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.366556, 1.595521, 3.365450>,  <3.683528, 2.192245, 3.648316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.366556, 1.595521, 3.365450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.354163, 1.868584, 3.073418>,  <3.346727, 2.032421, 2.898198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.354163, 1.868584, 3.073418>,  <3.366556, 1.595521, 3.365450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.354163, 1.868584, 3.073418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466512, -0.636116, -0.614592,
		-0.883972, -0.359634, -0.298759,
		-0.030983, 0.682657, -0.730082,
		3.344868, 2.073381, 2.854393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.195296, 1.216115, 2.794584>,  <3.366556, 1.595521, 3.365450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.195296, 1.216115, 2.794584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.306676, 1.556755, 2.616936>,  <3.373504, 1.761139, 2.510347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.306676, 1.556755, 2.616936>,  <3.195296, 1.216115, 2.794584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.306676, 1.556755, 2.616936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422269, -0.523868, -0.739765,
		-0.862644, 0.018448, -0.505475,
		0.278450, 0.851600, -0.444121,
		3.390211, 1.812235, 2.483699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.004330, 1.131738, 2.061697>,  <3.195296, 1.216115, 2.794584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.004330, 1.131738, 2.061697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.279485, 1.421387, 2.081535>,  <3.444577, 1.595176, 2.093438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.279485, 1.421387, 2.081535>,  <3.004330, 1.131738, 2.061697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.279485, 1.421387, 2.081535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513031, -0.436746, -0.738953,
		-0.513432, 0.533760, -0.671929,
		0.687886, 0.724122, 0.049596,
		3.485851, 1.638623, 2.096414>
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
