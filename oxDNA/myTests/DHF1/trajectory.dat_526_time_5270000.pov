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
	<0.136738, 2.778953, 3.250544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.481963, 2.756001, 3.049812>,  <0.689098, 2.742229, 2.929374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.481963, 2.756001, 3.049812>,  <0.136738, 2.778953, 3.250544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.481963, 2.756001, 3.049812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491422, -0.134237, 0.860514,
		-0.116724, -0.989288, -0.087667,
		0.863064, -0.057361, -0.501827,
		0.740881, 2.738786, 2.899264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.486048, 2.138929, 3.371397>,  <0.136738, 2.778953, 3.250544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.486048, 2.138929, 3.371397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.755974, 2.423145, 3.291641>,  <0.917930, 2.593675, 3.243788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.755974, 2.423145, 3.291641>,  <0.486048, 2.138929, 3.371397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.755974, 2.423145, 3.291641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414428, -0.141303, 0.899045,
		0.610634, -0.689322, -0.389821,
		0.674815, 0.710541, -0.199390,
		0.958419, 2.636307, 3.231824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.052004, 1.828656, 3.593224>,  <0.486048, 2.138929, 3.371397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.052004, 1.828656, 3.593224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.126621, 2.221188, 3.574478>,  <1.171391, 2.456707, 3.563231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.126621, 2.221188, 3.574478>,  <1.052004, 1.828656, 3.593224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.126621, 2.221188, 3.574478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528628, -0.060051, 0.846727,
		0.828103, -0.182724, -0.529960,
		0.186542, 0.981328, -0.046865,
		1.182583, 2.515586, 3.560419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.819963, 2.018094, 3.658463>,  <1.052004, 1.828656, 3.593224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.819963, 2.018094, 3.658463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.565960, 2.281567, 3.819908>,  <1.413559, 2.439650, 3.916775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.565960, 2.281567, 3.819908>,  <1.819963, 2.018094, 3.658463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.565960, 2.281567, 3.819908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475013, -0.079094, 0.876417,
		0.609204, 0.748252, -0.262657,
		-0.635007, 0.658682, 0.403614,
		1.375458, 2.479171, 3.940992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.229999, 2.636840, 3.902433>,  <1.819963, 2.018094, 3.658463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.229999, 2.636840, 3.902433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.877701, 2.641182, 4.091820>,  <1.666322, 2.643787, 4.205452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.877701, 2.641182, 4.091820>,  <2.229999, 2.636840, 3.902433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.877701, 2.641182, 4.091820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468701, 0.163283, 0.868135,
		-0.067886, 0.986520, -0.148898,
		-0.880745, 0.010854, 0.473467,
		1.613477, 2.644438, 4.233860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.301453, 3.226987, 4.372989>,  <2.229999, 2.636840, 3.902433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.301453, 3.226987, 4.372989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.990674, 3.017742, 4.513107>,  <1.804207, 2.892195, 4.597178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.990674, 3.017742, 4.513107>,  <2.301453, 3.226987, 4.372989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.990674, 3.017742, 4.513107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348017, 0.106803, 0.931385,
		-0.524631, 0.845545, 0.099071,
		-0.776947, -0.523112, 0.350297,
		1.757590, 2.860809, 4.618196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.896324, 3.693825, 4.841370>,  <2.301453, 3.226987, 4.372989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.896324, 3.693825, 4.841370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.857718, 3.303085, 4.917740>,  <1.834553, 3.068642, 4.963562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.857718, 3.303085, 4.917740>,  <1.896324, 3.693825, 4.841370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.857718, 3.303085, 4.917740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401182, 0.137369, 0.905640,
		-0.910899, 0.164006, 0.378635,
		-0.096517, -0.976848, 0.190925,
		1.828762, 3.010031, 4.975018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.668748, 3.585312, 5.599420>,  <1.896324, 3.693825, 4.841370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.668748, 3.585312, 5.599420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.855004, 3.260986, 5.457569>,  <1.966758, 3.066391, 5.372459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.855004, 3.260986, 5.457569>,  <1.668748, 3.585312, 5.599420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.855004, 3.260986, 5.457569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522693, -0.071382, 0.849527,
		-0.714122, -0.580936, 0.390568,
		0.465641, -0.810813, -0.354627,
		1.994697, 3.017742, 5.351181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.070211, 3.570408, 1.257669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.123999, 3.243195, 1.481361>,  <2.156271, 3.046866, 1.615577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.123999, 3.243195, 1.481361>,  <2.070211, 3.570408, 1.257669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.123999, 3.243195, 1.481361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199311, -0.575151, -0.793396,
		0.970666, -0.004774, -0.240383,
		0.134468, -0.818034, 0.559231,
		2.164339, 2.997784, 1.649131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.619516, 3.156403, 0.939476>,  <2.070211, 3.570408, 1.257669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.619516, 3.156403, 0.939476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.319914, 2.960224, 1.117668>,  <2.140152, 2.842517, 1.224583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.319914, 2.960224, 1.117668>,  <2.619516, 3.156403, 0.939476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.319914, 2.960224, 1.117668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340635, -0.291650, -0.893817,
		0.568294, -0.821219, 0.051384,
		-0.749006, -0.490448, 0.445479,
		2.095212, 2.813090, 1.251312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.629209, 2.374801, 0.910632>,  <2.619516, 3.156403, 0.939476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.629209, 2.374801, 0.910632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.266954, 2.541782, 0.940445>,  <2.049602, 2.641971, 0.958332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.266954, 2.541782, 0.940445>,  <2.629209, 2.374801, 0.910632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.266954, 2.541782, 0.940445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222243, -0.317560, -0.921826,
		-0.361154, -0.851403, 0.380370,
		-0.905636, 0.417456, 0.074530,
		1.995263, 2.667018, 0.962804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.035064, 1.867098, 0.661355>,  <2.629209, 2.374801, 0.910632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.035064, 1.867098, 0.661355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.893921, 2.235950, 0.597900>,  <1.809235, 2.457262, 0.559827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.893921, 2.235950, 0.597900>,  <2.035064, 1.867098, 0.661355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.893921, 2.235950, 0.597900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310390, -0.275300, -0.909873,
		-0.882695, -0.271815, 0.383362,
		-0.352856, 0.922132, -0.158638,
		1.788064, 2.512590, 0.550309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.386233, 1.812868, 0.241930>,  <2.035064, 1.867098, 0.661355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.386233, 1.812868, 0.241930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.465679, 2.203320, 0.206772>,  <1.513347, 2.437590, 0.185677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.465679, 2.203320, 0.206772>,  <1.386233, 1.812868, 0.241930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.465679, 2.203320, 0.206772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559808, 0.039377, -0.827686,
		-0.804467, 0.213596, 0.554265,
		0.198616, 0.976128, -0.087895,
		1.525264, 2.496158, 0.180403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.806866, 2.184958, 0.185368>,  <1.386233, 1.812868, 0.241930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.806866, 2.184958, 0.185368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.092916, 2.386150, -0.008789>,  <1.264547, 2.506866, -0.125283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.092916, 2.386150, -0.008789>,  <0.806866, 2.184958, 0.185368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.092916, 2.386150, -0.008789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625509, 0.150548, -0.765555,
		-0.311984, 0.851085, 0.422279,
		0.715126, 0.502980, -0.485393,
		1.307454, 2.537045, -0.154407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.506671, 2.765616, -0.069234>,  <0.806866, 2.184958, 0.185368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.506671, 2.765616, -0.069234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.836742, 2.723652, -0.291252>,  <1.034785, 2.698473, -0.424463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.836742, 2.723652, -0.291252>,  <0.506671, 2.765616, -0.069234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.836742, 2.723652, -0.291252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495917, 0.335915, -0.800766,
		0.270458, 0.936031, 0.225163,
		0.825178, -0.104911, -0.555045,
		1.084296, 2.692178, -0.457766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.604249, 3.340982, -0.564484>,  <0.506671, 2.765616, -0.069234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.604249, 3.340982, -0.564484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.817238, 3.038528, -0.716660>,  <0.945031, 2.857056, -0.807965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.817238, 3.038528, -0.716660>,  <0.604249, 3.340982, -0.564484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.817238, 3.038528, -0.716660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569056, 0.012947, -0.822197,
		0.626616, 0.654290, -0.423388,
		0.532473, -0.756133, -0.380440,
		0.976980, 2.811688, -0.830792>
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
