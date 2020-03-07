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
	<4.558525, 3.420820, 5.172700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.308895, 3.297943, 4.885323>,  <4.159117, 3.224217, 4.712896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.308895, 3.297943, 4.885323>,  <4.558525, 3.420820, 5.172700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.308895, 3.297943, 4.885323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656753, -0.704378, -0.269309,
		-0.423326, -0.639910, 0.641335,
		-0.624075, -0.307193, -0.718444,
		4.121673, 3.205785, 4.669789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.229101, 2.708594, 5.323648>,  <4.558525, 3.420820, 5.172700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.229101, 2.708594, 5.323648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.268810, 2.779755, 4.932037>,  <4.292636, 2.822451, 4.697071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.268810, 2.779755, 4.932037>,  <4.229101, 2.708594, 5.323648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.268810, 2.779755, 4.932037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570774, -0.816114, -0.090422,
		-0.815084, -0.549827, -0.182561,
		0.099274, 0.177903, -0.979028,
		4.298593, 2.833126, 4.638329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.941212, 2.155123, 4.830192>,  <4.229101, 2.708594, 5.323648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.941212, 2.155123, 4.830192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.266857, 2.346939, 4.699188>,  <4.462244, 2.462029, 4.620586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.266857, 2.346939, 4.699188>,  <3.941212, 2.155123, 4.830192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.266857, 2.346939, 4.699188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521580, -0.851773, 0.049359,
		-0.255294, -0.211006, -0.943558,
		0.814112, 0.479540, -0.327509,
		4.511091, 2.490801, 4.600935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.109570, 1.900988, 4.157279>,  <3.941212, 2.155123, 4.830192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.109570, 1.900988, 4.157279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.432396, 2.050049, 4.340485>,  <4.626091, 2.139485, 4.450408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.432396, 2.050049, 4.340485>,  <4.109570, 1.900988, 4.157279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.432396, 2.050049, 4.340485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456976, -0.885424, -0.084832,
		0.373924, 0.277766, -0.884888,
		0.807065, 0.372652, 0.458014,
		4.674515, 2.161844, 4.477889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.784423, 1.757730, 3.836513>,  <4.109570, 1.900988, 4.157279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.784423, 1.757730, 3.836513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.801132, 1.742218, 4.235863>,  <4.811158, 1.732911, 4.475472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.801132, 1.742218, 4.235863>,  <4.784423, 1.757730, 3.836513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.801132, 1.742218, 4.235863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380982, -0.923131, -0.051799,
		0.923639, 0.382526, -0.023787,
		0.041773, -0.038781, 0.998374,
		4.813664, 1.730584, 4.535375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.504596, 1.597590, 4.103796>,  <4.784423, 1.757730, 3.836513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.504596, 1.597590, 4.103796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.246948, 1.474701, 4.384003>,  <5.092360, 1.400967, 4.552127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.246948, 1.474701, 4.384003>,  <5.504596, 1.597590, 4.103796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.246948, 1.474701, 4.384003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401279, -0.915380, -0.032483,
		0.651220, 0.260180, 0.712895,
		-0.644118, -0.307223, 0.700518,
		5.053713, 1.382534, 4.594158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.939170, 1.295278, 4.501055>,  <5.504596, 1.597590, 4.103796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.939170, 1.295278, 4.501055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.568497, 1.159607, 4.565819>,  <5.346093, 1.078204, 4.604677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.568497, 1.159607, 4.565819>,  <5.939170, 1.295278, 4.501055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.568497, 1.159607, 4.565819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322298, -0.938756, -0.121904,
		0.193340, -0.060784, 0.979247,
		-0.926684, -0.339178, 0.161909,
		5.290492, 1.057853, 4.614391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.055926, 0.711959, 4.874162>,  <5.939170, 1.295278, 4.501055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.055926, 0.711959, 4.874162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.686722, 0.660156, 4.729233>,  <5.465199, 0.629074, 4.642275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.686722, 0.660156, 4.729233>,  <6.055926, 0.711959, 4.874162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.686722, 0.660156, 4.729233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219704, -0.950445, -0.219966,
		-0.315882, -0.282635, 0.905724,
		-0.923011, -0.129508, -0.362324,
		5.409819, 0.621304, 4.620535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<6.102304, -0.752708, 3.321745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.772935, -0.778008, 3.547302>,  <5.575314, -0.793187, 3.682636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.772935, -0.778008, 3.547302>,  <6.102304, -0.752708, 3.321745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.772935, -0.778008, 3.547302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029011, 0.997161, 0.069480,
		-0.566686, 0.040853, -0.822920,
		-0.823423, -0.063247, 0.563892,
		5.525908, -0.796982, 3.716470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.044777, -0.057821, 3.596789>,  <6.102304, -0.752708, 3.321745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.044777, -0.057821, 3.596789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.691989, -0.222702, 3.688194>,  <5.480316, -0.321631, 3.743037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.691989, -0.222702, 3.688194>,  <6.044777, -0.057821, 3.596789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.691989, -0.222702, 3.688194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333022, 0.888133, 0.316727,
		-0.333506, 0.203244, -0.920579,
		-0.881969, -0.412204, 0.228513,
		5.427398, -0.346363, 3.756748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.423389, 0.280474, 3.408912>,  <6.044777, -0.057821, 3.596789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.423389, 0.280474, 3.408912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.306115, 0.089272, 3.740105>,  <5.235751, -0.025450, 3.938820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.306115, 0.089272, 3.740105>,  <5.423389, 0.280474, 3.408912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.306115, 0.089272, 3.740105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476755, 0.823774, 0.306760,
		-0.828701, -0.304807, -0.469411,
		-0.293186, -0.478006, 0.827981,
		5.218159, -0.054130, 3.988499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.648561, 0.480323, 3.679747>,  <5.423389, 0.280474, 3.408912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.648561, 0.480323, 3.679747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.855475, 0.336288, 3.990295>,  <4.979624, 0.249868, 4.176625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.855475, 0.336288, 3.990295>,  <4.648561, 0.480323, 3.679747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.855475, 0.336288, 3.990295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345889, 0.741815, 0.574519,
		-0.782800, -0.565729, 0.259181,
		0.517286, -0.360086, 0.776372,
		5.010661, 0.228263, 4.223207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.200196, 0.475122, 4.219157>,  <4.648561, 0.480323, 3.679747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.200196, 0.475122, 4.219157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.571528, 0.523911, 4.359627>,  <4.794328, 0.553184, 4.443909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.571528, 0.523911, 4.359627>,  <4.200196, 0.475122, 4.219157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.571528, 0.523911, 4.359627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318834, 0.746996, 0.583388,
		-0.191169, -0.653544, 0.732349,
		0.928332, 0.121972, 0.351174,
		4.850028, 0.560502, 4.464979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.108933, 0.644566, 4.885738>,  <4.200196, 0.475122, 4.219157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.108933, 0.644566, 4.885738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.478335, 0.770164, 4.797607>,  <4.699977, 0.845524, 4.744729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.478335, 0.770164, 4.797607>,  <4.108933, 0.644566, 4.885738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.478335, 0.770164, 4.797607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207775, 0.892307, 0.400771,
		0.322440, -0.324336, 0.889292,
		0.923506, 0.313997, -0.220326,
		4.755387, 0.864364, 4.731510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.259973, 1.063837, 5.535401>,  <4.108933, 0.644566, 4.885738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.259973, 1.063837, 5.535401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.526025, 1.155968, 5.251274>,  <4.685656, 1.211246, 5.080798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.526025, 1.155968, 5.251274>,  <4.259973, 1.063837, 5.535401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.526025, 1.155968, 5.251274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024513, 0.957463, 0.287514,
		0.746324, -0.173822, 0.642485,
		0.665131, 0.230328, -0.710317,
		4.725564, 1.225066, 5.038179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.779045, 1.563046, 5.837426>,  <4.259973, 1.063837, 5.535401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.779045, 1.563046, 5.837426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.718530, 1.613121, 5.445213>,  <4.682221, 1.643166, 5.209886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.718530, 1.613121, 5.445213>,  <4.779045, 1.563046, 5.837426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.718530, 1.613121, 5.445213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075060, 0.987629, 0.137676,
		0.985636, 0.094427, -0.140019,
		-0.151287, 0.125189, -0.980530,
		4.673143, 1.650678, 5.151054>
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
