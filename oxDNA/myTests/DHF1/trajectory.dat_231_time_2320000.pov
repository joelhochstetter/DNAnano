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
	<3.606244, 1.758691, 1.841889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.733059, 1.554871, 2.161850>,  <3.809148, 1.432578, 2.353827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.733059, 1.554871, 2.161850>,  <3.606244, 1.758691, 1.841889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.733059, 1.554871, 2.161850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257240, -0.765597, -0.589652,
		0.912861, 0.392708, -0.111646,
		0.317037, -0.509551, 0.799904,
		3.828170, 1.402005, 2.401821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.423251, 1.639511, 1.944086>,  <3.606244, 1.758691, 1.841889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.423251, 1.639511, 1.944086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.170673, 1.360954, 2.080505>,  <4.019126, 1.193820, 2.162357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.170673, 1.360954, 2.080505>,  <4.423251, 1.639511, 1.944086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.170673, 1.360954, 2.080505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254959, -0.601830, -0.756834,
		0.732307, -0.390945, 0.557574,
		-0.631445, -0.696393, 0.341049,
		3.981240, 1.152036, 2.182820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.747739, 1.064265, 1.921426>,  <4.423251, 1.639511, 1.944086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.747739, 1.064265, 1.921426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.360172, 0.965530, 1.928009>,  <4.127632, 0.906289, 1.931959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.360172, 0.965530, 1.928009>,  <4.747739, 1.064265, 1.921426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.360172, 0.965530, 1.928009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109751, -0.488522, -0.865622,
		0.221708, -0.836909, 0.500428,
		-0.968917, -0.246838, 0.016457,
		4.069497, 0.891479, 1.932946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.608416, 0.227183, 1.865535>,  <4.747739, 1.064265, 1.921426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.608416, 0.227183, 1.865535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.293606, 0.446953, 1.753304>,  <4.104720, 0.578815, 1.685965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.293606, 0.446953, 1.753304>,  <4.608416, 0.227183, 1.865535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.293606, 0.446953, 1.753304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083434, -0.545420, -0.834000,
		-0.611253, -0.632969, 0.475100,
		-0.787025, 0.549424, -0.280578,
		4.057498, 0.611780, 1.669130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.985670, -0.169414, 1.999813>,  <4.608416, 0.227183, 1.865535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.985670, -0.169414, 1.999813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.013176, 0.097023, 1.702736>,  <4.029680, 0.256885, 1.524490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.013176, 0.097023, 1.702736>,  <3.985670, -0.169414, 1.999813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.013176, 0.097023, 1.702736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022976, -0.745316, -0.666316,
		-0.997368, 0.028756, -0.066556,
		0.068766, 0.666091, -0.742693,
		4.033806, 0.296850, 1.479928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.436746, -0.259017, 1.534185>,  <3.985670, -0.169414, 1.999813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.436746, -0.259017, 1.534185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.745213, -0.078934, 1.354134>,  <3.930292, 0.029116, 1.246103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.745213, -0.078934, 1.354134>,  <3.436746, -0.259017, 1.534185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.745213, -0.078934, 1.354134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041730, -0.669779, -0.741387,
		-0.635266, 0.590516, -0.497723,
		0.771166, 0.450208, -0.450129,
		3.976562, 0.056129, 1.219095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.266265, -0.185518, 0.893190>,  <3.436746, -0.259017, 1.534185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.266265, -0.185518, 0.893190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.665367, -0.164734, 0.876282>,  <3.904828, -0.152263, 0.866137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.665367, -0.164734, 0.876282>,  <3.266265, -0.185518, 0.893190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.665367, -0.164734, 0.876282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004275, -0.580373, -0.814340,
		-0.066847, 0.812691, -0.578847,
		0.997754, 0.051961, -0.042270,
		3.964693, -0.149145, 0.863601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.344845, 0.045955, 0.220187>,  <3.266265, -0.185518, 0.893190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.344845, 0.045955, 0.220187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.689053, -0.131248, 0.320786>,  <3.895577, -0.237570, 0.381145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.689053, -0.131248, 0.320786>,  <3.344845, 0.045955, 0.220187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.689053, -0.131248, 0.320786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049544, -0.418573, -0.906831,
		0.507003, 0.792806, -0.338241,
		0.860519, -0.443008, 0.251497,
		3.947208, -0.264151, 0.396235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.945476, 3.941092, -0.002405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.708754, 3.813690, -0.298599>,  <2.566720, 3.737249, -0.476316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.708754, 3.813690, -0.298599>,  <2.945476, 3.941092, -0.002405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.708754, 3.813690, -0.298599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555991, 0.826422, 0.088886,
		0.583643, 0.464307, -0.666168,
		-0.591806, -0.318505, -0.740486,
		2.531212, 3.718139, -0.520745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.391640, 3.342314, 0.154615>,  <2.945476, 3.941092, -0.002405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.391640, 3.342314, 0.154615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.604790, 3.571365, -0.094589>,  <3.732680, 3.708796, -0.244112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.604790, 3.571365, -0.094589>,  <3.391640, 3.342314, 0.154615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.604790, 3.571365, -0.094589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417827, 0.462182, 0.782182,
		0.735843, -0.677116, 0.007025,
		0.532875, 0.572628, -0.623011,
		3.764652, 3.743154, -0.281492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.139734, 3.326660, 0.235615>,  <3.391640, 3.342314, 0.154615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.139734, 3.326660, 0.235615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.078413, 3.689285, 0.078316>,  <4.041621, 3.906860, -0.016064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.078413, 3.689285, 0.078316>,  <4.139734, 3.326660, 0.235615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.078413, 3.689285, 0.078316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486104, 0.415656, 0.768722,
		0.860350, -0.073312, -0.504405,
		-0.153302, 0.906562, -0.393247,
		4.032423, 3.961254, -0.039658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.706565, 3.715409, 0.392010>,  <4.139734, 3.326660, 0.235615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.706565, 3.715409, 0.392010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.474035, 4.030045, 0.308739>,  <4.334517, 4.218826, 0.258776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.474035, 4.030045, 0.308739>,  <4.706565, 3.715409, 0.392010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.474035, 4.030045, 0.308739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578720, 0.579552, 0.573762,
		0.571965, 0.213066, -0.792123,
		-0.581325, 0.786589, -0.208178,
		4.299638, 4.266021, 0.246285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.038123, 4.180881, 0.769330>,  <4.706565, 3.715409, 0.392010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.038123, 4.180881, 0.769330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.707314, 4.363861, 0.638626>,  <4.508828, 4.473649, 0.560204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.707314, 4.363861, 0.638626>,  <5.038123, 4.180881, 0.769330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.707314, 4.363861, 0.638626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183112, 0.768754, 0.612770,
		0.531510, 0.446941, -0.719542,
		-0.827023, 0.457450, -0.326761,
		4.459207, 4.501096, 0.540598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.224329, 4.927099, 0.688371>,  <5.038123, 4.180881, 0.769330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.224329, 4.927099, 0.688371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.827560, 4.908447, 0.735565>,  <4.589499, 4.897256, 0.763881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.827560, 4.908447, 0.735565>,  <5.224329, 4.927099, 0.688371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.827560, 4.908447, 0.735565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017773, 0.869760, 0.493154,
		-0.125613, 0.491267, -0.861904,
		-0.991920, -0.046628, 0.117984,
		4.529984, 4.894459, 0.770960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.856193, 5.664533, 0.530095>,  <5.224329, 4.927099, 0.688371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.856193, 5.664533, 0.530095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.590422, 5.464020, 0.751816>,  <4.430959, 5.343712, 0.884848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.590422, 5.464020, 0.751816>,  <4.856193, 5.664533, 0.530095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.590422, 5.464020, 0.751816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181433, 0.827692, 0.531044,
		-0.724995, 0.252272, -0.640890,
		-0.664427, -0.501284, 0.554302,
		4.391094, 5.313635, 0.918106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.160110, 6.007404, 0.476172>,  <4.856193, 5.664533, 0.530095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.160110, 6.007404, 0.476172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.172064, 5.792389, 0.813255>,  <4.179236, 5.663380, 1.015506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.172064, 5.792389, 0.813255>,  <4.160110, 6.007404, 0.476172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.172064, 5.792389, 0.813255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424245, 0.756558, 0.497631,
		-0.905054, -0.372387, -0.205439,
		0.029885, -0.537539, 0.842709,
		4.181029, 5.631127, 1.066068>
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
