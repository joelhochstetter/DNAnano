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
	<4.119846, 0.008838, -0.603993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.862167, 0.148933, -0.875977>,  <3.707560, 0.232991, -1.039166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.862167, 0.148933, -0.875977>,  <4.119846, 0.008838, -0.603993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.862167, 0.148933, -0.875977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160157, 0.807521, 0.567680,
		0.747904, 0.474598, -0.464109,
		-0.644197, 0.350239, -0.679958,
		3.668908, 0.254005, -1.079964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.417055, 0.716520, -0.872885>,  <4.119846, 0.008838, -0.603993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.417055, 0.716520, -0.872885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.024899, 0.638100, -0.880852>,  <3.789605, 0.591047, -0.885632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.024899, 0.638100, -0.880852>,  <4.417055, 0.716520, -0.872885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.024899, 0.638100, -0.880852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170883, 0.795473, 0.581396,
		-0.098141, 0.573399, -0.813377,
		-0.980391, -0.196051, -0.019916,
		3.730781, 0.579284, -0.886827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.084560, 0.719591, -1.101707>,  <4.417055, 0.716520, -0.872885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.084560, 0.719591, -1.101707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.975178, 1.012245, -0.851929>,  <4.909549, 1.187837, -0.702062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.975178, 1.012245, -0.851929>,  <5.084560, 0.719591, -1.101707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.975178, 1.012245, -0.851929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097964, -0.666999, 0.738590,
		0.956883, 0.140798, 0.254068,
		-0.273455, 0.731634, 0.624447,
		4.893141, 1.231735, -0.664595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.455587, 0.490921, -0.496648>,  <5.084560, 0.719591, -1.101707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.455587, 0.490921, -0.496648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.163071, 0.741180, -0.388000>,  <4.987561, 0.891336, -0.322812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.163071, 0.741180, -0.388000>,  <5.455587, 0.490921, -0.496648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.163071, 0.741180, -0.388000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195933, -0.574144, 0.794965,
		0.653316, 0.528133, 0.542452,
		-0.731292, 0.625647, 0.271619,
		4.943683, 0.928875, -0.306515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.639741, 0.655532, 0.207055>,  <5.455587, 0.490921, -0.496648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.639741, 0.655532, 0.207055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.252594, 0.728462, 0.137787>,  <5.020306, 0.772221, 0.096226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.252594, 0.728462, 0.137787>,  <5.639741, 0.655532, 0.207055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.252594, 0.728462, 0.137787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238720, -0.449824, 0.860622,
		0.079018, 0.874308, 0.478895,
		-0.967868, 0.182327, -0.173171,
		4.962234, 0.783160, 0.085836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.453441, 0.940804, 0.844146>,  <5.639741, 0.655532, 0.207055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.453441, 0.940804, 0.844146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.130215, 0.805801, 0.651016>,  <4.936279, 0.724800, 0.535139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.130215, 0.805801, 0.651016>,  <5.453441, 0.940804, 0.844146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.130215, 0.805801, 0.651016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266240, -0.521888, 0.810400,
		-0.525495, 0.783405, 0.331863,
		-0.808066, -0.337506, -0.482823,
		4.887795, 0.704550, 0.506169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.922471, 1.035655, 1.375199>,  <5.453441, 0.940804, 0.844146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.922471, 1.035655, 1.375199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.755695, 0.800568, 1.097855>,  <4.655630, 0.659515, 0.931448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.755695, 0.800568, 1.097855>,  <4.922471, 1.035655, 1.375199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.755695, 0.800568, 1.097855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584629, -0.410691, 0.699673,
		-0.695968, 0.697079, -0.172365,
		-0.416939, -0.587719, -0.693360,
		4.630614, 0.624252, 0.889847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.192713, 1.076924, 1.390675>,  <4.922471, 1.035655, 1.375199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.192713, 1.076924, 1.390675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.267029, 0.718277, 1.229897>,  <4.311618, 0.503089, 1.133430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.267029, 0.718277, 1.229897>,  <4.192713, 1.076924, 1.390675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.267029, 0.718277, 1.229897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418323, -0.442320, 0.793321,
		-0.889094, 0.020753, -0.457254,
		0.185789, -0.896617, -0.401946,
		4.322765, 0.449292, 1.109313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.851791, 0.008881, 2.331523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.512762, -0.150803, 2.191666>,  <4.309344, -0.246613, 2.107751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.512762, -0.150803, 2.191666>,  <4.851791, 0.008881, 2.331523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.512762, -0.150803, 2.191666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247251, 0.285916, -0.925807,
		0.469560, -0.871140, -0.143630,
		-0.847573, -0.399209, -0.349645,
		4.258490, -0.270565, 2.086772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.040055, -0.485457, 1.729841>,  <4.851791, 0.008881, 2.331523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.040055, -0.485457, 1.729841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.657763, -0.370773, 1.703377>,  <4.428387, -0.301963, 1.687498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.657763, -0.370773, 1.703377>,  <5.040055, -0.485457, 1.729841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.657763, -0.370773, 1.703377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131280, 0.214260, -0.967914,
		-0.263335, -0.933751, -0.242414,
		-0.955730, 0.286709, -0.066161,
		4.371043, -0.284761, 1.683528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.882224, -0.674947, 1.084457>,  <5.040055, -0.485457, 1.729841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.882224, -0.674947, 1.084457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.641242, -0.374016, 1.191078>,  <4.496653, -0.193457, 1.255051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.641242, -0.374016, 1.191078>,  <4.882224, -0.674947, 1.084457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.641242, -0.374016, 1.191078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112713, 0.410808, -0.904728,
		-0.790154, -0.515014, -0.332290,
		-0.602455, 0.752328, 0.266553,
		4.460505, -0.148317, 1.271044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.408222, -0.700440, 0.559731>,  <4.882224, -0.674947, 1.084457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.408222, -0.700440, 0.559731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.393834, -0.336830, 0.725807>,  <4.385201, -0.118665, 0.825453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.393834, -0.336830, 0.725807>,  <4.408222, -0.700440, 0.559731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.393834, -0.336830, 0.725807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037079, 0.416387, -0.908431,
		-0.998665, -0.017280, -0.048682,
		-0.035969, 0.909023, 0.415190,
		4.383043, -0.064123, 0.850364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.053527, -0.228858, 0.101245>,  <4.408222, -0.700440, 0.559731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.053527, -0.228858, 0.101245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.243945, 0.023384, 0.346428>,  <4.358196, 0.174729, 0.493538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.243945, 0.023384, 0.346428>,  <4.053527, -0.228858, 0.101245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.243945, 0.023384, 0.346428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166901, 0.619549, -0.767009,
		-0.863437, 0.467435, 0.189685,
		0.476046, 0.630606, 0.612957,
		4.386759, 0.212566, 0.530315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.779210, 0.421141, -0.022082>,  <4.053527, -0.228858, 0.101245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.779210, 0.421141, -0.022082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.138978, 0.473175, 0.144829>,  <4.354839, 0.504396, 0.244975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.138978, 0.473175, 0.144829>,  <3.779210, 0.421141, -0.022082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.138978, 0.473175, 0.144829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273880, 0.576284, -0.769991,
		-0.340635, 0.806830, 0.482694,
		0.899421, 0.130085, 0.417277,
		4.408804, 0.512201, 0.270012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.711353, 1.103605, 0.030613>,  <3.779210, 0.421141, -0.022082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.711353, 1.103605, 0.030613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.099566, 1.009453, 0.051239>,  <4.332495, 0.952962, 0.063614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.099566, 1.009453, 0.051239>,  <3.711353, 1.103605, 0.030613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.099566, 1.009453, 0.051239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215298, 0.750979, -0.624241,
		0.108210, 0.616949, 0.779528,
		0.970534, -0.235380, 0.051564,
		4.390727, 0.938839, 0.066708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.953066, 1.732878, 0.028353>,  <3.711353, 1.103605, 0.030613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.953066, 1.732878, 0.028353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.232018, 1.474083, -0.094978>,  <4.399390, 1.318806, -0.168977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.232018, 1.474083, -0.094978>,  <3.953066, 1.732878, 0.028353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.232018, 1.474083, -0.094978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227016, 0.607465, -0.761216,
		0.679796, 0.460863, 0.570511,
		0.697382, -0.646987, -0.308329,
		4.441233, 1.279987, -0.187477>
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
