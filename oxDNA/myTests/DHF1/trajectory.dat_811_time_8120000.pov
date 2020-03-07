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
	<2.261567, 5.546124, 1.752750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.153633, 5.687042, 2.111208>,  <2.088873, 5.771593, 2.326283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.153633, 5.687042, 2.111208>,  <2.261567, 5.546124, 1.752750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.153633, 5.687042, 2.111208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569882, -0.691744, 0.443536,
		0.776159, 0.630379, -0.014111,
		-0.269834, 0.352296, 0.896146,
		2.072683, 5.792731, 2.380052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.904261, 5.665197, 2.178317>,  <2.261567, 5.546124, 1.752750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.904261, 5.665197, 2.178317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.577538, 5.599907, 2.399652>,  <2.381504, 5.560733, 2.532454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.577538, 5.599907, 2.399652>,  <2.904261, 5.665197, 2.178317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.577538, 5.599907, 2.399652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475981, -0.732637, 0.486503,
		0.325987, 0.660758, 0.676116,
		-0.816808, -0.163225, 0.553338,
		2.332495, 5.550940, 2.565654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.996435, 5.793612, 2.831756>,  <2.904261, 5.665197, 2.178317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.996435, 5.793612, 2.831756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.719158, 5.507050, 2.800146>,  <2.552792, 5.335112, 2.781180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.719158, 5.507050, 2.800146>,  <2.996435, 5.793612, 2.831756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.719158, 5.507050, 2.800146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639043, -0.661608, 0.392300,
		-0.333329, 0.221440, 0.916437,
		-0.693192, -0.716407, -0.079024,
		2.511200, 5.292127, 2.776439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.963870, 5.266799, 3.437658>,  <2.996435, 5.793612, 2.831756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.963870, 5.266799, 3.437658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.911594, 5.122871, 3.068129>,  <2.880229, 5.036515, 2.846411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.911594, 5.122871, 3.068129>,  <2.963870, 5.266799, 3.437658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.911594, 5.122871, 3.068129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699990, -0.693370, 0.171036,
		-0.702093, -0.624314, 0.342486,
		-0.130689, -0.359820, -0.923824,
		2.872388, 5.014925, 2.790982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.947738, 4.523584, 3.460221>,  <2.963870, 5.266799, 3.437658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.947738, 4.523584, 3.460221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.072269, 4.642433, 3.099157>,  <3.146988, 4.713743, 2.882519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.072269, 4.642433, 3.099157>,  <2.947738, 4.523584, 3.460221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.072269, 4.642433, 3.099157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803017, -0.590191, 0.082693,
		-0.508171, -0.750595, -0.422339,
		0.311329, 0.297123, -0.902658,
		3.165668, 4.731570, 2.828360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.910228, 3.918589, 3.031745>,  <2.947738, 4.523584, 3.460221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.910228, 3.918589, 3.031745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.158604, 4.174034, 2.849928>,  <3.307629, 4.327302, 2.740838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.158604, 4.174034, 2.849928>,  <2.910228, 3.918589, 3.031745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.158604, 4.174034, 2.849928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679275, -0.727768, -0.094547,
		-0.391180, -0.250051, -0.885693,
		0.620938, 0.638614, -0.454542,
		3.344885, 4.365618, 2.713565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.113741, 3.496649, 2.343921>,  <2.910228, 3.918589, 3.031745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.113741, 3.496649, 2.343921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.377342, 3.787567, 2.420607>,  <3.535503, 3.962118, 2.466618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.377342, 3.787567, 2.420607>,  <3.113741, 3.496649, 2.343921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.377342, 3.787567, 2.420607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748864, -0.658225, -0.077095,
		0.070120, 0.194374, -0.978418,
		0.659004, 0.727296, 0.191714,
		3.575043, 4.005756, 2.478121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.655335, 3.327221, 1.965062>,  <3.113741, 3.496649, 2.343921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.655335, 3.327221, 1.965062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.818272, 3.558731, 2.247648>,  <3.916033, 3.697637, 2.417200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.818272, 3.558731, 2.247648>,  <3.655335, 3.327221, 1.965062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.818272, 3.558731, 2.247648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769346, -0.634290, 0.076048,
		0.492119, 0.512539, -0.703650,
		0.407340, 0.578775, 0.706466,
		3.940474, 3.732363, 2.459588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.388397, 2.859996, 3.129874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.693352, 3.095772, 3.236704>,  <4.876325, 3.237237, 3.300802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.693352, 3.095772, 3.236704>,  <4.388397, 2.859996, 3.129874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.693352, 3.095772, 3.236704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432889, 0.771308, -0.466575,
		-0.481014, 0.240097, 0.843196,
		0.762386, 0.589439, 0.267075,
		4.922068, 3.272604, 3.316826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.182856, 3.368174, 3.527292>,  <4.388397, 2.859996, 3.129874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.182856, 3.368174, 3.527292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.496025, 3.486511, 3.308382>,  <4.683927, 3.557513, 3.177036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.496025, 3.486511, 3.308382>,  <4.182856, 3.368174, 3.527292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.496025, 3.486511, 3.308382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529598, 0.778526, -0.336783,
		0.326434, 0.553510, 0.766203,
		0.782922, 0.295842, -0.547275,
		4.730902, 3.575264, 3.144199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.451389, 4.065873, 3.730476>,  <4.182856, 3.368174, 3.527292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.451389, 4.065873, 3.730476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.515343, 3.976616, 3.345842>,  <4.553715, 3.923062, 3.115062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.515343, 3.976616, 3.345842>,  <4.451389, 4.065873, 3.730476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.515343, 3.976616, 3.345842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673984, 0.687048, -0.271498,
		0.721237, 0.691501, -0.040546,
		0.159884, -0.223142, -0.961584,
		4.563308, 3.909673, 3.057367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.625533, 4.664440, 3.222822>,  <4.451389, 4.065873, 3.730476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.625533, 4.664440, 3.222822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.440125, 4.380173, 3.011126>,  <4.328879, 4.209612, 2.884107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.440125, 4.380173, 3.011126>,  <4.625533, 4.664440, 3.222822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.440125, 4.380173, 3.011126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639409, 0.681763, -0.355466,
		0.613435, 0.173635, -0.770420,
		-0.463523, -0.710669, -0.529241,
		4.301068, 4.166972, 2.852353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.475012, 4.983838, 2.651377>,  <4.625533, 4.664440, 3.222822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.475012, 4.983838, 2.651377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.220642, 4.676933, 2.618135>,  <4.068020, 4.492790, 2.598190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.220642, 4.676933, 2.618135>,  <4.475012, 4.983838, 2.651377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.220642, 4.676933, 2.618135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734251, 0.634667, -0.240982,
		0.237641, -0.092227, -0.966965,
		-0.635926, -0.767263, -0.083105,
		4.029864, 4.446754, 2.593204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.092404, 5.279402, 2.148938>,  <4.475012, 4.983838, 2.651377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.092404, 5.279402, 2.148938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.864517, 4.986389, 2.297972>,  <3.727785, 4.810582, 2.387392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.864517, 4.986389, 2.297972>,  <4.092404, 5.279402, 2.148938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.864517, 4.986389, 2.297972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820494, 0.532921, -0.206846,
		-0.047037, -0.423547, -0.904652,
		-0.569717, -0.732532, 0.372585,
		3.693602, 4.766630, 2.409747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.552526, 5.078572, 1.624440>,  <4.092404, 5.279402, 2.148938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.552526, 5.078572, 1.624440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.420738, 4.965744, 1.984859>,  <3.341666, 4.898047, 2.201111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.420738, 4.965744, 1.984859>,  <3.552526, 5.078572, 1.624440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.420738, 4.965744, 1.984859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921951, 0.301912, -0.242600,
		-0.203607, -0.910651, -0.359526,
		-0.329469, -0.282070, 0.901048,
		3.321898, 4.881123, 2.255174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.924567, 4.524537, 1.568617>,  <3.552526, 5.078572, 1.624440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.924567, 4.524537, 1.568617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.903450, 4.718391, 1.917866>,  <2.890780, 4.834704, 2.127415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.903450, 4.718391, 1.917866>,  <2.924567, 4.524537, 1.568617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.903450, 4.718391, 1.917866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945911, 0.255999, -0.199289,
		-0.320101, -0.836417, 0.444907,
		-0.052793, 0.484636, 0.873122,
		2.887612, 4.863782, 2.179802>
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
