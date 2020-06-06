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
	<24.415510, 34.909847, 35.626991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.251280, 34.701889, 35.327358>,  <24.152740, 34.577114, 35.147579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.251280, 34.701889, 35.327358>,  <24.415510, 34.909847, 35.626991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.251280, 34.701889, 35.327358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055895, -0.834329, 0.548426,
		-0.910111, 0.183301, 0.371616,
		-0.410577, -0.519900, -0.749086,
		24.128107, 34.545918, 35.102631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.814091, 34.598385, 34.880848>,  <24.415510, 34.909847, 35.626991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.814091, 34.598385, 34.880848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.522425, 34.361309, 35.017693>,  <24.347425, 34.219063, 35.099800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.522425, 34.361309, 35.017693>,  <24.814091, 34.598385, 34.880848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.522425, 34.361309, 35.017693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104338, -0.590349, -0.800376,
		0.676338, -0.547911, 0.492301,
		-0.729164, -0.592690, 0.342108,
		24.303675, 34.183502, 35.120323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.062807, 33.877495, 35.004272>,  <24.814091, 34.598385, 34.880848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.062807, 33.877495, 35.004272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.673698, 33.893532, 34.912964>,  <24.440233, 33.903152, 34.858177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.673698, 33.893532, 34.912964>,  <25.062807, 33.877495, 35.004272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.673698, 33.893532, 34.912964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160491, -0.594058, -0.788250,
		-0.167210, -0.803422, 0.571449,
		-0.972771, 0.040091, -0.228274,
		24.381866, 33.905560, 34.844482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.850777, 33.178890, 34.973095>,  <25.062807, 33.877495, 35.004272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.850777, 33.178890, 34.973095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.629465, 33.422703, 34.745991>,  <24.496677, 33.568989, 34.609730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.629465, 33.422703, 34.745991>,  <24.850777, 33.178890, 34.973095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.629465, 33.422703, 34.745991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253684, -0.525918, -0.811822,
		-0.793426, -0.593197, 0.136352,
		-0.553280, 0.609531, -0.567762,
		24.463482, 33.605560, 34.575661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.690542, 32.823837, 34.288395>,  <24.850777, 33.178890, 34.973095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.690542, 32.823837, 34.288395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.618490, 33.204292, 34.188087>,  <24.575258, 33.432568, 34.127903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.618490, 33.204292, 34.188087>,  <24.690542, 32.823837, 34.288395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.618490, 33.204292, 34.188087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015716, -0.257686, -0.966101,
		-0.983517, -0.170083, 0.061366,
		-0.180130, 0.951141, -0.250766,
		24.564451, 33.489635, 34.112858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.156591, 32.751690, 33.810780>,  <24.690542, 32.823837, 34.288395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.156591, 32.751690, 33.810780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.421692, 33.049870, 33.782314>,  <24.580751, 33.228779, 33.765236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.421692, 33.049870, 33.782314>,  <24.156591, 32.751690, 33.810780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.421692, 33.049870, 33.782314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304346, -0.354966, -0.883953,
		-0.684203, 0.564183, -0.462129,
		0.662751, 0.745451, -0.071162,
		24.620518, 33.273506, 33.760967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.188416, 32.883900, 33.086895>,  <24.156591, 32.751690, 33.810780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.188416, 32.883900, 33.086895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532534, 33.061657, 33.186821>,  <24.739004, 33.168312, 33.246777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532534, 33.061657, 33.186821>,  <24.188416, 32.883900, 33.086895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532534, 33.061657, 33.186821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437190, -0.391075, -0.809892,
		-0.262217, 0.805961, -0.530725,
		0.860295, 0.444395, 0.249811,
		24.790623, 33.194977, 33.261765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.381950, 33.349274, 32.559063>,  <24.188416, 32.883900, 33.086895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.381950, 33.349274, 32.559063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.721457, 33.254223, 32.748013>,  <24.925159, 33.197193, 32.861382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.721457, 33.254223, 32.748013>,  <24.381950, 33.349274, 32.559063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.721457, 33.254223, 32.748013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404058, -0.284781, -0.869274,
		0.341082, 0.928674, -0.145699,
		0.848764, -0.237623, 0.472372,
		24.976086, 33.182938, 32.889725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.966808, 33.688755, 32.135239>,  <24.381950, 33.349274, 32.559063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.966808, 33.688755, 32.135239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.137953, 33.409245, 32.364552>,  <25.240639, 33.241539, 32.502140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.137953, 33.409245, 32.364552>,  <24.966808, 33.688755, 32.135239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.137953, 33.409245, 32.364552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483002, -0.359347, -0.798486,
		0.763967, 0.618536, 0.183758,
		0.427859, -0.698772, 0.573283,
		25.266310, 33.199612, 32.536537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610737, 33.810192, 32.011799>,  <24.966808, 33.688755, 32.135239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610737, 33.810192, 32.011799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599592, 33.441868, 32.167400>,  <25.592905, 33.220871, 32.260761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.599592, 33.441868, 32.167400>,  <25.610737, 33.810192, 32.011799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.599592, 33.441868, 32.167400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444056, -0.360051, -0.820474,
		0.895566, 0.149878, 0.418925,
		-0.027864, -0.920815, 0.389004,
		25.591232, 33.165623, 32.284100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296022, 33.535557, 32.097248>,  <25.610737, 33.810192, 32.011799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296022, 33.535557, 32.097248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070923, 33.206902, 32.060974>,  <25.935863, 33.009708, 32.039207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070923, 33.206902, 32.060974>,  <26.296022, 33.535557, 32.097248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070923, 33.206902, 32.060974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437361, -0.202853, -0.876108,
		0.701447, -0.532694, 0.473508,
		-0.562750, -0.821637, -0.090689,
		25.902098, 32.960411, 32.033768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729132, 32.992393, 31.830708>,  <26.296022, 33.535557, 32.097248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729132, 32.992393, 31.830708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371031, 32.829868, 31.757565>,  <26.156170, 32.732353, 31.713678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371031, 32.829868, 31.757565>,  <26.729132, 32.992393, 31.830708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371031, 32.829868, 31.757565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334165, -0.340819, -0.878736,
		0.294721, -0.847793, 0.440894,
		-0.895250, -0.406313, -0.182856,
		26.102455, 32.707973, 31.702707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.856190, 32.208328, 31.611471>,  <26.729132, 32.992393, 31.830708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.856190, 32.208328, 31.611471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513481, 32.357410, 31.468904>,  <26.307856, 32.446857, 31.383364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513481, 32.357410, 31.468904>,  <26.856190, 32.208328, 31.611471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513481, 32.357410, 31.468904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289293, -0.224783, -0.930474,
		-0.426908, -0.900313, 0.084767,
		-0.856773, 0.372704, -0.356416,
		26.256449, 32.469223, 31.361980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625807, 31.809317, 31.064213>,  <26.856190, 32.208328, 31.611471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625807, 31.809317, 31.064213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398602, 32.132927, 31.003763>,  <26.262280, 32.327095, 30.967493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398602, 32.132927, 31.003763>,  <26.625807, 31.809317, 31.064213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398602, 32.132927, 31.003763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070612, -0.135038, -0.988321,
		-0.819986, -0.572048, 0.019576,
		-0.568011, 0.809027, -0.151123,
		26.228199, 32.375637, 30.958426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377314, 31.604994, 30.452459>,  <26.625807, 31.809317, 31.064213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377314, 31.604994, 30.452459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264717, 31.986193, 30.497292>,  <26.197159, 32.214912, 30.524191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.264717, 31.986193, 30.497292>,  <26.377314, 31.604994, 30.452459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264717, 31.986193, 30.497292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065212, 0.135533, -0.988625,
		-0.957345, -0.270982, -0.100298,
		-0.281494, 0.952995, 0.112080,
		26.180269, 32.272091, 30.530916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909019, 31.753944, 29.836100>,  <26.377314, 31.604994, 30.452459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.909019, 31.753944, 29.836100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055834, 32.090069, 29.995678>,  <26.143923, 32.291744, 30.091425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055834, 32.090069, 29.995678>,  <25.909019, 31.753944, 29.836100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055834, 32.090069, 29.995678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209988, 0.342961, -0.915578,
		-0.906195, 0.419824, -0.050577,
		0.367036, 0.840313, 0.398947,
		26.165945, 32.342163, 30.115362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709991, 32.359104, 29.395687>,  <25.909019, 31.753944, 29.836100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709991, 32.359104, 29.395687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021254, 32.523415, 29.585733>,  <26.208012, 32.622002, 29.699760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021254, 32.523415, 29.585733>,  <25.709991, 32.359104, 29.395687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021254, 32.523415, 29.585733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286921, 0.440423, -0.850708,
		-0.558703, 0.798305, 0.224857,
		0.778157, 0.410777, 0.475116,
		26.254700, 32.646648, 29.728268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836084, 33.012394, 29.032612>,  <25.709991, 32.359104, 29.395687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836084, 33.012394, 29.032612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171667, 32.929317, 29.233814>,  <26.373016, 32.879471, 29.354536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171667, 32.929317, 29.233814>,  <25.836084, 33.012394, 29.032612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171667, 32.929317, 29.233814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543154, 0.262412, -0.797574,
		0.033653, 0.942341, 0.332959,
		0.838959, -0.207689, 0.503005,
		26.423355, 32.867012, 29.384716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341061, 33.526997, 28.809120>,  <25.836084, 33.012394, 29.032612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341061, 33.526997, 28.809120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548735, 33.220158, 28.959852>,  <26.673340, 33.036053, 29.050291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548735, 33.220158, 28.959852>,  <26.341061, 33.526997, 28.809120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548735, 33.220158, 28.959852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572027, -0.015702, -0.820085,
		0.635006, 0.641333, 0.430650,
		0.519185, -0.767102, 0.376831,
		26.704491, 32.990028, 29.072901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943907, 33.765209, 28.853018>,  <26.341061, 33.526997, 28.809120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943907, 33.765209, 28.853018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995686, 33.369247, 28.829903>,  <27.026752, 33.131672, 28.816032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.995686, 33.369247, 28.829903>,  <26.943907, 33.765209, 28.853018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.995686, 33.369247, 28.829903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632177, 0.127289, -0.764297,
		0.763934, 0.062404, 0.642270,
		0.129449, -0.989901, -0.057790,
		27.034521, 33.072277, 28.812565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573509, 33.719658, 28.655363>,  <26.943907, 33.765209, 28.853018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573509, 33.719658, 28.655363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441370, 33.350849, 28.574610>,  <27.362087, 33.129566, 28.526157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441370, 33.350849, 28.574610>,  <27.573509, 33.719658, 28.655363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441370, 33.350849, 28.574610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452913, 0.032807, -0.890951,
		0.828095, -0.385757, 0.406756,
		-0.330346, -0.922017, -0.201881,
		27.342266, 33.074245, 28.514046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226131, 33.362213, 28.450619>,  <27.573509, 33.719658, 28.655363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226131, 33.362213, 28.450619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930885, 33.117134, 28.337631>,  <27.753738, 32.970085, 28.269838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.930885, 33.117134, 28.337631>,  <28.226131, 33.362213, 28.450619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930885, 33.117134, 28.337631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390034, -0.045891, -0.919656,
		0.550509, -0.788983, 0.272846,
		-0.738115, -0.612698, -0.282467,
		27.709452, 32.933323, 28.252892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532957, 32.677124, 28.267593>,  <28.226131, 33.362213, 28.450619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532957, 32.677124, 28.267593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193588, 32.735691, 28.064127>,  <27.989967, 32.770832, 27.942047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193588, 32.735691, 28.064127>,  <28.532957, 32.677124, 28.267593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193588, 32.735691, 28.064127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470367, -0.232195, -0.851375,
		-0.242791, -0.961581, 0.128115,
		-0.848415, 0.146446, -0.508671,
		27.939062, 32.779617, 27.911526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433077, 32.108395, 27.933079>,  <28.532957, 32.677124, 28.267593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433077, 32.108395, 27.933079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249254, 32.416866, 27.756853>,  <28.138960, 32.601948, 27.651117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249254, 32.416866, 27.756853>,  <28.433077, 32.108395, 27.933079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249254, 32.416866, 27.756853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531563, -0.158567, -0.832044,
		-0.711510, -0.616559, -0.337058,
		-0.459558, 0.771176, -0.440562,
		28.111387, 32.648220, 27.624685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065981, 31.929771, 27.328438>,  <28.433077, 32.108395, 27.933079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065981, 31.929771, 27.328438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207382, 32.303532, 27.310867>,  <28.292223, 32.527786, 27.300325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207382, 32.303532, 27.310867>,  <28.065981, 31.929771, 27.328438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207382, 32.303532, 27.310867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390726, -0.190158, -0.900652,
		-0.849923, 0.301221, -0.432316,
		0.353503, 0.934401, -0.043925,
		28.313433, 32.583851, 27.297689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757030, 32.273376, 26.740776>,  <28.065981, 31.929771, 27.328438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757030, 32.273376, 26.740776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140787, 32.353432, 26.820286>,  <28.371042, 32.401463, 26.867992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140787, 32.353432, 26.820286>,  <27.757030, 32.273376, 26.740776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140787, 32.353432, 26.820286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241980, -0.221815, -0.944586,
		-0.144955, 0.954329, -0.261237,
		0.959392, 0.200136, 0.198775,
		28.428604, 32.413471, 26.879919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883978, 32.750225, 26.266676>,  <27.757030, 32.273376, 26.740776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883978, 32.750225, 26.266676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207163, 32.539715, 26.372684>,  <28.401073, 32.413410, 26.436289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.207163, 32.539715, 26.372684>,  <27.883978, 32.750225, 26.266676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207163, 32.539715, 26.372684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249656, -0.101652, -0.962984,
		0.533732, 0.844218, 0.049256,
		0.807962, -0.526273, 0.265019,
		28.449551, 32.381832, 26.452190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620586, 33.162136, 26.195570>,  <27.883978, 32.750225, 26.266676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620586, 33.162136, 26.195570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599253, 32.769482, 26.122316>,  <28.586452, 32.533890, 26.078363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599253, 32.769482, 26.122316>,  <28.620586, 33.162136, 26.195570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599253, 32.769482, 26.122316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441114, 0.141371, -0.886246,
		0.895865, -0.128050, 0.425476,
		-0.053334, -0.981640, -0.183134,
		28.583252, 32.474991, 26.067377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220295, 32.807358, 25.782080>,  <28.620586, 33.162136, 26.195570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220295, 32.807358, 25.782080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894396, 32.589340, 25.702969>,  <28.698856, 32.458530, 25.655502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894396, 32.589340, 25.702969>,  <29.220295, 32.807358, 25.782080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894396, 32.589340, 25.702969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070066, 0.246054, -0.966720,
		0.575570, -0.801488, -0.162282,
		-0.814745, -0.545045, -0.197778,
		28.649973, 32.425827, 25.643635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704754, 33.316734, 25.357702>,  <29.220295, 32.807358, 25.782080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704754, 33.316734, 25.357702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050756, 33.273972, 25.553799>,  <30.258358, 33.248314, 25.671457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.050756, 33.273972, 25.553799>,  <29.704754, 33.316734, 25.357702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050756, 33.273972, 25.553799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447749, -0.276514, -0.850330,
		0.226469, 0.955045, -0.191317,
		0.865004, -0.106911, 0.490242,
		30.310257, 33.241898, 25.700871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.193489, 33.855980, 25.060827>,  <29.704754, 33.316734, 25.357702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.193489, 33.855980, 25.060827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348408, 33.518902, 25.210421>,  <30.441359, 33.316654, 25.300177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.348408, 33.518902, 25.210421>,  <30.193489, 33.855980, 25.060827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348408, 33.518902, 25.210421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369782, -0.229601, -0.900303,
		0.844549, 0.486977, 0.222690,
		0.387297, -0.842696, 0.373984,
		30.464598, 33.266094, 25.322617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383493, 34.442936, 24.690292>,  <30.193489, 33.855980, 25.060827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383493, 34.442936, 24.690292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752161, 34.403847, 24.840481>,  <30.973362, 34.380394, 24.930593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752161, 34.403847, 24.840481>,  <30.383493, 34.442936, 24.690292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752161, 34.403847, 24.840481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197783, 0.714233, 0.671382,
		-0.333782, -0.693053, 0.638958,
		0.921668, -0.097720, 0.375472,
		31.028662, 34.374531, 24.953123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952211, 34.804722, 25.256800>,  <30.383493, 34.442936, 24.690292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952211, 34.804722, 25.256800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329494, 34.721909, 25.360720>,  <30.555864, 34.672222, 25.423071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329494, 34.721909, 25.360720>,  <29.952211, 34.804722, 25.256800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329494, 34.721909, 25.360720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147172, 0.440708, 0.885504,
		-0.297822, -0.873450, 0.385210,
		0.943209, -0.207030, 0.259800,
		30.612457, 34.659798, 25.438660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987236, 34.375504, 25.922619>,  <29.952211, 34.804722, 25.256800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987236, 34.375504, 25.922619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287165, 34.632702, 25.860228>,  <30.467121, 34.787022, 25.822792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287165, 34.632702, 25.860228>,  <29.987236, 34.375504, 25.922619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287165, 34.632702, 25.860228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157781, 0.402712, 0.901625,
		0.642554, -0.651446, 0.403413,
		0.749820, 0.642994, -0.155978,
		30.512110, 34.825600, 25.813435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548117, 34.340031, 26.338125>,  <29.987236, 34.375504, 25.922619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548117, 34.340031, 26.338125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528870, 34.727329, 26.240004>,  <30.517323, 34.959709, 26.181129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.528870, 34.727329, 26.240004>,  <30.548117, 34.340031, 26.338125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528870, 34.727329, 26.240004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171865, 0.233902, 0.956950,
		0.983945, 0.088205, 0.155154,
		-0.048117, 0.968251, -0.245306,
		30.514435, 35.017803, 26.166412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023048, 34.829998, 26.759809>,  <30.548117, 34.340031, 26.338125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023048, 34.829998, 26.759809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690018, 35.022461, 26.650042>,  <30.490200, 35.137939, 26.584181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690018, 35.022461, 26.650042>,  <31.023048, 34.829998, 26.759809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690018, 35.022461, 26.650042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175151, 0.241316, 0.954510,
		0.525488, 0.842768, -0.116639,
		-0.832577, 0.481154, -0.274420,
		30.440245, 35.166805, 26.567715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925909, 35.513004, 27.129406>,  <31.023048, 34.829998, 26.759809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925909, 35.513004, 27.129406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552086, 35.425339, 27.017284>,  <30.327791, 35.372742, 26.950012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552086, 35.425339, 27.017284>,  <30.925909, 35.513004, 27.129406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552086, 35.425339, 27.017284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336306, 0.286850, 0.897004,
		-0.116182, 0.932570, -0.341783,
		-0.934559, -0.219159, -0.280302,
		30.271719, 35.359592, 26.933193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565548, 36.038174, 27.410643>,  <30.925909, 35.513004, 27.129406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565548, 36.038174, 27.410643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312815, 35.741203, 27.321562>,  <30.161175, 35.563023, 27.268114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312815, 35.741203, 27.321562>,  <30.565548, 36.038174, 27.410643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312815, 35.741203, 27.321562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439372, 0.106360, 0.891986,
		-0.638544, 0.661435, -0.393402,
		-0.631833, -0.742423, -0.222701,
		30.123264, 35.518475, 27.254751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917646, 36.276417, 27.751163>,  <30.565548, 36.038174, 27.410643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917646, 36.276417, 27.751163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893820, 35.884197, 27.676350>,  <29.879524, 35.648865, 27.631460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893820, 35.884197, 27.676350>,  <29.917646, 36.276417, 27.751163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893820, 35.884197, 27.676350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615115, -0.111513, 0.780512,
		-0.786184, 0.161540, -0.596506,
		-0.059566, -0.980546, -0.187036,
		29.875950, 35.590034, 27.620239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222902, 35.997482, 27.713394>,  <29.917646, 36.276417, 27.751163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222902, 35.997482, 27.713394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456491, 35.694134, 27.829224>,  <29.596645, 35.512127, 27.898722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456491, 35.694134, 27.829224>,  <29.222902, 35.997482, 27.713394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456491, 35.694134, 27.829224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605376, -0.169190, 0.777750,
		-0.540828, -0.629486, -0.557900,
		0.583974, -0.758368, 0.289573,
		29.631683, 35.466625, 27.916096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724096, 35.671726, 28.011839>,  <29.222902, 35.997482, 27.713394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724096, 35.671726, 28.011839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048481, 35.478161, 28.143396>,  <29.243113, 35.362022, 28.222330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048481, 35.478161, 28.143396>,  <28.724096, 35.671726, 28.011839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048481, 35.478161, 28.143396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511043, -0.312107, 0.800890,
		-0.284895, -0.817579, -0.500400,
		0.810969, -0.483895, 0.328900,
		29.291769, 35.332989, 28.242064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493101, 35.065071, 28.269730>,  <28.724096, 35.671726, 28.011839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493101, 35.065071, 28.269730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846804, 35.096893, 28.453800>,  <29.059025, 35.115986, 28.564241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846804, 35.096893, 28.453800>,  <28.493101, 35.065071, 28.269730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846804, 35.096893, 28.453800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431200, -0.239285, 0.869948,
		0.179321, -0.967685, -0.177286,
		0.884257, 0.079554, 0.460174,
		29.112082, 35.120758, 28.591852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518002, 34.508396, 28.753986>,  <28.493101, 35.065071, 28.269730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518002, 34.508396, 28.753986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783068, 34.769329, 28.901144>,  <28.942106, 34.925888, 28.989439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783068, 34.769329, 28.901144>,  <28.518002, 34.508396, 28.753986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783068, 34.769329, 28.901144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340890, -0.174667, 0.923734,
		0.666837, -0.737536, 0.106627,
		0.662664, 0.652328, 0.367893,
		28.981867, 34.965027, 29.011513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888744, 34.120041, 29.327654>,  <28.518002, 34.508396, 28.753986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888744, 34.120041, 29.327654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928724, 34.516251, 29.365351>,  <28.952711, 34.753975, 29.387968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928724, 34.516251, 29.365351>,  <28.888744, 34.120041, 29.327654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928724, 34.516251, 29.365351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322938, -0.057293, 0.944684,
		0.941128, -0.124852, 0.314150,
		0.099947, 0.990520, 0.094240,
		28.958708, 34.813408, 29.393623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139376, 34.112045, 30.014914>,  <28.888744, 34.120041, 29.327654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139376, 34.112045, 30.014914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044420, 34.492886, 29.937815>,  <28.987446, 34.721390, 29.891556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044420, 34.492886, 29.937815>,  <29.139376, 34.112045, 30.014914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044420, 34.492886, 29.937815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321375, 0.110271, 0.940510,
		0.916714, 0.285212, 0.279804,
		-0.237390, 0.952100, -0.192747,
		28.973204, 34.778515, 29.879990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555502, 34.541508, 30.403477>,  <29.139376, 34.112045, 30.014914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555502, 34.541508, 30.403477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220055, 34.752121, 30.347651>,  <29.018787, 34.878490, 30.314154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220055, 34.752121, 30.347651>,  <29.555502, 34.541508, 30.403477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220055, 34.752121, 30.347651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116605, 0.076753, 0.990208,
		0.532094, 0.846680, -0.002969,
		-0.838617, 0.526538, -0.139567,
		28.968470, 34.910084, 30.305780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434525, 34.922729, 31.028502>,  <29.555502, 34.541508, 30.403477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434525, 34.922729, 31.028502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082474, 35.007847, 30.858753>,  <28.871243, 35.058918, 30.756905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082474, 35.007847, 30.858753>,  <29.434525, 34.922729, 31.028502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082474, 35.007847, 30.858753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380744, 0.217541, 0.898727,
		0.283564, 0.952572, -0.110443,
		-0.880128, 0.212797, -0.424373,
		28.818436, 35.071686, 30.731441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163979, 35.573967, 31.240639>,  <29.434525, 34.922729, 31.028502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163979, 35.573967, 31.240639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847807, 35.361088, 31.119322>,  <28.658104, 35.233360, 31.046532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847807, 35.361088, 31.119322>,  <29.163979, 35.573967, 31.240639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847807, 35.361088, 31.119322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495302, 0.263959, 0.827648,
		-0.360418, 0.804418, -0.472240,
		-0.790427, -0.532201, -0.303294,
		28.610680, 35.201427, 31.028334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563381, 35.934853, 31.369417>,  <29.163979, 35.573967, 31.240639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563381, 35.934853, 31.369417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414005, 35.565098, 31.338327>,  <28.324379, 35.343243, 31.319674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414005, 35.565098, 31.338327>,  <28.563381, 35.934853, 31.369417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414005, 35.565098, 31.338327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666592, 0.209134, 0.715484,
		-0.645133, 0.319003, -0.694292,
		-0.373441, -0.924392, -0.077726,
		28.301973, 35.287781, 31.315010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806025, 36.003910, 31.320810>,  <28.563381, 35.934853, 31.369417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806025, 36.003910, 31.320810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857431, 35.631001, 31.456074>,  <27.888275, 35.407253, 31.537231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857431, 35.631001, 31.456074>,  <27.806025, 36.003910, 31.320810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857431, 35.631001, 31.456074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714151, 0.149588, 0.683821,
		-0.688092, -0.329378, -0.646559,
		0.128518, -0.932273, 0.338156,
		27.895987, 35.351318, 31.557520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092676, 35.617767, 31.412762>,  <27.806025, 36.003910, 31.320810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092676, 35.617767, 31.412762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354801, 35.407074, 31.629320>,  <27.512077, 35.280659, 31.759256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.354801, 35.407074, 31.629320>,  <27.092676, 35.617767, 31.412762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354801, 35.407074, 31.629320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682265, -0.105169, 0.723501,
		-0.324156, -0.843498, -0.428293,
		0.655315, -0.526737, 0.541398,
		27.551395, 35.249054, 31.791740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758442, 35.034988, 31.639648>,  <27.092676, 35.617767, 31.412762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758442, 35.034988, 31.639648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072426, 35.055916, 31.886581>,  <27.260817, 35.068470, 32.034740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072426, 35.055916, 31.886581>,  <26.758442, 35.034988, 31.639648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072426, 35.055916, 31.886581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606376, -0.139485, 0.782849,
		0.127064, -0.988841, -0.077767,
		0.784961, 0.052316, 0.617333,
		27.307915, 35.071609, 32.071781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600901, 34.509052, 32.102932>,  <26.758442, 35.034988, 31.639648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600901, 34.509052, 32.102932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886637, 34.725185, 32.280811>,  <27.058079, 34.854866, 32.387539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.886637, 34.725185, 32.280811>,  <26.600901, 34.509052, 32.102932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886637, 34.725185, 32.280811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454282, -0.125317, 0.882000,
		0.532302, -0.832067, 0.155944,
		0.714341, 0.540333, 0.444699,
		27.100939, 34.887283, 32.414223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875721, 34.078163, 32.705242>,  <26.600901, 34.509052, 32.102932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875721, 34.078163, 32.705242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954147, 34.466175, 32.762642>,  <27.001204, 34.698982, 32.797081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954147, 34.466175, 32.762642>,  <26.875721, 34.078163, 32.705242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954147, 34.466175, 32.762642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386577, -0.058030, 0.920430,
		0.901175, -0.235938, 0.363615,
		0.196064, 0.970034, 0.143504,
		27.012966, 34.757187, 32.805695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314373, 34.103031, 33.258495>,  <26.875721, 34.078163, 32.705242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314373, 34.103031, 33.258495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151318, 34.467602, 33.236103>,  <27.053484, 34.686344, 33.222668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151318, 34.467602, 33.236103>,  <27.314373, 34.103031, 33.258495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151318, 34.467602, 33.236103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364864, -0.106378, 0.924964,
		0.837081, 0.397475, 0.375910,
		-0.407638, 0.911426, -0.055978,
		27.029026, 34.741028, 33.219311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398310, 34.377792, 33.931408>,  <27.314373, 34.103031, 33.258495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398310, 34.377792, 33.931408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094563, 34.593529, 33.785820>,  <26.912313, 34.722969, 33.698467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094563, 34.593529, 33.785820>,  <27.398310, 34.377792, 33.931408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094563, 34.593529, 33.785820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425654, 0.011299, 0.904816,
		0.492115, 0.842013, 0.220992,
		-0.759369, 0.539339, -0.363966,
		26.866753, 34.755329, 33.676632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409920, 34.857048, 34.445858>,  <27.398310, 34.377792, 33.931408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409920, 34.857048, 34.445858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065424, 34.848930, 34.242741>,  <26.858727, 34.844059, 34.120869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065424, 34.848930, 34.242741>,  <27.409920, 34.857048, 34.445858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065424, 34.848930, 34.242741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506095, 0.125148, 0.853350,
		0.046228, 0.991930, -0.118055,
		-0.861238, -0.020298, -0.507797,
		26.807053, 34.842842, 34.090401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608128, 34.472767, 35.125954>,  <27.409920, 34.857048, 34.445858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608128, 34.472767, 35.125954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820965, 34.732258, 34.908321>,  <27.948668, 34.887955, 34.777740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820965, 34.732258, 34.908321>,  <27.608128, 34.472767, 35.125954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820965, 34.732258, 34.908321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740136, -0.044307, 0.670996,
		0.411189, -0.759727, -0.503725,
		0.532092, 0.648731, -0.544083,
		27.980593, 34.926876, 34.745098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657553, 34.303574, 35.912514>,  <27.608128, 34.472767, 35.125954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657553, 34.303574, 35.912514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885714, 34.458721, 35.622910>,  <28.022610, 34.551811, 35.449146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885714, 34.458721, 35.622910>,  <27.657553, 34.303574, 35.912514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885714, 34.458721, 35.622910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409975, 0.629371, 0.660161,
		0.711731, -0.673385, 0.199978,
		0.570403, 0.387871, -0.724015,
		28.056835, 34.575081, 35.405704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267431, 34.112576, 35.967644>,  <27.657553, 34.303574, 35.912514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267431, 34.112576, 35.967644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229767, 34.474571, 35.801689>,  <28.207169, 34.691769, 35.702118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229767, 34.474571, 35.801689>,  <28.267431, 34.112576, 35.967644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229767, 34.474571, 35.801689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425125, 0.413379, 0.805224,
		0.900224, -0.100556, -0.423658,
		-0.094161, 0.904990, -0.414882,
		28.201519, 34.746067, 35.677223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778179, 34.474026, 36.042835>,  <28.267431, 34.112576, 35.967644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.778179, 34.474026, 36.042835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563995, 34.803696, 35.969051>,  <28.435486, 35.001495, 35.924782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563995, 34.803696, 35.969051>,  <28.778179, 34.474026, 36.042835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563995, 34.803696, 35.969051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550174, 0.506100, 0.664208,
		0.640776, 0.254171, -0.724433,
		-0.535458, 0.824172, -0.184459,
		28.403358, 35.050949, 35.913715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171143, 35.084812, 35.816006>,  <28.778179, 34.474026, 36.042835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171143, 35.084812, 35.816006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841709, 35.178982, 36.022415>,  <28.644049, 35.235485, 36.146259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841709, 35.178982, 36.022415>,  <29.171143, 35.084812, 35.816006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841709, 35.178982, 36.022415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563664, 0.441039, 0.698404,
		-0.063165, 0.866060, -0.495934,
		-0.823585, 0.235425, 0.516025,
		28.594633, 35.249611, 36.177223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171177, 35.856750, 35.939892>,  <29.171143, 35.084812, 35.816006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171177, 35.856750, 35.939892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986315, 35.616501, 36.200863>,  <28.875399, 35.472351, 36.357445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986315, 35.616501, 36.200863>,  <29.171177, 35.856750, 35.939892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986315, 35.616501, 36.200863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562668, 0.370047, 0.739236,
		-0.685434, 0.708741, 0.166935,
		-0.462153, -0.600626, 0.652428,
		28.847670, 35.436314, 36.396591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933411, 36.213783, 36.595539>,  <29.171177, 35.856750, 35.939892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933411, 36.213783, 36.595539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033298, 35.837364, 36.686817>,  <29.093231, 35.611515, 36.741585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033298, 35.837364, 36.686817>,  <28.933411, 36.213783, 36.595539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033298, 35.837364, 36.686817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440727, 0.320294, 0.838553,
		-0.862206, -0.108834, 0.494729,
		0.249722, -0.941045, 0.228194,
		29.108215, 35.555050, 36.755276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726931, 36.163380, 37.258408>,  <28.933411, 36.213783, 36.595539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726931, 36.163380, 37.258408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995884, 35.875969, 37.187275>,  <29.157255, 35.703522, 37.144596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.995884, 35.875969, 37.187275>,  <28.726931, 36.163380, 37.258408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995884, 35.875969, 37.187275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414343, 0.166280, 0.894802,
		-0.613367, -0.675333, 0.409520,
		0.672384, -0.718524, -0.177829,
		29.197599, 35.660412, 37.133926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664322, 35.657375, 37.833714>,  <28.726931, 36.163380, 37.258408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664322, 35.657375, 37.833714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022175, 35.595650, 37.665989>,  <29.236887, 35.558613, 37.565353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.022175, 35.595650, 37.665989>,  <28.664322, 35.657375, 37.833714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.022175, 35.595650, 37.665989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443943, 0.200984, 0.873224,
		-0.050478, -0.967364, 0.248314,
		0.894632, -0.154315, -0.419309,
		29.290564, 35.549355, 37.540195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065708, 35.338951, 38.342369>,  <28.664322, 35.657375, 37.833714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065708, 35.338951, 38.342369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348330, 35.493439, 38.105179>,  <29.517902, 35.586132, 37.962864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348330, 35.493439, 38.105179>,  <29.065708, 35.338951, 38.342369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348330, 35.493439, 38.105179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549906, 0.227749, 0.803575,
		0.445407, -0.893848, -0.051468,
		0.706552, 0.386221, -0.592974,
		29.560295, 35.609306, 37.927288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625254, 35.153637, 38.720047>,  <29.065708, 35.338951, 38.342369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625254, 35.153637, 38.720047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791994, 35.391003, 38.444630>,  <29.892038, 35.533424, 38.279381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.791994, 35.391003, 38.444630>,  <29.625254, 35.153637, 38.720047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791994, 35.391003, 38.444630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617583, 0.370909, 0.693554,
		0.666954, -0.714341, -0.211871,
		0.416849, 0.593417, -0.688544,
		29.917049, 35.569027, 38.238068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420851, 35.041924, 38.597294>,  <29.625254, 35.153637, 38.720047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420851, 35.041924, 38.597294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309702, 35.414646, 38.503899>,  <30.243013, 35.638279, 38.447861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309702, 35.414646, 38.503899>,  <30.420851, 35.041924, 38.597294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309702, 35.414646, 38.503899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589005, 0.357276, 0.724864,
		0.758855, 0.063896, -0.648118,
		-0.277873, 0.931811, -0.233485,
		30.226339, 35.694191, 38.433853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963400, 35.395966, 38.763451>,  <30.420851, 35.041924, 38.597294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963400, 35.395966, 38.763451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701368, 35.697086, 38.737640>,  <30.544149, 35.877758, 38.722153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701368, 35.697086, 38.737640>,  <30.963400, 35.395966, 38.763451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701368, 35.697086, 38.737640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546625, 0.531157, 0.647359,
		0.521608, 0.388797, -0.759448,
		-0.655078, 0.752801, -0.064529,
		30.504845, 35.922928, 38.718281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352392, 36.092976, 38.772747>,  <30.963400, 35.395966, 38.763451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352392, 36.092976, 38.772747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967878, 36.133888, 38.875092>,  <30.737169, 36.158436, 38.936501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967878, 36.133888, 38.875092>,  <31.352392, 36.092976, 38.772747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967878, 36.133888, 38.875092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275239, 0.312172, 0.909281,
		0.013132, 0.944503, -0.328240,
		-0.961286, 0.102285, 0.255865,
		30.679493, 36.164574, 38.951851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350582, 36.683449, 39.024036>,  <31.352392, 36.092976, 38.772747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350582, 36.683449, 39.024036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021397, 36.505112, 39.164864>,  <30.823885, 36.398109, 39.249359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021397, 36.505112, 39.164864>,  <31.350582, 36.683449, 39.024036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021397, 36.505112, 39.164864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206597, 0.342426, 0.916549,
		-0.529197, 0.827023, -0.189694,
		-0.822963, -0.445845, 0.352071,
		30.774508, 36.371357, 39.270485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096359, 37.191288, 39.472004>,  <31.350582, 36.683449, 39.024036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096359, 37.191288, 39.472004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908140, 36.858334, 39.589115>,  <30.795210, 36.658562, 39.659382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908140, 36.858334, 39.589115>,  <31.096359, 37.191288, 39.472004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908140, 36.858334, 39.589115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413856, 0.084854, 0.906379,
		-0.779301, 0.547662, 0.304560,
		-0.470546, -0.832386, 0.292780,
		30.766977, 36.608620, 39.676949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753014, 37.353367, 40.117863>,  <31.096359, 37.191288, 39.472004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753014, 37.353367, 40.117863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807747, 36.957256, 40.107765>,  <30.840586, 36.719589, 40.101707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807747, 36.957256, 40.107765>,  <30.753014, 37.353367, 40.117863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807747, 36.957256, 40.107765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449374, 0.039340, 0.892477,
		-0.882803, -0.133464, 0.450385,
		0.136832, -0.990272, -0.025246,
		30.848797, 36.660175, 40.100193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574724, 37.188900, 40.697071>,  <30.753014, 37.353367, 40.117863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574724, 37.188900, 40.697071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800379, 36.879936, 40.580357>,  <30.935772, 36.694557, 40.510330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800379, 36.879936, 40.580357>,  <30.574724, 37.188900, 40.697071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800379, 36.879936, 40.580357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338348, -0.106094, 0.935021,
		-0.753174, -0.626203, 0.201491,
		0.564137, -0.772408, -0.291782,
		30.969620, 36.648212, 40.492821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384504, 36.596920, 41.174286>,  <30.574724, 37.188900, 40.697071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384504, 36.596920, 41.174286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744263, 36.512001, 41.021435>,  <30.960117, 36.461052, 40.929726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744263, 36.512001, 41.021435>,  <30.384504, 36.596920, 41.174286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744263, 36.512001, 41.021435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369549, -0.097689, 0.924062,
		-0.233503, -0.972311, -0.009407,
		0.899394, -0.212295, -0.382127,
		31.014082, 36.448315, 40.906796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564569, 35.929211, 41.404995>,  <30.384504, 36.596920, 41.174286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564569, 35.929211, 41.404995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890509, 36.139271, 41.306820>,  <31.086073, 36.265305, 41.247913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890509, 36.139271, 41.306820>,  <30.564569, 35.929211, 41.404995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890509, 36.139271, 41.306820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414747, -0.232368, 0.879767,
		0.404975, -0.818673, -0.407148,
		0.814850, 0.525147, -0.245439,
		31.134964, 36.296814, 41.233189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110065, 35.514324, 41.657623>,  <30.564569, 35.929211, 41.404995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110065, 35.514324, 41.657623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260006, 35.883080, 41.618404>,  <31.349970, 36.104332, 41.594875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260006, 35.883080, 41.618404>,  <31.110065, 35.514324, 41.657623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260006, 35.883080, 41.618404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563336, -0.142506, 0.813846,
		0.736302, -0.360300, -0.572751,
		0.374849, 0.921887, -0.098042,
		31.372461, 36.159645, 41.588993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880243, 35.482910, 41.754948>,  <31.110065, 35.514324, 41.657623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880243, 35.482910, 41.754948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788883, 35.866810, 41.820324>,  <31.734066, 36.097149, 41.859550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788883, 35.866810, 41.820324>,  <31.880243, 35.482910, 41.754948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788883, 35.866810, 41.820324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478555, -0.035520, 0.877339,
		0.847831, 0.278601, -0.451181,
		-0.228402, 0.959750, 0.163441,
		31.720364, 36.154736, 41.869354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513176, 35.896259, 42.193523>,  <31.880243, 35.482910, 41.754948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513176, 35.896259, 42.193523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192150, 36.129253, 42.245068>,  <31.999535, 36.269051, 42.275993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192150, 36.129253, 42.245068>,  <32.513176, 35.896259, 42.193523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192150, 36.129253, 42.245068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216815, 0.083557, 0.972630,
		0.555771, 0.808538, -0.193350,
		-0.802565, 0.582481, 0.128864,
		31.951380, 36.303997, 42.283726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731049, 36.449753, 42.744709>,  <32.513176, 35.896259, 42.193523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731049, 36.449753, 42.744709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331688, 36.427162, 42.743801>,  <32.092072, 36.413609, 42.743256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331688, 36.427162, 42.743801>,  <32.731049, 36.449753, 42.744709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331688, 36.427162, 42.743801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012642, 0.184002, 0.982845,
		-0.055087, 0.981302, -0.184422,
		-0.998402, -0.056474, -0.002269,
		32.032169, 36.410221, 42.743122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488930, 36.946033, 43.140667>,  <32.731049, 36.449753, 42.744709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488930, 36.946033, 43.140667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152966, 36.728951, 43.139164>,  <31.951385, 36.598701, 43.138260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152966, 36.728951, 43.139164>,  <32.488930, 36.946033, 43.140667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152966, 36.728951, 43.139164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177875, 0.268726, 0.946650,
		-0.512742, 0.795774, -0.322241,
		-0.839915, -0.542706, -0.003762,
		31.900991, 36.566139, 43.138035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086826, 37.372890, 43.565609>,  <32.488930, 36.946033, 43.140667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086826, 37.372890, 43.565609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937906, 37.002045, 43.548420>,  <31.848553, 36.779537, 43.538105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937906, 37.002045, 43.548420>,  <32.086826, 37.372890, 43.565609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937906, 37.002045, 43.548420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064845, -0.020208, 0.997691,
		-0.925843, 0.374230, -0.052595,
		-0.372303, -0.927116, -0.042976,
		31.826216, 36.723911, 43.535526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577274, 37.360741, 44.015095>,  <32.086826, 37.372890, 43.565609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577274, 37.360741, 44.015095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617424, 36.967327, 43.954983>,  <31.641514, 36.731277, 43.918915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617424, 36.967327, 43.954983>,  <31.577274, 37.360741, 44.015095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617424, 36.967327, 43.954983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190295, -0.167236, 0.967378,
		-0.976582, -0.068500, -0.203948,
		0.100373, -0.983534, -0.150284,
		31.647535, 36.672268, 43.909897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937220, 37.097225, 44.140015>,  <31.577274, 37.360741, 44.015095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937220, 37.097225, 44.140015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230223, 36.830166, 44.193199>,  <31.406025, 36.669930, 44.225109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230223, 36.830166, 44.193199>,  <30.937220, 37.097225, 44.140015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230223, 36.830166, 44.193199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306518, -0.149069, 0.940120,
		-0.607850, -0.729398, -0.313841,
		0.732506, -0.667650, 0.132962,
		31.449974, 36.629871, 44.233089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671906, 36.592827, 44.718842>,  <30.937220, 37.097225, 44.140015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671906, 36.592827, 44.718842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068365, 36.543179, 44.699997>,  <31.306240, 36.513390, 44.688690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068365, 36.543179, 44.699997>,  <30.671906, 36.592827, 44.718842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068365, 36.543179, 44.699997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041236, -0.049487, 0.997923,
		-0.126197, -0.991032, -0.043930,
		0.991148, -0.124123, -0.047112,
		31.365709, 36.505943, 44.685863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723898, 35.983471, 45.098179>,  <30.671906, 36.592827, 44.718842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723898, 35.983471, 45.098179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079523, 36.165058, 45.121780>,  <31.292898, 36.274010, 45.135941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079523, 36.165058, 45.121780>,  <30.723898, 35.983471, 45.098179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079523, 36.165058, 45.121780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141184, -0.394513, 0.907979,
		0.435473, -0.798919, -0.414840,
		0.889061, 0.453969, 0.059006,
		31.346241, 36.301250, 45.139481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157665, 35.538902, 45.426613>,  <30.723898, 35.983471, 45.098179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157665, 35.538902, 45.426613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345490, 35.889561, 45.468582>,  <31.458185, 36.099957, 45.493763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345490, 35.889561, 45.468582>,  <31.157665, 35.538902, 45.426613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345490, 35.889561, 45.468582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125334, -0.183825, 0.974936,
		0.873958, -0.444642, -0.196190,
		0.469562, 0.876642, 0.104926,
		31.486359, 36.152554, 45.500061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715994, 35.347313, 45.945103>,  <31.157665, 35.538902, 45.426613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715994, 35.347313, 45.945103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673576, 35.745056, 45.944637>,  <31.648127, 35.983704, 45.944359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673576, 35.745056, 45.944637>,  <31.715994, 35.347313, 45.945103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673576, 35.745056, 45.944637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120168, 0.013979, 0.992655,
		0.987074, 0.105124, -0.120972,
		-0.106043, 0.994361, -0.001166,
		31.641764, 36.043365, 45.944286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266224, 35.683620, 46.428307>,  <31.715994, 35.347313, 45.945103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266224, 35.683620, 46.428307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970444, 35.947144, 46.372894>,  <31.792976, 36.105259, 46.339645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970444, 35.947144, 46.372894>,  <32.266224, 35.683620, 46.428307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970444, 35.947144, 46.372894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093514, 0.103268, 0.990248,
		0.666689, 0.745190, -0.014753,
		-0.739446, 0.658808, -0.138533,
		31.748610, 36.144787, 46.331333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291698, 36.073956, 47.080021>,  <32.266224, 35.683620, 46.428307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291698, 36.073956, 47.080021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943047, 36.162762, 46.905220>,  <31.733856, 36.216045, 46.800339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943047, 36.162762, 46.905220>,  <32.291698, 36.073956, 47.080021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943047, 36.162762, 46.905220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392918, 0.216554, 0.893711,
		0.293052, 0.950691, -0.101521,
		-0.871628, 0.222014, -0.437005,
		31.681559, 36.229366, 46.774117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039425, 36.685562, 47.391209>,  <32.291698, 36.073956, 47.080021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039425, 36.685562, 47.391209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727121, 36.493225, 47.231609>,  <31.539738, 36.377823, 47.135849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727121, 36.493225, 47.231609>,  <32.039425, 36.685562, 47.391209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727121, 36.493225, 47.231609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483943, 0.061443, 0.872940,
		-0.395232, 0.874651, -0.280673,
		-0.780763, -0.480844, -0.398997,
		31.492893, 36.348972, 47.111912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524052, 37.118153, 47.463581>,  <32.039425, 36.685562, 47.391209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524052, 37.118153, 47.463581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406214, 36.736061, 47.452606>,  <31.335510, 36.506805, 47.446022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406214, 36.736061, 47.452606>,  <31.524052, 37.118153, 47.463581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406214, 36.736061, 47.452606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308438, 0.067866, 0.948820,
		-0.904478, 0.287981, -0.314621,
		-0.294594, -0.955228, -0.027441,
		31.317835, 36.449493, 47.444374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919491, 37.121956, 47.844364>,  <31.524052, 37.118153, 47.463581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919491, 37.121956, 47.844364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991796, 36.728752, 47.831585>,  <31.035181, 36.492832, 47.823917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991796, 36.728752, 47.831585>,  <30.919491, 37.121956, 47.844364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991796, 36.728752, 47.831585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364036, -0.097047, 0.926315,
		-0.913674, -0.155817, -0.375393,
		0.180766, -0.983007, -0.031946,
		31.046026, 36.433849, 47.822002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323874, 36.758713, 48.243027>,  <30.919491, 37.121956, 47.844364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323874, 36.758713, 48.243027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628111, 36.500427, 48.216034>,  <30.810654, 36.345455, 48.199837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628111, 36.500427, 48.216034>,  <30.323874, 36.758713, 48.243027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628111, 36.500427, 48.216034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223042, -0.357505, 0.906886,
		-0.609715, -0.674718, -0.415937,
		0.760592, -0.645713, -0.067486,
		30.856289, 36.306713, 48.195789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003864, 36.115086, 48.444508>,  <30.323874, 36.758713, 48.243027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003864, 36.115086, 48.444508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400311, 36.074451, 48.478863>,  <30.638178, 36.050072, 48.499474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400311, 36.074451, 48.478863>,  <30.003864, 36.115086, 48.444508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400311, 36.074451, 48.478863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113635, -0.310928, 0.943616,
		-0.069149, -0.944990, -0.319708,
		0.991113, -0.101581, 0.085883,
		30.697645, 36.043976, 48.504627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157629, 35.423168, 48.759682>,  <30.003864, 36.115086, 48.444508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157629, 35.423168, 48.759682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457052, 35.674210, 48.845261>,  <30.636707, 35.824833, 48.896610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457052, 35.674210, 48.845261>,  <30.157629, 35.423168, 48.759682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457052, 35.674210, 48.845261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125283, -0.450728, 0.883826,
		0.651125, -0.634791, -0.416024,
		0.748559, 0.627602, 0.213952,
		30.681620, 35.862492, 48.909447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694691, 35.248337, 49.262699>,  <30.157629, 35.423168, 48.759682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694691, 35.248337, 49.262699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077614, 35.172630, 49.175301>,  <31.307367, 35.127205, 49.122860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077614, 35.172630, 49.175301>,  <30.694691, 35.248337, 49.262699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077614, 35.172630, 49.175301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176516, -0.215850, 0.960339,
		-0.228931, -0.957906, -0.173224,
		0.957305, -0.189275, -0.218501,
		31.364805, 35.115852, 49.109753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924383, 34.457386, 49.415047>,  <30.694691, 35.248337, 49.262699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924383, 34.457386, 49.415047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214848, 34.726841, 49.470047>,  <31.389126, 34.888515, 49.503048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214848, 34.726841, 49.470047>,  <30.924383, 34.457386, 49.415047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214848, 34.726841, 49.470047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104667, -0.305977, 0.946268,
		0.679513, -0.672749, -0.292696,
		0.726159, 0.673637, 0.137500,
		31.432695, 34.928932, 49.511295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558874, 34.036316, 49.636116>,  <30.924383, 34.457386, 49.415047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558874, 34.036316, 49.636116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602137, 34.414707, 49.758377>,  <31.628094, 34.641743, 49.831734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602137, 34.414707, 49.758377>,  <31.558874, 34.036316, 49.636116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602137, 34.414707, 49.758377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207229, -0.322153, 0.923728,
		0.972295, -0.036567, -0.230878,
		0.108156, 0.945981, 0.305650,
		31.634584, 34.698502, 49.850071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158756, 34.007732, 50.165817>,  <31.558874, 34.036316, 49.636116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158756, 34.007732, 50.165817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934500, 34.333961, 50.223106>,  <31.799944, 34.529701, 50.257481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934500, 34.333961, 50.223106>,  <32.158756, 34.007732, 50.165817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934500, 34.333961, 50.223106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061723, -0.131321, 0.989416,
		0.825752, 0.563552, 0.023285,
		-0.560646, 0.815576, 0.143223,
		31.766306, 34.578632, 50.266071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356163, 34.314240, 50.852688>,  <32.158756, 34.007732, 50.165817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356163, 34.314240, 50.852688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012943, 34.515350, 50.810810>,  <31.807011, 34.636017, 50.785683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012943, 34.515350, 50.810810>,  <32.356163, 34.314240, 50.852688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012943, 34.515350, 50.810810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095910, 0.043393, 0.994444,
		0.504526, 0.863326, 0.010988,
		-0.858053, 0.502777, -0.104695,
		31.755527, 34.666183, 50.779400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349236, 34.650967, 51.448154>,  <32.356163, 34.314240, 50.852688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349236, 34.650967, 51.448154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969751, 34.676914, 51.324387>,  <31.742062, 34.692482, 51.250126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969751, 34.676914, 51.324387>,  <32.349236, 34.650967, 51.448154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969751, 34.676914, 51.324387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292396, 0.192171, 0.936790,
		0.120233, 0.979215, -0.163346,
		-0.948709, 0.064871, -0.309424,
		31.685139, 34.696377, 51.231560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126217, 35.144619, 51.796970>,  <32.349236, 34.650967, 51.448154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126217, 35.144619, 51.796970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792299, 34.943085, 51.708187>,  <31.591948, 34.822163, 51.654919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792299, 34.943085, 51.708187>,  <32.126217, 35.144619, 51.796970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792299, 34.943085, 51.708187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365698, 0.206079, 0.907632,
		-0.411559, 0.838856, -0.356286,
		-0.834796, -0.503837, -0.221955,
		31.541861, 34.791935, 51.641602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456072, 35.564125, 52.020027>,  <32.126217, 35.144619, 51.796970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456072, 35.564125, 52.020027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346985, 35.180740, 51.986622>,  <31.281532, 34.950710, 51.966579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346985, 35.180740, 51.986622>,  <31.456072, 35.564125, 52.020027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346985, 35.180740, 51.986622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326790, 0.010644, 0.945037,
		-0.904894, 0.285019, -0.316119,
		-0.272718, -0.958463, -0.083510,
		31.265169, 34.893200, 51.961571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797636, 35.440182, 52.366795>,  <31.456072, 35.564125, 52.020027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797636, 35.440182, 52.366795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007759, 35.102180, 52.406849>,  <31.133833, 34.899380, 52.430882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007759, 35.102180, 52.406849>,  <30.797636, 35.440182, 52.366795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007759, 35.102180, 52.406849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315863, -0.084367, 0.945047,
		-0.790117, -0.528068, -0.311223,
		0.525306, -0.845001, 0.100138,
		31.165352, 34.848679, 52.436890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120792, 35.279804, 52.637184>,  <30.797636, 35.440182, 52.366795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120792, 35.279804, 52.637184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472101, 35.123978, 52.748089>,  <30.682886, 35.030479, 52.814632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472101, 35.123978, 52.748089>,  <30.120792, 35.279804, 52.637184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472101, 35.123978, 52.748089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257414, 0.103442, 0.960749,
		-0.402960, -0.915169, -0.009431,
		0.878272, -0.389571, 0.277260,
		30.735582, 35.007107, 52.831268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165396, 34.565186, 52.968349>,  <30.120792, 35.279804, 52.637184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165396, 34.565186, 52.968349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437881, 34.812119, 53.125751>,  <30.601374, 34.960278, 53.220192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437881, 34.812119, 53.125751>,  <30.165396, 34.565186, 52.968349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437881, 34.812119, 53.125751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440920, -0.083113, 0.893690,
		0.584409, -0.782300, 0.215576,
		0.681216, 0.617333, 0.393503,
		30.642246, 34.997318, 53.243801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376217, 34.345940, 53.680786>,  <30.165396, 34.565186, 52.968349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376217, 34.345940, 53.680786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494797, 34.727959, 53.681400>,  <30.565945, 34.957169, 53.681770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494797, 34.727959, 53.681400>,  <30.376217, 34.345940, 53.680786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494797, 34.727959, 53.681400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281714, 0.085909, 0.955645,
		0.912554, -0.283732, 0.294518,
		0.296449, 0.955048, 0.001535,
		30.583731, 35.014473, 53.681862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736259, 34.366184, 54.237740>,  <30.376217, 34.345940, 53.680786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736259, 34.366184, 54.237740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604963, 34.740944, 54.189613>,  <30.526186, 34.965801, 54.160740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604963, 34.740944, 54.189613>,  <30.736259, 34.366184, 54.237740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604963, 34.740944, 54.189613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353829, -0.003858, 0.935302,
		0.875821, 0.349576, 0.332769,
		-0.328242, 0.936900, -0.120311,
		30.506491, 35.022015, 54.153519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465681, 33.702969, 54.385696>,  <30.736259, 34.366184, 54.237740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465681, 33.702969, 54.385696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738508, 33.410675, 54.397041>,  <30.902205, 33.235298, 54.403847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738508, 33.410675, 54.397041>,  <30.465681, 33.702969, 54.385696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738508, 33.410675, 54.397041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210005, -0.232869, -0.949563,
		0.700485, 0.641713, -0.312291,
		0.682069, -0.730737, 0.028358,
		30.943129, 33.191452, 54.405548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755085, 33.724579, 53.777393>,  <30.465681, 33.702969, 54.385696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755085, 33.724579, 53.777393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866133, 33.367805, 53.920155>,  <30.932760, 33.153740, 54.005814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866133, 33.367805, 53.920155>,  <30.755085, 33.724579, 53.777393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866133, 33.367805, 53.920155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027035, -0.364110, -0.930964,
		0.960311, 0.268101, -0.076970,
		0.277618, -0.891934, 0.356907,
		30.949419, 33.100224, 54.027225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061388, 33.435730, 53.139004>,  <30.755085, 33.724579, 53.777393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061388, 33.435730, 53.139004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013769, 33.121895, 53.382397>,  <30.985197, 32.933594, 53.528431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013769, 33.121895, 53.382397>,  <31.061388, 33.435730, 53.139004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013769, 33.121895, 53.382397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218410, -0.618520, -0.754805,
		0.968568, 0.043039, 0.244996,
		-0.119049, -0.784590, 0.608479,
		30.978054, 32.886517, 53.564941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722996, 33.001595, 53.093254>,  <31.061388, 33.435730, 53.139004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722996, 33.001595, 53.093254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412886, 32.768410, 53.190502>,  <31.226820, 32.628498, 53.248852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.412886, 32.768410, 53.190502>,  <31.722996, 33.001595, 53.093254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412886, 32.768410, 53.190502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239406, -0.627402, -0.740980,
		0.584492, -0.516261, 0.625974,
		-0.775276, -0.582959, 0.243116,
		31.180304, 32.593521, 53.263435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954252, 32.322666, 53.010998>,  <31.722996, 33.001595, 53.093254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954252, 32.322666, 53.010998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555206, 32.321972, 52.983391>,  <31.315779, 32.321556, 52.966827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.555206, 32.321972, 52.983391>,  <31.954252, 32.322666, 53.010998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555206, 32.321972, 52.983391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058963, -0.541449, -0.838663,
		-0.035910, -0.840732, 0.540260,
		-0.997614, -0.001739, -0.069015,
		31.255922, 32.321449, 52.962685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875629, 31.700943, 52.934185>,  <31.954252, 32.322666, 53.010998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875629, 31.700943, 52.934185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592415, 31.921904, 52.758213>,  <31.422485, 32.054478, 52.652630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592415, 31.921904, 52.758213>,  <31.875629, 31.700943, 52.934185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592415, 31.921904, 52.758213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222608, -0.416623, -0.881403,
		-0.670173, -0.721997, 0.172014,
		-0.708035, 0.552401, -0.439932,
		31.380005, 32.087624, 52.626232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402218, 31.255507, 52.548424>,  <31.875629, 31.700943, 52.934185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402218, 31.255507, 52.548424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413862, 31.626303, 52.398842>,  <31.420849, 31.848780, 52.309093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413862, 31.626303, 52.398842>,  <31.402218, 31.255507, 52.548424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413862, 31.626303, 52.398842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255158, -0.368614, -0.893878,
		-0.966461, -0.069398, -0.247258,
		0.029109, 0.926988, -0.373959,
		31.422594, 31.904400, 52.286655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988537, 31.217731, 51.931351>,  <31.402218, 31.255507, 52.548424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988537, 31.217731, 51.931351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222132, 31.540520, 51.896126>,  <31.362288, 31.734194, 51.874992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222132, 31.540520, 51.896126>,  <30.988537, 31.217731, 51.931351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222132, 31.540520, 51.896126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215371, -0.258620, -0.941664,
		-0.782672, 0.530953, -0.324829,
		0.583986, 0.806973, -0.088062,
		31.397327, 31.782612, 51.869705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797802, 31.493708, 51.288319>,  <30.988537, 31.217731, 51.931351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797802, 31.493708, 51.288319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168417, 31.626974, 51.358212>,  <31.390785, 31.706934, 51.400146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168417, 31.626974, 51.358212>,  <30.797802, 31.493708, 51.288319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168417, 31.626974, 51.358212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160908, 0.068874, -0.984563,
		-0.340058, 0.940349, 0.010205,
		0.926536, 0.333166, 0.174731,
		31.446379, 31.726925, 51.410629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972317, 31.883997, 50.679230>,  <30.797802, 31.493708, 51.288319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972317, 31.883997, 50.679230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343512, 31.850651, 50.824493>,  <31.566229, 31.830643, 50.911652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343512, 31.850651, 50.824493>,  <30.972317, 31.883997, 50.679230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343512, 31.850651, 50.824493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367710, 0.047368, -0.928733,
		0.060223, 0.995393, 0.074612,
		0.927988, -0.083367, 0.363164,
		31.621908, 31.825642, 50.933441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361549, 32.506504, 50.459206>,  <30.972317, 31.883997, 50.679230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361549, 32.506504, 50.459206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612917, 32.201183, 50.519142>,  <31.763739, 32.017990, 50.555103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.612917, 32.201183, 50.519142>,  <31.361549, 32.506504, 50.459206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612917, 32.201183, 50.519142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486098, 0.234965, -0.841725,
		0.607286, 0.601794, 0.518698,
		0.628420, -0.763306, 0.149840,
		31.801443, 31.972191, 50.564095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058712, 32.783417, 50.340401>,  <31.361549, 32.506504, 50.459206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058712, 32.783417, 50.340401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066269, 32.385269, 50.302689>,  <32.070805, 32.146381, 50.280060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066269, 32.385269, 50.302689>,  <32.058712, 32.783417, 50.340401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066269, 32.385269, 50.302689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404028, 0.093855, -0.909919,
		0.914551, -0.020900, 0.403930,
		0.018894, -0.995367, -0.094279,
		32.071938, 32.086658, 50.274406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852650, 32.609566, 50.104797>,  <32.058712, 32.783417, 50.340401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852650, 32.609566, 50.104797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638927, 32.285130, 50.009583>,  <32.510696, 32.090469, 49.952454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638927, 32.285130, 50.009583>,  <32.852650, 32.609566, 50.104797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638927, 32.285130, 50.009583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412908, -0.004712, -0.910760,
		0.737583, -0.584908, 0.337422,
		-0.534301, -0.811086, -0.238038,
		32.478638, 32.041805, 49.938171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260799, 32.288139, 49.566311>,  <32.852650, 32.609566, 50.104797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260799, 32.288139, 49.566311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934959, 32.059231, 49.528507>,  <32.739456, 31.921886, 49.505825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.934959, 32.059231, 49.528507>,  <33.260799, 32.288139, 49.566311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934959, 32.059231, 49.528507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233499, -0.174392, -0.956591,
		0.530946, -0.801308, 0.275685,
		-0.814600, -0.572270, -0.094512,
		32.690578, 31.887550, 49.500153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430237, 31.621077, 49.108879>,  <33.260799, 32.288139, 49.566311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430237, 31.621077, 49.108879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037056, 31.691160, 49.086582>,  <32.801147, 31.733210, 49.073204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037056, 31.691160, 49.086582>,  <33.430237, 31.621077, 49.108879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037056, 31.691160, 49.086582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016780, -0.387411, -0.921754,
		-0.183094, -0.905105, 0.383746,
		-0.982952, 0.175207, -0.055745,
		32.742172, 31.743723, 49.069859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205921, 31.104773, 48.589718>,  <33.430237, 31.621077, 49.108879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205921, 31.104773, 48.589718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903637, 31.364897, 48.620705>,  <32.722267, 31.520971, 48.639297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903637, 31.364897, 48.620705>,  <33.205921, 31.104773, 48.589718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903637, 31.364897, 48.620705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192341, -0.107317, -0.975442,
		-0.626026, -0.752051, 0.206182,
		-0.755709, 0.650309, 0.077467,
		32.676926, 31.559990, 48.643944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655785, 30.802399, 48.149616>,  <33.205921, 31.104773, 48.589718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655785, 30.802399, 48.149616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597862, 31.196768, 48.183060>,  <32.563110, 31.433390, 48.203125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597862, 31.196768, 48.183060>,  <32.655785, 30.802399, 48.149616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597862, 31.196768, 48.183060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296666, 0.037348, -0.954251,
		-0.943939, -0.162984, 0.287081,
		-0.144806, 0.985921, 0.083606,
		32.554420, 31.492544, 48.208141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006657, 30.963514, 47.819664>,  <32.655785, 30.802399, 48.149616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006657, 30.963514, 47.819664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208942, 31.308491, 47.828091>,  <32.330315, 31.515476, 47.833145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208942, 31.308491, 47.828091>,  <32.006657, 30.963514, 47.819664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208942, 31.308491, 47.828091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234973, 0.161193, -0.958543,
		-0.830083, 0.479802, 0.284169,
		0.505716, 0.862443, 0.021063,
		32.360657, 31.567223, 47.834408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704609, 31.344118, 47.282845>,  <32.006657, 30.963514, 47.819664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704609, 31.344118, 47.282845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008030, 31.590725, 47.367229>,  <32.190083, 31.738689, 47.417862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008030, 31.590725, 47.367229>,  <31.704609, 31.344118, 47.282845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008030, 31.590725, 47.367229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005846, 0.317308, -0.948305,
		-0.651586, 0.720572, 0.237090,
		0.758552, 0.616516, 0.210966,
		32.235596, 31.775681, 47.430519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538948, 32.034351, 47.221298>,  <31.704609, 31.344118, 47.282845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538948, 32.034351, 47.221298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927767, 31.981745, 47.143497>,  <32.161057, 31.950180, 47.096817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927767, 31.981745, 47.143497>,  <31.538948, 32.034351, 47.221298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927767, 31.981745, 47.143497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112484, 0.466286, -0.877454,
		0.206096, 0.874803, 0.438457,
		0.972045, -0.131520, -0.194501,
		32.219379, 31.942289, 47.085148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720907, 32.688629, 46.926487>,  <31.538948, 32.034351, 47.221298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720907, 32.688629, 46.926487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032696, 32.460651, 46.822495>,  <32.219769, 32.323864, 46.760098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032696, 32.460651, 46.822495>,  <31.720907, 32.688629, 46.926487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032696, 32.460651, 46.822495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046155, 0.361634, -0.931177,
		0.624737, 0.737824, 0.255577,
		0.779470, -0.569945, -0.259980,
		32.266537, 32.289669, 46.744499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153736, 33.134659, 46.619572>,  <31.720907, 32.688629, 46.926487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153736, 33.134659, 46.619572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234661, 32.763355, 46.494728>,  <32.283218, 32.540573, 46.419823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234661, 32.763355, 46.494728>,  <32.153736, 33.134659, 46.619572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234661, 32.763355, 46.494728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186606, 0.276320, -0.942775,
		0.961377, 0.248980, -0.117314,
		0.202316, -0.928254, -0.312109,
		32.295357, 32.484879, 46.401096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540920, 33.226955, 46.069580>,  <32.153736, 33.134659, 46.619572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540920, 33.226955, 46.069580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394531, 32.859760, 46.008434>,  <32.306698, 32.639442, 45.971748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394531, 32.859760, 46.008434>,  <32.540920, 33.226955, 46.069580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394531, 32.859760, 46.008434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144211, 0.218216, -0.965186,
		0.919386, -0.331183, -0.212244,
		-0.365968, -0.917987, -0.152865,
		32.284740, 32.584366, 45.962574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881676, 32.917892, 45.471066>,  <32.540920, 33.226955, 46.069580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881676, 32.917892, 45.471066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549728, 32.697578, 45.506725>,  <32.350559, 32.565392, 45.528122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549728, 32.697578, 45.506725>,  <32.881676, 32.917892, 45.471066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549728, 32.697578, 45.506725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160548, 0.082709, -0.983557,
		0.534357, -0.830538, -0.157066,
		-0.829872, -0.550787, 0.089145,
		32.300766, 32.532341, 45.533470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786922, 32.583775, 44.847927>,  <32.881676, 32.917892, 45.471066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786922, 32.583775, 44.847927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425179, 32.476280, 44.980534>,  <32.208130, 32.411781, 45.060097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425179, 32.476280, 44.980534>,  <32.786922, 32.583775, 44.847927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425179, 32.476280, 44.980534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324518, -0.071439, -0.943178,
		0.277153, -0.960560, -0.022604,
		-0.904364, -0.268740, 0.331519,
		32.153870, 32.395657, 45.079990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597328, 31.913805, 44.530880>,  <32.786922, 32.583775, 44.847927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597328, 31.913805, 44.530880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267944, 32.116001, 44.633945>,  <32.070312, 32.237320, 44.695786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267944, 32.116001, 44.633945>,  <32.597328, 31.913805, 44.530880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267944, 32.116001, 44.633945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365245, -0.124761, -0.922513,
		-0.434174, -0.853765, 0.287363,
		-0.823461, 0.505489, 0.257665,
		32.020905, 32.267647, 44.711246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096619, 31.520224, 44.271358>,  <32.597328, 31.913805, 44.530880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096619, 31.520224, 44.271358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929464, 31.876944, 44.340721>,  <31.829172, 32.090977, 44.382339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929464, 31.876944, 44.340721>,  <32.096619, 31.520224, 44.271358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929464, 31.876944, 44.340721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519240, -0.077824, -0.851078,
		-0.745495, -0.445690, 0.495579,
		-0.417884, 0.891798, 0.173403,
		31.804098, 32.144482, 44.392742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482151, 31.385841, 44.063107>,  <32.096619, 31.520224, 44.271358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482151, 31.385841, 44.063107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459246, 31.785170, 44.066719>,  <31.445501, 32.024765, 44.068886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459246, 31.785170, 44.066719>,  <31.482151, 31.385841, 44.063107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459246, 31.785170, 44.066719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406212, -0.015039, -0.913655,
		-0.911983, -0.055986, 0.406390,
		-0.057264, 0.998318, 0.009027,
		31.442066, 32.084663, 44.069427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788691, 31.654848, 44.085701>,  <31.482151, 31.385841, 44.063107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788691, 31.654848, 44.085701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999777, 31.954409, 43.925369>,  <31.126429, 32.134144, 43.829170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999777, 31.954409, 43.925369>,  <30.788691, 31.654848, 44.085701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999777, 31.954409, 43.925369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641525, 0.042102, -0.765946,
		-0.556742, 0.661344, 0.502656,
		0.527716, 0.748900, -0.400829,
		31.158092, 32.179077, 43.805122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315109, 32.120495, 43.816879>,  <30.788691, 31.654848, 44.085701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315109, 32.120495, 43.816879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649435, 32.211452, 43.616997>,  <30.850031, 32.266026, 43.497066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649435, 32.211452, 43.616997>,  <30.315109, 32.120495, 43.816879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649435, 32.211452, 43.616997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479467, -0.141058, -0.866149,
		-0.267441, 0.963533, -0.008873,
		0.835815, 0.227390, -0.499707,
		30.900179, 32.279671, 43.467083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149921, 32.699570, 43.336693>,  <30.315109, 32.120495, 43.816879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149921, 32.699570, 43.336693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491804, 32.560303, 43.182678>,  <30.696934, 32.476742, 43.090267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491804, 32.560303, 43.182678>,  <30.149921, 32.699570, 43.336693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491804, 32.560303, 43.182678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372452, 0.105376, -0.922050,
		0.361603, 0.931490, -0.039611,
		0.854707, -0.348169, -0.385039,
		30.748217, 32.455853, 43.067165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311937, 33.180805, 42.793308>,  <30.149921, 32.699570, 43.336693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311937, 33.180805, 42.793308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517130, 32.851131, 42.697330>,  <30.640245, 32.653328, 42.639744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.517130, 32.851131, 42.697330>,  <30.311937, 33.180805, 42.793308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517130, 32.851131, 42.697330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289018, 0.097377, -0.952358,
		0.808280, 0.557893, -0.188250,
		0.512983, -0.824180, -0.239949,
		30.671024, 32.603878, 42.625347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719427, 33.299171, 42.229740>,  <30.311937, 33.180805, 42.793308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719427, 33.299171, 42.229740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711683, 32.902107, 42.181976>,  <30.707037, 32.663868, 42.153320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711683, 32.902107, 42.181976>,  <30.719427, 33.299171, 42.229740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711683, 32.902107, 42.181976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149054, 0.120961, -0.981403,
		0.988640, -0.001203, -0.150302,
		-0.019362, -0.992656, -0.119408,
		30.705875, 32.604309, 42.146152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264772, 33.155033, 41.817413>,  <30.719427, 33.299171, 42.229740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264772, 33.155033, 41.817413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972178, 32.883148, 41.795815>,  <30.796621, 32.720016, 41.782856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972178, 32.883148, 41.795815>,  <31.264772, 33.155033, 41.817413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972178, 32.883148, 41.795815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075506, 0.159455, -0.984313,
		0.677664, -0.715934, -0.167962,
		-0.731485, -0.679715, -0.054000,
		30.752731, 32.679234, 41.779613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386059, 32.871262, 41.185768>,  <31.264772, 33.155033, 41.817413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386059, 32.871262, 41.185768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022585, 32.724876, 41.266136>,  <30.804501, 32.637047, 41.314358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022585, 32.724876, 41.266136>,  <31.386059, 32.871262, 41.185768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022585, 32.724876, 41.266136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260220, 0.120128, -0.958047,
		0.326470, -0.922845, -0.204388,
		-0.908682, -0.365960, 0.200924,
		30.749981, 32.615089, 41.326412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284309, 32.325638, 40.845638>,  <31.386059, 32.871262, 41.185768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284309, 32.325638, 40.845638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906450, 32.450752, 40.885254>,  <30.679735, 32.525822, 40.909023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906450, 32.450752, 40.885254>,  <31.284309, 32.325638, 40.845638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906450, 32.450752, 40.885254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058978, 0.135060, -0.989081,
		-0.322744, -0.940173, -0.109137,
		-0.944647, 0.312784, 0.099039,
		30.623056, 32.544586, 40.914967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958649, 31.971506, 40.226013>,  <31.284309, 32.325638, 40.845638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958649, 31.971506, 40.226013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678598, 32.230621, 40.346142>,  <30.510569, 32.386089, 40.418217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678598, 32.230621, 40.346142>,  <30.958649, 31.971506, 40.226013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678598, 32.230621, 40.346142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376079, 0.022976, -0.926303,
		-0.606949, -0.761473, 0.227534,
		-0.700127, 0.647790, 0.300319,
		30.468561, 32.424957, 40.436237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228666, 31.678547, 40.072079>,  <30.958649, 31.971506, 40.226013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228666, 31.678547, 40.072079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182095, 32.074856, 40.099831>,  <30.154152, 32.312641, 40.116482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182095, 32.074856, 40.099831>,  <30.228666, 31.678547, 40.072079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182095, 32.074856, 40.099831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397199, 0.017578, -0.917564,
		-0.910317, -0.134390, 0.391487,
		-0.116430, 0.990772, 0.069381,
		30.147165, 32.372089, 40.120644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574289, 31.817627, 39.848263>,  <30.228666, 31.678547, 40.072079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574289, 31.817627, 39.848263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736139, 32.182922, 39.829185>,  <29.833250, 32.402100, 39.817738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.736139, 32.182922, 39.829185>,  <29.574289, 31.817627, 39.848263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736139, 32.182922, 39.829185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468371, 0.162162, -0.868523,
		-0.785433, 0.373767, 0.493349,
		0.404627, 0.913237, -0.047694,
		29.857527, 32.456894, 39.814877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014235, 32.296043, 39.688091>,  <29.574289, 31.817627, 39.848263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014235, 32.296043, 39.688091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348310, 32.483337, 39.572704>,  <29.548756, 32.595715, 39.503471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348310, 32.483337, 39.572704>,  <29.014235, 32.296043, 39.688091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348310, 32.483337, 39.572704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398352, 0.153411, -0.904312,
		-0.379177, 0.870184, 0.314649,
		0.835189, 0.468235, -0.288470,
		29.598867, 32.623810, 39.486164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738358, 32.890358, 39.215023>,  <29.014235, 32.296043, 39.688091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738358, 32.890358, 39.215023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127775, 32.860504, 39.128639>,  <29.361425, 32.842590, 39.076809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127775, 32.860504, 39.128639>,  <28.738358, 32.890358, 39.215023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127775, 32.860504, 39.128639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177994, 0.344907, -0.921606,
		0.143269, 0.935665, 0.322498,
		0.973546, -0.074635, -0.215957,
		29.419840, 32.838112, 39.063850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935040, 33.432926, 38.816925>,  <28.738358, 32.890358, 39.215023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935040, 33.432926, 38.816925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251162, 33.205223, 38.726269>,  <29.440834, 33.068604, 38.671875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251162, 33.205223, 38.726269>,  <28.935040, 33.432926, 38.816925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251162, 33.205223, 38.726269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087689, 0.261011, -0.961345,
		0.606406, 0.779630, 0.156361,
		0.790305, -0.569255, -0.226643,
		29.488253, 33.034447, 38.658276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452648, 33.857056, 38.418400>,  <28.935040, 33.432926, 38.816925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452648, 33.857056, 38.418400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528759, 33.475075, 38.327312>,  <29.574425, 33.245884, 38.272659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528759, 33.475075, 38.327312>,  <29.452648, 33.857056, 38.418400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528759, 33.475075, 38.327312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095903, 0.248931, -0.963761,
		0.977035, 0.161541, 0.138949,
		0.190275, -0.954955, -0.227722,
		29.585842, 33.188587, 38.258995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929596, 33.944893, 38.017948>,  <29.452648, 33.857056, 38.418400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929596, 33.944893, 38.017948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838274, 33.562000, 37.946865>,  <29.783482, 33.332264, 37.904217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838274, 33.562000, 37.946865>,  <29.929596, 33.944893, 38.017948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838274, 33.562000, 37.946865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213313, 0.128909, -0.968442,
		0.949934, -0.259006, 0.174760,
		-0.228305, -0.957235, -0.177705,
		29.769783, 33.274830, 37.893555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540129, 33.669739, 37.801617>,  <29.929596, 33.944893, 38.017948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540129, 33.669739, 37.801617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226151, 33.461281, 37.667595>,  <30.037764, 33.336205, 37.587181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226151, 33.461281, 37.667595>,  <30.540129, 33.669739, 37.801617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226151, 33.461281, 37.667595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380352, 0.021557, -0.924590,
		0.489073, -0.853193, 0.181299,
		-0.784946, -0.521150, -0.335057,
		29.990667, 33.304935, 37.567078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795404, 34.205334, 38.296505>,  <30.540129, 33.669739, 37.801617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795404, 34.205334, 38.296505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160061, 34.110600, 38.162151>,  <31.378855, 34.053761, 38.081539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160061, 34.110600, 38.162151>,  <30.795404, 34.205334, 38.296505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160061, 34.110600, 38.162151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217877, -0.414463, 0.883601,
		-0.348476, -0.878710, -0.326242,
		0.911643, -0.236833, -0.335881,
		31.433554, 34.039551, 38.061386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945539, 33.590569, 38.637272>,  <30.795404, 34.205334, 38.296505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945539, 33.590569, 38.637272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299326, 33.728298, 38.511314>,  <31.511599, 33.810936, 38.435741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299326, 33.728298, 38.511314>,  <30.945539, 33.590569, 38.637272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299326, 33.728298, 38.511314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433448, -0.356472, 0.827678,
		0.172738, -0.868544, -0.464535,
		0.884468, 0.344323, -0.314892,
		31.564667, 33.831596, 38.416847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361618, 33.119175, 38.901436>,  <30.945539, 33.590569, 38.637272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361618, 33.119175, 38.901436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626570, 33.395515, 38.785519>,  <31.785540, 33.561321, 38.715969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626570, 33.395515, 38.785519>,  <31.361618, 33.119175, 38.901436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626570, 33.395515, 38.785519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622664, -0.292570, 0.725736,
		0.416589, -0.661156, -0.623960,
		0.662377, 0.690851, -0.289796,
		31.825283, 33.602772, 38.698578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997181, 32.679203, 38.774490>,  <31.361618, 33.119175, 38.901436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997181, 32.679203, 38.774490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108143, 33.059616, 38.829010>,  <32.174721, 33.287865, 38.861721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108143, 33.059616, 38.829010>,  <31.997181, 32.679203, 38.774490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108143, 33.059616, 38.829010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624308, -0.286269, 0.726835,
		0.730264, -0.116536, -0.673152,
		0.277405, 0.951036, 0.136298,
		32.191364, 33.344929, 38.869900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786854, 32.617470, 38.827057>,  <31.997181, 32.679203, 38.774490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786854, 32.617470, 38.827057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687164, 32.967510, 38.992992>,  <32.627350, 33.177532, 39.092552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687164, 32.967510, 38.992992>,  <32.786854, 32.617470, 38.827057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687164, 32.967510, 38.992992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518597, -0.241169, 0.820302,
		0.817890, 0.419573, -0.393718,
		-0.249224, 0.875098, 0.414839,
		32.612396, 33.230038, 39.117443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393867, 33.045425, 39.015118>,  <32.786854, 32.617470, 38.827057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393867, 33.045425, 39.015118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084560, 33.149418, 39.246449>,  <32.898975, 33.211815, 39.385246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084560, 33.149418, 39.246449>,  <33.393867, 33.045425, 39.015118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084560, 33.149418, 39.246449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541047, -0.205061, 0.815609,
		0.330635, 0.943589, 0.017906,
		-0.773271, 0.259981, 0.578327,
		32.852577, 33.227413, 39.419945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671719, 33.453476, 39.625038>,  <33.393867, 33.045425, 39.015118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671719, 33.453476, 39.625038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305157, 33.329288, 39.726086>,  <33.085220, 33.254776, 39.786713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305157, 33.329288, 39.726086>,  <33.671719, 33.453476, 39.625038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305157, 33.329288, 39.726086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353319, -0.330919, 0.875019,
		-0.188073, 0.891123, 0.412951,
		-0.916403, -0.310471, 0.252614,
		33.030235, 33.236149, 39.801868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533566, 33.703136, 40.313038>,  <33.671719, 33.453476, 39.625038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533566, 33.703136, 40.313038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274040, 33.402275, 40.266907>,  <33.118324, 33.221756, 40.239227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274040, 33.402275, 40.266907>,  <33.533566, 33.703136, 40.313038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274040, 33.402275, 40.266907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208029, -0.321116, 0.923910,
		-0.731959, 0.575454, 0.364815,
		-0.648815, -0.752156, -0.115332,
		33.079395, 33.176628, 40.232307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080112, 33.630096, 40.987629>,  <33.533566, 33.703136, 40.313038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080112, 33.630096, 40.987629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077007, 33.275658, 40.802258>,  <33.075146, 33.062992, 40.691036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077007, 33.275658, 40.802258>,  <33.080112, 33.630096, 40.987629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077007, 33.275658, 40.802258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291507, -0.445316, 0.846591,
		-0.956537, -0.128521, 0.261761,
		-0.007762, -0.886101, -0.463427,
		33.074680, 33.009827, 40.663231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835331, 33.162842, 41.481060>,  <33.080112, 33.630096, 40.987629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835331, 33.162842, 41.481060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975151, 32.902409, 41.211571>,  <33.059044, 32.746151, 41.049877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975151, 32.902409, 41.211571>,  <32.835331, 33.162842, 41.481060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975151, 32.902409, 41.211571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292792, -0.607163, 0.738665,
		-0.889992, -0.455463, -0.021604,
		0.349552, -0.651081, -0.673726,
		33.080017, 32.707085, 41.009453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704670, 32.472908, 41.763435>,  <32.835331, 33.162842, 41.481060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704670, 32.472908, 41.763435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971657, 32.377460, 41.481289>,  <33.131851, 32.320190, 41.312000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971657, 32.377460, 41.481289>,  <32.704670, 32.472908, 41.763435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971657, 32.377460, 41.481289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462988, -0.608912, 0.644103,
		-0.583199, -0.756498, -0.295956,
		0.667474, -0.238617, -0.705366,
		33.171898, 32.305874, 41.269680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699856, 31.755131, 41.759354>,  <32.704670, 32.472908, 41.763435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699856, 31.755131, 41.759354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043964, 31.869226, 41.590324>,  <33.250431, 31.937683, 41.488907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043964, 31.869226, 41.590324>,  <32.699856, 31.755131, 41.759354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043964, 31.869226, 41.590324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507684, -0.555258, 0.658746,
		-0.046738, -0.781235, -0.622484,
		0.860275, 0.285237, -0.422572,
		33.302048, 31.954798, 41.463554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088154, 31.082254, 41.640793>,  <32.699856, 31.755131, 41.759354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088154, 31.082254, 41.640793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375721, 31.358898, 41.612995>,  <33.548264, 31.524883, 41.596317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375721, 31.358898, 41.612995>,  <33.088154, 31.082254, 41.640793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375721, 31.358898, 41.612995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544804, -0.498565, 0.674256,
		0.431672, -0.522600, -0.735220,
		0.718921, 0.691609, -0.069498,
		33.591396, 31.566381, 41.592144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762089, 30.829088, 41.414917>,  <33.088154, 31.082254, 41.640793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762089, 30.829088, 41.414917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851757, 31.154440, 41.629639>,  <33.905560, 31.349651, 41.758472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851757, 31.154440, 41.629639>,  <33.762089, 30.829088, 41.414917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851757, 31.154440, 41.629639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467690, -0.573040, 0.672971,
		0.854993, 0.100201, -0.508867,
		0.224169, 0.813378, 0.536809,
		33.919006, 31.398453, 41.790680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373005, 30.665421, 41.811695>,  <33.762089, 30.829088, 41.414917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373005, 30.665421, 41.811695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243374, 31.001211, 41.986168>,  <34.165596, 31.202686, 42.090851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243374, 31.001211, 41.986168>,  <34.373005, 30.665421, 41.811695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243374, 31.001211, 41.986168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490802, -0.244970, 0.836124,
		0.808758, 0.485045, -0.332628,
		-0.324074, 0.839477, 0.436182,
		34.146152, 31.253054, 42.117023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056511, 31.025524, 42.098824>,  <34.373005, 30.665421, 41.811695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056511, 31.025524, 42.098824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735802, 31.156466, 42.298820>,  <34.543377, 31.235029, 42.418819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735802, 31.156466, 42.298820>,  <35.056511, 31.025524, 42.098824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735802, 31.156466, 42.298820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470101, -0.171115, 0.865866,
		0.368999, 0.929280, -0.016692,
		-0.801776, 0.327351, 0.499997,
		34.495270, 31.254671, 42.448818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390312, 31.392424, 42.625401>,  <35.056511, 31.025524, 42.098824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390312, 31.392424, 42.625401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020924, 31.357737, 42.774899>,  <34.799290, 31.336926, 42.864597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020924, 31.357737, 42.774899>,  <35.390312, 31.392424, 42.625401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020924, 31.357737, 42.774899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373209, 0.022876, 0.927465,
		-0.088976, 0.995970, 0.011238,
		-0.923471, -0.086716, 0.373741,
		34.743881, 31.331722, 42.887020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166172, 31.949854, 43.189903>,  <35.390312, 31.392424, 42.625401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166172, 31.949854, 43.189903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908424, 31.652515, 43.261715>,  <34.753777, 31.474112, 43.304802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908424, 31.652515, 43.261715>,  <35.166172, 31.949854, 43.189903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908424, 31.652515, 43.261715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158041, 0.100248, 0.982331,
		-0.748209, 0.661352, 0.052883,
		-0.644365, -0.743346, 0.179527,
		34.715115, 31.429512, 43.315575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728569, 32.212788, 43.708847>,  <35.166172, 31.949854, 43.189903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728569, 32.212788, 43.708847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723106, 31.812902, 43.716702>,  <34.719830, 31.572971, 43.721413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723106, 31.812902, 43.716702>,  <34.728569, 32.212788, 43.708847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723106, 31.812902, 43.716702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039033, 0.019088, 0.999056,
		-0.999145, 0.014406, 0.038761,
		-0.013653, -0.999714, 0.019634,
		34.719009, 31.512989, 43.722591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431694, 32.125210, 44.420097>,  <34.728569, 32.212788, 43.708847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431694, 32.125210, 44.420097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521984, 31.745213, 44.333790>,  <34.576157, 31.517214, 44.282005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521984, 31.745213, 44.333790>,  <34.431694, 32.125210, 44.420097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521984, 31.745213, 44.333790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205529, -0.262940, 0.942667,
		-0.952264, -0.168436, -0.254604,
		0.225724, -0.949996, -0.215770,
		34.589703, 31.460215, 44.269058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900242, 31.735844, 44.745747>,  <34.431694, 32.125210, 44.420097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900242, 31.735844, 44.745747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221973, 31.502136, 44.702507>,  <34.415012, 31.361912, 44.676563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221973, 31.502136, 44.702507>,  <33.900242, 31.735844, 44.745747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221973, 31.502136, 44.702507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025256, -0.215381, 0.976204,
		-0.593650, -0.782457, -0.187993,
		0.804327, -0.584271, -0.108099,
		34.463272, 31.326855, 44.670078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750851, 31.162498, 45.123829>,  <33.900242, 31.735844, 44.745747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750851, 31.162498, 45.123829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150803, 31.167955, 45.120747>,  <34.390774, 31.171230, 45.118896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150803, 31.167955, 45.120747>,  <33.750851, 31.162498, 45.123829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150803, 31.167955, 45.120747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010720, -0.237095, 0.971427,
		0.011427, -0.971391, -0.237213,
		0.999877, 0.013644, -0.007704,
		34.450768, 31.172049, 45.118435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968338, 30.528664, 45.549976>,  <33.750851, 31.162498, 45.123829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968338, 30.528664, 45.549976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274384, 30.783937, 45.515732>,  <34.458012, 30.937101, 45.495186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274384, 30.783937, 45.515732>,  <33.968338, 30.528664, 45.549976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274384, 30.783937, 45.515732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172739, -0.075355, 0.982081,
		0.620296, -0.766188, -0.167894,
		0.765111, 0.638183, -0.085608,
		34.503918, 30.975391, 45.490047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228031, 30.635386, 46.212051>,  <33.968338, 30.528664, 45.549976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228031, 30.635386, 46.212051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458179, 30.929701, 46.069191>,  <34.596268, 31.106291, 45.983475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458179, 30.929701, 46.069191>,  <34.228031, 30.635386, 46.212051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458179, 30.929701, 46.069191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330300, 0.190444, 0.924464,
		0.748229, -0.649880, -0.133455,
		0.575375, 0.735790, -0.357151,
		34.630791, 31.150438, 45.962048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040653, 30.591368, 46.409767>,  <34.228031, 30.635386, 46.212051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040653, 30.591368, 46.409767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919518, 30.966782, 46.343510>,  <34.846836, 31.192030, 46.303757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919518, 30.966782, 46.343510>,  <35.040653, 30.591368, 46.409767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919518, 30.966782, 46.343510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261959, 0.249085, 0.932381,
		0.916332, 0.238973, -0.321292,
		-0.302843, 0.938535, -0.165643,
		34.828663, 31.248343, 46.293816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538258, 30.947046, 46.666286>,  <35.040653, 30.591368, 46.409767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538258, 30.947046, 46.666286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241844, 31.215513, 46.674377>,  <35.063995, 31.376593, 46.679234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241844, 31.215513, 46.674377>,  <35.538258, 30.947046, 46.666286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241844, 31.215513, 46.674377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384377, 0.399301, 0.832354,
		0.550570, 0.624576, -0.553875,
		-0.741031, 0.671166, 0.020230,
		35.019535, 31.416862, 46.680447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888737, 31.582518, 46.862583>,  <35.538258, 30.947046, 46.666286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888737, 31.582518, 46.862583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498474, 31.667864, 46.882851>,  <35.264317, 31.719070, 46.895012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498474, 31.667864, 46.882851>,  <35.888737, 31.582518, 46.862583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498474, 31.667864, 46.882851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136269, 0.408808, 0.902389,
		0.171822, 0.887328, -0.427932,
		-0.975658, 0.213364, 0.050673,
		35.205776, 31.731873, 46.898052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829708, 32.338268, 47.135128>,  <35.888737, 31.582518, 46.862583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829708, 32.338268, 47.135128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476192, 32.167973, 47.212749>,  <35.264084, 32.065796, 47.259323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476192, 32.167973, 47.212749>,  <35.829708, 32.338268, 47.135128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476192, 32.167973, 47.212749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034394, 0.472748, 0.880526,
		-0.466618, 0.771526, -0.432453,
		-0.883790, -0.425743, 0.194057,
		35.211056, 32.040249, 47.270966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470264, 32.791725, 47.479851>,  <35.829708, 32.338268, 47.135128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470264, 32.791725, 47.479851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306973, 32.441132, 47.581928>,  <35.209000, 32.230774, 47.643173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306973, 32.441132, 47.581928>,  <35.470264, 32.791725, 47.479851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306973, 32.441132, 47.581928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083297, 0.242615, 0.966540,
		-0.909072, 0.415825, -0.026033,
		-0.408227, -0.876486, 0.255191,
		35.184505, 32.178185, 47.658485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051472, 32.940170, 48.016041>,  <35.470264, 32.791725, 47.479851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051472, 32.940170, 48.016041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100494, 32.544830, 48.052155>,  <35.129910, 32.307629, 48.073822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100494, 32.544830, 48.052155>,  <35.051472, 32.940170, 48.016041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100494, 32.544830, 48.052155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136052, 0.106841, 0.984924,
		-0.983092, -0.108427, 0.147560,
		0.122558, -0.988346, 0.090282,
		35.137260, 32.248325, 48.079239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540989, 32.664772, 48.412567>,  <35.051472, 32.940170, 48.016041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540989, 32.664772, 48.412567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854214, 32.417202, 48.437019>,  <35.042149, 32.268658, 48.451691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854214, 32.417202, 48.437019>,  <34.540989, 32.664772, 48.412567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854214, 32.417202, 48.437019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018011, 0.075687, 0.996969,
		-0.621680, -0.781792, 0.048120,
		0.783064, -0.618929, 0.061134,
		35.089134, 32.231522, 48.455360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397724, 32.320747, 48.922379>,  <34.540989, 32.664772, 48.412567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397724, 32.320747, 48.922379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788849, 32.243256, 48.890503>,  <35.023525, 32.196762, 48.871376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788849, 32.243256, 48.890503>,  <34.397724, 32.320747, 48.922379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788849, 32.243256, 48.890503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115687, 0.182251, 0.976423,
		-0.174638, -0.963978, 0.200619,
		0.977813, -0.193729, -0.079692,
		35.082191, 32.185139, 48.866596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587070, 31.778400, 49.391193>,  <34.397724, 32.320747, 48.922379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587070, 31.778400, 49.391193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925163, 31.976597, 49.311119>,  <35.128017, 32.095512, 49.263073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925163, 31.976597, 49.311119>,  <34.587070, 31.778400, 49.391193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925163, 31.976597, 49.311119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144217, 0.149209, 0.978232,
		0.514573, -0.855703, 0.054658,
		0.845232, 0.495489, -0.200185,
		35.178734, 32.125244, 49.251064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971115, 31.453905, 49.821800>,  <34.587070, 31.778400, 49.391193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971115, 31.453905, 49.821800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168594, 31.788231, 49.725739>,  <35.287083, 31.988827, 49.668102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168594, 31.788231, 49.725739>,  <34.971115, 31.453905, 49.821800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168594, 31.788231, 49.725739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266123, 0.117707, 0.956725,
		0.827912, -0.536248, -0.164317,
		0.493701, 0.835813, -0.240159,
		35.316704, 32.038975, 49.653690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520443, 31.410770, 50.243607>,  <34.971115, 31.453905, 49.821800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520443, 31.410770, 50.243607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491985, 31.794552, 50.134510>,  <35.474911, 32.024822, 50.069054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491985, 31.794552, 50.134510>,  <35.520443, 31.410770, 50.243607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491985, 31.794552, 50.134510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156636, 0.280787, 0.946902,
		0.985091, 0.024646, -0.170261,
		-0.071145, 0.959454, -0.272740,
		35.470642, 32.082390, 50.052689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872757, 31.743340, 50.804096>,  <35.520443, 31.410770, 50.243607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872757, 31.743340, 50.804096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694504, 32.034340, 50.595425>,  <35.587551, 32.208939, 50.470222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694504, 32.034340, 50.595425>,  <35.872757, 31.743340, 50.804096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694504, 32.034340, 50.595425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049523, 0.561820, 0.825776,
		0.893845, 0.393828, -0.214338,
		-0.445633, 0.727500, -0.521684,
		35.560814, 32.252590, 50.438919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221092, 32.356739, 50.894165>,  <35.872757, 31.743340, 50.804096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221092, 32.356739, 50.894165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842552, 32.442722, 50.797657>,  <35.615429, 32.494312, 50.739754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842552, 32.442722, 50.797657>,  <36.221092, 32.356739, 50.894165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842552, 32.442722, 50.797657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074534, 0.581298, 0.810270,
		0.314425, 0.784783, -0.534091,
		-0.946352, 0.214961, -0.241268,
		35.558647, 32.507210, 50.725277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156033, 33.173588, 50.915249>,  <36.221092, 32.356739, 50.894165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156033, 33.173588, 50.915249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810959, 32.985878, 50.990673>,  <35.603916, 32.873253, 51.035927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810959, 32.985878, 50.990673>,  <36.156033, 33.173588, 50.915249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810959, 32.985878, 50.990673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174240, 0.625798, 0.760274,
		-0.474781, 0.623021, -0.621633,
		-0.862684, -0.469277, 0.188562,
		35.552155, 32.845097, 51.047241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274319, 33.855888, 51.110737>,  <36.156033, 33.173588, 50.915249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274319, 33.855888, 51.110737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601723, 34.083588, 51.079735>,  <36.798164, 34.220207, 51.061134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601723, 34.083588, 51.079735>,  <36.274319, 33.855888, 51.110737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601723, 34.083588, 51.079735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193833, 0.146633, -0.970014,
		-0.540810, 0.808987, 0.230359,
		0.818507, 0.569244, -0.077508,
		36.847275, 34.254360, 51.056484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121967, 34.509289, 50.851021>,  <36.274319, 33.855888, 51.110737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121967, 34.509289, 50.851021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506527, 34.450611, 50.757896>,  <36.737263, 34.415405, 50.702023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506527, 34.450611, 50.757896>,  <36.121967, 34.509289, 50.851021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506527, 34.450611, 50.757896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224567, 0.070664, -0.971893,
		0.159025, 0.986654, 0.034992,
		0.961395, -0.146697, -0.232808,
		36.794945, 34.406601, 50.688053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253731, 35.062557, 50.427593>,  <36.121967, 34.509289, 50.851021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253731, 35.062557, 50.427593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555286, 34.811966, 50.348419>,  <36.736217, 34.661610, 50.300915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555286, 34.811966, 50.348419>,  <36.253731, 35.062557, 50.427593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555286, 34.811966, 50.348419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002760, 0.304284, -0.952577,
		0.657001, 0.717588, 0.231124,
		0.753885, -0.626482, -0.197934,
		36.781452, 34.624020, 50.289040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495316, 35.406490, 49.955513>,  <36.253731, 35.062557, 50.427593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495316, 35.406490, 49.955513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676167, 35.050991, 49.925301>,  <36.784679, 34.837692, 49.907173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676167, 35.050991, 49.925301>,  <36.495316, 35.406490, 49.955513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676167, 35.050991, 49.925301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214522, 0.190542, -0.957953,
		0.865771, 0.416916, 0.276806,
		0.452129, -0.888749, -0.075529,
		36.811806, 34.784367, 49.902641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114136, 35.518478, 49.494656>,  <36.495316, 35.406490, 49.955513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114136, 35.518478, 49.494656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021446, 35.129387, 49.498871>,  <36.965832, 34.895931, 49.501400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021446, 35.129387, 49.498871>,  <37.114136, 35.518478, 49.494656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021446, 35.129387, 49.498871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075967, 0.007297, -0.997084,
		0.969812, -0.231844, -0.075586,
		-0.231719, -0.972726, 0.010535,
		36.951931, 34.837570, 49.502033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389103, 35.201290, 48.869392>,  <37.114136, 35.518478, 49.494656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389103, 35.201290, 48.869392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096760, 34.944744, 48.962776>,  <36.921356, 34.790817, 49.018806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096760, 34.944744, 48.962776>,  <37.389103, 35.201290, 48.869392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096760, 34.944744, 48.962776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267598, -0.045396, -0.962461,
		0.627888, -0.765891, -0.138450,
		-0.730854, -0.641366, 0.233455,
		36.877502, 34.752335, 49.032814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388000, 34.770081, 48.324219>,  <37.389103, 35.201290, 48.869392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388000, 34.770081, 48.324219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031433, 34.736416, 48.502335>,  <36.817493, 34.716217, 48.609203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031433, 34.736416, 48.502335>,  <37.388000, 34.770081, 48.324219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031433, 34.736416, 48.502335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393129, -0.345169, -0.852237,
		0.225424, -0.934760, 0.274606,
		-0.891422, -0.084159, 0.445291,
		36.764008, 34.711166, 48.635921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183704, 34.107059, 48.189144>,  <37.388000, 34.770081, 48.324219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183704, 34.107059, 48.189144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872768, 34.347752, 48.262531>,  <36.686207, 34.492168, 48.306564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872768, 34.347752, 48.262531>,  <37.183704, 34.107059, 48.189144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872768, 34.347752, 48.262531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423518, -0.284928, -0.859912,
		-0.465160, -0.746147, 0.476330,
		-0.777341, 0.601731, 0.183469,
		36.639565, 34.528271, 48.317574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545578, 33.759766, 47.992313>,  <37.183704, 34.107059, 48.189144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545578, 33.759766, 47.992313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429806, 34.141369, 48.023575>,  <36.360344, 34.370331, 48.042332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429806, 34.141369, 48.023575>,  <36.545578, 33.759766, 47.992313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429806, 34.141369, 48.023575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474960, -0.072249, -0.877036,
		-0.831051, -0.290956, 0.474025,
		-0.289427, 0.954004, 0.078150,
		36.342979, 34.427570, 48.047020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811733, 33.777050, 47.958946>,  <36.545578, 33.759766, 47.992313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811733, 33.777050, 47.958946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940300, 34.136021, 47.838070>,  <36.017441, 34.351402, 47.765545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.940300, 34.136021, 47.838070>,  <35.811733, 33.777050, 47.958946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940300, 34.136021, 47.838070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511146, -0.104211, -0.853153,
		-0.797133, 0.428680, 0.425220,
		0.321417, 0.897426, -0.302188,
		36.036724, 34.405247, 47.747414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377823, 33.908550, 47.496304>,  <35.811733, 33.777050, 47.958946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377823, 33.908550, 47.496304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603340, 34.231850, 47.428333>,  <35.738651, 34.425827, 47.387550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603340, 34.231850, 47.428333>,  <35.377823, 33.908550, 47.496304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603340, 34.231850, 47.428333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301123, 0.009583, -0.953537,
		-0.769063, 0.588769, 0.248784,
		0.563798, 0.808244, -0.169922,
		35.772480, 34.474323, 47.377357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997623, 34.455387, 47.371429>,  <35.377823, 33.908550, 47.496304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997623, 34.455387, 47.371429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342133, 34.521469, 47.179214>,  <35.548840, 34.561119, 47.063885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342133, 34.521469, 47.179214>,  <34.997623, 34.455387, 47.371429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342133, 34.521469, 47.179214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476798, -0.064242, -0.876662,
		-0.175701, 0.984165, 0.023441,
		0.861274, 0.165207, -0.480535,
		35.600513, 34.571030, 47.035053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776608, 34.903809, 46.849266>,  <34.997623, 34.455387, 47.371429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776608, 34.903809, 46.849266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128029, 34.764721, 46.718277>,  <35.338882, 34.681267, 46.639683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128029, 34.764721, 46.718277>,  <34.776608, 34.903809, 46.849266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128029, 34.764721, 46.718277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360840, -0.033960, -0.932009,
		0.312961, 0.936982, -0.155308,
		0.878550, -0.347724, -0.327472,
		35.391594, 34.660404, 46.620037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825920, 35.200905, 46.156475>,  <34.776608, 34.903809, 46.849266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825920, 35.200905, 46.156475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127972, 34.938683, 46.154751>,  <35.309204, 34.781349, 46.153717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127972, 34.938683, 46.154751>,  <34.825920, 35.200905, 46.156475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127972, 34.938683, 46.154751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043598, -0.043650, -0.998095,
		0.654122, 0.753882, -0.061542,
		0.755132, -0.655559, -0.004315,
		35.354511, 34.742016, 46.153458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343102, 35.454941, 45.732265>,  <34.825920, 35.200905, 46.156475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343102, 35.454941, 45.732265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341267, 35.055519, 45.753704>,  <35.340164, 34.815868, 45.766567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341267, 35.055519, 45.753704>,  <35.343102, 35.454941, 45.732265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341267, 35.055519, 45.753704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024999, -0.053692, -0.998245,
		0.999677, -0.003240, 0.025209,
		-0.004588, -0.998552, 0.053594,
		35.339890, 34.755955, 45.769783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913372, 35.307629, 45.276546>,  <35.343102, 35.454941, 45.732265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913372, 35.307629, 45.276546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673935, 34.987835, 45.296555>,  <35.530273, 34.795959, 45.308559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673935, 34.987835, 45.296555>,  <35.913372, 35.307629, 45.276546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673935, 34.987835, 45.296555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109293, -0.143371, -0.983616,
		0.793560, -0.583322, 0.173200,
		-0.598597, -0.799488, 0.050020,
		35.494354, 34.747990, 45.311562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112598, 34.939831, 44.710384>,  <35.913372, 35.307629, 45.276546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112598, 34.939831, 44.710384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818661, 34.688404, 44.812294>,  <35.642300, 34.537548, 44.873440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818661, 34.688404, 44.812294>,  <36.112598, 34.939831, 44.710384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818661, 34.688404, 44.812294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019460, -0.395027, -0.918463,
		0.677958, -0.669969, 0.302515,
		-0.734843, -0.628566, 0.254774,
		35.598209, 34.499836, 44.888725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453491, 34.197083, 44.646328>,  <36.112598, 34.939831, 44.710384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453491, 34.197083, 44.646328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058079, 34.137997, 44.633724>,  <35.820831, 34.102543, 44.626160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058079, 34.137997, 44.633724>,  <36.453491, 34.197083, 44.646328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058079, 34.137997, 44.633724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075796, -0.304686, -0.949432,
		0.130647, -0.940928, 0.312387,
		-0.988527, -0.147719, -0.031513,
		35.761520, 34.093681, 44.624271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275894, 33.465488, 44.390736>,  <36.453491, 34.197083, 44.646328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275894, 33.465488, 44.390736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949192, 33.684620, 44.318298>,  <35.753170, 33.816101, 44.274837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949192, 33.684620, 44.318298>,  <36.275894, 33.465488, 44.390736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949192, 33.684620, 44.318298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032040, -0.356435, -0.933771,
		-0.576097, -0.756858, 0.308672,
		-0.816753, 0.547832, -0.181091,
		35.704166, 33.848969, 44.263969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783657, 32.993252, 44.139343>,  <36.275894, 33.465488, 44.390736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783657, 32.993252, 44.139343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668514, 33.360027, 44.028812>,  <35.599430, 33.580093, 43.962494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.668514, 33.360027, 44.028812>,  <35.783657, 32.993252, 44.139343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668514, 33.360027, 44.028812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021078, -0.282406, -0.959063,
		-0.957443, -0.281894, 0.061965,
		-0.287853, 0.916942, -0.276330,
		35.582157, 33.635109, 43.945915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004333, 32.880611, 43.768524>,  <35.783657, 32.993252, 44.139343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004333, 32.880611, 43.768524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201084, 33.207062, 43.647202>,  <35.319134, 33.402931, 43.574409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201084, 33.207062, 43.647202>,  <35.004333, 32.880611, 43.768524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201084, 33.207062, 43.647202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123360, -0.279517, -0.952183,
		-0.861880, 0.505774, -0.036811,
		0.491879, 0.816127, -0.303302,
		35.348648, 33.451900, 43.556210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614319, 33.011387, 43.194942>,  <35.004333, 32.880611, 43.768524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614319, 33.011387, 43.194942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928379, 33.258972, 43.186691>,  <35.116814, 33.407524, 43.181740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928379, 33.258972, 43.186691>,  <34.614319, 33.011387, 43.194942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928379, 33.258972, 43.186691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002478, -0.036449, -0.999332,
		-0.619299, 0.784576, -0.030152,
		0.785151, 0.618961, -0.020628,
		35.163925, 33.444660, 43.180504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383114, 33.495422, 42.754353>,  <34.614319, 33.011387, 43.194942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383114, 33.495422, 42.754353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782036, 33.523285, 42.763523>,  <35.021389, 33.540001, 42.769024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782036, 33.523285, 42.763523>,  <34.383114, 33.495422, 42.754353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782036, 33.523285, 42.763523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019794, 0.045272, -0.998779,
		-0.070604, 0.996544, 0.043771,
		0.997308, 0.069652, 0.022922,
		35.081226, 33.544182, 42.770401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503887, 33.887341, 42.059856>,  <34.383114, 33.495422, 42.754353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503887, 33.887341, 42.059856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856236, 33.752457, 42.192738>,  <35.067646, 33.671528, 42.272465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856236, 33.752457, 42.192738>,  <34.503887, 33.887341, 42.059856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856236, 33.752457, 42.192738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353883, 0.003032, -0.935285,
		0.314381, 0.941424, 0.122003,
		0.880870, -0.337211, 0.332201,
		35.120495, 33.651295, 42.292397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097469, 34.441742, 41.958370>,  <34.503887, 33.887341, 42.059856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097469, 34.441742, 41.958370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229912, 34.064415, 41.949291>,  <35.309376, 33.838017, 41.943844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229912, 34.064415, 41.949291>,  <35.097469, 34.441742, 41.958370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229912, 34.064415, 41.949291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357898, 0.147807, -0.921988,
		0.873085, 0.297152, 0.386552,
		0.331106, -0.943321, -0.022698,
		35.329243, 33.781418, 41.942482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761383, 34.448002, 41.636604>,  <35.097469, 34.441742, 41.958370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761383, 34.448002, 41.636604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667011, 34.059719, 41.618435>,  <35.610386, 33.826748, 41.607533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667011, 34.059719, 41.618435>,  <35.761383, 34.448002, 41.636604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667011, 34.059719, 41.618435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456549, -0.069461, -0.886983,
		0.857846, -0.230005, 0.459563,
		-0.235932, -0.970708, -0.045422,
		35.596233, 33.768505, 41.604809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351326, 34.237206, 41.506607>,  <35.761383, 34.448002, 41.636604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351326, 34.237206, 41.506607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074635, 33.965935, 41.407337>,  <35.908619, 33.803173, 41.347775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074635, 33.965935, 41.407337>,  <36.351326, 34.237206, 41.506607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074635, 33.965935, 41.407337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437455, -0.120080, -0.891187,
		0.574578, -0.725026, 0.379732,
		-0.691732, -0.678172, -0.248171,
		35.867115, 33.762482, 41.332886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731747, 33.683872, 41.243298>,  <36.351326, 34.237206, 41.506607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731747, 33.683872, 41.243298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361904, 33.619900, 41.105003>,  <36.139999, 33.581516, 41.022026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361904, 33.619900, 41.105003>,  <36.731747, 33.683872, 41.243298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361904, 33.619900, 41.105003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374865, -0.220669, -0.900434,
		0.067720, -0.962146, 0.263985,
		-0.924603, -0.159936, -0.345731,
		36.084522, 33.571918, 41.001286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705395, 33.058037, 40.994736>,  <36.731747, 33.683872, 41.243298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705395, 33.058037, 40.994736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412785, 33.249969, 40.800980>,  <36.237217, 33.365128, 40.684727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412785, 33.249969, 40.800980>,  <36.705395, 33.058037, 40.994736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412785, 33.249969, 40.800980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313115, -0.394681, -0.863821,
		-0.605666, -0.783577, 0.138477,
		-0.731525, 0.479828, -0.484394,
		36.193329, 33.393917, 40.655663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559788, 32.580044, 40.432465>,  <36.705395, 33.058037, 40.994736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559788, 32.580044, 40.432465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373959, 32.912212, 40.309460>,  <36.262459, 33.111515, 40.235657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373959, 32.912212, 40.309460>,  <36.559788, 32.580044, 40.432465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373959, 32.912212, 40.309460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387277, -0.121761, -0.913887,
		-0.796357, -0.543663, -0.265037,
		-0.464576, 0.830424, -0.307514,
		36.234585, 33.161339, 40.217205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372227, 32.459332, 39.742630>,  <36.559788, 32.580044, 40.432465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372227, 32.459332, 39.742630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350006, 32.857262, 39.776634>,  <36.336674, 33.096020, 39.797039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350006, 32.857262, 39.776634>,  <36.372227, 32.459332, 39.742630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350006, 32.857262, 39.776634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351594, 0.099183, -0.930884,
		-0.934503, -0.021824, -0.355287,
		-0.055554, 0.994830, 0.085013,
		36.333340, 33.155712, 39.802139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005943, 32.665901, 39.226604>,  <36.372227, 32.459332, 39.742630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005943, 32.665901, 39.226604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234474, 32.982319, 39.314091>,  <36.371593, 33.172169, 39.366581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234474, 32.982319, 39.314091>,  <36.005943, 32.665901, 39.226604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234474, 32.982319, 39.314091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310323, 0.038493, -0.949851,
		-0.759796, 0.610544, -0.223489,
		0.571323, 0.791047, 0.218712,
		36.405872, 33.219631, 39.379704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062077, 33.046253, 38.662479>,  <36.005943, 32.665901, 39.226604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062077, 33.046253, 38.662479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356403, 33.211609, 38.877022>,  <36.533001, 33.310822, 39.005749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356403, 33.211609, 38.877022>,  <36.062077, 33.046253, 38.662479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356403, 33.211609, 38.877022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569956, 0.049646, -0.820174,
		-0.365683, 0.909198, -0.199086,
		0.735817, 0.413394, 0.536358,
		36.577148, 33.335629, 39.037930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356144, 33.566040, 38.224342>,  <36.062077, 33.046253, 38.662479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356144, 33.566040, 38.224342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636711, 33.491768, 38.499599>,  <36.805054, 33.447205, 38.664753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636711, 33.491768, 38.499599>,  <36.356144, 33.566040, 38.224342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636711, 33.491768, 38.499599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711354, 0.122006, -0.692163,
		0.044561, 0.975007, 0.217659,
		0.701420, -0.185677, 0.688139,
		36.847137, 33.436066, 38.706039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941673, 33.994003, 37.969521>,  <36.356144, 33.566040, 38.224342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941673, 33.994003, 37.969521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096581, 33.728611, 38.225586>,  <37.189526, 33.569374, 38.379227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096581, 33.728611, 38.225586>,  <36.941673, 33.994003, 37.969521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096581, 33.728611, 38.225586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707196, -0.231710, -0.667970,
		0.591520, 0.711407, 0.379479,
		0.387269, -0.663484, 0.640165,
		37.212761, 33.529564, 38.417637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645454, 34.140747, 37.979256>,  <36.941673, 33.994003, 37.969521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645454, 34.140747, 37.979256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585976, 33.760540, 38.088360>,  <37.550289, 33.532413, 38.153820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585976, 33.760540, 38.088360>,  <37.645454, 34.140747, 37.979256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585976, 33.760540, 38.088360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688982, -0.297443, -0.660932,
		0.709360, 0.089643, 0.699123,
		-0.148701, -0.950522, 0.272756,
		37.541367, 33.475384, 38.170185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321209, 33.815540, 37.881382>,  <37.645454, 34.140747, 37.979256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321209, 33.815540, 37.881382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074131, 33.506157, 37.938251>,  <37.925884, 33.320526, 37.972374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074131, 33.506157, 37.938251>,  <38.321209, 33.815540, 37.881382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074131, 33.506157, 37.938251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598476, -0.579616, -0.553057,
		0.510171, -0.256536, 0.820923,
		-0.617699, -0.773456, 0.142172,
		37.888821, 33.274120, 37.980904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742813, 33.249668, 38.209274>,  <38.321209, 33.815540, 37.881382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742813, 33.249668, 38.209274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437637, 33.129990, 37.980045>,  <38.254532, 33.058182, 37.842510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437637, 33.129990, 37.980045>,  <38.742813, 33.249668, 38.209274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437637, 33.129990, 37.980045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639032, -0.483125, -0.598521,
		-0.097792, -0.822845, 0.559788,
		-0.762938, -0.299192, -0.573070,
		38.208755, 33.040234, 37.808125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968887, 32.587154, 37.998085>,  <38.742813, 33.249668, 38.209274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968887, 32.587154, 37.998085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669014, 32.677986, 37.749435>,  <38.489090, 32.732487, 37.600246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.669014, 32.677986, 37.749435>,  <38.968887, 32.587154, 37.998085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669014, 32.677986, 37.749435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390910, -0.605976, -0.692807,
		-0.534009, -0.762383, 0.365522,
		-0.749682, 0.227079, -0.621620,
		38.444111, 32.746109, 37.562950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654865, 31.954641, 37.795132>,  <38.968887, 32.587154, 37.998085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654865, 31.954641, 37.795132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621853, 32.253513, 37.531342>,  <38.602047, 32.432835, 37.373066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621853, 32.253513, 37.531342>,  <38.654865, 31.954641, 37.795132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621853, 32.253513, 37.531342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359041, -0.595007, -0.719066,
		-0.929666, -0.296125, -0.219161,
		-0.082531, 0.747179, -0.659479,
		38.597092, 32.477669, 37.333496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150127, 31.838367, 37.165623>,  <38.654865, 31.954641, 37.795132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150127, 31.838367, 37.165623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453323, 32.087307, 37.087513>,  <38.635242, 32.236671, 37.040646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.453323, 32.087307, 37.087513>,  <38.150127, 31.838367, 37.165623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453323, 32.087307, 37.087513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265563, -0.567901, -0.779079,
		-0.595756, 0.538677, -0.595736,
		0.757991, 0.622347, -0.195278,
		38.680721, 32.274010, 37.028931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203423, 31.898117, 36.396263>,  <38.150127, 31.838367, 37.165623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203423, 31.898117, 36.396263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550640, 31.937002, 36.591011>,  <38.758972, 31.960333, 36.707859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550640, 31.937002, 36.591011>,  <38.203423, 31.898117, 36.396263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550640, 31.937002, 36.591011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457387, -0.538012, -0.708054,
		0.193111, 0.837313, -0.511484,
		0.868047, 0.097213, 0.486872,
		38.811054, 31.966166, 36.737072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707130, 32.358303, 36.207783>,  <38.203423, 31.898117, 36.396263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707130, 32.358303, 36.207783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850391, 32.023621, 36.373508>,  <38.936348, 31.822811, 36.472942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850391, 32.023621, 36.373508>,  <38.707130, 32.358303, 36.207783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850391, 32.023621, 36.373508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196092, -0.366442, -0.909543,
		0.912838, 0.407000, 0.032828,
		0.358154, -0.836703, 0.414312,
		38.957836, 31.772610, 36.497803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570045, 32.797752, 35.531853>,  <38.707130, 32.358303, 36.207783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570045, 32.797752, 35.531853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818401, 33.083237, 35.402172>,  <38.967415, 33.254528, 35.324364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818401, 33.083237, 35.402172>,  <38.570045, 32.797752, 35.531853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818401, 33.083237, 35.402172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653520, -0.242889, 0.716880,
		0.432904, -0.656974, -0.617235,
		0.620892, 0.713715, -0.324198,
		39.004669, 33.297352, 35.304913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372437, 32.504196, 35.492977>,  <38.570045, 32.797752, 35.531853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372437, 32.504196, 35.492977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379078, 32.901733, 35.536781>,  <39.383064, 33.140255, 35.563065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379078, 32.901733, 35.536781>,  <39.372437, 32.504196, 35.492977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379078, 32.901733, 35.536781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737852, -0.086094, 0.669450,
		0.674759, 0.069689, -0.734741,
		0.016604, 0.993847, 0.109513,
		39.384060, 33.199886, 35.569633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052479, 32.868446, 35.250572>,  <39.372437, 32.504196, 35.492977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052479, 32.868446, 35.250572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870342, 33.066002, 35.546879>,  <39.761063, 33.184536, 35.724663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870342, 33.066002, 35.546879>,  <40.052479, 32.868446, 35.250572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870342, 33.066002, 35.546879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761871, -0.214361, 0.611229,
		0.460673, 0.842686, -0.278675,
		-0.455337, 0.493892, 0.740769,
		39.733742, 33.214169, 35.769108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446301, 33.439758, 35.471024>,  <40.052479, 32.868446, 35.250572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446301, 33.439758, 35.471024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229931, 33.331463, 35.789547>,  <40.100109, 33.266487, 35.980659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229931, 33.331463, 35.789547>,  <40.446301, 33.439758, 35.471024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229931, 33.331463, 35.789547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835793, -0.067098, 0.544929,
		-0.094103, 0.960312, 0.262576,
		-0.540920, -0.270739, 0.796308,
		40.067654, 33.250240, 36.028439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878468, 33.277885, 34.919044>,  <40.446301, 33.439758, 35.471024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878468, 33.277885, 34.919044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208012, 33.398819, 35.110809>,  <41.405739, 33.471378, 35.225868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208012, 33.398819, 35.110809>,  <40.878468, 33.277885, 34.919044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208012, 33.398819, 35.110809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256379, -0.953155, 0.160514,
		0.505488, -0.009329, -0.862783,
		0.823864, 0.302338, 0.479417,
		41.455170, 33.489521, 35.254635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364590, 32.900700, 34.682796>,  <40.878468, 33.277885, 34.919044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364590, 32.900700, 34.682796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481644, 33.023674, 35.044979>,  <41.551876, 33.097458, 35.262287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481644, 33.023674, 35.044979>,  <41.364590, 32.900700, 34.682796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481644, 33.023674, 35.044979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150283, -0.949924, 0.273970,
		0.944342, 0.055902, -0.324179,
		0.292630, 0.307440, 0.905455,
		41.569431, 33.115906, 35.316616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872997, 32.472767, 34.794846>,  <41.364590, 32.900700, 34.682796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872997, 32.472767, 34.794846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802006, 32.600742, 35.167110>,  <41.759411, 32.677528, 35.390469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.802006, 32.600742, 35.167110>,  <41.872997, 32.472767, 34.794846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802006, 32.600742, 35.167110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264810, -0.895275, 0.358271,
		0.947827, 0.310036, 0.074174,
		-0.177483, 0.319937, 0.930667,
		41.748760, 32.696724, 35.446312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395279, 32.144962, 35.168869>,  <41.872997, 32.472767, 34.794846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395279, 32.144962, 35.168869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123737, 32.268196, 35.435478>,  <41.960812, 32.342136, 35.595444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123737, 32.268196, 35.435478>,  <42.395279, 32.144962, 35.168869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123737, 32.268196, 35.435478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165214, -0.820359, 0.547463,
		0.715448, 0.481764, 0.506001,
		-0.678851, 0.308082, 0.666519,
		41.920082, 32.360622, 35.635433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709812, 32.106293, 35.844101>,  <42.395279, 32.144962, 35.168869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709812, 32.106293, 35.844101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313862, 32.117905, 35.899677>,  <42.076290, 32.124870, 35.933025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313862, 32.117905, 35.899677>,  <42.709812, 32.106293, 35.844101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313862, 32.117905, 35.899677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051757, -0.837654, 0.543743,
		0.132173, 0.545429, 0.827670,
		-0.989874, 0.029030, 0.138945,
		42.016899, 32.126614, 35.941360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597569, 31.879118, 36.510349>,  <42.709812, 32.106293, 35.844101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597569, 31.879118, 36.510349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259727, 31.818512, 36.304947>,  <42.057022, 31.782148, 36.181705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259727, 31.818512, 36.304947>,  <42.597569, 31.879118, 36.510349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259727, 31.818512, 36.304947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088947, -0.906083, 0.413645,
		-0.527957, 0.395040, 0.751801,
		-0.844600, -0.151516, -0.513511,
		42.006348, 31.773058, 36.150894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108883, 31.575937, 37.015766>,  <42.597569, 31.879118, 36.510349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108883, 31.575937, 37.015766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942104, 31.492357, 36.661930>,  <41.842037, 31.442209, 36.449631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942104, 31.492357, 36.661930>,  <42.108883, 31.575937, 37.015766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942104, 31.492357, 36.661930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129851, -0.949541, 0.285500,
		-0.899606, 0.233904, 0.368779,
		-0.416950, -0.208951, -0.884586,
		41.817020, 31.429672, 36.396553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588966, 31.188204, 37.129265>,  <42.108883, 31.575937, 37.015766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588966, 31.188204, 37.129265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636551, 31.103460, 36.741253>,  <41.665100, 31.052614, 36.508446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636551, 31.103460, 36.741253>,  <41.588966, 31.188204, 37.129265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636551, 31.103460, 36.741253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146734, -0.969994, 0.193858,
		-0.981997, 0.119276, -0.146476,
		0.118959, -0.211861, -0.970033,
		41.672237, 31.039902, 36.450245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074627, 30.719614, 36.985397>,  <41.588966, 31.188204, 37.129265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074627, 30.719614, 36.985397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362679, 30.669270, 36.712463>,  <41.535507, 30.639063, 36.548702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362679, 30.669270, 36.712463>,  <41.074627, 30.719614, 36.985397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362679, 30.669270, 36.712463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110376, -0.991667, 0.066433,
		-0.685008, 0.027473, -0.728017,
		0.720126, -0.125863, -0.682332,
		41.578716, 30.631510, 36.507763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819893, 30.136118, 36.792103>,  <41.074627, 30.719614, 36.985397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819893, 30.136118, 36.792103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170078, 30.129110, 36.598919>,  <41.380192, 30.124905, 36.483009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170078, 30.129110, 36.598919>,  <40.819893, 30.136118, 36.792103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170078, 30.129110, 36.598919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041155, -0.998415, -0.038383,
		-0.481525, 0.053479, -0.874799,
		0.875466, -0.017520, -0.482962,
		41.432716, 30.123854, 36.454029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678070, 29.862814, 36.197021>,  <40.819893, 30.136118, 36.792103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678070, 29.862814, 36.197021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068604, 29.794796, 36.250481>,  <41.302921, 29.753984, 36.282558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068604, 29.794796, 36.250481>,  <40.678070, 29.862814, 36.197021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068604, 29.794796, 36.250481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132656, -0.958872, -0.250931,
		0.170823, 0.227262, -0.958734,
		0.976331, -0.170046, 0.133650,
		41.361504, 29.743782, 36.290577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989426, 29.551439, 35.594631>,  <40.678070, 29.862814, 36.197021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989426, 29.551439, 35.594631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233437, 29.450359, 35.895031>,  <41.379845, 29.389711, 36.075272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233437, 29.450359, 35.895031>,  <40.989426, 29.551439, 35.594631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233437, 29.450359, 35.895031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081385, -0.962753, -0.257842,
		0.788187, 0.096171, -0.607875,
		0.610031, -0.252699, 0.751003,
		41.416447, 29.374550, 36.120331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531551, 29.034897, 35.333515>,  <40.989426, 29.551439, 35.594631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531551, 29.034897, 35.333515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542217, 28.989227, 35.730755>,  <41.548618, 28.961824, 35.969101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542217, 28.989227, 35.730755>,  <41.531551, 29.034897, 35.333515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542217, 28.989227, 35.730755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182885, -0.976131, -0.117135,
		0.982773, 0.184747, -0.005150,
		0.026668, -0.114176, 0.993103,
		41.550217, 28.954975, 36.028687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244339, 28.796570, 35.503864>,  <41.531551, 29.034897, 35.333515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244339, 28.796570, 35.503864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976303, 28.689360, 35.780746>,  <41.815483, 28.625032, 35.946877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976303, 28.689360, 35.780746>,  <42.244339, 28.796570, 35.503864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976303, 28.689360, 35.780746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182588, -0.963397, -0.196283,
		0.719477, -0.005138, 0.694497,
		-0.670086, -0.268028, 0.692204,
		41.775276, 28.608952, 35.988407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575867, 28.244896, 35.794350>,  <42.244339, 28.796570, 35.503864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575867, 28.244896, 35.794350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185410, 28.217237, 35.876682>,  <41.951138, 28.200642, 35.926083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185410, 28.217237, 35.876682>,  <42.575867, 28.244896, 35.794350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185410, 28.217237, 35.876682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012198, -0.963907, -0.265961,
		0.216796, -0.257104, 0.941752,
		-0.976141, -0.069146, 0.205835,
		41.892567, 28.196493, 35.938431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416874, 27.628950, 35.568802>,  <42.575867, 28.244896, 35.794350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416874, 27.628950, 35.568802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049911, 27.693024, 35.714516>,  <41.829735, 27.731468, 35.801945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049911, 27.693024, 35.714516>,  <42.416874, 27.628950, 35.568802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049911, 27.693024, 35.714516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245545, -0.948228, -0.201426,
		0.313161, -0.274238, 0.909244,
		-0.917408, 0.160182, 0.364286,
		41.774689, 27.741077, 35.823803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247768, 27.028435, 35.968922>,  <42.416874, 27.628950, 35.568802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247768, 27.028435, 35.968922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907028, 27.221148, 35.886711>,  <41.702583, 27.336775, 35.837383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907028, 27.221148, 35.886711>,  <42.247768, 27.028435, 35.968922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907028, 27.221148, 35.886711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502867, -0.862026, 0.063526,
		-0.146562, 0.157466, 0.976588,
		-0.851847, 0.481784, -0.205525,
		41.651474, 27.365683, 35.825054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797153, 26.999969, 36.544659>,  <42.247768, 27.028435, 35.968922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797153, 26.999969, 36.544659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574821, 27.035149, 36.214005>,  <41.441422, 27.056257, 36.015614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574821, 27.035149, 36.214005>,  <41.797153, 26.999969, 36.544659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574821, 27.035149, 36.214005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443542, -0.872395, 0.205421,
		-0.703082, 0.480825, 0.523910,
		-0.555828, 0.087949, -0.826632,
		41.408073, 27.061533, 35.966015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143127, 26.823534, 36.824066>,  <41.797153, 26.999969, 36.544659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143127, 26.823534, 36.824066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134964, 26.783091, 36.426201>,  <41.130066, 26.758825, 36.187481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134964, 26.783091, 36.426201>,  <41.143127, 26.823534, 36.824066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134964, 26.783091, 36.426201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433004, -0.895834, 0.099948,
		-0.901161, 0.432734, -0.025493,
		-0.020413, -0.101108, -0.994666,
		41.128841, 26.752758, 36.127800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516438, 26.632198, 36.662888>,  <41.143127, 26.823534, 36.824066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516438, 26.632198, 36.662888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695454, 26.508379, 36.327297>,  <40.802864, 26.434088, 36.125942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.695454, 26.508379, 36.327297>,  <40.516438, 26.632198, 36.662888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695454, 26.508379, 36.327297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440410, -0.892812, 0.094482,
		-0.778296, 0.327209, -0.535901,
		0.447543, -0.309551, -0.838977,
		40.829716, 26.415514, 36.075603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086273, 26.185909, 36.266422>,  <40.516438, 26.632198, 36.662888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086273, 26.185909, 36.266422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437191, 26.111475, 36.089455>,  <40.647739, 26.066814, 35.983273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437191, 26.111475, 36.089455>,  <40.086273, 26.185909, 36.266422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437191, 26.111475, 36.089455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230392, -0.971910, -0.048063,
		-0.421048, 0.144095, -0.895519,
		0.877290, -0.186084, -0.442419,
		40.700378, 26.055651, 35.956730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990856, 25.854885, 35.638393>,  <40.086273, 26.185909, 36.266422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990856, 25.854885, 35.638393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343826, 25.775181, 35.808861>,  <40.555607, 25.727358, 35.911140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343826, 25.775181, 35.808861>,  <39.990856, 25.854885, 35.638393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343826, 25.775181, 35.808861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250251, -0.965891, 0.066553,
		0.398374, -0.165378, -0.902191,
		0.882424, -0.199261, 0.426172,
		40.608555, 25.715403, 35.936714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412457, 26.297182, 35.848270>,  <39.990856, 25.854885, 35.638393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412457, 26.297182, 35.848270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095081, 26.497763, 35.986256>,  <38.904655, 26.618111, 36.069046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095081, 26.497763, 35.986256>,  <39.412457, 26.297182, 35.848270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095081, 26.497763, 35.986256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320014, 0.825805, -0.464368,
		-0.517735, -0.258052, -0.815696,
		-0.793436, 0.501454, 0.344968,
		38.857052, 26.648199, 36.089745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805534, 26.452250, 35.378662>,  <39.412457, 26.297182, 35.848270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805534, 26.452250, 35.378662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908981, 26.724749, 35.652603>,  <38.971050, 26.888248, 35.816967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908981, 26.724749, 35.652603>,  <38.805534, 26.452250, 35.378662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908981, 26.724749, 35.652603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214044, 0.650930, -0.728337,
		-0.941966, 0.334952, 0.022528,
		0.258622, 0.681247, 0.684849,
		38.986568, 26.929123, 35.858059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496300, 27.118418, 35.229622>,  <38.805534, 26.452250, 35.378662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496300, 27.118418, 35.229622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872921, 27.147440, 35.361206>,  <39.098892, 27.164854, 35.440159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872921, 27.147440, 35.361206>,  <38.496300, 27.118418, 35.229622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872921, 27.147440, 35.361206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234484, 0.559971, -0.794638,
		-0.241868, 0.825329, 0.510227,
		0.941550, 0.072557, 0.328965,
		39.155388, 27.169207, 35.459896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725365, 27.828159, 35.345970>,  <38.496300, 27.118418, 35.229622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725365, 27.828159, 35.345970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996437, 27.574791, 35.196556>,  <39.159081, 27.422770, 35.106907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996437, 27.574791, 35.196556>,  <38.725365, 27.828159, 35.345970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996437, 27.574791, 35.196556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008816, 0.514925, -0.857190,
		0.735306, 0.577605, 0.354538,
		0.677678, -0.633422, -0.373536,
		39.199741, 27.384764, 35.084496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436630, 28.234556, 35.220486>,  <38.725365, 27.828159, 35.345970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436630, 28.234556, 35.220486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415058, 27.900974, 35.000809>,  <39.402115, 27.700825, 34.869003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.415058, 27.900974, 35.000809>,  <39.436630, 28.234556, 35.220486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415058, 27.900974, 35.000809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265574, 0.518204, -0.812980,
		0.962581, -0.189696, 0.193529,
		-0.053931, -0.833955, -0.549191,
		39.398880, 27.650787, 34.836052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075798, 28.139559, 34.736279>,  <39.436630, 28.234556, 35.220486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075798, 28.139559, 34.736279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746624, 27.966082, 34.589478>,  <39.549122, 27.861996, 34.501396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746624, 27.966082, 34.589478>,  <40.075798, 28.139559, 34.736279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746624, 27.966082, 34.589478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240408, 0.319474, -0.916592,
		0.514768, -0.842524, -0.158642,
		-0.822932, -0.433693, -0.367005,
		39.499744, 27.835974, 34.479378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257084, 27.728981, 34.175007>,  <40.075798, 28.139559, 34.736279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257084, 27.728981, 34.175007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879745, 27.856453, 34.138031>,  <39.653343, 27.932936, 34.115845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879745, 27.856453, 34.138031>,  <40.257084, 27.728981, 34.175007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879745, 27.856453, 34.138031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202603, 0.332575, -0.921057,
		-0.262783, -0.887601, -0.378298,
		-0.943344, 0.318682, -0.092436,
		39.596741, 27.952057, 34.110302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110245, 27.747780, 33.516453>,  <40.257084, 27.728981, 34.175007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110245, 27.747780, 33.516453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807354, 27.988707, 33.617500>,  <39.625618, 28.133263, 33.678131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807354, 27.988707, 33.617500>,  <40.110245, 27.747780, 33.516453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807354, 27.988707, 33.617500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075192, 0.464595, -0.882325,
		-0.648807, -0.649127, -0.397094,
		-0.757229, 0.602317, 0.252623,
		39.580185, 28.169401, 33.693287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775757, 28.011988, 32.882977>,  <40.110245, 27.747780, 33.516453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775757, 28.011988, 32.882977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642574, 28.278719, 33.149654>,  <39.562664, 28.438757, 33.309662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642574, 28.278719, 33.149654>,  <39.775757, 28.011988, 32.882977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642574, 28.278719, 33.149654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004041, 0.706021, -0.708180,
		-0.942933, -0.238488, -0.232381,
		-0.332958, 0.666827, 0.666694,
		39.542686, 28.478767, 33.349663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248528, 28.372194, 32.513065>,  <39.775757, 28.011988, 32.882977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248528, 28.372194, 32.513065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361855, 28.581446, 32.834579>,  <39.429852, 28.706997, 33.027489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361855, 28.581446, 32.834579>,  <39.248528, 28.372194, 32.513065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361855, 28.581446, 32.834579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001990, 0.837804, -0.545968,
		-0.959024, 0.156281, 0.236324,
		0.283317, 0.523126, 0.803785,
		39.446850, 28.738384, 33.075714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858253, 29.061581, 32.507721>,  <39.248528, 28.372194, 32.513065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858253, 29.061581, 32.507721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171303, 29.105303, 32.752850>,  <39.359135, 29.131536, 32.899925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171303, 29.105303, 32.752850>,  <38.858253, 29.061581, 32.507721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171303, 29.105303, 32.752850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240451, 0.854973, -0.459570,
		-0.574178, 0.507025, 0.642842,
		0.782625, 0.109303, 0.612821,
		39.406090, 29.138094, 32.936695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824070, 29.764429, 32.747810>,  <38.858253, 29.061581, 32.507721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824070, 29.764429, 32.747810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207726, 29.696077, 32.838013>,  <39.437920, 29.655067, 32.892136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207726, 29.696077, 32.838013>,  <38.824070, 29.764429, 32.747810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207726, 29.696077, 32.838013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248605, 0.889514, -0.383354,
		-0.135085, 0.423752, 0.895648,
		0.959139, -0.170877, 0.225507,
		39.495468, 29.644814, 32.905666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010826, 30.377508, 32.989506>,  <38.824070, 29.764429, 32.747810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010826, 30.377508, 32.989506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342876, 30.180864, 32.884270>,  <39.542107, 30.062878, 32.821129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342876, 30.180864, 32.884270>,  <39.010826, 30.377508, 32.989506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342876, 30.180864, 32.884270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405163, 0.855997, -0.321111,
		0.383064, 0.159968, 0.909765,
		0.830124, -0.491609, -0.263089,
		39.591915, 30.033382, 32.805344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504921, 30.792086, 33.247429>,  <39.010826, 30.377508, 32.989506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504921, 30.792086, 33.247429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730915, 30.581871, 32.992996>,  <39.866512, 30.455742, 32.840336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730915, 30.581871, 32.992996>,  <39.504921, 30.792086, 33.247429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730915, 30.581871, 32.992996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658483, 0.751725, -0.036195,
		0.497181, -0.398400, 0.770772,
		0.564988, -0.525536, -0.636082,
		39.900410, 30.424210, 32.802170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175568, 30.658773, 33.494202>,  <39.504921, 30.792086, 33.247429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175568, 30.658773, 33.494202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250435, 30.630442, 33.102295>,  <40.295353, 30.613443, 32.867149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250435, 30.630442, 33.102295>,  <40.175568, 30.658773, 33.494202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250435, 30.630442, 33.102295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668113, 0.740360, 0.074107,
		0.720134, -0.668468, 0.185892,
		0.187165, -0.070830, -0.979771,
		40.306583, 30.609192, 32.808365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933025, 30.681410, 33.453293>,  <40.175568, 30.658773, 33.494202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933025, 30.681410, 33.453293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793900, 30.781965, 33.091999>,  <40.710423, 30.842299, 32.875225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793900, 30.781965, 33.091999>,  <40.933025, 30.681410, 33.453293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793900, 30.781965, 33.091999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732508, 0.674176, -0.094439,
		0.585195, -0.694471, -0.418635,
		-0.347819, 0.251389, -0.903231,
		40.689552, 30.857382, 32.821030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431637, 30.554342, 33.033813>,  <40.933025, 30.681410, 33.453293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431637, 30.554342, 33.033813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224499, 30.831490, 32.833107>,  <41.100216, 30.997778, 32.712685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224499, 30.831490, 32.833107>,  <41.431637, 30.554342, 33.033813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224499, 30.831490, 32.833107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800710, 0.599052, 0.000839,
		0.301164, -0.401332, -0.865005,
		-0.517846, 0.692870, -0.501763,
		41.069145, 31.039351, 32.682579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887173, 30.758366, 32.568272>,  <41.431637, 30.554342, 33.033813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887173, 30.758366, 32.568272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616138, 31.052536, 32.566189>,  <41.453518, 31.229038, 32.564938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616138, 31.052536, 32.566189>,  <41.887173, 30.758366, 32.568272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616138, 31.052536, 32.566189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735443, 0.677561, -0.005975,
		-0.000865, -0.007879, -0.999969,
		-0.677586, 0.735425, -0.005209,
		41.412861, 31.273163, 32.564625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103424, 31.296169, 32.107864>,  <41.887173, 30.758366, 32.568272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103424, 31.296169, 32.107864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859680, 31.484545, 32.363018>,  <41.713436, 31.597570, 32.516109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859680, 31.484545, 32.363018>,  <42.103424, 31.296169, 32.107864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859680, 31.484545, 32.363018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708046, 0.685288, 0.170444,
		-0.356868, 0.555515, -0.751031,
		-0.609357, 0.470939, 0.637888,
		41.676872, 31.625826, 32.554386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393459, 31.979053, 32.011990>,  <42.103424, 31.296169, 32.107864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393459, 31.979053, 32.011990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158577, 31.989397, 32.335598>,  <42.017647, 31.995604, 32.529762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158577, 31.989397, 32.335598>,  <42.393459, 31.979053, 32.011990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158577, 31.989397, 32.335598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620489, 0.656215, 0.429388,
		-0.519790, 0.754130, -0.401380,
		-0.587206, 0.025860, 0.809024,
		41.982414, 31.997154, 32.578304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212563, 32.667870, 32.115646>,  <42.393459, 31.979053, 32.011990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212563, 32.667870, 32.115646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202637, 32.468800, 32.462452>,  <42.196682, 32.349358, 32.670536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.202637, 32.468800, 32.462452>,  <42.212563, 32.667870, 32.115646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.202637, 32.468800, 32.462452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671657, 0.634071, 0.383185,
		-0.740446, 0.591841, 0.318533,
		-0.024812, -0.497673, 0.867010,
		42.195194, 32.319496, 32.722553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220642, 33.096359, 32.546429>,  <42.212563, 32.667870, 32.115646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220642, 33.096359, 32.546429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323723, 32.825207, 32.821838>,  <42.385571, 32.662518, 32.987083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323723, 32.825207, 32.821838>,  <42.220642, 33.096359, 32.546429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323723, 32.825207, 32.821838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593164, 0.673504, 0.441078,
		-0.762723, 0.294742, 0.575657,
		0.257703, -0.677879, 0.688527,
		42.401035, 32.621841, 33.028397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054371, 33.360008, 33.270641>,  <42.220642, 33.096359, 32.546429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054371, 33.360008, 33.270641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340927, 33.086826, 33.327724>,  <42.512859, 32.922916, 33.361977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340927, 33.086826, 33.327724>,  <42.054371, 33.360008, 33.270641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340927, 33.086826, 33.327724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395495, 0.566009, 0.723337,
		-0.574779, -0.461749, 0.675586,
		0.716388, -0.682951, 0.142711,
		42.555843, 32.881943, 33.370537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278568, 33.528519, 33.934303>,  <42.054371, 33.360008, 33.270641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278568, 33.528519, 33.934303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556477, 33.251923, 33.855171>,  <42.723221, 33.085964, 33.807693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556477, 33.251923, 33.855171>,  <42.278568, 33.528519, 33.934303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556477, 33.251923, 33.855171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605884, 0.414483, 0.679050,
		-0.387561, -0.591644, 0.706933,
		0.694767, -0.691493, -0.197830,
		42.764908, 33.044476, 33.795822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405430, 33.110733, 34.593590>,  <42.278568, 33.528519, 33.934303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405430, 33.110733, 34.593590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713509, 33.100983, 34.338654>,  <42.898354, 33.095131, 34.185692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713509, 33.100983, 34.338654>,  <42.405430, 33.110733, 34.593590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713509, 33.100983, 34.338654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582912, 0.432490, 0.687871,
		0.258876, -0.901309, 0.347312,
		0.770193, -0.024379, -0.637344,
		42.944565, 33.093670, 34.147449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991558, 32.656303, 34.873592>,  <42.405430, 33.110733, 34.593590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991558, 32.656303, 34.873592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139828, 32.930382, 34.622799>,  <43.228790, 33.094830, 34.472321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.139828, 32.930382, 34.622799>,  <42.991558, 32.656303, 34.873592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139828, 32.930382, 34.622799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493429, 0.426642, 0.757960,
		0.786848, -0.590329, -0.179950,
		0.370672, 0.685193, -0.626988,
		43.251030, 33.135941, 34.434704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660648, 32.731972, 35.107082>,  <42.991558, 32.656303, 34.873592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660648, 32.731972, 35.107082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.621670, 33.053604, 34.872490>,  <43.598282, 33.246586, 34.731735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.621670, 33.053604, 34.872490>,  <43.660648, 32.731972, 35.107082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.621670, 33.053604, 34.872490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562230, 0.530720, 0.634219,
		0.821219, -0.267932, -0.503797,
		-0.097448, 0.804083, -0.586477,
		43.592434, 33.294830, 34.696548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.295105, 32.987598, 35.111443>,  <43.660648, 32.731972, 35.107082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.295105, 32.987598, 35.111443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066528, 33.290703, 34.985428>,  <43.929382, 33.472565, 34.909821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.066528, 33.290703, 34.985428>,  <44.295105, 32.987598, 35.111443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.066528, 33.290703, 34.985428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541251, 0.636572, 0.549385,
		0.616844, 0.143432, -0.773906,
		-0.571446, 0.757762, -0.315033,
		43.895096, 33.518032, 34.890919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818287, 33.547291, 35.076450>,  <44.295105, 32.987598, 35.111443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818287, 33.547291, 35.076450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466621, 33.737545, 35.088055>,  <44.255623, 33.851696, 35.095016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466621, 33.737545, 35.088055>,  <44.818287, 33.547291, 35.076450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466621, 33.737545, 35.088055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419695, 0.744053, 0.519847,
		0.225669, 0.469208, -0.853766,
		-0.879164, 0.475635, 0.029014,
		44.202873, 33.880234, 35.096760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.963409, 34.205624, 34.950291>,  <44.818287, 33.547291, 35.076450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.963409, 34.205624, 34.950291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619381, 34.195404, 35.154106>,  <44.412964, 34.189270, 35.276394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619381, 34.195404, 35.154106>,  <44.963409, 34.205624, 34.950291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619381, 34.195404, 35.154106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383465, 0.626380, 0.678677,
		-0.336507, 0.779099, -0.528931,
		-0.860068, -0.025553, 0.509539,
		44.361359, 34.187737, 35.306969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.742416, 34.095505, 34.780800>,  <44.963409, 34.205624, 34.950291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.742416, 34.095505, 34.780800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747215, 33.930965, 35.145359>,  <45.750095, 33.832241, 35.364094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747215, 33.930965, 35.145359>,  <45.742416, 34.095505, 34.780800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747215, 33.930965, 35.145359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746611, -0.602622, -0.281814,
		0.665153, 0.683842, 0.299887,
		0.011998, -0.411349, 0.911399,
		45.750816, 33.807560, 35.418777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.377846, 34.369568, 34.974758>,  <45.742416, 34.095505, 34.780800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.377846, 34.369568, 34.974758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.190723, 34.655701, 34.767120>,  <46.078449, 34.827381, 34.642540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.190723, 34.655701, 34.767120>,  <46.377846, 34.369568, 34.974758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.190723, 34.655701, 34.767120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591704, 0.689758, 0.417277,
		0.656540, -0.111944, -0.745939,
		-0.467806, 0.715333, -0.519091,
		46.050381, 34.870300, 34.611393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.884212, 34.711582, 34.716923>,  <46.377846, 34.369568, 34.974758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.884212, 34.711582, 34.716923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577465, 34.968224, 34.723316>,  <46.393417, 35.122208, 34.727154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.577465, 34.968224, 34.723316>,  <46.884212, 34.711582, 34.716923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.577465, 34.968224, 34.723316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541159, 0.633024, 0.553559,
		0.345045, 0.433160, -0.832656,
		-0.766871, 0.641603, 0.015987,
		46.347404, 35.160706, 34.728111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.505417, 35.125645, 34.772560>,  <46.884212, 34.711582, 34.716923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.505417, 35.125645, 34.772560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.727985, 35.091640, 35.103176>,  <47.861526, 35.071239, 35.301548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.727985, 35.091640, 35.103176>,  <47.505417, 35.125645, 34.772560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.727985, 35.091640, 35.103176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828737, -0.128540, 0.544677,
		0.059942, -0.988054, -0.141971,
		0.556419, -0.085008, 0.826542,
		47.894913, 35.066139, 35.351139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.328274, 38.593483, 44.796459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.951710, 38.724377, 44.829121>,  <33.725773, 38.802914, 44.848717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.951710, 38.724377, 44.829121>,  <34.328274, 38.593483, 44.796459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951710, 38.724377, 44.829121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231609, -0.451274, -0.861805,
		-0.245166, -0.830222, 0.500624,
		-0.941409, 0.327234, 0.081650,
		33.669289, 38.822548, 44.853615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894836, 38.041870, 44.839558>,  <34.328274, 38.593483, 44.796459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894836, 38.041870, 44.839558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.681282, 38.333271, 44.667862>,  <33.553150, 38.508114, 44.564846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.681282, 38.333271, 44.667862>,  <33.894836, 38.041870, 44.839558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681282, 38.333271, 44.667862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100864, -0.558886, -0.823088,
		-0.839520, -0.396139, 0.371860,
		-0.533884, 0.728506, -0.429239,
		33.521118, 38.551823, 44.539089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583580, 37.641434, 44.274323>,  <33.894836, 38.041870, 44.839558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583580, 37.641434, 44.274323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.457703, 38.012577, 44.194275>,  <33.382175, 38.235264, 44.146248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.457703, 38.012577, 44.194275>,  <33.583580, 37.641434, 44.274323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457703, 38.012577, 44.194275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161806, -0.260182, -0.951906,
		-0.935301, -0.267177, 0.232010,
		-0.314691, 0.927859, -0.200117,
		33.363297, 38.290936, 44.134239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898987, 37.612476, 43.919872>,  <33.583580, 37.641434, 44.274323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898987, 37.612476, 43.919872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.098305, 37.948948, 43.835846>,  <33.217896, 38.150829, 43.785431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.098305, 37.948948, 43.835846>,  <32.898987, 37.612476, 43.919872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098305, 37.948948, 43.835846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090146, -0.190712, -0.977498,
		-0.862310, 0.506017, -0.019202,
		0.498293, 0.841175, -0.210069,
		33.247791, 38.201302, 43.772827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518772, 37.961739, 43.349979>,  <32.898987, 37.612476, 43.919872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518772, 37.961739, 43.349979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.893650, 38.101131, 43.355881>,  <33.118576, 38.184769, 43.359421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.893650, 38.101131, 43.355881>,  <32.518772, 37.961739, 43.349979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893650, 38.101131, 43.355881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049164, -0.090104, -0.994718,
		-0.345315, 0.932973, -0.101578,
		0.937198, 0.348485, 0.014754,
		33.174809, 38.205677, 43.360306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440189, 38.499435, 42.861717>,  <32.518772, 37.961739, 43.349979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440189, 38.499435, 42.861717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.824085, 38.392616, 42.896545>,  <33.054424, 38.328526, 42.917442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.824085, 38.392616, 42.896545>,  <32.440189, 38.499435, 42.861717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824085, 38.392616, 42.896545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073812, -0.059317, -0.995506,
		0.271015, 0.961855, -0.037218,
		0.959741, -0.267050, 0.087072,
		33.112007, 38.312500, 42.922668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845310, 38.792145, 42.267193>,  <32.440189, 38.499435, 42.861717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845310, 38.792145, 42.267193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.112289, 38.525135, 42.399204>,  <33.272476, 38.364929, 42.478413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.112289, 38.525135, 42.399204>,  <32.845310, 38.792145, 42.267193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112289, 38.525135, 42.399204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298717, -0.165966, -0.939800,
		0.682115, 0.725855, 0.088628,
		0.667449, -0.667526, 0.330033,
		33.312523, 38.324879, 42.498215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218746, 38.889767, 41.783337>,  <32.845310, 38.792145, 42.267193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218746, 38.889767, 41.783337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.347298, 38.563694, 41.976086>,  <33.424431, 38.368050, 42.091736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.347298, 38.563694, 41.976086>,  <33.218746, 38.889767, 41.783337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347298, 38.563694, 41.976086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339161, -0.376018, -0.862311,
		0.884129, 0.440562, 0.155631,
		0.321382, -0.815178, 0.481870,
		33.443710, 38.319141, 42.120647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882961, 38.746662, 41.553738>,  <33.218746, 38.889767, 41.783337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882961, 38.746662, 41.553738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.753178, 38.399361, 41.703861>,  <33.675308, 38.190979, 41.793938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.753178, 38.399361, 41.703861>,  <33.882961, 38.746662, 41.553738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753178, 38.399361, 41.703861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390233, -0.484309, -0.783047,
		0.861651, -0.107609, 0.495961,
		-0.324462, -0.868254, 0.375313,
		33.655838, 38.138885, 41.816456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469017, 38.292774, 41.564217>,  <33.882961, 38.746662, 41.553738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469017, 38.292774, 41.564217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.149517, 38.052109, 41.565300>,  <33.957817, 37.907711, 41.565948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.149517, 38.052109, 41.565300>,  <34.469017, 38.292774, 41.564217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149517, 38.052109, 41.565300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339022, -0.453777, -0.824106,
		0.497061, -0.657334, 0.566430,
		-0.798746, -0.601663, 0.002705,
		33.909893, 37.871609, 41.566113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634670, 37.647625, 41.525410>,  <34.469017, 38.292774, 41.564217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634670, 37.647625, 41.525410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.258263, 37.634708, 41.390686>,  <34.032417, 37.626957, 41.309853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.258263, 37.634708, 41.390686>,  <34.634670, 37.647625, 41.525410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258263, 37.634708, 41.390686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302240, -0.527711, -0.793833,
		-0.152106, -0.848810, 0.506345,
		-0.941018, -0.032291, -0.336813,
		33.975956, 37.625023, 41.289642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640926, 36.929302, 41.217991>,  <34.634670, 37.647625, 41.525410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640926, 36.929302, 41.217991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.319759, 37.113434, 41.066509>,  <34.127060, 37.223911, 40.975620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.319759, 37.113434, 41.066509>,  <34.640926, 36.929302, 41.217991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319759, 37.113434, 41.066509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133966, -0.479713, -0.867138,
		-0.580840, -0.746975, 0.323502,
		-0.802919, 0.460330, -0.378705,
		34.078884, 37.251534, 40.952896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305138, 36.397362, 40.856739>,  <34.640926, 36.929302, 41.217991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305138, 36.397362, 40.856739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.171505, 36.741383, 40.702492>,  <34.091324, 36.947796, 40.609943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.171505, 36.741383, 40.702492>,  <34.305138, 36.397362, 40.856739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171505, 36.741383, 40.702492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005412, -0.410869, -0.911679,
		-0.942528, -0.302489, 0.141919,
		-0.334083, 0.860051, -0.385618,
		34.071281, 36.999397, 40.586807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664001, 36.261444, 40.458591>,  <34.305138, 36.397362, 40.856739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664001, 36.261444, 40.458591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.817688, 36.605675, 40.324848>,  <33.909901, 36.812214, 40.244602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.817688, 36.605675, 40.324848>,  <33.664001, 36.261444, 40.458591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817688, 36.605675, 40.324848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102707, -0.320067, -0.941811,
		-0.917513, 0.396198, -0.034588,
		0.384215, 0.860572, -0.334358,
		33.932953, 36.863846, 40.224541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263050, 36.463753, 39.813370>,  <33.664001, 36.261444, 40.458591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263050, 36.463753, 39.813370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.610882, 36.652157, 39.754070>,  <33.819580, 36.765202, 39.718491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.610882, 36.652157, 39.754070>,  <33.263050, 36.463753, 39.813370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610882, 36.652157, 39.754070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133475, -0.513254, -0.847794,
		-0.475410, 0.717438, -0.509184,
		0.869580, 0.471013, -0.148246,
		33.871758, 36.793461, 39.709595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228596, 36.816280, 39.199211>,  <33.263050, 36.463753, 39.813370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228596, 36.816280, 39.199211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.625198, 36.823147, 39.250771>,  <33.863159, 36.827267, 39.281704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.625198, 36.823147, 39.250771>,  <33.228596, 36.816280, 39.199211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625198, 36.823147, 39.250771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130026, -0.121668, -0.984017,
		-0.001205, 0.992423, -0.122867,
		0.991510, 0.017162, 0.128894,
		33.922653, 36.828297, 39.289440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464504, 37.279774, 38.642586>,  <33.228596, 36.816280, 39.199211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464504, 37.279774, 38.642586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.827377, 37.138893, 38.734653>,  <34.045101, 37.054363, 38.789894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.827377, 37.138893, 38.734653>,  <33.464504, 37.279774, 38.642586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827377, 37.138893, 38.734653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239821, -0.016634, -0.970675,
		0.345700, 0.935777, 0.069375,
		0.907181, -0.352200, 0.230169,
		34.099533, 37.033234, 38.803703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100281, 37.622677, 38.206841>,  <33.464504, 37.279774, 38.642586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100281, 37.622677, 38.206841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.225304, 37.259201, 38.317535>,  <34.300316, 37.041115, 38.383953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.225304, 37.259201, 38.317535>,  <34.100281, 37.622677, 38.206841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225304, 37.259201, 38.317535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293843, -0.184554, -0.937868,
		0.903307, 0.374456, 0.209329,
		0.312557, -0.908693, 0.276740,
		34.319073, 36.986591, 38.400558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630096, 37.527927, 37.750313>,  <34.100281, 37.622677, 38.206841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630096, 37.527927, 37.750313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.589294, 37.155155, 37.889511>,  <34.564816, 36.931492, 37.973030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.589294, 37.155155, 37.889511>,  <34.630096, 37.527927, 37.750313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589294, 37.155155, 37.889511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463539, -0.354046, -0.812271,
		0.880186, 0.078456, 0.468099,
		-0.102001, -0.931932, 0.347993,
		34.558693, 36.875576, 37.993908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327488, 37.117264, 37.629414>,  <34.630096, 37.527927, 37.750313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327488, 37.117264, 37.629414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.031666, 36.850739, 37.667553>,  <34.854172, 36.690823, 37.690437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.031666, 36.850739, 37.667553>,  <35.327488, 37.117264, 37.629414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031666, 36.850739, 37.667553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274473, -0.427876, -0.861154,
		0.614594, -0.610698, 0.499322,
		-0.739553, -0.666310, 0.095350,
		34.809799, 36.650845, 37.696159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610218, 36.481117, 37.518963>,  <35.327488, 37.117264, 37.629414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610218, 36.481117, 37.518963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.227200, 36.395046, 37.442223>,  <34.997387, 36.343403, 37.396179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.227200, 36.395046, 37.442223>,  <35.610218, 36.481117, 37.518963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227200, 36.395046, 37.442223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278059, -0.513716, -0.811652,
		0.076091, -0.830539, 0.551737,
		-0.957546, -0.215175, -0.191850,
		34.939938, 36.330494, 37.384666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652645, 35.801910, 37.435497>,  <35.610218, 36.481117, 37.518963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652645, 35.801910, 37.435497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.320816, 35.917542, 37.244400>,  <35.121719, 35.986919, 37.129742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.320816, 35.917542, 37.244400>,  <35.652645, 35.801910, 37.435497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320816, 35.917542, 37.244400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294494, -0.500403, -0.814168,
		-0.474412, -0.816111, 0.329996,
		-0.829582, 0.289069, -0.477737,
		35.071941, 36.004265, 37.101078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214474, 35.268543, 37.293858>,  <35.652645, 35.801910, 37.435497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214474, 35.268543, 37.293858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.600101, 35.211304, 37.204330>,  <36.831478, 35.176960, 37.150612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.600101, 35.211304, 37.204330>,  <36.214474, 35.268543, 37.293858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600101, 35.211304, 37.204330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265375, 0.557594, 0.786552,
		0.012246, -0.817686, 0.575534,
		0.964067, -0.143100, -0.223822,
		36.889320, 35.168373, 37.137184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579605, 34.944565, 37.931328>,  <36.214474, 35.268543, 37.293858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579605, 34.944565, 37.931328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.834492, 35.143436, 37.695782>,  <36.987423, 35.262760, 37.554455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.834492, 35.143436, 37.695782>,  <36.579605, 34.944565, 37.931328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834492, 35.143436, 37.695782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351744, 0.492243, 0.796224,
		0.685735, -0.714497, 0.138784,
		0.637216, 0.497183, -0.588868,
		37.025658, 35.292591, 37.519123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224186, 34.789413, 38.174335>,  <36.579605, 34.944565, 37.931328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224186, 34.789413, 38.174335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278572, 35.126057, 37.965260>,  <37.311203, 35.328045, 37.839813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.278572, 35.126057, 37.965260>,  <37.224186, 34.789413, 38.174335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278572, 35.126057, 37.965260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587497, 0.356319, 0.726556,
		0.797721, -0.405868, -0.445995,
		0.135970, 0.841610, -0.522690,
		37.319363, 35.378540, 37.808453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916088, 35.018063, 38.443199>,  <37.224186, 34.789413, 38.174335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916088, 35.018063, 38.443199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.779804, 35.337101, 38.244099>,  <37.698036, 35.528526, 38.124638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.779804, 35.337101, 38.244099>,  <37.916088, 35.018063, 38.443199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779804, 35.337101, 38.244099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444661, 0.603172, 0.662163,
		0.828369, 0.004275, -0.560166,
		-0.340707, 0.797600, -0.497748,
		37.677593, 35.576382, 38.094772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430229, 35.391399, 38.490341>,  <37.916088, 35.018063, 38.443199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430229, 35.391399, 38.490341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.119293, 35.631901, 38.416328>,  <37.932732, 35.776199, 38.371922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.119293, 35.631901, 38.416328>,  <38.430229, 35.391399, 38.490341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119293, 35.631901, 38.416328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284519, 0.598353, 0.749014,
		0.561059, 0.529596, -0.636192,
		-0.777343, 0.601250, -0.185031,
		37.886089, 35.812275, 38.360821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739162, 36.124760, 38.523026>,  <38.430229, 35.391399, 38.490341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739162, 36.124760, 38.523026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.348923, 36.132233, 38.610527>,  <38.114777, 36.136715, 38.663029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.348923, 36.132233, 38.610527>,  <38.739162, 36.124760, 38.523026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348923, 36.132233, 38.610527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172878, 0.679561, 0.712959,
		-0.135338, 0.733381, -0.666210,
		-0.975601, 0.018683, 0.218756,
		38.056244, 36.137836, 38.676155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702156, 36.872227, 38.786980>,  <38.739162, 36.124760, 38.523026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702156, 36.872227, 38.786980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353790, 36.699574, 38.880962>,  <38.144772, 36.595982, 38.937351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353790, 36.699574, 38.880962>,  <38.702156, 36.872227, 38.786980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353790, 36.699574, 38.880962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021657, 0.511347, 0.859101,
		-0.490961, 0.743113, -0.454687,
		-0.870913, -0.431632, 0.234957,
		38.092518, 36.570084, 38.951450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270985, 37.432140, 39.087177>,  <38.702156, 36.872227, 38.786980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270985, 37.432140, 39.087177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.064789, 37.108246, 39.199322>,  <37.941071, 36.913910, 39.266609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.064789, 37.108246, 39.199322>,  <38.270985, 37.432140, 39.087177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064789, 37.108246, 39.199322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232433, 0.447045, 0.863786,
		-0.824769, 0.380109, -0.418657,
		-0.515491, -0.809733, 0.280359,
		37.910141, 36.865326, 39.283428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679951, 37.729675, 39.320930>,  <38.270985, 37.432140, 39.087177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679951, 37.729675, 39.320930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.693943, 37.366787, 39.488609>,  <37.702339, 37.149055, 39.589218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.693943, 37.366787, 39.488609>,  <37.679951, 37.729675, 39.320930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693943, 37.366787, 39.488609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172217, 0.407706, 0.896726,
		-0.984438, -0.103564, -0.141976,
		0.034984, -0.907221, 0.419197,
		37.704437, 37.094620, 39.614368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058987, 37.594120, 39.682228>,  <37.679951, 37.729675, 39.320930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058987, 37.594120, 39.682228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322208, 37.335045, 39.835831>,  <37.480141, 37.179600, 39.927994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322208, 37.335045, 39.835831>,  <37.058987, 37.594120, 39.682228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322208, 37.335045, 39.835831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340300, 0.199119, 0.918993,
		-0.671680, -0.735430, -0.089375,
		0.658059, -0.647684, 0.384011,
		37.519627, 37.140739, 39.951035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649593, 37.055649, 39.994762>,  <37.058987, 37.594120, 39.682228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649593, 37.055649, 39.994762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.012432, 37.051186, 40.163074>,  <37.230133, 37.048508, 40.264061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.012432, 37.051186, 40.163074>,  <36.649593, 37.055649, 39.994762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012432, 37.051186, 40.163074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420914, -0.032104, 0.906533,
		0.003400, -0.999422, -0.033815,
		0.907095, -0.011151, 0.420780,
		37.284561, 37.047836, 40.289307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609028, 36.506851, 40.535889>,  <36.649593, 37.055649, 39.994762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609028, 36.506851, 40.535889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.898006, 36.764736, 40.635826>,  <37.071392, 36.919468, 40.695789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.898006, 36.764736, 40.635826>,  <36.609028, 36.506851, 40.535889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898006, 36.764736, 40.635826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319605, -0.009048, 0.947508,
		0.613131, -0.764371, 0.199517,
		0.722442, 0.644713, 0.249844,
		37.114738, 36.958149, 40.710781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879551, 36.153191, 41.018009>,  <36.609028, 36.506851, 40.535889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879551, 36.153191, 41.018009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.985550, 36.538342, 41.038559>,  <37.049149, 36.769432, 41.050888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.985550, 36.538342, 41.038559>,  <36.879551, 36.153191, 41.018009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985550, 36.538342, 41.038559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430490, 0.070471, 0.899840,
		0.862817, -0.260571, 0.433184,
		0.265000, 0.962879, 0.051370,
		37.065048, 36.827206, 41.053970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307709, 36.165272, 41.542465>,  <36.879551, 36.153191, 41.018009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307709, 36.165272, 41.542465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.194641, 36.548603, 41.525909>,  <37.126801, 36.778603, 41.515976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.194641, 36.548603, 41.525909>,  <37.307709, 36.165272, 41.542465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194641, 36.548603, 41.525909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281214, -0.041543, 0.958745,
		0.917070, 0.282644, 0.281238,
		-0.282667, 0.958325, -0.041386,
		37.109840, 36.836102, 41.513493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378769, 36.438171, 42.255745>,  <37.307709, 36.165272, 41.542465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378769, 36.438171, 42.255745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.130020, 36.697319, 42.079773>,  <36.980770, 36.852806, 41.974190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.130020, 36.697319, 42.079773>,  <37.378769, 36.438171, 42.255745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130020, 36.697319, 42.079773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410567, 0.208657, 0.887636,
		0.666868, 0.732617, 0.136236,
		-0.621870, 0.647870, -0.439934,
		36.943459, 36.891682, 41.947792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463406, 37.030132, 42.537121>,  <37.378769, 36.438171, 42.255745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463406, 37.030132, 42.537121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.103077, 37.097309, 42.376965>,  <36.886879, 37.137615, 42.280869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.103077, 37.097309, 42.376965>,  <37.463406, 37.030132, 42.537121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103077, 37.097309, 42.376965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327178, 0.343676, 0.880251,
		0.285439, 0.923949, -0.254643,
		-0.900821, 0.167945, -0.400394,
		36.832832, 37.147694, 42.256847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331375, 37.643681, 42.649147>,  <37.463406, 37.030132, 42.537121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331375, 37.643681, 42.649147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.965397, 37.492039, 42.593777>,  <36.745811, 37.401054, 42.560555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.965397, 37.492039, 42.593777>,  <37.331375, 37.643681, 42.649147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965397, 37.492039, 42.593777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288038, 0.373140, 0.881930,
		-0.282690, 0.846787, -0.450597,
		-0.914943, -0.379101, -0.138424,
		36.690914, 37.378307, 42.552250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862377, 38.179192, 42.785908>,  <37.331375, 37.643681, 42.649147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862377, 38.179192, 42.785908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.651787, 37.845379, 42.850887>,  <36.525433, 37.645092, 42.889874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.651787, 37.845379, 42.850887>,  <36.862377, 38.179192, 42.785908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651787, 37.845379, 42.850887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414409, 0.418724, 0.808045,
		-0.742356, 0.358095, -0.566283,
		-0.526473, -0.834529, 0.162444,
		36.493847, 37.595020, 42.899620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.280388, 38.369926, 43.180271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.256596, 37.973629, 43.229088>,  <36.242321, 37.735851, 43.258377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.256596, 37.973629, 43.229088>,  <36.280388, 38.369926, 43.180271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256596, 37.973629, 43.229088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463976, 0.135691, 0.875394,
		-0.883848, -0.004552, -0.467751,
		-0.059485, -0.990741, 0.122042,
		36.238750, 37.676407, 43.265701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530689, 38.211685, 43.378044>,  <36.280388, 38.369926, 43.180271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530689, 38.211685, 43.378044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.765587, 37.916382, 43.510784>,  <35.906525, 37.739201, 43.590427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.765587, 37.916382, 43.510784>,  <35.530689, 38.211685, 43.378044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765587, 37.916382, 43.510784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429913, 0.062882, 0.900678,
		-0.685797, -0.671584, -0.280458,
		0.587245, -0.738255, 0.331847,
		35.941761, 37.694904, 43.610340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071281, 37.725574, 43.617989>,  <35.530689, 38.211685, 43.378044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071281, 37.725574, 43.617989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.427055, 37.661121, 43.789074>,  <35.640518, 37.622448, 43.891727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.427055, 37.661121, 43.789074>,  <35.071281, 37.725574, 43.617989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427055, 37.661121, 43.789074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421973, 0.070092, 0.903895,
		-0.175632, -0.984440, -0.005654,
		0.889434, -0.161139, 0.427718,
		35.693886, 37.612782, 43.917389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879406, 37.577496, 44.277256>,  <35.071281, 37.725574, 43.617989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879406, 37.577496, 44.277256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.274395, 37.603268, 44.334862>,  <35.511391, 37.618732, 44.369423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.274395, 37.603268, 44.334862>,  <34.879406, 37.577496, 44.277256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274395, 37.603268, 44.334862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140241, -0.059679, 0.988317,
		0.072274, -0.996136, -0.049896,
		0.987476, 0.064432, 0.144012,
		35.570637, 37.622597, 44.378067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960247, 37.081245, 44.840790>,  <34.879406, 37.577496, 44.277256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960247, 37.081245, 44.840790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261654, 37.342716, 44.812771>,  <35.442497, 37.499599, 44.795959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261654, 37.342716, 44.812771>,  <34.960247, 37.081245, 44.840790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261654, 37.342716, 44.812771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091388, 0.209667, 0.973493,
		0.651041, -0.727145, 0.217727,
		0.753521, 0.653681, -0.070050,
		35.487709, 37.538822, 44.791756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651127, 36.871723, 45.292393>,  <34.960247, 37.081245, 44.840790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651127, 36.871723, 45.292393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.675632, 37.268646, 45.249371>,  <35.690338, 37.506802, 45.223557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.675632, 37.268646, 45.249371>,  <35.651127, 36.871723, 45.292393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675632, 37.268646, 45.249371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077473, 0.102704, 0.991690,
		0.995110, -0.069090, -0.070585,
		0.061266, 0.992310, -0.107554,
		35.694012, 37.566338, 45.217106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114845, 37.028229, 45.758701>,  <35.651127, 36.871723, 45.292393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114845, 37.028229, 45.758701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.944851, 37.382446, 45.683659>,  <35.842854, 37.594978, 45.638634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.944851, 37.382446, 45.683659>,  <36.114845, 37.028229, 45.758701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944851, 37.382446, 45.683659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203042, 0.295233, 0.933601,
		0.882134, 0.358675, -0.305273,
		-0.424987, 0.885545, -0.187609,
		35.817356, 37.648109, 45.627377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620640, 37.456379, 45.889503>,  <36.114845, 37.028229, 45.758701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620640, 37.456379, 45.889503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.284546, 37.671516, 45.917015>,  <36.082890, 37.800598, 45.933521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.284546, 37.671516, 45.917015>,  <36.620640, 37.456379, 45.889503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284546, 37.671516, 45.917015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208555, 0.203487, 0.956607,
		0.500508, 0.818120, -0.283147,
		-0.840236, 0.537841, 0.068776,
		36.032475, 37.832870, 45.937649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817707, 38.186085, 46.161129>,  <36.620640, 37.456379, 45.889503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817707, 38.186085, 46.161129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.438808, 38.084602, 46.239468>,  <36.211468, 38.023712, 46.286472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.438808, 38.084602, 46.239468>,  <36.817707, 38.186085, 46.161129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438808, 38.084602, 46.239468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192243, 0.039178, 0.980565,
		-0.256447, 0.966488, 0.011662,
		-0.947247, -0.253705, 0.195847,
		36.154633, 38.008492, 46.298222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680668, 38.645229, 46.721073>,  <36.817707, 38.186085, 46.161129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680668, 38.645229, 46.721073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.397484, 38.362888, 46.730499>,  <36.227573, 38.193481, 46.736156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.397484, 38.362888, 46.730499>,  <36.680668, 38.645229, 46.721073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397484, 38.362888, 46.730499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081391, -0.048395, 0.995507,
		-0.701543, 0.706701, 0.091712,
		-0.707964, -0.705855, 0.023568,
		36.185093, 38.151131, 46.737568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294891, 38.865303, 47.173859>,  <36.680668, 38.645229, 46.721073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294891, 38.865303, 47.173859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220757, 38.472481, 47.159924>,  <36.176277, 38.236786, 47.151562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220757, 38.472481, 47.159924>,  <36.294891, 38.865303, 47.173859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220757, 38.472481, 47.159924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140881, -0.061639, 0.988106,
		-0.972524, 0.178224, 0.149777,
		-0.185337, -0.982057, -0.034837,
		36.165157, 38.177864, 47.149471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060299, 38.733242, 47.840309>,  <36.294891, 38.865303, 47.173859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060299, 38.733242, 47.840309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.106998, 38.360428, 47.703094>,  <36.135017, 38.136738, 47.620766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.106998, 38.360428, 47.703094>,  <36.060299, 38.733242, 47.840309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106998, 38.360428, 47.703094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027165, -0.348268, 0.937001,
		-0.992790, -0.100075, -0.065978,
		0.116749, -0.932038, -0.343038,
		36.142025, 38.080818, 47.600182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515167, 38.257458, 48.172832>,  <36.060299, 38.733242, 47.840309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515167, 38.257458, 48.172832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.829880, 38.033005, 48.069992>,  <36.018707, 37.898331, 48.008289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.829880, 38.033005, 48.069992>,  <35.515167, 38.257458, 48.172832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829880, 38.033005, 48.069992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117446, -0.272825, 0.954868,
		-0.605953, -0.781470, -0.148751,
		0.786783, -0.561135, -0.257099,
		36.065914, 37.864666, 47.992863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379974, 37.594700, 48.377987>,  <35.515167, 38.257458, 48.172832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379974, 37.594700, 48.377987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.779541, 37.609882, 48.367279>,  <36.019283, 37.618992, 48.360855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.779541, 37.609882, 48.367279>,  <35.379974, 37.594700, 48.377987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779541, 37.609882, 48.367279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038105, -0.340045, 0.939637,
		0.026563, -0.939643, -0.341124,
		0.998920, 0.037959, -0.026773,
		36.079216, 37.621269, 48.359245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685726, 36.947586, 48.603825>,  <35.379974, 37.594700, 48.377987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685726, 36.947586, 48.603825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.990593, 37.194630, 48.681446>,  <36.173515, 37.342854, 48.728020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.990593, 37.194630, 48.681446>,  <35.685726, 36.947586, 48.603825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990593, 37.194630, 48.681446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106764, -0.415570, 0.903274,
		0.638513, -0.667729, -0.382673,
		0.762170, 0.617608, 0.194058,
		36.219242, 37.379913, 48.739662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083065, 36.439186, 48.828735>,  <35.685726, 36.947586, 48.603825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083065, 36.439186, 48.828735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220451, 36.796329, 48.945248>,  <36.302883, 37.010616, 49.015156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.220451, 36.796329, 48.945248>,  <36.083065, 36.439186, 48.828735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220451, 36.796329, 48.945248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173148, -0.365027, 0.914754,
		0.923067, -0.263750, -0.279969,
		0.343462, 0.892856, 0.291276,
		36.323490, 37.064186, 49.032631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885056, 36.333755, 49.160130>,  <36.083065, 36.439186, 48.828735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885056, 36.333755, 49.160130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.706520, 36.656181, 49.315586>,  <36.599400, 36.849636, 49.408859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.706520, 36.656181, 49.315586>,  <36.885056, 36.333755, 49.160130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706520, 36.656181, 49.315586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383977, -0.219774, 0.896806,
		0.808299, 0.549505, -0.211418,
		-0.446335, 0.806067, 0.388641,
		36.572620, 36.898003, 49.432178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348801, 36.583824, 49.613117>,  <36.885056, 36.333755, 49.160130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348801, 36.583824, 49.613117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.027012, 36.773312, 49.756458>,  <36.833939, 36.887005, 49.842464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.027012, 36.773312, 49.756458>,  <37.348801, 36.583824, 49.613117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027012, 36.773312, 49.756458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312823, -0.174967, 0.933557,
		0.504944, 0.863120, -0.007435,
		-0.804471, 0.473719, 0.358352,
		36.785671, 36.915428, 49.863964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637321, 36.904751, 50.184696>,  <37.348801, 36.583824, 49.613117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637321, 36.904751, 50.184696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243713, 36.958370, 50.231560>,  <37.007549, 36.990543, 50.259678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243713, 36.958370, 50.231560>,  <37.637321, 36.904751, 50.184696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243713, 36.958370, 50.231560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103108, -0.107387, 0.988856,
		0.145137, 0.985139, 0.091850,
		-0.984024, 0.134049, 0.117161,
		36.948505, 36.998585, 50.266708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530685, 37.266357, 50.823536>,  <37.637321, 36.904751, 50.184696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530685, 37.266357, 50.823536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.184769, 37.082237, 50.743282>,  <36.977219, 36.971764, 50.695129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.184769, 37.082237, 50.743282>,  <37.530685, 37.266357, 50.823536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184769, 37.082237, 50.743282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099468, -0.234602, 0.966989,
		-0.492174, 0.856204, 0.157098,
		-0.864796, -0.460300, -0.200630,
		36.925331, 36.944149, 50.683094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981651, 37.612343, 51.268703>,  <37.530685, 37.266357, 50.823536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981651, 37.612343, 51.268703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.848255, 37.253551, 51.152626>,  <36.768219, 37.038277, 51.082981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.848255, 37.253551, 51.152626>,  <36.981651, 37.612343, 51.268703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848255, 37.253551, 51.152626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159565, -0.249671, 0.955094,
		-0.929152, 0.364820, -0.059864,
		-0.333491, -0.896979, -0.290195,
		36.748207, 36.984459, 51.065567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292625, 37.501480, 51.585640>,  <36.981651, 37.612343, 51.268703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292625, 37.501480, 51.585640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.431465, 37.134819, 51.506367>,  <36.514771, 36.914822, 51.458801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.431465, 37.134819, 51.506367>,  <36.292625, 37.501480, 51.585640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431465, 37.134819, 51.506367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267682, -0.299365, 0.915821,
		-0.898814, -0.264833, -0.349280,
		0.347102, -0.916648, -0.198182,
		36.535595, 36.859825, 51.446911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840908, 37.128586, 51.889019>,  <36.292625, 37.501480, 51.585640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840908, 37.128586, 51.889019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178234, 36.913963, 51.876858>,  <36.380630, 36.785191, 51.869560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178234, 36.913963, 51.876858>,  <35.840908, 37.128586, 51.889019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178234, 36.913963, 51.876858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154622, -0.296426, 0.942456,
		-0.514698, -0.790085, -0.332944,
		0.843314, -0.536561, -0.030406,
		36.431229, 36.752995, 51.867737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744747, 36.555622, 52.257763>,  <35.840908, 37.128586, 51.889019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744747, 36.555622, 52.257763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143288, 36.539280, 52.227787>,  <36.382412, 36.529472, 52.209801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.143288, 36.539280, 52.227787>,  <35.744747, 36.555622, 52.257763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143288, 36.539280, 52.227787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050808, -0.421563, 0.905375,
		-0.068583, -0.905878, -0.417949,
		0.996351, -0.040859, -0.074938,
		36.442192, 36.527023, 52.205307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952488, 36.234032, 52.433807>,  <35.744747, 36.555622, 52.257763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952488, 36.234032, 52.433807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.623547, 36.443310, 52.523254>,  <34.426182, 36.568874, 52.576923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.623547, 36.443310, 52.523254>,  <34.952488, 36.234032, 52.433807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623547, 36.443310, 52.523254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251743, 0.017893, -0.967629,
		-0.510257, -0.852027, 0.116996,
		-0.822352, 0.523192, 0.223622,
		34.376842, 36.600266, 52.590340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405830, 35.881878, 52.191547>,  <34.952488, 36.234032, 52.433807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405830, 35.881878, 52.191547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.234089, 36.240768, 52.232796>,  <34.131042, 36.456104, 52.257545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.234089, 36.240768, 52.232796>,  <34.405830, 35.881878, 52.191547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234089, 36.240768, 52.232796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338315, -0.053919, -0.939487,
		-0.837374, -0.438263, 0.326696,
		-0.429358, 0.897228, 0.103120,
		34.105282, 36.509937, 52.263733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787521, 35.841431, 51.785835>,  <34.405830, 35.881878, 52.191547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787521, 35.841431, 51.785835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795036, 36.239143, 51.827885>,  <33.799545, 36.477772, 51.853115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795036, 36.239143, 51.827885>,  <33.787521, 35.841431, 51.785835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795036, 36.239143, 51.827885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309284, 0.105763, -0.945070,
		-0.950784, -0.014756, 0.309503,
		0.018788, 0.994282, 0.105121,
		33.800674, 36.537430, 51.859421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089073, 36.086056, 51.640770>,  <33.787521, 35.841431, 51.785835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089073, 36.086056, 51.640770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.368870, 36.363285, 51.571083>,  <33.536747, 36.529625, 51.529270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.368870, 36.363285, 51.571083>,  <33.089073, 36.086056, 51.640770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368870, 36.363285, 51.571083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353596, 0.123811, -0.927168,
		-0.621029, 0.710152, 0.331675,
		0.699495, 0.693077, -0.174216,
		33.578720, 36.571209, 51.518818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828033, 36.509575, 51.274979>,  <33.089073, 36.086056, 51.640770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828033, 36.509575, 51.274979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.195213, 36.621834, 51.162838>,  <33.415524, 36.689190, 51.095554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.195213, 36.621834, 51.162838>,  <32.828033, 36.509575, 51.274979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195213, 36.621834, 51.162838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304457, 0.045380, -0.951445,
		-0.254295, 0.958738, 0.127101,
		0.917954, 0.280644, -0.280354,
		33.470600, 36.706028, 51.078732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698902, 37.141151, 50.779602>,  <32.828033, 36.509575, 51.274979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698902, 37.141151, 50.779602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.077206, 37.034145, 50.705875>,  <33.304188, 36.969944, 50.661640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.077206, 37.034145, 50.705875>,  <32.698902, 37.141151, 50.779602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077206, 37.034145, 50.705875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129862, 0.208756, -0.969307,
		0.297780, 0.940669, 0.162693,
		0.945761, -0.267513, -0.184320,
		33.360935, 36.953892, 50.650578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036194, 37.794678, 50.513939>,  <32.698902, 37.141151, 50.779602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036194, 37.794678, 50.513939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.244324, 37.481079, 50.378517>,  <33.369202, 37.292919, 50.297264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.244324, 37.481079, 50.378517>,  <33.036194, 37.794678, 50.513939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244324, 37.481079, 50.378517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051647, 0.366829, -0.928853,
		0.852406, 0.500790, 0.150379,
		0.520324, -0.783993, -0.338552,
		33.400421, 37.245880, 50.276951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544540, 38.075569, 50.009300>,  <33.036194, 37.794678, 50.513939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544540, 38.075569, 50.009300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.532463, 37.686779, 49.916046>,  <33.525215, 37.453506, 49.860096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.532463, 37.686779, 49.916046>,  <33.544540, 38.075569, 50.009300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532463, 37.686779, 49.916046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252487, 0.233092, -0.939105,
		0.967129, 0.030509, -0.252449,
		-0.030192, -0.971976, -0.233133,
		33.523407, 37.395187, 49.846107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870834, 38.021404, 49.428055>,  <33.544540, 38.075569, 50.009300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870834, 38.021404, 49.428055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.695576, 37.662052, 49.415836>,  <33.590420, 37.446442, 49.408504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.695576, 37.662052, 49.415836>,  <33.870834, 38.021404, 49.428055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695576, 37.662052, 49.415836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141119, 0.102304, -0.984693,
		0.887756, -0.427132, -0.171603,
		-0.438150, -0.898383, -0.030545,
		33.564133, 37.392536, 49.406673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304234, 37.398571, 49.077095>,  <33.870834, 38.021404, 49.428055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304234, 37.398571, 49.077095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.908218, 37.397614, 49.020782>,  <33.670609, 37.397038, 48.986996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.908218, 37.397614, 49.020782>,  <34.304234, 37.398571, 49.077095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908218, 37.397614, 49.020782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138705, 0.155341, -0.978075,
		0.024208, -0.987858, -0.153462,
		-0.990038, -0.002391, -0.140781,
		33.611206, 37.396896, 48.978550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280708, 37.075729, 48.479530>,  <34.304234, 37.398571, 49.077095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280708, 37.075729, 48.479530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.937843, 37.276501, 48.525730>,  <33.732124, 37.396961, 48.553452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.937843, 37.276501, 48.525730>,  <34.280708, 37.075729, 48.479530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937843, 37.276501, 48.525730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059928, 0.319927, -0.945545,
		-0.511544, -0.803566, -0.304310,
		-0.857165, 0.501924, 0.115501,
		33.680695, 37.427078, 48.560379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893524, 36.999123, 47.864109>,  <34.280708, 37.075729, 48.479530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893524, 36.999123, 47.864109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.765533, 37.355965, 47.991714>,  <33.688740, 37.570068, 48.068279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.765533, 37.355965, 47.991714>,  <33.893524, 36.999123, 47.864109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765533, 37.355965, 47.991714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049270, 0.351928, -0.934730,
		-0.946144, -0.283373, -0.156563,
		-0.319976, 0.892102, 0.319013,
		33.669540, 37.623596, 48.087418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395966, 37.278477, 47.286217>,  <33.893524, 36.999123, 47.864109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395966, 37.278477, 47.286217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.472725, 37.600300, 47.511021>,  <33.518780, 37.793392, 47.645905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.472725, 37.600300, 47.511021>,  <33.395966, 37.278477, 47.286217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472725, 37.600300, 47.511021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048308, 0.564218, -0.824211,
		-0.980225, 0.185317, 0.069407,
		0.191901, 0.804559, 0.562013,
		33.530296, 37.841667, 47.679623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014469, 37.691624, 47.014759>,  <33.395966, 37.278477, 47.286217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014469, 37.691624, 47.014759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.240223, 37.952145, 47.217651>,  <33.375675, 38.108456, 47.339386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.240223, 37.952145, 47.217651>,  <33.014469, 37.691624, 47.014759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240223, 37.952145, 47.217651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010131, 0.608933, -0.793157,
		-0.825453, 0.452781, 0.337071,
		0.564380, 0.651298, 0.507233,
		33.409538, 38.147533, 47.369820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757950, 38.308010, 46.865913>,  <33.014469, 37.691624, 47.014759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757950, 38.308010, 46.865913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.124477, 38.414135, 46.985889>,  <33.344395, 38.477810, 47.057877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.124477, 38.414135, 46.985889>,  <32.757950, 38.308010, 46.865913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124477, 38.414135, 46.985889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096345, 0.580948, -0.808218,
		-0.388684, 0.769485, 0.506773,
		0.916320, 0.265316, 0.299941,
		33.399372, 38.493729, 47.075871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807892, 39.008072, 46.788788>,  <32.757950, 38.308010, 46.865913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807892, 39.008072, 46.788788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.187157, 38.881050, 46.793716>,  <33.414715, 38.804836, 46.796673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.187157, 38.881050, 46.793716>,  <32.807892, 39.008072, 46.788788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187157, 38.881050, 46.793716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181097, 0.508035, -0.842083,
		0.261149, 0.800661, 0.539207,
		0.948159, -0.317558, 0.012325,
		33.471603, 38.785782, 46.797413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118168, 39.644989, 46.643379>,  <32.807892, 39.008072, 46.788788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118168, 39.644989, 46.643379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.316967, 39.319996, 46.521481>,  <33.436245, 39.125000, 46.448341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.316967, 39.319996, 46.521481>,  <33.118168, 39.644989, 46.643379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316967, 39.319996, 46.521481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119558, 0.411954, -0.903327,
		0.859478, 0.412514, 0.301878,
		0.496995, -0.812482, -0.304746,
		33.466064, 39.076252, 46.430058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527111, 39.892426, 46.063095>,  <33.118168, 39.644989, 46.643379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527111, 39.892426, 46.063095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.539497, 39.493259, 46.040424>,  <33.546928, 39.253761, 46.026821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.539497, 39.493259, 46.040424>,  <33.527111, 39.892426, 46.063095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539497, 39.493259, 46.040424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117054, 0.059939, -0.991315,
		0.992643, 0.024065, 0.118666,
		0.030969, -0.997912, -0.056681,
		33.548786, 39.193886, 46.023418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039047, 39.809460, 45.478050>,  <33.527111, 39.892426, 46.063095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039047, 39.809460, 45.478050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.843090, 39.469994, 45.557819>,  <33.725517, 39.266312, 45.605679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.843090, 39.469994, 45.557819>,  <34.039047, 39.809460, 45.478050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843090, 39.469994, 45.557819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007361, -0.224713, -0.974397,
		0.871752, -0.478818, 0.103838,
		-0.489892, -0.848669, 0.199419,
		33.696121, 39.215393, 45.617645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372494, 39.335812, 45.025436>,  <34.039047, 39.809460, 45.478050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372494, 39.335812, 45.025436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.012718, 39.183479, 45.111202>,  <33.796852, 39.092079, 45.162663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.012718, 39.183479, 45.111202>,  <34.372494, 39.335812, 45.025436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012718, 39.183479, 45.111202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106432, -0.284974, -0.952608,
		0.423888, -0.879634, 0.215784,
		-0.899439, -0.380833, 0.214419,
		33.742886, 39.069229, 45.175529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.894836, 25.681784, 35.726185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.511627, 25.788715, 35.767628>,  <41.281704, 25.852875, 35.792496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.511627, 25.788715, 35.767628>,  <41.894836, 25.681784, 35.726185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511627, 25.788715, 35.767628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235844, 0.940297, -0.245394,
		-0.163026, -0.210656, -0.963871,
		-0.958019, 0.267329, 0.103611,
		41.224220, 25.868914, 35.798710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633465, 26.017216, 35.173721>,  <41.894836, 25.681784, 35.726185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633465, 26.017216, 35.173721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.399414, 26.152208, 35.468674>,  <41.258984, 26.233204, 35.645645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.399414, 26.152208, 35.468674>,  <41.633465, 26.017216, 35.173721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399414, 26.152208, 35.468674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190272, 0.941043, -0.279705,
		-0.788306, -0.023359, -0.614840,
		-0.585124, 0.337480, 0.737385,
		41.223877, 26.253452, 35.689888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169544, 26.517036, 34.829063>,  <41.633465, 26.017216, 35.173721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169544, 26.517036, 34.829063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.167313, 26.590292, 35.222290>,  <41.165974, 26.634245, 35.458225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.167313, 26.590292, 35.222290>,  <41.169544, 26.517036, 34.829063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167313, 26.590292, 35.222290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053798, 0.981717, -0.182584,
		-0.998536, 0.051869, -0.015326,
		-0.005576, 0.183141, 0.983071,
		41.165638, 26.645235, 35.517212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758842, 27.160223, 34.836514>,  <41.169544, 26.517036, 34.829063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758842, 27.160223, 34.836514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.960423, 27.120342, 35.179699>,  <41.081371, 27.096413, 35.385609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.960423, 27.120342, 35.179699>,  <40.758842, 27.160223, 34.836514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960423, 27.120342, 35.179699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092721, 0.993820, 0.061029,
		-0.858743, 0.048795, 0.510079,
		0.503948, -0.099704, 0.857960,
		41.111607, 27.090431, 35.437088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602509, 27.705559, 35.179729>,  <40.758842, 27.160223, 34.836514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602509, 27.705559, 35.179729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.912228, 27.596315, 35.408070>,  <41.098061, 27.530769, 35.545074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.912228, 27.596315, 35.408070>,  <40.602509, 27.705559, 35.179729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912228, 27.596315, 35.408070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042326, 0.922408, 0.383890,
		-0.631403, -0.273083, 0.725780,
		0.774299, -0.273108, 0.570853,
		41.144516, 27.514383, 35.579327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537384, 28.038727, 35.835339>,  <40.602509, 27.705559, 35.179729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537384, 28.038727, 35.835339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.923050, 27.937260, 35.866405>,  <41.154449, 27.876379, 35.885048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.923050, 27.937260, 35.866405>,  <40.537384, 28.038727, 35.835339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923050, 27.937260, 35.866405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156783, 0.781016, 0.604510,
		-0.214007, -0.570672, 0.792802,
		0.964168, -0.253667, 0.077672,
		41.212299, 27.861160, 35.889706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647060, 28.188196, 36.427441>,  <40.537384, 28.038727, 35.835339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647060, 28.188196, 36.427441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.022659, 28.179012, 36.290173>,  <41.248016, 28.173502, 36.207813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.022659, 28.179012, 36.290173>,  <40.647060, 28.188196, 36.427441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022659, 28.179012, 36.290173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256288, 0.712102, 0.653627,
		0.229361, -0.701701, 0.674544,
		0.938994, -0.022961, -0.343165,
		41.304359, 28.172125, 36.187222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122318, 28.150805, 37.099602>,  <40.647060, 28.188196, 36.427441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122318, 28.150805, 37.099602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.304855, 28.286272, 36.770470>,  <41.414379, 28.367552, 36.572990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.304855, 28.286272, 36.770470>,  <41.122318, 28.150805, 37.099602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304855, 28.286272, 36.770470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213182, 0.856190, 0.470630,
		0.863886, -0.390184, 0.318524,
		0.456349, 0.338668, -0.822830,
		41.441757, 28.387873, 36.523621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541637, 28.790060, 37.317707>,  <41.122318, 28.150805, 37.099602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541637, 28.790060, 37.317707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.568554, 28.825693, 36.920208>,  <41.584702, 28.847073, 36.681709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.568554, 28.825693, 36.920208>,  <41.541637, 28.790060, 37.317707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568554, 28.825693, 36.920208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240381, 0.965219, 0.102803,
		0.968343, -0.245796, 0.043535,
		0.067289, 0.089084, -0.993749,
		41.588741, 28.852419, 36.622082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269253, 29.054913, 37.038078>,  <41.541637, 28.790060, 37.317707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269253, 29.054913, 37.038078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.992485, 29.152430, 36.766251>,  <41.826424, 29.210939, 36.603153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.992485, 29.152430, 36.766251>,  <42.269253, 29.054913, 37.038078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992485, 29.152430, 36.766251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292165, 0.955297, 0.045234,
		0.660217, -0.167248, -0.732216,
		-0.691919, 0.243792, -0.679568,
		41.784908, 29.225567, 36.562382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615891, 29.639971, 36.653633>,  <42.269253, 29.054913, 37.038078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615891, 29.639971, 36.653633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.232033, 29.663523, 36.543648>,  <42.001717, 29.677654, 36.477657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.232033, 29.663523, 36.543648>,  <42.615891, 29.639971, 36.653633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232033, 29.663523, 36.543648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041733, 0.996826, 0.067800,
		0.278087, 0.053589, -0.959060,
		-0.959649, 0.058879, -0.274968,
		41.944138, 29.681187, 36.461159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694271, 30.253422, 36.177547>,  <42.615891, 29.639971, 36.653633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694271, 30.253422, 36.177547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.297703, 30.211863, 36.209286>,  <42.059761, 30.186928, 36.228329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.297703, 30.211863, 36.209286>,  <42.694271, 30.253422, 36.177547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297703, 30.211863, 36.209286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108271, 0.992709, -0.052975,
		-0.073263, -0.061111, -0.995439,
		-0.991418, -0.103896, 0.079346,
		42.000278, 30.180695, 36.233089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473877, 30.561846, 35.556747>,  <42.694271, 30.253422, 36.177547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473877, 30.561846, 35.556747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.185799, 30.579992, 35.833660>,  <42.012951, 30.590879, 35.999809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.185799, 30.579992, 35.833660>,  <42.473877, 30.561846, 35.556747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185799, 30.579992, 35.833660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093625, 0.982376, -0.161775,
		-0.687425, -0.181325, -0.703255,
		-0.720195, 0.045365, 0.692286,
		41.969742, 30.593601, 36.041348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871231, 30.814470, 35.213932>,  <42.473877, 30.561846, 35.556747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871231, 30.814470, 35.213932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.785015, 30.876743, 35.599533>,  <41.733288, 30.914106, 35.830894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.785015, 30.876743, 35.599533>,  <41.871231, 30.814470, 35.213932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785015, 30.876743, 35.599533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081009, 0.980956, -0.176531,
		-0.973130, -0.116142, -0.198821,
		-0.215538, 0.155681, 0.964006,
		41.720352, 30.923449, 35.888733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287106, 31.208611, 35.220440>,  <41.871231, 30.814470, 35.213932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287106, 31.208611, 35.220440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.429283, 31.261257, 35.590595>,  <41.514587, 31.292845, 35.812687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.429283, 31.261257, 35.590595>,  <41.287106, 31.208611, 35.220440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429283, 31.261257, 35.590595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002833, 0.989880, -0.141877,
		-0.934694, 0.053051, 0.351472,
		0.355441, 0.131616, 0.925386,
		41.535915, 31.300741, 35.868210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792614, 31.668070, 35.563320>,  <41.287106, 31.208611, 35.220440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792614, 31.668070, 35.563320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.148335, 31.701128, 35.743240>,  <41.361767, 31.720963, 35.851192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.148335, 31.701128, 35.743240>,  <40.792614, 31.668070, 35.563320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148335, 31.701128, 35.743240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030851, 0.992136, -0.121303,
		-0.456289, 0.093998, 0.884853,
		0.889297, 0.082648, 0.449801,
		41.415123, 31.725922, 35.878181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738926, 32.163280, 36.048717>,  <40.792614, 31.668070, 35.563320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738926, 32.163280, 36.048717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.136517, 32.140896, 36.011013>,  <41.375069, 32.127464, 35.988392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.136517, 32.140896, 36.011013>,  <40.738926, 32.163280, 36.048717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136517, 32.140896, 36.011013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036540, 0.979848, -0.196375,
		0.103352, 0.191747, 0.975988,
		0.993973, -0.055959, -0.094263,
		41.434708, 32.124107, 35.982735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021309, 32.685310, 36.566383>,  <40.738926, 32.163280, 36.048717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021309, 32.685310, 36.566383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.292015, 32.591560, 36.287228>,  <41.454441, 32.535309, 36.119736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.292015, 32.591560, 36.287228>,  <41.021309, 32.685310, 36.566383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292015, 32.591560, 36.287228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089638, 0.967149, -0.237882,
		0.730717, 0.098434, 0.675547,
		0.676770, -0.234379, -0.697889,
		41.495045, 32.521248, 36.077862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596928, 33.106239, 36.677231>,  <41.021309, 32.685310, 36.566383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596928, 33.106239, 36.677231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.634682, 32.987946, 36.296993>,  <41.657333, 32.916969, 36.068851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.634682, 32.987946, 36.296993>,  <41.596928, 33.106239, 36.677231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634682, 32.987946, 36.296993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151443, 0.948010, -0.279896,
		0.983950, -0.117544, 0.134261,
		0.094381, -0.295736, -0.950596,
		41.662994, 32.899223, 36.011814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149311, 33.432732, 36.447498>,  <41.596928, 33.106239, 36.677231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149311, 33.432732, 36.447498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.940823, 33.335434, 36.120289>,  <41.815727, 33.277058, 35.923965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.940823, 33.335434, 36.120289>,  <42.149311, 33.432732, 36.447498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940823, 33.335434, 36.120289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097386, 0.969213, -0.226148,
		0.847844, -0.038210, -0.528867,
		-0.521226, -0.243242, -0.818020,
		41.784454, 33.262463, 35.874882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386673, 33.843155, 35.798374>,  <42.149311, 33.432732, 36.447498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386673, 33.843155, 35.798374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.011459, 33.746052, 35.699455>,  <41.786331, 33.687790, 35.640102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.011459, 33.746052, 35.699455>,  <42.386673, 33.843155, 35.798374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011459, 33.746052, 35.699455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140188, 0.918463, -0.369829,
		0.316911, -0.312245, -0.895584,
		-0.938037, -0.242753, -0.247298,
		41.730049, 33.673225, 35.625267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149208, 34.102547, 35.762897>,  <42.386673, 33.843155, 35.798374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149208, 34.102547, 35.762897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.522907, 34.164520, 35.634418>,  <43.747128, 34.201706, 35.557331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.522907, 34.164520, 35.634418>,  <43.149208, 34.102547, 35.762897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.522907, 34.164520, 35.634418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203748, -0.507298, -0.837338,
		-0.292676, 0.847728, -0.442377,
		0.934252, 0.154936, -0.321197,
		43.803185, 34.211002, 35.538059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149792, 34.629257, 35.153316>,  <43.149208, 34.102547, 35.762897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149792, 34.629257, 35.153316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.458115, 34.375076, 35.135189>,  <43.643108, 34.222569, 35.124313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.458115, 34.375076, 35.135189>,  <43.149792, 34.629257, 35.153316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458115, 34.375076, 35.135189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464972, -0.512533, -0.721880,
		0.435491, 0.577505, -0.690532,
		0.770810, -0.635451, -0.045320,
		43.689358, 34.184441, 35.121593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093613, 34.456917, 34.520794>,  <43.149792, 34.629257, 35.153316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093613, 34.456917, 34.520794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.353107, 34.177509, 34.641602>,  <43.508804, 34.009865, 34.714085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.353107, 34.177509, 34.641602>,  <43.093613, 34.456917, 34.520794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353107, 34.177509, 34.641602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288781, -0.593138, -0.751527,
		0.704089, 0.400329, -0.586511,
		0.648740, -0.698515, 0.302015,
		43.547729, 33.967957, 34.732204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522312, 34.331520, 33.927227>,  <43.093613, 34.456917, 34.520794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522312, 34.331520, 33.927227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.535782, 34.007782, 34.161777>,  <43.543865, 33.813541, 34.302505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.535782, 34.007782, 34.161777>,  <43.522312, 34.331520, 33.927227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535782, 34.007782, 34.161777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361168, -0.556911, -0.747935,
		0.931892, -0.186593, -0.311062,
		0.033675, -0.809341, 0.586373,
		43.545883, 33.764980, 34.337688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796055, 33.810425, 33.495251>,  <43.522312, 34.331520, 33.927227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796055, 33.810425, 33.495251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.625683, 33.606266, 33.794067>,  <43.523460, 33.483768, 33.973358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.625683, 33.606266, 33.794067>,  <43.796055, 33.810425, 33.495251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.625683, 33.606266, 33.794067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426961, -0.614574, -0.663328,
		0.797676, -0.601490, 0.043845,
		-0.425931, -0.510400, 0.747043,
		43.497902, 33.453144, 34.018181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977646, 33.033432, 33.398701>,  <43.796055, 33.810425, 33.495251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977646, 33.033432, 33.398701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.644932, 33.065823, 33.618362>,  <43.445305, 33.085258, 33.750160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.644932, 33.065823, 33.618362>,  <43.977646, 33.033432, 33.398701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.644932, 33.065823, 33.618362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497106, -0.548901, -0.672007,
		0.247018, -0.831956, 0.496822,
		-0.831786, 0.080975, 0.549158,
		43.395397, 33.090115, 33.783112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.796066, 32.363171, 33.389038>,  <43.977646, 33.033432, 33.398701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.796066, 32.363171, 33.389038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.472534, 32.571693, 33.497875>,  <43.278416, 32.696808, 33.563175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.472534, 32.571693, 33.497875>,  <43.796066, 32.363171, 33.389038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472534, 32.571693, 33.497875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586579, -0.682585, -0.435892,
		-0.041511, -0.512164, 0.857884,
		-0.808827, 0.521311, 0.272090,
		43.229885, 32.728088, 33.579502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361107, 31.898359, 33.689247>,  <43.796066, 32.363171, 33.389038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361107, 31.898359, 33.689247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.115257, 32.199352, 33.594585>,  <42.967747, 32.379948, 33.537788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.115257, 32.199352, 33.594585>,  <43.361107, 31.898359, 33.689247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115257, 32.199352, 33.594585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666529, -0.655865, -0.354374,
		-0.421873, -0.060071, 0.904663,
		-0.614624, 0.752485, -0.236652,
		42.930870, 32.425098, 33.523590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726498, 31.625536, 33.839592>,  <43.361107, 31.898359, 33.689247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726498, 31.625536, 33.839592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634823, 31.925293, 33.591114>,  <42.579819, 32.105148, 33.442028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634823, 31.925293, 33.591114>,  <42.726498, 31.625536, 33.839592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634823, 31.925293, 33.591114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853699, -0.461343, -0.241580,
		-0.467624, 0.474953, 0.745485,
		-0.229185, 0.749388, -0.621202,
		42.566067, 32.150112, 33.404755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117290, 31.505972, 33.820736>,  <42.726498, 31.625536, 33.839592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117290, 31.505972, 33.820736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.126892, 31.764193, 33.515400>,  <42.132652, 31.919125, 33.332199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.126892, 31.764193, 33.515400>,  <42.117290, 31.505972, 33.820736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126892, 31.764193, 33.515400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845748, -0.394014, -0.359811,
		-0.533043, 0.654230, 0.536515,
		0.024005, 0.645551, -0.763340,
		42.134094, 31.957857, 33.286400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400242, 31.719007, 33.648438>,  <42.117290, 31.505972, 33.820736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400242, 31.719007, 33.648438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.563698, 31.852039, 33.308460>,  <41.661770, 31.931858, 33.104473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.563698, 31.852039, 33.308460>,  <41.400242, 31.719007, 33.648438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563698, 31.852039, 33.308460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856084, -0.183200, -0.483277,
		-0.316438, 0.925110, 0.209853,
		0.408640, 0.332579, -0.849944,
		41.686291, 31.951813, 33.053478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950989, 32.206779, 33.404991>,  <41.400242, 31.719007, 33.648438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950989, 32.206779, 33.404991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.167385, 32.040985, 33.112274>,  <41.297222, 31.941507, 32.936642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.167385, 32.040985, 33.112274>,  <40.950989, 32.206779, 33.404991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167385, 32.040985, 33.112274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838946, -0.327130, -0.434920,
		-0.059123, 0.849226, -0.524708,
		0.540994, -0.414488, -0.731796,
		41.329681, 31.916639, 32.892735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507881, 32.221382, 32.754723>,  <40.950989, 32.206779, 33.404991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507881, 32.221382, 32.754723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.784981, 31.935810, 32.713928>,  <40.951241, 31.764467, 32.689453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.784981, 31.935810, 32.713928>,  <40.507881, 32.221382, 32.754723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784981, 31.935810, 32.713928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699910, -0.631474, -0.333718,
		0.173853, 0.302561, -0.937140,
		0.692750, -0.713931, -0.101982,
		40.992805, 31.721630, 32.683334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321522, 31.841047, 32.059761>,  <40.507881, 32.221382, 32.754723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321522, 31.841047, 32.059761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.558079, 31.591722, 32.264404>,  <40.700012, 31.442127, 32.387188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.558079, 31.591722, 32.264404>,  <40.321522, 31.841047, 32.059761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558079, 31.591722, 32.264404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686358, -0.722114, -0.086393,
		0.423288, -0.300053, -0.854866,
		0.591388, -0.623313, 0.511606,
		40.735497, 31.404728, 32.417885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430588, 31.239904, 31.625570>,  <40.321522, 31.841047, 32.059761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430588, 31.239904, 31.625570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.490978, 31.123169, 32.003361>,  <40.527210, 31.053127, 32.230034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.490978, 31.123169, 32.003361>,  <40.430588, 31.239904, 31.625570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490978, 31.123169, 32.003361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437272, -0.876588, -0.200963,
		0.886566, -0.382654, -0.259954,
		0.150973, -0.291838, 0.944477,
		40.536270, 31.035618, 32.286705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288532, 30.530346, 31.560564>,  <40.430588, 31.239904, 31.625570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288532, 30.530346, 31.560564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.310059, 30.541840, 31.959820>,  <40.322975, 30.548737, 32.199371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.310059, 30.541840, 31.959820>,  <40.288532, 30.530346, 31.560564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310059, 30.541840, 31.959820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329064, -0.943240, 0.044897,
		0.942773, -0.330867, -0.041309,
		0.053819, 0.028735, 0.998137,
		40.326206, 30.550461, 32.259262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547958, 29.844072, 31.855204>,  <40.288532, 30.530346, 31.560564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547958, 29.844072, 31.855204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339848, 30.020462, 32.147739>,  <40.214981, 30.126297, 32.323261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339848, 30.020462, 32.147739>,  <40.547958, 29.844072, 31.855204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339848, 30.020462, 32.147739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461514, -0.865730, 0.193690,
		0.718555, -0.236752, 0.653932,
		-0.520272, 0.440976, 0.731339,
		40.183765, 30.152756, 32.367142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580650, 29.398703, 32.388039>,  <40.547958, 29.844072, 31.855204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580650, 29.398703, 32.388039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.286861, 29.631681, 32.527355>,  <40.110588, 29.771469, 32.610943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.286861, 29.631681, 32.527355>,  <40.580650, 29.398703, 32.388039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286861, 29.631681, 32.527355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298895, -0.738392, 0.604515,
		0.609273, 0.339897, 0.716419,
		-0.734471, 0.582449, 0.348289,
		40.066521, 29.806416, 32.631844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695499, 29.319754, 33.099445>,  <40.580650, 29.398703, 32.388039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695499, 29.319754, 33.099445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.316158, 29.419884, 33.021515>,  <40.088554, 29.479961, 32.974758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.316158, 29.419884, 33.021515>,  <40.695499, 29.319754, 33.099445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316158, 29.419884, 33.021515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317156, -0.759088, 0.568504,
		-0.005576, 0.600934, 0.799279,
		-0.948357, 0.250326, -0.194822,
		40.031651, 29.494982, 32.963070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292301, 29.326580, 33.821564>,  <40.695499, 29.319754, 33.099445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292301, 29.326580, 33.821564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.039616, 29.269321, 33.516815>,  <39.888004, 29.234966, 33.333965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.039616, 29.269321, 33.516815>,  <40.292301, 29.326580, 33.821564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039616, 29.269321, 33.516815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417779, -0.765001, 0.490137,
		-0.652995, 0.627919, 0.423456,
		-0.631711, -0.143146, -0.761873,
		39.850101, 29.226377, 33.288254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633389, 29.412048, 34.138145>,  <40.292301, 29.326580, 33.821564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633389, 29.412048, 34.138145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.587677, 29.209209, 33.796432>,  <39.560249, 29.087505, 33.591404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.587677, 29.209209, 33.796432>,  <39.633389, 29.412048, 34.138145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587677, 29.209209, 33.796432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458630, -0.735864, 0.498159,
		-0.881249, 0.448726, -0.148478,
		-0.114278, -0.507099, -0.854278,
		39.553394, 29.057079, 33.540150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.142891, 37.571987, 41.120171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814938, 37.396767, 40.972710>,  <37.618168, 37.291634, 40.884232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814938, 37.396767, 40.972710>,  <38.142891, 37.571987, 41.120171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814938, 37.396767, 40.972710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540824, -0.381235, -0.749780,
		0.187902, -0.814105, 0.549478,
		-0.819879, -0.438056, -0.368653,
		37.568974, 37.265350, 40.862114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399887, 36.947468, 40.883789>,  <38.142891, 37.571987, 41.120171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399887, 36.947468, 40.883789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058464, 37.021061, 40.688816>,  <37.853611, 37.065216, 40.571831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058464, 37.021061, 40.688816>,  <38.399887, 36.947468, 40.883789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058464, 37.021061, 40.688816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428588, -0.283994, -0.857706,
		-0.296227, -0.941010, 0.163555,
		-0.853559, 0.183978, -0.487432,
		37.802399, 37.076256, 40.542587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431213, 36.404110, 40.400932>,  <38.399887, 36.947468, 40.883789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431213, 36.404110, 40.400932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128723, 36.632809, 40.273670>,  <37.947227, 36.770027, 40.197315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128723, 36.632809, 40.273670>,  <38.431213, 36.404110, 40.400932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128723, 36.632809, 40.273670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030944, -0.454448, -0.890235,
		-0.653578, -0.683064, 0.325974,
		-0.756226, 0.571751, -0.318154,
		37.901855, 36.804333, 40.178223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025883, 35.972107, 40.198990>,  <38.431213, 36.404110, 40.400932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025883, 35.972107, 40.198990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955467, 36.307858, 39.993286>,  <37.913219, 36.509308, 39.869865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955467, 36.307858, 39.993286>,  <38.025883, 35.972107, 40.198990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955467, 36.307858, 39.993286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059093, -0.530484, -0.845633,
		-0.982609, -0.118472, 0.142985,
		-0.176035, 0.839375, -0.514257,
		37.902657, 36.559669, 39.839008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436424, 35.763683, 39.799873>,  <38.025883, 35.972107, 40.198990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436424, 35.763683, 39.799873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573174, 36.099190, 39.630360>,  <37.655224, 36.300495, 39.528652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573174, 36.099190, 39.630360>,  <37.436424, 35.763683, 39.799873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573174, 36.099190, 39.630360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338949, -0.310544, -0.888074,
		-0.876489, 0.447254, 0.178131,
		0.341877, 0.838764, -0.423785,
		37.675735, 36.350819, 39.503223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998196, 35.888432, 39.238453>,  <37.436424, 35.763683, 39.799873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998196, 35.888432, 39.238453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311928, 36.115494, 39.138386>,  <37.500168, 36.251732, 39.078346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311928, 36.115494, 39.138386>,  <36.998196, 35.888432, 39.238453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311928, 36.115494, 39.138386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110138, -0.269435, -0.956700,
		-0.610483, 0.777925, -0.148806,
		0.784334, 0.567659, -0.250165,
		37.547230, 36.285793, 39.063335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796261, 36.432049, 38.734909>,  <36.998196, 35.888432, 39.238453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796261, 36.432049, 38.734909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183052, 36.333538, 38.708660>,  <37.415127, 36.274433, 38.692909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183052, 36.333538, 38.708660>,  <36.796261, 36.432049, 38.734909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183052, 36.333538, 38.708660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160572, -0.388728, -0.907253,
		0.197927, 0.887828, -0.415435,
		0.966975, -0.246277, -0.065621,
		37.473145, 36.259655, 38.688972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948948, 36.711010, 38.093262>,  <36.796261, 36.432049, 38.734909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948948, 36.711010, 38.093262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219460, 36.425430, 38.165840>,  <37.381767, 36.254082, 38.209385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219460, 36.425430, 38.165840>,  <36.948948, 36.711010, 38.093262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219460, 36.425430, 38.165840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233409, -0.441297, -0.866474,
		0.698692, 0.543626, -0.465081,
		0.676277, -0.713952, 0.181444,
		37.422344, 36.211243, 38.220272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294411, 36.645245, 37.474495>,  <36.948948, 36.711010, 38.093262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294411, 36.645245, 37.474495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384399, 36.311996, 37.676605>,  <37.438393, 36.112049, 37.797871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384399, 36.311996, 37.676605>,  <37.294411, 36.645245, 37.474495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384399, 36.311996, 37.676605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310068, -0.552821, -0.773464,
		0.923714, 0.017337, -0.382692,
		0.224970, -0.833119, 0.505273,
		37.451889, 36.062061, 37.828186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733974, 36.295376, 37.055107>,  <37.294411, 36.645245, 37.474495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733974, 36.295376, 37.055107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583267, 36.016884, 37.299503>,  <37.492844, 35.849789, 37.446140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583267, 36.016884, 37.299503>,  <37.733974, 36.295376, 37.055107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583267, 36.016884, 37.299503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095192, -0.627007, -0.773176,
		0.921403, -0.349471, 0.169962,
		-0.376770, -0.696227, 0.610993,
		37.470238, 35.808014, 37.482800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942245, 35.771797, 36.672806>,  <37.733974, 36.295376, 37.055107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942245, 35.771797, 36.672806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687714, 35.621227, 36.942142>,  <37.534996, 35.530884, 37.103745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687714, 35.621227, 36.942142>,  <37.942245, 35.771797, 36.672806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687714, 35.621227, 36.942142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248225, -0.726530, -0.640733,
		0.730393, -0.574856, 0.368872,
		-0.636326, -0.376424, 0.673346,
		37.496815, 35.508301, 37.144146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154457, 35.028923, 36.717674>,  <37.942245, 35.771797, 36.672806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154457, 35.028923, 36.717674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772518, 35.092266, 36.818222>,  <37.543354, 35.130272, 36.878551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772518, 35.092266, 36.818222>,  <38.154457, 35.028923, 36.717674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772518, 35.092266, 36.818222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290378, -0.676291, -0.676986,
		0.062796, -0.719412, 0.691739,
		-0.954849, 0.158354, 0.251370,
		37.486065, 35.139771, 36.893635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789860, 34.473339, 37.043957>,  <38.154457, 35.028923, 36.717674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789860, 34.473339, 37.043957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492287, 34.666656, 36.859356>,  <37.313744, 34.782646, 36.748596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492287, 34.666656, 36.859356>,  <37.789860, 34.473339, 37.043957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492287, 34.666656, 36.859356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325395, -0.865193, -0.381523,
		-0.583675, -0.133660, 0.800911,
		-0.743937, 0.483298, -0.461499,
		37.269104, 34.811646, 36.720905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358219, 34.001369, 36.649315>,  <37.789860, 34.473339, 37.043957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358219, 34.001369, 36.649315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377594, 33.798267, 36.993370>,  <37.389221, 33.676407, 37.199802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377594, 33.798267, 36.993370>,  <37.358219, 34.001369, 36.649315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377594, 33.798267, 36.993370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876490, -0.434563, -0.207171,
		0.478976, -0.743865, -0.466097,
		0.048441, -0.507759, 0.860136,
		37.392128, 33.645939, 37.251411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921928, 33.435513, 36.759727>,  <37.358219, 34.001369, 36.649315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921928, 33.435513, 36.759727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051540, 33.068966, 36.853775>,  <38.129307, 32.849037, 36.910202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051540, 33.068966, 36.853775>,  <37.921928, 33.435513, 36.759727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051540, 33.068966, 36.853775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357676, 0.111416, 0.927175,
		-0.875826, -0.384530, -0.291659,
		0.324031, -0.916364, 0.235119,
		38.148750, 32.794056, 36.924309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359341, 32.861450, 36.782059>,  <37.921928, 33.435513, 36.759727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359341, 32.861450, 36.782059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678772, 32.830265, 37.020786>,  <37.870430, 32.811554, 37.164024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678772, 32.830265, 37.020786>,  <37.359341, 32.861450, 36.782059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678772, 32.830265, 37.020786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584495, 0.136202, 0.799884,
		-0.143651, -0.987608, 0.063198,
		0.798581, -0.077965, 0.596818,
		37.918346, 32.806877, 37.199833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215748, 32.394035, 37.349915>,  <37.359341, 32.861450, 36.782059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215748, 32.394035, 37.349915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533775, 32.603714, 37.471954>,  <37.724590, 32.729523, 37.545177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533775, 32.603714, 37.471954>,  <37.215748, 32.394035, 37.349915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533775, 32.603714, 37.471954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414467, 0.102308, 0.904295,
		0.442815, -0.845429, 0.298605,
		0.795067, 0.524197, 0.305099,
		37.772297, 32.760971, 37.563484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186390, 32.214558, 37.999546>,  <37.215748, 32.394035, 37.349915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186390, 32.214558, 37.999546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405449, 32.548874, 37.983875>,  <37.536884, 32.749462, 37.974472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405449, 32.548874, 37.983875>,  <37.186390, 32.214558, 37.999546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405449, 32.548874, 37.983875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503430, 0.366549, 0.782432,
		0.668312, -0.408771, 0.621502,
		0.547647, 0.835792, -0.039181,
		37.569744, 32.799610, 37.972122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422699, 32.266655, 38.681683>,  <37.186390, 32.214558, 37.999546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422699, 32.266655, 38.681683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428097, 32.624157, 38.502346>,  <37.431335, 32.838657, 38.394745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428097, 32.624157, 38.502346>,  <37.422699, 32.266655, 38.681683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428097, 32.624157, 38.502346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423910, 0.411211, 0.806973,
		0.905604, 0.179169, 0.384422,
		0.013494, 0.893758, -0.448346,
		37.432144, 32.892284, 38.367844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779015, 32.669998, 39.215210>,  <37.422699, 32.266655, 38.681683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779015, 32.669998, 39.215210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558056, 32.899242, 38.973087>,  <37.425480, 33.036789, 38.827812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558056, 32.899242, 38.973087>,  <37.779015, 32.669998, 39.215210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558056, 32.899242, 38.973087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289521, 0.549040, 0.784049,
		0.781690, 0.608353, -0.137358,
		-0.552394, 0.573115, -0.605310,
		37.392338, 33.071178, 38.791492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883236, 33.311626, 39.395393>,  <37.779015, 32.669998, 39.215210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883236, 33.311626, 39.395393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540188, 33.340469, 39.191715>,  <37.334358, 33.357777, 39.069508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540188, 33.340469, 39.191715>,  <37.883236, 33.311626, 39.395393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540188, 33.340469, 39.191715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463495, 0.320633, 0.826055,
		0.222830, 0.944455, -0.241561,
		-0.857624, 0.072108, -0.509197,
		37.282902, 33.362103, 39.038956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517876, 33.877918, 39.684589>,  <37.883236, 33.311626, 39.395393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517876, 33.877918, 39.684589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231007, 33.687248, 39.481239>,  <37.058887, 33.572845, 39.359230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231007, 33.687248, 39.481239>,  <37.517876, 33.877918, 39.684589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231007, 33.687248, 39.481239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651281, 0.198847, 0.732321,
		-0.247993, 0.856293, -0.453059,
		-0.717170, -0.476679, -0.508374,
		37.015854, 33.544243, 39.328728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958065, 34.350174, 39.788975>,  <37.517876, 33.877918, 39.684589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958065, 34.350174, 39.788975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822769, 33.989468, 39.681339>,  <36.741592, 33.773045, 39.616760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822769, 33.989468, 39.681339>,  <36.958065, 34.350174, 39.788975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822769, 33.989468, 39.681339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761811, 0.094510, 0.640868,
		-0.552483, 0.421760, -0.718944,
		-0.338240, -0.901768, -0.269086,
		36.721298, 33.718937, 39.600613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293808, 34.449265, 39.711838>,  <36.958065, 34.350174, 39.788975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293808, 34.449265, 39.711838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311462, 34.051743, 39.752625>,  <36.322056, 33.813229, 39.777096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311462, 34.051743, 39.752625>,  <36.293808, 34.449265, 39.711838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311462, 34.051743, 39.752625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776967, 0.030017, 0.628826,
		-0.627993, -0.106979, -0.770831,
		0.044133, -0.993808, 0.101970,
		36.324703, 33.753601, 39.783215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661980, 34.200554, 39.694160>,  <36.293808, 34.449265, 39.711838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661980, 34.200554, 39.694160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830036, 33.885872, 39.875080>,  <35.930870, 33.697063, 39.983631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830036, 33.885872, 39.875080>,  <35.661980, 34.200554, 39.694160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830036, 33.885872, 39.875080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782371, -0.061512, 0.619767,
		-0.459753, -0.614255, -0.641341,
		0.420145, -0.786706, 0.452295,
		35.956081, 33.649860, 40.010769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136600, 33.824741, 39.967316>,  <35.661980, 34.200554, 39.694160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136600, 33.824741, 39.967316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445137, 33.708046, 40.193562>,  <35.630260, 33.638027, 40.329308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445137, 33.708046, 40.193562>,  <35.136600, 33.824741, 39.967316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445137, 33.708046, 40.193562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615809, -0.117811, 0.779038,
		-0.160643, -0.949214, -0.270530,
		0.771345, -0.291741, 0.565609,
		35.676540, 33.620525, 40.363243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892887, 33.431904, 40.524029>,  <35.136600, 33.824741, 39.967316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892887, 33.431904, 40.524029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263290, 33.478645, 40.667614>,  <35.485531, 33.506691, 40.753765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263290, 33.478645, 40.667614>,  <34.892887, 33.431904, 40.524029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263290, 33.478645, 40.667614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356561, -0.041563, 0.933347,
		0.123983, -0.992279, 0.003177,
		0.926009, 0.116852, 0.358961,
		35.541092, 33.513702, 40.775303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915165, 32.902576, 40.984711>,  <34.892887, 33.431904, 40.524029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915165, 32.902576, 40.984711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191738, 33.174595, 41.082249>,  <35.357681, 33.337807, 41.140774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191738, 33.174595, 41.082249>,  <34.915165, 32.902576, 40.984711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191738, 33.174595, 41.082249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182244, -0.162430, 0.969744,
		0.699081, -0.714948, 0.011625,
		0.691428, 0.680048, 0.243847,
		35.399166, 33.378609, 41.155403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447670, 32.268688, 40.856915>,  <34.915165, 32.902576, 40.984711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447670, 32.268688, 40.856915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100628, 32.156353, 41.021057>,  <33.892403, 32.088951, 41.119541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100628, 32.156353, 41.021057>,  <34.447670, 32.268688, 40.856915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100628, 32.156353, 41.021057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488551, 0.327718, -0.808653,
		0.092616, -0.902072, -0.421531,
		-0.867606, -0.280834, 0.410356,
		33.840347, 32.072102, 41.144165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083572, 31.984922, 40.374874>,  <34.447670, 32.268688, 40.856915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083572, 31.984922, 40.374874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803158, 32.100006, 40.635880>,  <33.634911, 32.169056, 40.792480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803158, 32.100006, 40.635880>,  <34.083572, 31.984922, 40.374874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803158, 32.100006, 40.635880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527088, 0.407268, -0.745862,
		-0.480339, -0.866808, -0.133862,
		-0.701037, 0.287710, 0.652511,
		33.592846, 32.186317, 40.831635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391724, 31.701170, 40.316841>,  <34.083572, 31.984922, 40.374874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391724, 31.701170, 40.316841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332336, 32.052734, 40.498158>,  <33.296703, 32.263672, 40.606949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332336, 32.052734, 40.498158>,  <33.391724, 31.701170, 40.316841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332336, 32.052734, 40.498158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794160, 0.167177, -0.584261,
		-0.589293, -0.446733, 0.673174,
		-0.148470, 0.878909, 0.453294,
		33.287796, 32.316406, 40.634148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882874, 31.905790, 39.995251>,  <33.391724, 31.701170, 40.316841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882874, 31.905790, 39.995251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934608, 32.240639, 40.207851>,  <32.965649, 32.441547, 40.335411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934608, 32.240639, 40.207851>,  <32.882874, 31.905790, 39.995251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934608, 32.240639, 40.207851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660746, 0.472430, -0.583288,
		-0.739382, -0.275747, 0.614229,
		0.129340, 0.837122, 0.531505,
		32.973412, 32.491776, 40.367302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234451, 32.150635, 40.120270>,  <32.882874, 31.905790, 39.995251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234451, 32.150635, 40.120270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477638, 32.467033, 40.147690>,  <32.623550, 32.656872, 40.164143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477638, 32.467033, 40.147690>,  <32.234451, 32.150635, 40.120270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477638, 32.467033, 40.147690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595434, 0.511356, -0.619656,
		-0.525197, 0.335917, 0.781875,
		0.607970, 0.790996, 0.068546,
		32.660030, 32.704330, 40.168255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792429, 32.771935, 39.989082>,  <32.234451, 32.150635, 40.120270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792429, 32.771935, 39.989082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162403, 32.919689, 39.953197>,  <32.384388, 33.008343, 39.931667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162403, 32.919689, 39.953197>,  <31.792429, 32.771935, 39.989082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162403, 32.919689, 39.953197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324635, 0.644832, -0.691957,
		-0.197748, 0.669140, 0.716343,
		0.924937, 0.369383, -0.089712,
		32.439884, 33.030502, 39.926285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693951, 33.497688, 40.053749>,  <31.792429, 32.771935, 39.989082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693951, 33.497688, 40.053749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041824, 33.429909, 39.868305>,  <32.250549, 33.389240, 39.757038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041824, 33.429909, 39.868305>,  <31.693951, 33.497688, 40.053749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041824, 33.429909, 39.868305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306355, 0.551142, -0.776138,
		0.387030, 0.817025, 0.427408,
		0.869686, -0.169450, -0.463608,
		32.302731, 33.379074, 39.729221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890375, 34.123600, 39.827141>,  <31.693951, 33.497688, 40.053749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890375, 34.123600, 39.827141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077091, 33.842346, 39.612587>,  <32.189121, 33.673595, 39.483852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077091, 33.842346, 39.612587>,  <31.890375, 34.123600, 39.827141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077091, 33.842346, 39.612587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153357, 0.532977, -0.832116,
		0.870969, 0.470684, 0.140959,
		0.466791, -0.703130, -0.536389,
		32.217129, 33.631409, 39.451672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165001, 34.574554, 39.209198>,  <31.890375, 34.123600, 39.827141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165001, 34.574554, 39.209198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164436, 34.184547, 39.120342>,  <32.164097, 33.950542, 39.067028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164436, 34.184547, 39.120342>,  <32.165001, 34.574554, 39.209198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164436, 34.184547, 39.120342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191745, 0.218281, -0.956864,
		0.981444, 0.041246, -0.187261,
		-0.001408, -0.975014, -0.222139,
		32.164013, 33.892044, 39.053699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755638, 34.449120, 38.672207>,  <32.165001, 34.574554, 39.209198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755638, 34.449120, 38.672207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440445, 34.203796, 38.650532>,  <32.251328, 34.056602, 38.637527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440445, 34.203796, 38.650532>,  <32.755638, 34.449120, 38.672207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440445, 34.203796, 38.650532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166896, 0.297489, -0.940024,
		0.592648, -0.731677, -0.336775,
		-0.787981, -0.613310, -0.054192,
		32.204052, 34.019802, 38.634274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851269, 34.182812, 38.095055>,  <32.755638, 34.449120, 38.672207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851269, 34.182812, 38.095055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462791, 34.126987, 38.172314>,  <32.229706, 34.093494, 38.218670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462791, 34.126987, 38.172314>,  <32.851269, 34.182812, 38.095055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462791, 34.126987, 38.172314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213877, 0.153139, -0.964783,
		0.105063, -0.978301, -0.178575,
		-0.971194, -0.139556, 0.193147,
		32.171432, 34.085121, 38.230259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516121, 33.810978, 37.465717>,  <32.851269, 34.182812, 38.095055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516121, 33.810978, 37.465717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194237, 33.928993, 37.671783>,  <32.001106, 33.999802, 37.795422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194237, 33.928993, 37.671783>,  <32.516121, 33.810978, 37.465717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194237, 33.928993, 37.671783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433136, 0.301673, -0.849345,
		-0.406004, -0.906611, -0.114965,
		-0.804707, 0.295042, 0.515167,
		31.952824, 34.017506, 37.826332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.540619, 30.711351, 44.446205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.192738, 30.896677, 44.514278>,  <34.984009, 31.007872, 44.555122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.192738, 30.896677, 44.514278>,  <35.540619, 30.711351, 44.446205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192738, 30.896677, 44.514278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194399, -0.004602, -0.980912,
		-0.453685, -0.886183, 0.094070,
		-0.869700, 0.463312, 0.170185,
		34.931828, 31.035671, 44.565334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067802, 30.238829, 44.140488>,  <35.540619, 30.711351, 44.446205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067802, 30.238829, 44.140488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.929279, 30.613024, 44.168587>,  <34.846165, 30.837542, 44.185448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.929279, 30.613024, 44.168587>,  <35.067802, 30.238829, 44.140488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929279, 30.613024, 44.168587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344257, -0.057069, -0.937140,
		-0.872674, -0.348720, 0.341811,
		-0.346306, 0.935488, 0.070246,
		34.825386, 30.893671, 44.189659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496937, 30.205160, 43.672222>,  <35.067802, 30.238829, 44.140488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496937, 30.205160, 43.672222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.532436, 30.601633, 43.711571>,  <34.553734, 30.839518, 43.735180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.532436, 30.601633, 43.711571>,  <34.496937, 30.205160, 43.672222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532436, 30.601633, 43.711571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398120, 0.125831, -0.908662,
		-0.913030, 0.041476, 0.405778,
		0.088747, 0.991185, 0.098375,
		34.559059, 30.898989, 43.741085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855339, 30.479650, 43.367512>,  <34.496937, 30.205160, 43.672222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855339, 30.479650, 43.367512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.148293, 30.751486, 43.350681>,  <34.324066, 30.914587, 43.340584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.148293, 30.751486, 43.350681>,  <33.855339, 30.479650, 43.367512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148293, 30.751486, 43.350681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309481, 0.277208, -0.909603,
		-0.606490, 0.679203, 0.413343,
		0.732387, 0.679587, -0.042077,
		34.368008, 30.955362, 43.338058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459183, 30.994488, 43.190819>,  <33.855339, 30.479650, 43.367512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459183, 30.994488, 43.190819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.839661, 31.087416, 43.109573>,  <34.067947, 31.143171, 43.060825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.839661, 31.087416, 43.109573>,  <33.459183, 30.994488, 43.190819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839661, 31.087416, 43.109573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257509, 0.234848, -0.937302,
		-0.170050, 0.943862, 0.283210,
		0.951195, 0.232317, -0.203117,
		34.125019, 31.157110, 43.048637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418396, 31.765434, 43.041714>,  <33.459183, 30.994488, 43.190819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418396, 31.765434, 43.041714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.754936, 31.623970, 42.878227>,  <33.956860, 31.539091, 42.780136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.754936, 31.623970, 42.878227>,  <33.418396, 31.765434, 43.041714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754936, 31.623970, 42.878227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254584, 0.407744, -0.876888,
		0.476773, 0.841824, 0.253020,
		0.841353, -0.353661, -0.408716,
		34.007343, 31.517872, 42.755611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733040, 32.385563, 42.625778>,  <33.418396, 31.765434, 43.041714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733040, 32.385563, 42.625778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.898003, 32.052574, 42.477776>,  <33.996979, 31.852779, 42.388973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.898003, 32.052574, 42.477776>,  <33.733040, 32.385563, 42.625778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898003, 32.052574, 42.477776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035161, 0.420395, -0.906659,
		0.910320, 0.360904, 0.202645,
		0.412408, -0.832476, -0.370005,
		34.021725, 31.802832, 42.366776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382710, 32.568100, 42.284172>,  <33.733040, 32.385563, 42.625778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382710, 32.568100, 42.284172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.235653, 32.227329, 42.135006>,  <34.147419, 32.022869, 42.045506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.235653, 32.227329, 42.135006>,  <34.382710, 32.568100, 42.284172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235653, 32.227329, 42.135006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092309, 0.432447, -0.896922,
		0.925374, -0.295324, -0.237626,
		-0.367643, -0.851923, -0.372914,
		34.125359, 31.971752, 42.023132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490269, 32.631519, 41.604317>,  <34.382710, 32.568100, 42.284172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490269, 32.631519, 41.604317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.227089, 32.330460, 41.614334>,  <34.069183, 32.149826, 41.620346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.227089, 32.330460, 41.614334>,  <34.490269, 32.631519, 41.604317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227089, 32.330460, 41.614334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399312, 0.320484, -0.858976,
		0.638480, -0.575162, -0.511402,
		-0.657947, -0.752648, 0.025047,
		34.029705, 32.104664, 41.621849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230747, 32.509033, 41.628304>,  <34.490269, 32.631519, 41.604317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230747, 32.509033, 41.628304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.378204, 32.879875, 41.601254>,  <35.466679, 33.102383, 41.585022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.378204, 32.879875, 41.601254>,  <35.230747, 32.509033, 41.628304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378204, 32.879875, 41.601254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001160, 0.072295, 0.997383,
		0.929570, -0.367759, 0.025576,
		0.368645, 0.927107, -0.067630,
		35.488796, 33.158009, 41.580963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807091, 32.609913, 42.123890>,  <35.230747, 32.509033, 41.628304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807091, 32.609913, 42.123890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.653381, 32.975475, 42.071560>,  <35.561157, 33.194813, 42.040161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.653381, 32.975475, 42.071560>,  <35.807091, 32.609913, 42.123890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653381, 32.975475, 42.071560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128212, 0.087510, 0.987879,
		0.914274, 0.396389, 0.083545,
		-0.384273, 0.913903, -0.130829,
		35.538101, 33.249645, 42.032310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230946, 32.964539, 42.448227>,  <35.807091, 32.609913, 42.123890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230946, 32.964539, 42.448227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.883575, 33.162186, 42.431812>,  <35.675152, 33.280773, 42.421963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.883575, 33.162186, 42.431812>,  <36.230946, 32.964539, 42.448227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883575, 33.162186, 42.431812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018556, 0.050321, 0.998561,
		0.495472, 0.867937, -0.034531,
		-0.868426, 0.494118, -0.041038,
		35.623047, 33.310421, 42.419502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394547, 33.465038, 42.866035>,  <36.230946, 32.964539, 42.448227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394547, 33.465038, 42.866035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.995686, 33.469936, 42.836288>,  <35.756367, 33.472874, 42.818439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.995686, 33.469936, 42.836288>,  <36.394547, 33.465038, 42.866035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995686, 33.469936, 42.836288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073066, 0.084817, 0.993714,
		0.018473, 0.996321, -0.083682,
		-0.997156, 0.012242, -0.074364,
		35.696537, 33.473610, 42.813980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205708, 34.136524, 43.011646>,  <36.394547, 33.465038, 42.866035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205708, 34.136524, 43.011646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.872837, 33.926060, 43.081657>,  <35.673115, 33.799782, 43.123665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.872837, 33.926060, 43.081657>,  <36.205708, 34.136524, 43.011646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872837, 33.926060, 43.081657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120286, 0.479411, 0.869308,
		-0.541307, 0.702364, -0.462245,
		-0.832176, -0.526164, 0.175024,
		35.623184, 33.768211, 43.134163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757164, 34.649624, 43.206680>,  <36.205708, 34.136524, 43.011646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757164, 34.649624, 43.206680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.607719, 34.295059, 43.315998>,  <35.518051, 34.082321, 43.381588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.607719, 34.295059, 43.315998>,  <35.757164, 34.649624, 43.206680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607719, 34.295059, 43.315998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154275, 0.349905, 0.923995,
		-0.914664, 0.303057, -0.267481,
		-0.373615, -0.886410, 0.273291,
		35.495636, 34.029137, 43.397984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118347, 34.795654, 43.585533>,  <35.757164, 34.649624, 43.206680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118347, 34.795654, 43.585533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.240238, 34.427715, 43.684341>,  <35.313374, 34.206951, 43.743626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.240238, 34.427715, 43.684341>,  <35.118347, 34.795654, 43.585533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240238, 34.427715, 43.684341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132721, 0.215810, 0.967373,
		-0.943146, -0.327573, -0.056319,
		0.304731, -0.919848, 0.247016,
		35.331657, 34.151760, 43.758446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603443, 34.497948, 44.025093>,  <35.118347, 34.795654, 43.585533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603443, 34.497948, 44.025093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.943062, 34.298969, 44.096279>,  <35.146832, 34.179585, 44.138992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.943062, 34.298969, 44.096279>,  <34.603443, 34.497948, 44.025093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943062, 34.298969, 44.096279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160478, 0.078116, 0.983943,
		-0.503357, -0.863973, -0.013504,
		0.849046, -0.497442, 0.177969,
		35.197777, 34.149738, 44.149670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463161, 34.045166, 44.580418>,  <34.603443, 34.497948, 44.025093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463161, 34.045166, 44.580418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.862488, 34.067554, 44.574238>,  <35.102081, 34.080990, 44.570530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.862488, 34.067554, 44.574238>,  <34.463161, 34.045166, 44.580418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862488, 34.067554, 44.574238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016028, -0.009813, 0.999823,
		0.055816, -0.998384, -0.010693,
		0.998313, 0.055977, -0.015454,
		35.161983, 34.084347, 44.569603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751873, 33.535435, 45.109039>,  <34.463161, 34.045166, 44.580418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751873, 33.535435, 45.109039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.014641, 33.830437, 45.046375>,  <35.172302, 34.007439, 45.008778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.014641, 33.830437, 45.046375>,  <34.751873, 33.535435, 45.109039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014641, 33.830437, 45.046375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101936, 0.119000, 0.987648,
		0.747041, -0.664771, 0.002994,
		0.656916, 0.737508, -0.156662,
		35.211716, 34.051689, 44.999378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011940, 33.589287, 45.748199>,  <34.751873, 33.535435, 45.109039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011940, 33.589287, 45.748199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.176449, 33.917652, 45.589729>,  <35.275154, 34.114674, 45.494648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.176449, 33.917652, 45.589729>,  <35.011940, 33.589287, 45.748199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176449, 33.917652, 45.589729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271538, 0.304558, 0.912968,
		0.870129, -0.483052, -0.097655,
		0.411270, 0.820917, -0.396172,
		35.299831, 34.163929, 45.470879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540516, 33.514191, 46.043610>,  <35.011940, 33.589287, 45.748199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540516, 33.514191, 46.043610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.500114, 33.896038, 45.931534>,  <35.475876, 34.125145, 45.864288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.500114, 33.896038, 45.931534>,  <35.540516, 33.514191, 46.043610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500114, 33.896038, 45.931534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492794, 0.292658, 0.819454,
		0.864264, -0.055312, -0.499988,
		-0.101000, 0.954616, -0.280191,
		35.469814, 34.182423, 45.847477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188545, 33.672852, 46.259800>,  <35.540516, 33.514191, 46.043610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188545, 33.672852, 46.259800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.974487, 34.006329, 46.205280>,  <35.846054, 34.206413, 46.172569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.974487, 34.006329, 46.205280>,  <36.188545, 33.672852, 46.259800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974487, 34.006329, 46.205280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391986, 0.387990, 0.834153,
		0.748310, 0.392963, -0.534426,
		-0.535143, 0.833693, -0.136300,
		35.813946, 34.256435, 46.164391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624088, 34.197697, 46.352966>,  <36.188545, 33.672852, 46.259800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624088, 34.197697, 46.352966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.257324, 34.333965, 46.436115>,  <36.037266, 34.415726, 46.486004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.257324, 34.333965, 46.436115>,  <36.624088, 34.197697, 46.352966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257324, 34.333965, 46.436115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324911, 0.334770, 0.884512,
		0.231739, 0.878562, -0.417644,
		-0.916913, 0.340674, 0.207875,
		35.982250, 34.436169, 46.498478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.411295, 36.346138, 46.366520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.794418, 36.336708, 46.481098>,  <31.024292, 36.331051, 46.549843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.794418, 36.336708, 46.481098>,  <30.411295, 36.346138, 46.366520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794418, 36.336708, 46.481098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285193, 0.201521, -0.937046,
		-0.035634, 0.979201, 0.199741,
		0.957808, -0.023574, 0.286442,
		31.081760, 36.329636, 46.567032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.744905, 36.957512, 46.071304>,  <30.411295, 36.346138, 46.366520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.744905, 36.957512, 46.071304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.049221, 36.713203, 46.159081>,  <31.231812, 36.566616, 46.211746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.049221, 36.713203, 46.159081>,  <30.744905, 36.957512, 46.071304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049221, 36.713203, 46.159081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419604, 0.204970, -0.884262,
		0.495107, 0.764815, 0.412223,
		0.760790, -0.610774, 0.219437,
		31.277458, 36.529972, 46.224911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304922, 37.283539, 45.762798>,  <30.744905, 36.957512, 46.071304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304922, 37.283539, 45.762798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.447102, 36.918060, 45.841606>,  <31.532410, 36.698772, 45.888889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.447102, 36.918060, 45.841606>,  <31.304922, 37.283539, 45.762798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447102, 36.918060, 45.841606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260441, -0.105617, -0.959696,
		0.897678, 0.392434, 0.200422,
		0.355449, -0.913696, 0.197016,
		31.553736, 36.643951, 45.900711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067722, 37.268009, 45.527573>,  <31.304922, 37.283539, 45.762798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067722, 37.268009, 45.527573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.905008, 36.902622, 45.531792>,  <31.807381, 36.683392, 45.534325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.905008, 36.902622, 45.531792>,  <32.067722, 37.268009, 45.527573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905008, 36.902622, 45.531792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304124, -0.146302, -0.941331,
		0.861416, -0.379709, 0.337320,
		-0.406782, -0.913464, 0.010548,
		31.782974, 36.628582, 45.534958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549484, 36.780727, 45.258816>,  <32.067722, 37.268009, 45.527573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549484, 36.780727, 45.258816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.186485, 36.625210, 45.195202>,  <31.968687, 36.531898, 45.157036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.186485, 36.625210, 45.195202>,  <32.549484, 36.780727, 45.258816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186485, 36.625210, 45.195202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252956, -0.203558, -0.945821,
		0.335358, -0.898556, 0.283076,
		-0.907496, -0.388794, -0.159031,
		31.914236, 36.508572, 45.147491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603306, 36.230694, 44.787979>,  <32.549484, 36.780727, 45.258816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603306, 36.230694, 44.787979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.209682, 36.286110, 44.743378>,  <31.973509, 36.319359, 44.716618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.209682, 36.286110, 44.743378>,  <32.603306, 36.230694, 44.787979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209682, 36.286110, 44.743378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068075, -0.285783, -0.955873,
		-0.164292, -0.948227, 0.271797,
		-0.984060, 0.138540, -0.111503,
		31.914465, 36.327671, 44.709927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398067, 35.705700, 44.449566>,  <32.603306, 36.230694, 44.787979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398067, 35.705700, 44.449566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.107460, 35.974224, 44.390900>,  <31.933094, 36.135338, 44.355698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.107460, 35.974224, 44.390900>,  <32.398067, 35.705700, 44.449566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107460, 35.974224, 44.390900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124917, -0.338921, -0.932485,
		-0.675694, -0.659149, 0.330091,
		-0.726522, 0.671309, -0.146668,
		31.889503, 36.175617, 44.346901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923420, 35.432259, 43.888062>,  <32.398067, 35.705700, 44.449566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923420, 35.432259, 43.888062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.824312, 35.818951, 43.913521>,  <31.764847, 36.050964, 43.928799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.824312, 35.818951, 43.913521>,  <31.923420, 35.432259, 43.888062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824312, 35.818951, 43.913521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210536, 0.010402, -0.977531,
		-0.945666, -0.255603, 0.200954,
		-0.247770, 0.966726, 0.063650,
		31.749981, 36.108967, 43.932617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358242, 35.523270, 43.535069>,  <31.923420, 35.432259, 43.888062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358242, 35.523270, 43.535069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.498487, 35.897606, 43.549339>,  <31.582634, 36.122208, 43.557903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.498487, 35.897606, 43.549339>,  <31.358242, 35.523270, 43.535069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498487, 35.897606, 43.549339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177645, 0.103863, -0.978598,
		-0.919517, 0.336772, 0.202663,
		0.350614, 0.935840, 0.035679,
		31.603672, 36.178356, 43.560043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801577, 35.953724, 43.129513>,  <31.358242, 35.523270, 43.535069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801577, 35.953724, 43.129513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.157364, 36.136395, 43.136337>,  <31.370836, 36.245998, 43.140430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.157364, 36.136395, 43.136337>,  <30.801577, 35.953724, 43.129513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157364, 36.136395, 43.136337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021904, -0.005318, -0.999746,
		-0.456472, 0.889616, -0.014734,
		0.889468, 0.456679, 0.017058,
		31.424204, 36.273399, 43.141457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756628, 36.413769, 42.658951>,  <30.801577, 35.953724, 43.129513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756628, 36.413769, 42.658951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.155035, 36.387745, 42.683342>,  <31.394079, 36.372131, 42.697975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.155035, 36.387745, 42.683342>,  <30.756628, 36.413769, 42.658951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155035, 36.387745, 42.683342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079257, 0.332606, -0.939729,
		0.040857, 0.940819, 0.336438,
		0.996017, -0.065059, 0.060977,
		31.453840, 36.368229, 42.701633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927502, 37.027496, 42.502899>,  <30.756628, 36.413769, 42.658951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927502, 37.027496, 42.502899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.243944, 36.792938, 42.433285>,  <31.433809, 36.652203, 42.391518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.243944, 36.792938, 42.433285>,  <30.927502, 37.027496, 42.502899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243944, 36.792938, 42.433285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024338, 0.314469, -0.948956,
		0.611194, 0.746490, 0.263050,
		0.791107, -0.586398, -0.174034,
		31.481276, 36.617020, 42.381073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382177, 37.341629, 42.028351>,  <30.927502, 37.027496, 42.502899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382177, 37.341629, 42.028351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.482119, 36.958336, 41.972679>,  <31.542084, 36.728359, 41.939278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.482119, 36.958336, 41.972679>,  <31.382177, 37.341629, 42.028351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482119, 36.958336, 41.972679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007042, 0.145528, -0.989329,
		0.968259, 0.246205, 0.043108,
		0.249852, -0.958230, -0.139175,
		31.557074, 36.670868, 41.930927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011486, 37.347366, 41.577286>,  <31.382177, 37.341629, 42.028351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011486, 37.347366, 41.577286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.810402, 37.001648, 41.570744>,  <31.689751, 36.794216, 41.566818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.810402, 37.001648, 41.570744>,  <32.011486, 37.347366, 41.577286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810402, 37.001648, 41.570744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062063, 0.054960, -0.996558,
		0.862222, -0.499968, -0.081270,
		-0.502713, -0.864298, -0.016359,
		31.659588, 36.742359, 41.565834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772789, 37.098141, 41.638500>,  <32.011486, 37.347366, 41.577286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772789, 37.098141, 41.638500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.109455, 37.312576, 41.612564>,  <33.311455, 37.441238, 41.597004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.109455, 37.312576, 41.612564>,  <32.772789, 37.098141, 41.638500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109455, 37.312576, 41.612564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086877, 0.252946, 0.963572,
		0.532960, -0.805375, 0.259470,
		0.841668, 0.536087, -0.064841,
		33.361958, 37.473404, 41.593113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106510, 37.044857, 42.300213>,  <32.772789, 37.098141, 41.638500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106510, 37.044857, 42.300213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.287464, 37.367756, 42.148582>,  <33.396038, 37.561493, 42.057606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.287464, 37.367756, 42.148582>,  <33.106510, 37.044857, 42.300213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287464, 37.367756, 42.148582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128664, 0.361536, 0.923438,
		0.882491, -0.466527, 0.059691,
		0.452389, 0.807245, -0.379077,
		33.423180, 37.609928, 42.034859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608143, 37.173809, 42.739319>,  <33.106510, 37.044857, 42.300213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608143, 37.173809, 42.739319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.562092, 37.522247, 42.548347>,  <33.534462, 37.731312, 42.433765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.562092, 37.522247, 42.548347>,  <33.608143, 37.173809, 42.739319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562092, 37.522247, 42.548347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184551, 0.491010, 0.851381,
		0.976057, 0.009904, -0.217288,
		-0.115123, 0.871098, -0.477426,
		33.527554, 37.783577, 42.405121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168858, 37.503002, 42.989235>,  <33.608143, 37.173809, 42.739319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168858, 37.503002, 42.989235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.898239, 37.753773, 42.834705>,  <33.735867, 37.904236, 42.741989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.898239, 37.753773, 42.834705>,  <34.168858, 37.503002, 42.989235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898239, 37.753773, 42.834705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045316, 0.559062, 0.827887,
		0.735002, 0.542600, -0.406642,
		-0.676549, 0.626925, -0.386323,
		33.695274, 37.941849, 42.718807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484119, 38.167244, 42.967537>,  <34.168858, 37.503002, 42.989235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484119, 38.167244, 42.967537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.084747, 38.175488, 42.988373>,  <33.845123, 38.180435, 43.000874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.084747, 38.175488, 42.988373>,  <34.484119, 38.167244, 42.967537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084747, 38.175488, 42.988373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055070, 0.531759, 0.845103,
		-0.010285, 0.846645, -0.532059,
		-0.998430, 0.020609, 0.052094,
		33.785217, 38.181671, 43.004002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328392, 38.798309, 43.332619>,  <34.484119, 38.167244, 42.967537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328392, 38.798309, 43.332619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.973442, 38.614044, 43.324963>,  <33.760471, 38.503487, 43.320370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.973442, 38.614044, 43.324963>,  <34.328392, 38.798309, 43.332619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973442, 38.614044, 43.324963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261208, 0.468098, 0.844189,
		-0.379925, 0.754107, -0.535704,
		-0.887370, -0.460659, -0.019137,
		33.707230, 38.475845, 43.319221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838444, 39.309231, 43.607391>,  <34.328392, 38.798309, 43.332619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838444, 39.309231, 43.607391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.645031, 38.961330, 43.646847>,  <33.528984, 38.752590, 43.670521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.645031, 38.961330, 43.646847>,  <33.838444, 39.309231, 43.607391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645031, 38.961330, 43.646847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368091, 0.304279, 0.878592,
		-0.794168, 0.388522, -0.467276,
		-0.483535, -0.869750, 0.098638,
		33.499969, 38.700405, 43.676437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201756, 39.523113, 43.816933>,  <33.838444, 39.309231, 43.607391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201756, 39.523113, 43.816933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.268402, 39.140602, 43.913078>,  <33.308392, 38.911095, 43.970768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.268402, 39.140602, 43.913078>,  <33.201756, 39.523113, 43.816933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268402, 39.140602, 43.913078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188289, 0.208433, 0.959741,
		-0.967877, -0.205169, -0.145327,
		0.166619, -0.956275, 0.240368,
		33.318386, 38.853718, 43.985188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617626, 39.373547, 44.189777>,  <33.201756, 39.523113, 43.816933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617626, 39.373547, 44.189777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.911732, 39.126148, 44.300671>,  <33.088196, 38.977711, 44.367207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.911732, 39.126148, 44.300671>,  <32.617626, 39.373547, 44.189777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911732, 39.126148, 44.300671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212071, 0.178557, 0.960804,
		-0.643754, -0.765233, 0.000120,
		0.735259, -0.618495, 0.277231,
		33.132309, 38.940601, 44.383839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454376, 39.220970, 44.849781>,  <32.617626, 39.373547, 44.189777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454376, 39.220970, 44.849781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.836380, 39.102345, 44.849419>,  <33.065582, 39.031170, 44.849201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.836380, 39.102345, 44.849419>,  <32.454376, 39.220970, 44.849781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836380, 39.102345, 44.849419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067443, 0.214211, 0.974456,
		-0.288798, -0.930678, 0.224575,
		0.955012, -0.296568, -0.000904,
		33.122883, 39.013374, 44.849148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523914, 38.621319, 45.412773>,  <32.454376, 39.220970, 44.849781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523914, 38.621319, 45.412773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.892673, 38.757797, 45.339355>,  <33.113930, 38.839684, 45.295307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.892673, 38.757797, 45.339355>,  <32.523914, 38.621319, 45.412773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892673, 38.757797, 45.339355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205558, -0.029197, 0.978209,
		0.328404, -0.939538, -0.097052,
		0.921898, 0.341198, -0.183542,
		33.169243, 38.860157, 45.284294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993114, 38.095860, 45.633488>,  <32.523914, 38.621319, 45.412773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993114, 38.095860, 45.633488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.156082, 38.460396, 45.657055>,  <33.253860, 38.679119, 45.671196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.156082, 38.460396, 45.657055>,  <32.993114, 38.095860, 45.633488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156082, 38.460396, 45.657055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320224, -0.202975, 0.925342,
		0.855260, -0.358133, -0.374528,
		0.407415, 0.911341, 0.058914,
		33.278305, 38.733799, 45.674728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689854, 37.919231, 45.891991>,  <32.993114, 38.095860, 45.633488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689854, 37.919231, 45.891991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.598934, 38.306904, 45.929970>,  <33.544380, 38.539509, 45.952759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.598934, 38.306904, 45.929970>,  <33.689854, 37.919231, 45.891991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598934, 38.306904, 45.929970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439844, 0.015187, 0.897946,
		0.868833, 0.245867, -0.429742,
		-0.227302, 0.969185, 0.094948,
		33.530743, 38.597660, 45.958454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229889, 38.083488, 46.198578>,  <33.689854, 37.919231, 45.891991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229889, 38.083488, 46.198578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.991772, 38.394489, 46.279690>,  <33.848904, 38.581089, 46.328358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.991772, 38.394489, 46.279690>,  <34.229889, 38.083488, 46.198578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991772, 38.394489, 46.279690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174295, -0.121411, 0.977180,
		0.784379, 0.617049, -0.063240,
		-0.595290, 0.777502, 0.202781,
		33.813183, 38.627739, 46.340523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868984, 38.362091, 45.976433>,  <34.229889, 38.083488, 46.198578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868984, 38.362091, 45.976433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.247738, 38.234196, 45.962669>,  <35.474991, 38.157459, 45.954411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.247738, 38.234196, 45.962669>,  <34.868984, 38.362091, 45.976433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247738, 38.234196, 45.962669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008960, 0.133187, -0.991050,
		0.321461, 0.938098, 0.128977,
		0.946880, -0.319740, -0.034410,
		35.531803, 38.138275, 45.952347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229404, 38.768948, 45.474907>,  <34.868984, 38.362091, 45.976433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229404, 38.768948, 45.474907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.432743, 38.427166, 45.517769>,  <35.554749, 38.222095, 45.543484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.432743, 38.427166, 45.517769>,  <35.229404, 38.768948, 45.474907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432743, 38.427166, 45.517769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211028, 0.002972, -0.977476,
		0.834894, 0.519512, 0.181825,
		0.508350, -0.854458, 0.107150,
		35.585247, 38.170830, 45.549915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864079, 38.860317, 45.059341>,  <35.229404, 38.768948, 45.474907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864079, 38.860317, 45.059341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.788334, 38.469189, 45.095131>,  <35.742886, 38.234512, 45.116604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.788334, 38.469189, 45.095131>,  <35.864079, 38.860317, 45.059341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788334, 38.469189, 45.095131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134089, -0.116019, -0.984154,
		0.972708, -0.174366, 0.153085,
		-0.189364, -0.977822, 0.089472,
		35.731525, 38.175842, 45.121971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447559, 38.405426, 44.728550>,  <35.864079, 38.860317, 45.059341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447559, 38.405426, 44.728550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.156597, 38.131500, 44.711075>,  <35.982021, 37.967144, 44.700592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.156597, 38.131500, 44.711075>,  <36.447559, 38.405426, 44.728550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156597, 38.131500, 44.711075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331747, -0.295222, -0.895984,
		0.600690, -0.666234, 0.441932,
		-0.727403, -0.684819, -0.043684,
		35.938377, 37.926056, 44.697971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799095, 37.856846, 44.565605>,  <36.447559, 38.405426, 44.728550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799095, 37.856846, 44.565605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.414825, 37.767429, 44.499718>,  <36.184265, 37.713779, 44.460186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.414825, 37.767429, 44.499718>,  <36.799095, 37.856846, 44.565605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414825, 37.767429, 44.499718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257147, -0.492400, -0.831516,
		0.104775, -0.841173, 0.530520,
		-0.960676, -0.223543, -0.164714,
		36.126621, 37.700367, 44.450302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786640, 37.151596, 44.440498>,  <36.799095, 37.856846, 44.565605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786640, 37.151596, 44.440498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.439964, 37.280815, 44.288448>,  <36.231960, 37.358349, 44.197220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.439964, 37.280815, 44.288448>,  <36.786640, 37.151596, 44.440498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439964, 37.280815, 44.288448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305434, -0.258822, -0.916363,
		-0.394417, -0.910301, 0.125647,
		-0.866687, 0.323052, -0.380121,
		36.179958, 37.377731, 44.174412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579773, 36.646580, 44.043968>,  <36.786640, 37.151596, 44.440498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579773, 36.646580, 44.043968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.369648, 36.962585, 43.917519>,  <36.243572, 37.152187, 43.841648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.369648, 36.962585, 43.917519>,  <36.579773, 36.646580, 44.043968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369648, 36.962585, 43.917519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178776, -0.260749, -0.948709,
		-0.831918, -0.554882, -0.004261,
		-0.525311, 0.790010, -0.316122,
		36.212055, 37.199589, 43.822681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136112, 36.377369, 43.546249>,  <36.579773, 36.646580, 44.043968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136112, 36.377369, 43.546249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.169079, 36.767868, 43.466110>,  <36.188858, 37.002167, 43.418026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.169079, 36.767868, 43.466110>,  <36.136112, 36.377369, 43.546249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169079, 36.767868, 43.466110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105071, -0.208427, -0.972377,
		-0.991044, 0.059090, -0.119754,
		0.082418, 0.976251, -0.200352,
		36.193806, 37.060745, 43.406006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761097, 36.507542, 42.907337>,  <36.136112, 36.377369, 43.546249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761097, 36.507542, 42.907337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.988682, 36.836311, 42.918091>,  <36.125233, 37.033573, 42.924541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.988682, 36.836311, 42.918091>,  <35.761097, 36.507542, 42.907337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988682, 36.836311, 42.918091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206799, -0.111363, -0.972025,
		-0.795939, 0.558602, -0.233335,
		0.568960, 0.821926, 0.026881,
		36.159370, 37.082890, 42.926155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523964, 36.982410, 42.336540>,  <35.761097, 36.507542, 42.907337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523964, 36.982410, 42.336540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.909492, 37.058620, 42.411106>,  <36.140808, 37.104347, 42.455845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.909492, 37.058620, 42.411106>,  <35.523964, 36.982410, 42.336540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909492, 37.058620, 42.411106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209048, -0.106388, -0.972101,
		-0.165375, 0.975901, -0.142367,
		0.963821, 0.190522, 0.186416,
		36.198639, 37.115776, 42.467030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642071, 37.349575, 41.754040>,  <35.523964, 36.982410, 42.336540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642071, 37.349575, 41.754040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.990818, 37.251556, 41.923653>,  <36.200066, 37.192745, 42.025421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.990818, 37.251556, 41.923653>,  <35.642071, 37.349575, 41.754040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990818, 37.251556, 41.923653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422029, -0.063350, -0.904366,
		0.248477, 0.967439, 0.048185,
		0.871866, -0.245050, 0.424028,
		36.252377, 37.178043, 42.050861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127102, 37.750519, 41.405701>,  <35.642071, 37.349575, 41.754040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127102, 37.750519, 41.405701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.374538, 37.481762, 41.568623>,  <36.523003, 37.320507, 41.666374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.374538, 37.481762, 41.568623>,  <36.127102, 37.750519, 41.405701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374538, 37.481762, 41.568623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584051, 0.046459, -0.810386,
		0.525572, 0.739188, 0.421160,
		0.618594, -0.671895, 0.407306,
		36.560116, 37.280193, 41.690815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842857, 38.123867, 41.472881>,  <36.127102, 37.750519, 41.405701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842857, 38.123867, 41.472881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.880375, 37.727531, 41.434029>,  <36.902885, 37.489731, 41.410717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.880375, 37.727531, 41.434029>,  <36.842857, 38.123867, 41.472881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880375, 37.727531, 41.434029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677565, 0.135008, -0.722965,
		0.729458, 0.001995, 0.684023,
		0.093791, -0.990842, -0.097131,
		36.908512, 37.430279, 41.404888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511173, 38.063049, 41.259525>,  <36.842857, 38.123867, 41.472881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511173, 38.063049, 41.259525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.382565, 37.687325, 41.211655>,  <37.305397, 37.461891, 41.182934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.382565, 37.687325, 41.211655>,  <37.511173, 38.063049, 41.259525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382565, 37.687325, 41.211655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704888, -0.153038, -0.692612,
		0.632261, -0.307050, 0.711313,
		-0.321525, -0.939308, -0.119676,
		37.286106, 37.405533, 41.175751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.058985, 33.681072, 27.177372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.961760, 33.317764, 27.041159>,  <27.903425, 33.099777, 26.959431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.961760, 33.317764, 27.041159>,  <28.058985, 33.681072, 27.177372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961760, 33.317764, 27.041159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444411, -0.207777, 0.871394,
		-0.862218, 0.363139, -0.353144,
		-0.243062, -0.908272, -0.340532,
		27.888842, 33.045284, 26.938999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234253, 33.541283, 27.225599>,  <28.058985, 33.681072, 27.177372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234253, 33.541283, 27.225599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.450180, 33.209721, 27.284273>,  <27.579737, 33.010784, 27.319477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.450180, 33.209721, 27.284273>,  <27.234253, 33.541283, 27.225599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450180, 33.209721, 27.284273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419072, -0.113503, 0.900831,
		-0.730051, -0.547758, -0.408640,
		0.539819, -0.828902, 0.146687,
		27.612125, 32.961048, 27.328279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745613, 32.915516, 27.435959>,  <27.234253, 33.541283, 27.225599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745613, 32.915516, 27.435959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.114225, 32.819641, 27.558157>,  <27.335394, 32.762115, 27.631475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.114225, 32.819641, 27.558157>,  <26.745613, 32.915516, 27.435959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114225, 32.819641, 27.558157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354863, -0.200451, 0.913177,
		-0.157644, -0.949930, -0.269780,
		0.921532, -0.239692, 0.305495,
		27.390684, 32.747734, 27.649805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775362, 32.226051, 27.709188>,  <26.745613, 32.915516, 27.435959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775362, 32.226051, 27.709188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.050194, 32.452225, 27.891706>,  <27.215094, 32.587929, 28.001217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.050194, 32.452225, 27.891706>,  <26.775362, 32.226051, 27.709188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050194, 32.452225, 27.891706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485523, -0.109910, 0.867287,
		0.540544, -0.817439, 0.199013,
		0.687081, 0.565433, 0.456297,
		27.256317, 32.621853, 28.028595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963600, 31.892128, 28.285292>,  <26.775362, 32.226051, 27.709188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963600, 31.892128, 28.285292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.086861, 32.264320, 28.364534>,  <27.160818, 32.487637, 28.412081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.086861, 32.264320, 28.364534>,  <26.963600, 31.892128, 28.285292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.086861, 32.264320, 28.364534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202092, -0.139462, 0.969386,
		0.929624, -0.338755, 0.145067,
		0.308153, 0.930481, 0.198107,
		27.179306, 32.543465, 28.423967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154949, 31.771976, 28.956615>,  <26.963600, 31.892128, 28.285292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154949, 31.771976, 28.956615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.129843, 32.169258, 28.917414>,  <27.114779, 32.407627, 28.893892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.129843, 32.169258, 28.917414>,  <27.154949, 31.771976, 28.956615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129843, 32.169258, 28.917414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222502, 0.081800, 0.971495,
		0.972910, 0.082783, 0.215855,
		-0.062766, 0.993205, -0.098003,
		27.111013, 32.467220, 28.888012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551756, 32.098751, 29.526802>,  <27.154949, 31.771976, 28.956615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551756, 32.098751, 29.526802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.274376, 32.362072, 29.409660>,  <27.107948, 32.520065, 29.339375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.274376, 32.362072, 29.409660>,  <27.551756, 32.098751, 29.526802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.274376, 32.362072, 29.409660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387267, 0.002209, 0.921965,
		0.607581, 0.752748, 0.253408,
		-0.693448, 0.658305, -0.292856,
		27.066341, 32.559563, 29.321804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507448, 32.487789, 30.035667>,  <27.551756, 32.098751, 29.526802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507448, 32.487789, 30.035667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.178423, 32.594963, 29.835030>,  <26.981009, 32.659267, 29.714647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.178423, 32.594963, 29.835030>,  <27.507448, 32.487789, 30.035667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178423, 32.594963, 29.835030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506788, 0.054765, 0.860330,
		0.257984, 0.961878, 0.090740,
		-0.822563, 0.267937, -0.501597,
		26.931654, 32.675343, 29.684551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287569, 33.136429, 30.414509>,  <27.507448, 32.487789, 30.035667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287569, 33.136429, 30.414509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.997080, 32.958900, 30.204510>,  <26.822786, 32.852383, 30.078510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.997080, 32.958900, 30.204510>,  <27.287569, 33.136429, 30.414509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.997080, 32.958900, 30.204510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598285, 0.031876, 0.800649,
		-0.338612, 0.895547, -0.288682,
		-0.726221, -0.443824, -0.524999,
		26.779213, 32.825752, 30.047010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687662, 33.433899, 30.572954>,  <27.287569, 33.136429, 30.414509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687662, 33.433899, 30.572954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.536343, 33.083466, 30.453373>,  <26.445551, 32.873207, 30.381624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.536343, 33.083466, 30.453373>,  <26.687662, 33.433899, 30.572954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536343, 33.083466, 30.453373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615179, -0.003386, 0.788380,
		-0.691697, 0.482152, -0.537666,
		-0.378298, -0.876082, -0.298952,
		26.422853, 32.820641, 30.363688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982382, 33.528114, 30.486139>,  <26.687662, 33.433899, 30.572954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982382, 33.528114, 30.486139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.061838, 33.139446, 30.537359>,  <26.109512, 32.906246, 30.568090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.061838, 33.139446, 30.537359>,  <25.982382, 33.528114, 30.486139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061838, 33.139446, 30.537359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595985, -0.016039, 0.802835,
		-0.778038, -0.235794, -0.582287,
		0.198643, -0.971671, 0.128050,
		26.121431, 32.847946, 30.575775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355734, 33.288025, 30.658485>,  <25.982382, 33.528114, 30.486139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355734, 33.288025, 30.658485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.618002, 33.004417, 30.762320>,  <25.775362, 32.834251, 30.824619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.618002, 33.004417, 30.762320>,  <25.355734, 33.288025, 30.658485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618002, 33.004417, 30.762320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491433, -0.139730, 0.859633,
		-0.573228, -0.691203, -0.440054,
		0.655670, -0.709023, 0.259583,
		25.814703, 32.791710, 30.840195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.016270, 32.791924, 30.977331>,  <25.355734, 33.288025, 30.658485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.016270, 32.791924, 30.977331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.388424, 32.701595, 31.092836>,  <25.611717, 32.647400, 31.162140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.388424, 32.701595, 31.092836>,  <25.016270, 32.791924, 30.977331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.388424, 32.701595, 31.092836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332211, -0.186409, 0.924601,
		-0.154964, -0.956168, -0.248452,
		0.930388, -0.225819, 0.288763,
		25.667540, 32.633850, 31.179464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.871140, 32.416042, 31.440802>,  <25.016270, 32.791924, 30.977331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.871140, 32.416042, 31.440802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.255573, 32.490192, 31.522730>,  <25.486235, 32.534683, 31.571886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.255573, 32.490192, 31.522730>,  <24.871140, 32.416042, 31.440802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.255573, 32.490192, 31.522730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202845, -0.029773, 0.978758,
		0.187534, -0.982217, 0.008988,
		0.961085, 0.185374, 0.204821,
		25.543900, 32.545803, 31.584177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199251, 31.934332, 31.983030>,  <24.871140, 32.416042, 31.440802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.199251, 31.934332, 31.983030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.371239, 32.295464, 31.981085>,  <25.474432, 32.512142, 31.979918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.371239, 32.295464, 31.981085>,  <25.199251, 31.934332, 31.983030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.371239, 32.295464, 31.981085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400764, 0.195685, 0.895040,
		0.809021, -0.382889, 0.445960,
		0.429969, 0.902831, -0.004865,
		25.500229, 32.566311, 31.979626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.365049, 31.959358, 32.670666>,  <25.199251, 31.934332, 31.983030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.365049, 31.959358, 32.670666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.466082, 32.320892, 32.532513>,  <25.526701, 32.537811, 32.449623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.466082, 32.320892, 32.532513>,  <25.365049, 31.959358, 32.670666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.466082, 32.320892, 32.532513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144965, 0.388273, 0.910071,
		0.956654, -0.179800, 0.229095,
		0.252582, 0.903834, -0.345378,
		25.541857, 32.592041, 32.428898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.762094, 32.192375, 33.150597>,  <25.365049, 31.959358, 32.670666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.762094, 32.192375, 33.150597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.631142, 32.523212, 32.967846>,  <25.552570, 32.721714, 32.858196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.631142, 32.523212, 32.967846>,  <25.762094, 32.192375, 33.150597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631142, 32.523212, 32.967846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224066, 0.401779, 0.887901,
		0.917940, 0.393056, 0.053787,
		-0.327384, 0.827092, -0.456880,
		25.532927, 32.771339, 32.830784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090849, 32.842422, 33.405880>,  <25.762094, 32.192375, 33.150597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090849, 32.842422, 33.405880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.746376, 32.984715, 33.260651>,  <25.539692, 33.070087, 33.173512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.746376, 32.984715, 33.260651>,  <26.090849, 32.842422, 33.405880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.746376, 32.984715, 33.260651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183430, 0.448672, 0.874670,
		0.474044, 0.819849, -0.321138,
		-0.861183, 0.355726, -0.363075,
		25.488022, 33.091431, 33.151730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022112, 33.554249, 33.520638>,  <26.090849, 32.842422, 33.405880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022112, 33.554249, 33.520638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.637302, 33.447487, 33.497749>,  <25.406418, 33.383430, 33.484016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.637302, 33.447487, 33.497749>,  <26.022112, 33.554249, 33.520638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637302, 33.447487, 33.497749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232762, 0.692571, 0.682765,
		-0.142607, 0.670153, -0.728394,
		-0.962021, -0.266909, -0.057221,
		25.348696, 33.367413, 33.480583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.523893, 34.220722, 33.375679>,  <26.022112, 33.554249, 33.520638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.523893, 34.220722, 33.375679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.318893, 33.913857, 33.529976>,  <25.195894, 33.729736, 33.622555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.318893, 33.913857, 33.529976>,  <25.523893, 34.220722, 33.375679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.318893, 33.913857, 33.529976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525948, 0.635547, 0.565207,
		-0.678766, 0.086789, -0.729208,
		-0.512500, -0.767169, 0.385741,
		25.165144, 33.683704, 33.645699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700613, 34.970863, 33.461826>,  <25.523893, 34.220722, 33.375679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700613, 34.970863, 33.461826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.055584, 34.938927, 33.643417>,  <26.268566, 34.919765, 33.752373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.055584, 34.938927, 33.643417>,  <25.700613, 34.970863, 33.461826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055584, 34.938927, 33.643417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459732, 0.224852, -0.859120,
		-0.033483, 0.971116, 0.236246,
		0.887426, -0.079844, 0.453982,
		26.321812, 34.914974, 33.779613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977648, 35.511387, 33.208145>,  <25.700613, 34.970863, 33.461826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977648, 35.511387, 33.208145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.266645, 35.281960, 33.362560>,  <26.440044, 35.144302, 33.455208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.266645, 35.281960, 33.362560>,  <25.977648, 35.511387, 33.208145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.266645, 35.281960, 33.362560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564310, 0.166629, -0.808572,
		0.399446, 0.802032, 0.444059,
		0.722493, -0.573568, 0.386035,
		26.483393, 35.109890, 33.478371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513943, 35.925243, 33.097599>,  <25.977648, 35.511387, 33.208145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513943, 35.925243, 33.097599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.652100, 35.551083, 33.127876>,  <26.734993, 35.326588, 33.146042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.652100, 35.551083, 33.127876>,  <26.513943, 35.925243, 33.097599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652100, 35.551083, 33.127876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609105, 0.162090, -0.776349,
		0.713929, 0.314247, 0.625743,
		0.345392, -0.935401, 0.075689,
		26.755716, 35.270462, 33.150581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286261, 35.990009, 33.029102>,  <26.513943, 35.925243, 33.097599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286261, 35.990009, 33.029102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.206593, 35.605850, 32.951168>,  <27.158791, 35.375355, 32.904408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.206593, 35.605850, 32.951168>,  <27.286261, 35.990009, 33.029102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206593, 35.605850, 32.951168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746531, -0.019899, -0.665053,
		0.634841, -0.277911, 0.720932,
		-0.199171, -0.960401, -0.194836,
		27.146841, 35.317730, 32.892715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886999, 35.771114, 32.880444>,  <27.286261, 35.990009, 33.029102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886999, 35.771114, 32.880444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.632187, 35.489536, 32.754807>,  <27.479300, 35.320591, 32.679424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.632187, 35.489536, 32.754807>,  <27.886999, 35.771114, 32.880444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632187, 35.489536, 32.754807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672354, -0.308132, -0.673049,
		0.377004, -0.639937, 0.669588,
		-0.637031, -0.703942, -0.314097,
		27.441078, 35.278355, 32.660576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289375, 35.167694, 32.899303>,  <27.886999, 35.771114, 32.880444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289375, 35.167694, 32.899303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.978054, 35.115269, 32.653683>,  <27.791262, 35.083813, 32.506310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.978054, 35.115269, 32.653683>,  <28.289375, 35.167694, 32.899303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978054, 35.115269, 32.653683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625127, -0.253350, -0.738261,
		-0.058811, -0.958455, 0.279116,
		-0.778304, -0.131065, -0.614055,
		27.744562, 35.075951, 32.469467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.442741, 34.565632, 32.437458>,  <28.289375, 35.167694, 32.899303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.442741, 34.565632, 32.437458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.172201, 34.784756, 32.240501>,  <28.009876, 34.916229, 32.122326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.172201, 34.784756, 32.240501>,  <28.442741, 34.565632, 32.437458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172201, 34.784756, 32.240501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509462, -0.134877, -0.849857,
		-0.531975, -0.825657, -0.187866,
		-0.676351, 0.547814, -0.492392,
		27.969296, 34.949100, 32.092785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199707, 34.161392, 31.845373>,  <28.442741, 34.565632, 32.437458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199707, 34.161392, 31.845373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123886, 34.545662, 31.764204>,  <28.078394, 34.776222, 31.715502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.123886, 34.545662, 31.764204>,  <28.199707, 34.161392, 31.845373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123886, 34.545662, 31.764204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545102, -0.068933, -0.835531,
		-0.816660, -0.268992, -0.510598,
		-0.189554, 0.960672, -0.202923,
		28.067020, 34.833862, 31.703327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880848, 34.075603, 31.176144>,  <28.199707, 34.161392, 31.845373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880848, 34.075603, 31.176144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018463, 34.445866, 31.239136>,  <28.101032, 34.668022, 31.276932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018463, 34.445866, 31.239136>,  <27.880848, 34.075603, 31.176144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018463, 34.445866, 31.239136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139193, 0.115587, -0.983496,
		-0.928582, 0.360279, -0.089079,
		0.344037, 0.925656, 0.157480,
		28.121674, 34.723564, 31.286381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584402, 34.424572, 30.587622>,  <27.880848, 34.075603, 31.176144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584402, 34.424572, 30.587622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.887062, 34.647953, 30.723629>,  <28.068657, 34.781982, 30.805233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.887062, 34.647953, 30.723629>,  <27.584402, 34.424572, 30.587622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887062, 34.647953, 30.723629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339204, 0.109293, -0.934343,
		-0.558948, 0.822304, -0.106733,
		0.756649, 0.558454, 0.340018,
		28.114058, 34.815491, 30.825634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643906, 35.103199, 30.189699>,  <27.584402, 34.424572, 30.587622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643906, 35.103199, 30.189699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.004282, 35.047821, 30.354204>,  <28.220509, 35.014595, 30.452908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.004282, 35.047821, 30.354204>,  <27.643906, 35.103199, 30.189699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004282, 35.047821, 30.354204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428722, 0.137435, -0.892921,
		0.067100, 0.980787, 0.183176,
		0.900941, -0.138446, 0.411264,
		28.274565, 35.006287, 30.477583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959101, 35.564896, 29.871828>,  <27.643906, 35.103199, 30.189699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959101, 35.564896, 29.871828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.269779, 35.351208, 30.005308>,  <28.456186, 35.222996, 30.085396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.269779, 35.351208, 30.005308>,  <27.959101, 35.564896, 29.871828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269779, 35.351208, 30.005308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529756, 0.267437, -0.804882,
		0.340738, 0.801929, 0.490722,
		0.776696, -0.534217, 0.333701,
		28.502789, 35.190941, 30.105419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568125, 35.964077, 29.750792>,  <27.959101, 35.564896, 29.871828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568125, 35.964077, 29.750792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.702579, 35.589413, 29.790144>,  <28.783253, 35.364613, 29.813755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.702579, 35.589413, 29.790144>,  <28.568125, 35.964077, 29.750792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702579, 35.589413, 29.790144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612213, 0.137924, -0.778571,
		0.715687, 0.321936, 0.619797,
		0.336135, -0.936661, 0.098383,
		28.803421, 35.308414, 29.819658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322382, 35.941994, 29.814886>,  <28.568125, 35.964077, 29.750792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322382, 35.941994, 29.814886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.185299, 35.601421, 29.656078>,  <29.103050, 35.397079, 29.560793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.185299, 35.601421, 29.656078>,  <29.322382, 35.941994, 29.814886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185299, 35.601421, 29.656078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634788, 0.101664, -0.765969,
		0.692529, -0.514526, 0.505635,
		-0.342707, -0.851426, -0.397020,
		29.082487, 35.345993, 29.536972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887501, 35.761402, 29.371862>,  <29.322382, 35.941994, 29.814886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887501, 35.761402, 29.371862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.592693, 35.518070, 29.254059>,  <29.415810, 35.372070, 29.183376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.592693, 35.518070, 29.254059>,  <29.887501, 35.761402, 29.371862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592693, 35.518070, 29.254059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363814, 0.010152, -0.931416,
		0.569601, -0.793617, 0.213838,
		-0.737017, -0.608334, -0.294511,
		29.371588, 35.335571, 29.165705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338976, 35.369949, 29.048313>,  <29.887501, 35.761402, 29.371862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338976, 35.369949, 29.048313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.969065, 35.268955, 28.934443>,  <29.747118, 35.208359, 28.866121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.969065, 35.268955, 28.934443>,  <30.338976, 35.369949, 29.048313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969065, 35.268955, 28.934443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319412, -0.108510, -0.941383,
		0.206792, -0.961498, 0.180994,
		-0.924777, -0.252482, -0.284675,
		29.691631, 35.193211, 28.849039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363693, 34.671913, 28.671181>,  <30.338976, 35.369949, 29.048313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363693, 34.671913, 28.671181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.040218, 34.876232, 28.554487>,  <29.846134, 34.998825, 28.484472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.040218, 34.876232, 28.554487>,  <30.363693, 34.671913, 28.671181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040218, 34.876232, 28.554487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303036, -0.063311, -0.950874,
		-0.504177, -0.857365, -0.103592,
		-0.808687, 0.510801, -0.291732,
		29.797613, 35.029472, 28.466967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046371, 34.335831, 28.145798>,  <30.363693, 34.671913, 28.671181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046371, 34.335831, 28.145798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.935535, 34.715534, 28.086300>,  <29.869034, 34.943356, 28.050602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.935535, 34.715534, 28.086300>,  <30.046371, 34.335831, 28.145798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935535, 34.715534, 28.086300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367441, -0.038352, -0.929255,
		-0.887811, -0.312141, -0.338171,
		-0.277089, 0.949261, -0.148743,
		29.852409, 35.000313, 28.041677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944468, 34.322308, 27.382988>,  <30.046371, 34.335831, 28.145798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944468, 34.322308, 27.382988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.919046, 34.712593, 27.466846>,  <29.903793, 34.946762, 27.517162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.919046, 34.712593, 27.466846>,  <29.944468, 34.322308, 27.382988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919046, 34.712593, 27.466846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333810, 0.218754, -0.916906,
		-0.940496, 0.011712, -0.339604,
		-0.063551, 0.975710, 0.209647,
		29.899981, 35.005306, 27.529741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323816, 34.599453, 26.965382>,  <29.944468, 34.322308, 27.382988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323816, 34.599453, 26.965382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.577633, 34.895164, 27.055565>,  <29.729923, 35.072590, 27.109674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.577633, 34.895164, 27.055565>,  <29.323816, 34.599453, 26.965382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577633, 34.895164, 27.055565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197836, 0.126630, -0.972021,
		-0.747141, 0.661391, -0.065903,
		0.634540, 0.739275, 0.225458,
		29.767996, 35.116947, 27.123201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081690, 35.169983, 26.522364>,  <29.323816, 34.599453, 26.965382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081690, 35.169983, 26.522364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461817, 35.165836, 26.646811>,  <29.689892, 35.163349, 26.721478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461817, 35.165836, 26.646811>,  <29.081690, 35.169983, 26.522364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461817, 35.165836, 26.646811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311271, 0.042123, -0.949387,
		-0.003259, 0.999058, 0.043258,
		0.950315, -0.010371, 0.311116,
		29.746912, 35.162724, 26.740145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456604, 35.520390, 25.958416>,  <29.081690, 35.169983, 26.522364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456604, 35.520390, 25.958416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.477730, 35.914139, 25.891218>,  <29.490406, 36.150387, 25.850901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.477730, 35.914139, 25.891218>,  <29.456604, 35.520390, 25.958416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477730, 35.914139, 25.891218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286049, -0.146265, -0.946986,
		-0.956758, 0.098070, 0.273853,
		0.052816, 0.984372, -0.167993,
		29.493574, 36.209450, 25.840820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.651707, 34.926472, 46.428291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.341923, 34.779171, 46.634052>,  <36.156052, 34.690792, 46.757511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.341923, 34.779171, 46.634052>,  <36.651707, 34.926472, 46.428291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341923, 34.779171, 46.634052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446682, 0.257504, 0.856835,
		-0.447989, 0.893356, -0.034936,
		-0.774455, -0.368247, 0.514405,
		36.109585, 34.668697, 46.788372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548279, 35.350365, 46.926971>,  <36.651707, 34.926472, 46.428291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548279, 35.350365, 46.926971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.315887, 35.064381, 47.082558>,  <36.176453, 34.892788, 47.175907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.315887, 35.064381, 47.082558>,  <36.548279, 35.350365, 46.926971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315887, 35.064381, 47.082558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260534, 0.289383, 0.921075,
		-0.771095, 0.636462, 0.018148,
		-0.580978, -0.714964, 0.388962,
		36.141594, 34.849892, 47.199245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215473, 35.700485, 47.485062>,  <36.548279, 35.350365, 46.926971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215473, 35.700485, 47.485062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176151, 35.307045, 47.545536>,  <36.152557, 35.070980, 47.581821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176151, 35.307045, 47.545536>,  <36.215473, 35.700485, 47.485062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176151, 35.307045, 47.545536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102090, 0.141155, 0.984709,
		-0.989906, 0.112235, 0.086541,
		-0.098303, -0.983605, 0.151188,
		36.146660, 35.011963, 47.590893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876125, 35.665085, 48.114330>,  <36.215473, 35.700485, 47.485062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876125, 35.665085, 48.114330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.014469, 35.290779, 48.086853>,  <36.097477, 35.066196, 48.070366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.014469, 35.290779, 48.086853>,  <35.876125, 35.665085, 48.114330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014469, 35.290779, 48.086853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161969, -0.012567, 0.986716,
		-0.924200, -0.352394, 0.147218,
		0.345863, -0.935767, -0.068691,
		36.118229, 35.010048, 48.066246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693523, 35.261333, 48.755779>,  <35.876125, 35.665085, 48.114330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693523, 35.261333, 48.755779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.982342, 35.023151, 48.614876>,  <36.155632, 34.880241, 48.530334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.982342, 35.023151, 48.614876>,  <35.693523, 35.261333, 48.755779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982342, 35.023151, 48.614876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203277, -0.304094, 0.930702,
		-0.661308, -0.743616, -0.098528,
		0.722046, -0.595452, -0.352260,
		36.198956, 34.844517, 48.509197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545856, 34.592503, 49.048122>,  <35.693523, 35.261333, 48.755779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545856, 34.592503, 49.048122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.929268, 34.633739, 48.941849>,  <36.159317, 34.658482, 48.878082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.929268, 34.633739, 48.941849>,  <35.545856, 34.592503, 49.048122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929268, 34.633739, 48.941849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279203, -0.152853, 0.947988,
		0.057115, -0.982857, -0.175297,
		0.958532, 0.103088, -0.265686,
		36.216827, 34.664665, 48.862144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906567, 33.996689, 49.376228>,  <35.545856, 34.592503, 49.048122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906567, 33.996689, 49.376228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.203907, 34.245541, 49.277931>,  <36.382309, 34.394852, 49.218952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.203907, 34.245541, 49.277931>,  <35.906567, 33.996689, 49.376228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203907, 34.245541, 49.277931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415008, -0.140826, 0.898853,
		0.524595, -0.770146, -0.362871,
		0.743349, 0.622129, -0.245740,
		36.426910, 34.432178, 49.204208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380238, 33.650433, 49.620014>,  <35.906567, 33.996689, 49.376228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380238, 33.650433, 49.620014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.548046, 34.010361, 49.572147>,  <36.648731, 34.226318, 49.543427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.548046, 34.010361, 49.572147>,  <36.380238, 33.650433, 49.620014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548046, 34.010361, 49.572147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529201, -0.135330, 0.837635,
		0.737529, -0.414733, -0.532961,
		0.419520, 0.899824, -0.119667,
		36.673901, 34.280308, 49.536247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050747, 33.546246, 49.687923>,  <36.380238, 33.650433, 49.620014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050747, 33.546246, 49.687923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.010708, 33.934265, 49.776463>,  <36.986687, 34.167076, 49.829586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.010708, 33.934265, 49.776463>,  <37.050747, 33.546246, 49.687923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010708, 33.934265, 49.776463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600028, -0.118610, 0.791137,
		0.793692, 0.212004, -0.570181,
		-0.100095, 0.970044, 0.221348,
		36.980679, 34.225277, 49.842869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758232, 33.857296, 49.984383>,  <37.050747, 33.546246, 49.687923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758232, 33.857296, 49.984383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.452091, 34.095192, 50.082790>,  <37.268406, 34.237930, 50.141834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.452091, 34.095192, 50.082790>,  <37.758232, 33.857296, 49.984383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452091, 34.095192, 50.082790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333218, 0.039123, 0.942038,
		0.550641, 0.802967, -0.228120,
		-0.765350, 0.594738, 0.246020,
		37.222485, 34.273613, 50.156597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051491, 34.328709, 50.467472>,  <37.758232, 33.857296, 49.984383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051491, 34.328709, 50.467472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.656136, 34.339180, 50.527340>,  <37.418922, 34.345463, 50.563263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.656136, 34.339180, 50.527340>,  <38.051491, 34.328709, 50.467472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656136, 34.339180, 50.527340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147942, -0.058782, 0.987248,
		0.034647, 0.997928, 0.054226,
		-0.988389, 0.026183, 0.149672,
		37.359619, 34.347034, 50.572243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994770, 34.799366, 50.917408>,  <38.051491, 34.328709, 50.467472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994770, 34.799366, 50.917408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.662632, 34.580063, 50.957298>,  <37.463348, 34.448483, 50.981232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.662632, 34.580063, 50.957298>,  <37.994770, 34.799366, 50.917408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662632, 34.580063, 50.957298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131697, -0.019173, 0.991105,
		-0.541468, 0.836090, 0.088124,
		-0.830342, -0.548257, 0.099729,
		37.413528, 34.415585, 50.987217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514030, 35.125015, 51.338142>,  <37.994770, 34.799366, 50.917408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514030, 35.125015, 51.338142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.483364, 34.727249, 51.367153>,  <37.464966, 34.488590, 51.384560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.483364, 34.727249, 51.367153>,  <37.514030, 35.125015, 51.338142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483364, 34.727249, 51.367153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055378, 0.076876, 0.995502,
		-0.995518, 0.072300, -0.060962,
		-0.076661, -0.994416, 0.072527,
		37.460365, 34.428925, 51.388912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489792, 35.970684, 51.474823>,  <37.514030, 35.125015, 51.338142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489792, 35.970684, 51.474823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105190, 36.020760, 51.572674>,  <36.874432, 36.050804, 51.631386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105190, 36.020760, 51.572674>,  <37.489792, 35.970684, 51.474823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105190, 36.020760, 51.572674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188773, 0.346025, -0.919038,
		-0.199698, -0.929836, -0.309072,
		-0.961502, 0.125186, 0.244629,
		36.816738, 36.058315, 51.646061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938702, 35.691864, 51.019646>,  <37.489792, 35.970684, 51.474823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938702, 35.691864, 51.019646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.863518, 36.047054, 51.187538>,  <36.818405, 36.260166, 51.288273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.863518, 36.047054, 51.187538>,  <36.938702, 35.691864, 51.019646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863518, 36.047054, 51.187538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234441, 0.374433, -0.897127,
		-0.953786, -0.267028, 0.137798,
		-0.187962, 0.887973, 0.419732,
		36.807129, 36.313446, 51.313457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243744, 35.796608, 50.743088>,  <36.938702, 35.691864, 51.019646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243744, 35.796608, 50.743088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.402649, 36.150860, 50.839287>,  <36.497993, 36.363411, 50.897007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.402649, 36.150860, 50.839287>,  <36.243744, 35.796608, 50.743088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402649, 36.150860, 50.839287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198908, 0.338929, -0.919545,
		-0.895890, 0.317464, 0.310803,
		0.397262, 0.885632, 0.240497,
		36.521828, 36.416550, 50.911434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760994, 36.396938, 50.511143>,  <36.243744, 35.796608, 50.743088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760994, 36.396938, 50.511143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.112812, 36.582703, 50.552559>,  <36.323902, 36.694160, 50.577408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.112812, 36.582703, 50.552559>,  <35.760994, 36.396938, 50.511143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112812, 36.582703, 50.552559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118699, 0.424893, -0.897428,
		-0.460770, 0.777039, 0.428839,
		0.879546, 0.464410, 0.103544,
		36.376675, 36.722027, 50.583622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704594, 37.069279, 50.475971>,  <35.760994, 36.396938, 50.511143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704594, 37.069279, 50.475971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.099056, 37.059853, 50.410320>,  <36.335735, 37.054195, 50.370930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.099056, 37.059853, 50.410320>,  <35.704594, 37.069279, 50.475971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099056, 37.059853, 50.410320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131758, 0.489555, -0.861961,
		0.100661, 0.871654, 0.479673,
		0.986158, -0.023565, -0.164126,
		36.394905, 37.052784, 50.361084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898521, 37.737736, 50.263901>,  <35.704594, 37.069279, 50.475971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898521, 37.737736, 50.263901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.194618, 37.504799, 50.129486>,  <36.372276, 37.365036, 50.048840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.194618, 37.504799, 50.129486>,  <35.898521, 37.737736, 50.263901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194618, 37.504799, 50.129486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113341, 0.384558, -0.916116,
		0.662721, 0.716232, 0.218661,
		0.740240, -0.582346, -0.336033,
		36.416691, 37.330093, 50.028675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261738, 38.135235, 49.724236>,  <35.898521, 37.737736, 50.263901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261738, 38.135235, 49.724236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.427242, 37.775585, 49.667133>,  <36.526543, 37.559795, 49.632874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.427242, 37.775585, 49.667133>,  <36.261738, 38.135235, 49.724236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427242, 37.775585, 49.667133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108702, 0.204475, -0.972817,
		0.903873, 0.386995, 0.182340,
		0.413759, -0.899125, -0.142752,
		36.551369, 37.505848, 49.624310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991009, 38.216667, 49.473442>,  <36.261738, 38.135235, 49.724236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991009, 38.216667, 49.473442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.832718, 37.868362, 49.356705>,  <36.737743, 37.659378, 49.286663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.832718, 37.868362, 49.356705>,  <36.991009, 38.216667, 49.473442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832718, 37.868362, 49.356705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120603, 0.265758, -0.956466,
		0.910415, -0.413697, -0.000152,
		-0.395728, -0.870763, -0.291843,
		36.714001, 37.607132, 49.269154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202911, 38.189259, 48.771908>,  <36.991009, 38.216667, 49.473442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202911, 38.189259, 48.771908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.901733, 37.926052, 48.775627>,  <36.721027, 37.768127, 48.777859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.901733, 37.926052, 48.775627>,  <37.202911, 38.189259, 48.771908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901733, 37.926052, 48.775627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172817, 0.184078, -0.967600,
		0.634984, -0.730159, -0.252318,
		-0.752948, -0.658015, 0.009297,
		36.675850, 37.728649, 48.778416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386955, 37.780945, 48.281681>,  <37.202911, 38.189259, 48.771908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386955, 37.780945, 48.281681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.994129, 37.712978, 48.314373>,  <36.758434, 37.672199, 48.333988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.994129, 37.712978, 48.314373>,  <37.386955, 37.780945, 48.281681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994129, 37.712978, 48.314373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071136, -0.067563, -0.995176,
		0.174618, -0.983140, 0.054264,
		-0.982063, -0.169916, 0.081735,
		36.699509, 37.662003, 48.338894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203583, 37.190525, 47.754761>,  <37.386955, 37.780945, 48.281681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203583, 37.190525, 47.754761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.857880, 37.373878, 47.837654>,  <36.650459, 37.483891, 47.887390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.857880, 37.373878, 47.837654>,  <37.203583, 37.190525, 47.754761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857880, 37.373878, 47.837654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182180, 0.098792, -0.978290,
		-0.468909, -0.883244, -0.001872,
		-0.864254, 0.458388, 0.207234,
		36.598602, 37.511395, 47.899826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721851, 37.011932, 47.306042>,  <37.203583, 37.190525, 47.754761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721851, 37.011932, 47.306042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.508900, 37.337315, 47.399727>,  <36.381130, 37.532543, 47.455940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.508900, 37.337315, 47.399727>,  <36.721851, 37.011932, 47.306042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508900, 37.337315, 47.399727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401253, 0.001126, -0.915966,
		-0.745364, -0.581622, 0.325803,
		-0.532379, 0.813458, 0.234217,
		36.349186, 37.581352, 47.469994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055019, 36.889481, 47.011581>,  <36.721851, 37.011932, 47.306042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055019, 36.889481, 47.011581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.064499, 37.285648, 47.066010>,  <36.070187, 37.523350, 47.098667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.064499, 37.285648, 47.066010>,  <36.055019, 36.889481, 47.011581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064499, 37.285648, 47.066010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406358, 0.133902, -0.903849,
		-0.913406, -0.033878, 0.405636,
		0.023695, 0.990415, 0.136074,
		36.071606, 37.582771, 47.106831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406849, 37.126369, 46.919250>,  <36.055019, 36.889481, 47.011581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406849, 37.126369, 46.919250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.651653, 37.435497, 46.852081>,  <35.798534, 37.620972, 46.811779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.651653, 37.435497, 46.852081>,  <35.406849, 37.126369, 46.919250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651653, 37.435497, 46.852081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431907, 0.148746, -0.889568,
		-0.662495, 0.616952, 0.424819,
		0.612010, 0.772816, -0.167922,
		35.835255, 37.667343, 46.801704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945808, 37.685692, 46.547497>,  <35.406849, 37.126369, 46.919250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945808, 37.685692, 46.547497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.322376, 37.794640, 46.467953>,  <35.548317, 37.860008, 46.420227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.322376, 37.794640, 46.467953>,  <34.945808, 37.685692, 46.547497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322376, 37.794640, 46.467953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261738, 0.218280, -0.940131,
		-0.212658, 0.937106, 0.276783,
		0.941419, 0.272371, -0.198857,
		35.604801, 37.876350, 46.408295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653526, 38.295383, 46.826965>,  <34.945808, 37.685692, 46.547497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653526, 38.295383, 46.826965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294720, 38.471939, 46.817642>,  <34.079437, 38.577873, 46.812046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.294720, 38.471939, 46.817642>,  <34.653526, 38.295383, 46.826965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294720, 38.471939, 46.817642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107252, -0.166190, 0.980244,
		0.428796, 0.881791, 0.196414,
		-0.897012, 0.441390, -0.023312,
		34.025616, 38.604355, 46.810650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618500, 38.642918, 47.337208>,  <34.653526, 38.295383, 46.826965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618500, 38.642918, 47.337208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226055, 38.614273, 47.265327>,  <33.990589, 38.597084, 47.222198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.226055, 38.614273, 47.265327>,  <34.618500, 38.642918, 47.337208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226055, 38.614273, 47.265327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147108, -0.327063, 0.933482,
		-0.125626, 0.942285, 0.310350,
		-0.981110, -0.071615, -0.179705,
		33.931721, 38.592789, 47.211414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216904, 38.956287, 47.989784>,  <34.618500, 38.642918, 47.337208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216904, 38.956287, 47.989784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972340, 38.710423, 47.790436>,  <33.825600, 38.562904, 47.670826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972340, 38.710423, 47.790436>,  <34.216904, 38.956287, 47.989784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972340, 38.710423, 47.790436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237580, -0.458155, 0.856534,
		-0.754808, 0.642094, 0.134089,
		-0.611409, -0.614661, -0.498368,
		33.788918, 38.526024, 47.640926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655518, 38.974030, 48.324753>,  <34.216904, 38.956287, 47.989784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655518, 38.974030, 48.324753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.652443, 38.615662, 48.147091>,  <33.650597, 38.400642, 48.040493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.652443, 38.615662, 48.147091>,  <33.655518, 38.974030, 48.324753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652443, 38.615662, 48.147091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232111, -0.430439, 0.872265,
		-0.972659, 0.109802, -0.204641,
		-0.007691, -0.895916, -0.444156,
		33.650135, 38.346886, 48.013844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073444, 38.712883, 48.518024>,  <33.655518, 38.974030, 48.324753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073444, 38.712883, 48.518024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.279278, 38.391098, 48.399342>,  <33.402779, 38.198025, 48.328133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.279278, 38.391098, 48.399342>,  <33.073444, 38.712883, 48.518024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279278, 38.391098, 48.399342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274808, -0.482523, 0.831656,
		-0.812207, -0.346422, -0.469374,
		0.514588, -0.804464, -0.296709,
		33.433655, 38.149757, 48.310329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637989, 38.147972, 48.672668>,  <33.073444, 38.712883, 48.518024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637989, 38.147972, 48.672668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.978355, 37.938564, 48.655365>,  <33.182575, 37.812920, 48.644981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.978355, 37.938564, 48.655365>,  <32.637989, 38.147972, 48.672668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978355, 37.938564, 48.655365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301382, -0.553988, 0.776058,
		-0.430248, -0.647321, -0.629176,
		0.850915, -0.523520, -0.043261,
		33.233631, 37.781509, 48.642387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374371, 37.509472, 48.844292>,  <32.637989, 38.147972, 48.672668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374371, 37.509472, 48.844292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.768887, 37.478424, 48.902534>,  <33.005596, 37.459793, 48.937481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.768887, 37.478424, 48.902534>,  <32.374371, 37.509472, 48.844292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768887, 37.478424, 48.902534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155734, -0.729550, 0.665961,
		0.054535, -0.679509, -0.731638,
		0.986293, -0.077623, 0.145609,
		33.064774, 37.455135, 48.946217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460423, 36.709476, 48.968163>,  <32.374371, 37.509472, 48.844292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460423, 36.709476, 48.968163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757118, 36.932667, 49.117020>,  <32.935135, 37.066582, 49.206333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757118, 36.932667, 49.117020>,  <32.460423, 36.709476, 48.968163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757118, 36.932667, 49.117020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008082, -0.562255, 0.826924,
		0.670643, -0.610352, -0.421555,
		0.741737, 0.557978, 0.372140,
		32.979641, 37.100060, 49.228661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901865, 36.349129, 49.254040>,  <32.460423, 36.709476, 48.968163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901865, 36.349129, 49.254040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.535732, 36.242481, 49.133320>,  <31.316053, 36.178493, 49.060886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.535732, 36.242481, 49.133320>,  <31.901865, 36.349129, 49.254040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535732, 36.242481, 49.133320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316286, -0.012091, -0.948587,
		0.249267, -0.963725, 0.095396,
		-0.915330, -0.266623, -0.301799,
		31.261133, 36.162495, 49.042782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993492, 35.902584, 48.655293>,  <31.901865, 36.349129, 49.254040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993492, 35.902584, 48.655293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.602753, 35.978477, 48.615757>,  <31.368309, 36.024014, 48.592033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.602753, 35.978477, 48.615757>,  <31.993492, 35.902584, 48.655293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602753, 35.978477, 48.615757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104041, 0.017607, -0.994417,
		-0.186935, -0.981678, -0.036939,
		-0.976847, 0.189735, -0.098843,
		31.309698, 36.035397, 48.586105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762932, 35.333588, 48.225685>,  <31.993492, 35.902584, 48.655293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762932, 35.333588, 48.225685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.499432, 35.633339, 48.198917>,  <31.341331, 35.813190, 48.182858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.499432, 35.633339, 48.198917>,  <31.762932, 35.333588, 48.225685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499432, 35.633339, 48.198917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133285, 0.028695, -0.990662,
		-0.740460, -0.661520, -0.118784,
		-0.658752, 0.749378, -0.066923,
		31.301805, 35.858150, 48.178841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271561, 35.126823, 47.738289>,  <31.762932, 35.333588, 48.225685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271561, 35.126823, 47.738289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.224314, 35.523224, 47.763493>,  <31.195965, 35.761063, 47.778614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.224314, 35.523224, 47.763493>,  <31.271561, 35.126823, 47.738289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224314, 35.523224, 47.763493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016460, 0.061495, -0.997972,
		-0.992863, -0.118914, 0.009048,
		-0.118117, 0.990998, 0.063013,
		31.188879, 35.820522, 47.782398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778416, 35.327614, 47.264442>,  <31.271561, 35.126823, 47.738289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778416, 35.327614, 47.264442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.924759, 35.694332, 47.328484>,  <31.012566, 35.914364, 47.366909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.924759, 35.694332, 47.328484>,  <30.778416, 35.327614, 47.264442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924759, 35.694332, 47.328484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052125, 0.151577, -0.987070,
		-0.929210, 0.369473, 0.007668,
		0.365858, 0.916795, 0.160106,
		31.034517, 35.969372, 47.376514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359377, 35.787144, 46.876080>,  <30.778416, 35.327614, 47.264442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359377, 35.787144, 46.876080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.707760, 35.975582, 46.931942>,  <30.916790, 36.088646, 46.965458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.707760, 35.975582, 46.931942>,  <30.359377, 35.787144, 46.876080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707760, 35.975582, 46.931942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074819, 0.153756, -0.985272,
		-0.485631, 0.868578, 0.098668,
		0.870956, 0.471096, 0.139655,
		30.969048, 36.116913, 46.973839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.512894, 32.358452, 50.929035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.795372, 32.641655, 50.930202>,  <34.964859, 32.811577, 50.930901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.795372, 32.641655, 50.930202>,  <34.512894, 32.358452, 50.929035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795372, 32.641655, 50.930202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289679, -0.285176, -0.913653,
		-0.646045, 0.646061, -0.406485,
		0.706195, 0.708011, 0.002914,
		35.007229, 32.854057, 50.931076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434750, 32.859188, 50.304691>,  <34.512894, 32.358452, 50.929035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434750, 32.859188, 50.304691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.797264, 32.772312, 50.449730>,  <35.014774, 32.720188, 50.536755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.797264, 32.772312, 50.449730>,  <34.434750, 32.859188, 50.304691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797264, 32.772312, 50.449730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255152, -0.402802, -0.879004,
		0.336965, 0.889145, -0.309637,
		0.906285, -0.217189, 0.362597,
		35.069149, 32.707157, 50.558510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955994, 33.367569, 50.077610>,  <34.434750, 32.859188, 50.304691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955994, 33.367569, 50.077610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.142666, 33.022301, 50.154701>,  <35.254669, 32.815140, 50.200958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.142666, 33.022301, 50.154701>,  <34.955994, 33.367569, 50.077610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142666, 33.022301, 50.154701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180459, -0.120400, -0.976186,
		0.865822, 0.490344, 0.099579,
		0.466677, -0.863173, 0.192732,
		35.282669, 32.763348, 50.212521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519901, 33.312008, 49.682777>,  <34.955994, 33.367569, 50.077610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519901, 33.312008, 49.682777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.457745, 32.931190, 49.788208>,  <35.420448, 32.702702, 49.851467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.457745, 32.931190, 49.788208>,  <35.519901, 33.312008, 49.682777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457745, 32.931190, 49.788208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248805, -0.295934, -0.922236,
		0.956007, -0.077730, 0.282859,
		-0.155393, -0.952040, 0.263575,
		35.411125, 32.645576, 49.867279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044800, 33.036041, 49.358097>,  <35.519901, 33.312008, 49.682777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044800, 33.036041, 49.358097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.795090, 32.735382, 49.443241>,  <35.645264, 32.554985, 49.494328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.795090, 32.735382, 49.443241>,  <36.044800, 33.036041, 49.358097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795090, 32.735382, 49.443241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066659, -0.322732, -0.944140,
		0.778357, -0.575213, 0.251577,
		-0.624273, -0.751648, 0.212857,
		35.607807, 32.509888, 49.507099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366249, 32.442005, 49.183609>,  <36.044800, 33.036041, 49.358097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366249, 32.442005, 49.183609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.973743, 32.365231, 49.190247>,  <35.738239, 32.319164, 49.194229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.973743, 32.365231, 49.190247>,  <36.366249, 32.442005, 49.183609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973743, 32.365231, 49.190247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068705, -0.429099, -0.900641,
		0.179989, -0.882628, 0.434248,
		-0.981266, -0.191941, 0.016592,
		35.679363, 32.307648, 49.195225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350868, 31.883741, 48.745319>,  <36.366249, 32.442005, 49.183609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350868, 31.883741, 48.745319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.963795, 31.978249, 48.780582>,  <35.731552, 32.034954, 48.801743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.963795, 31.978249, 48.780582>,  <36.350868, 31.883741, 48.745319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963795, 31.978249, 48.780582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159254, -0.301482, -0.940078,
		-0.195530, -0.923735, 0.329365,
		-0.967681, 0.236266, 0.088160,
		35.673492, 32.049129, 48.807030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037231, 31.352531, 48.389671>,  <36.350868, 31.883741, 48.745319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037231, 31.352531, 48.389671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.737865, 31.616526, 48.415897>,  <35.558247, 31.774923, 48.431633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.737865, 31.616526, 48.415897>,  <36.037231, 31.352531, 48.389671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737865, 31.616526, 48.415897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315607, -0.267450, -0.910419,
		-0.583330, -0.702060, 0.408459,
		-0.748411, 0.659987, 0.065563,
		35.513344, 31.814522, 48.435566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424850, 31.004751, 48.205524>,  <36.037231, 31.352531, 48.389671>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424850, 31.004751, 48.205524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.300087, 31.383102, 48.169678>,  <35.225227, 31.610113, 48.148170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.300087, 31.383102, 48.169678>,  <35.424850, 31.004751, 48.205524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300087, 31.383102, 48.169678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321155, -0.193730, -0.927000,
		-0.894188, -0.260360, 0.364199,
		-0.311910, 0.945876, -0.089615,
		35.206512, 31.666864, 48.142792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822353, 30.989367, 47.879829>,  <35.424850, 31.004751, 48.205524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822353, 30.989367, 47.879829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.924938, 31.371933, 47.823982>,  <34.986488, 31.601473, 47.790474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.924938, 31.371933, 47.823982>,  <34.822353, 30.989367, 47.879829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924938, 31.371933, 47.823982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319597, -0.052414, -0.946103,
		-0.912187, 0.287263, 0.292225,
		0.256464, 0.956416, -0.139620,
		35.001877, 31.658857, 47.782097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231987, 31.415598, 47.758507>,  <34.822353, 30.989367, 47.879829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231987, 31.415598, 47.758507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.537296, 31.588478, 47.566414>,  <34.720482, 31.692207, 47.451160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.537296, 31.588478, 47.566414>,  <34.231987, 31.415598, 47.758507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537296, 31.588478, 47.566414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444860, -0.187456, -0.875762,
		-0.468528, 0.882078, 0.049190,
		0.763270, 0.432202, -0.480230,
		34.766277, 31.718138, 47.422344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959209, 31.725746, 47.232193>,  <34.231987, 31.415598, 47.758507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959209, 31.725746, 47.232193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.342773, 31.736591, 47.119228>,  <34.572910, 31.743099, 47.051449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.342773, 31.736591, 47.119228>,  <33.959209, 31.725746, 47.232193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342773, 31.736591, 47.119228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271192, -0.204777, -0.940490,
		-0.083330, 0.978433, -0.189010,
		0.958911, 0.027113, -0.282407,
		34.630447, 31.744726, 47.034508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409538, 32.232578, 47.495975>,  <33.959209, 31.725746, 47.232193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409538, 32.232578, 47.495975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.023891, 32.126400, 47.497871>,  <32.792503, 32.062691, 47.499008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.023891, 32.126400, 47.497871>,  <33.409538, 32.232578, 47.495975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023891, 32.126400, 47.497871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017772, 0.082335, 0.996446,
		-0.264895, 0.960603, -0.084098,
		-0.964114, -0.265448, 0.004739,
		32.734657, 32.046764, 47.499294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999569, 32.693211, 47.993507>,  <33.409538, 32.232578, 47.495975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999569, 32.693211, 47.993507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.796101, 32.352253, 47.945061>,  <32.674019, 32.147678, 47.915993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.796101, 32.352253, 47.945061>,  <32.999569, 32.693211, 47.993507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796101, 32.352253, 47.945061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246129, 0.009166, 0.969194,
		-0.825028, 0.522815, -0.214462,
		-0.508675, -0.852397, -0.121118,
		32.643497, 32.096535, 47.908726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242119, 32.819794, 48.286594>,  <32.999569, 32.693211, 47.993507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242119, 32.819794, 48.286594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.356724, 32.436565, 48.284813>,  <32.425488, 32.206631, 48.283745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.356724, 32.436565, 48.284813>,  <32.242119, 32.819794, 48.286594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356724, 32.436565, 48.284813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162587, -0.053201, 0.985259,
		-0.944180, -0.281564, -0.171012,
		0.286512, -0.958067, -0.004452,
		32.442677, 32.149147, 48.283478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666958, 32.441727, 48.617226>,  <32.242119, 32.819794, 48.286594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666958, 32.441727, 48.617226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.977045, 32.189903, 48.637981>,  <32.163097, 32.038807, 48.650433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.977045, 32.189903, 48.637981>,  <31.666958, 32.441727, 48.617226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977045, 32.189903, 48.637981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084111, -0.021466, 0.996225,
		-0.626071, -0.776654, -0.069594,
		0.775216, -0.629561, 0.051887,
		32.209610, 32.001034, 48.653549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454063, 31.946369, 48.985332>,  <31.666958, 32.441727, 48.617226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454063, 31.946369, 48.985332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.845987, 31.876694, 49.024586>,  <32.081142, 31.834888, 49.048138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.845987, 31.876694, 49.024586>,  <31.454063, 31.946369, 48.985332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845987, 31.876694, 49.024586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116173, -0.096549, 0.988525,
		-0.162717, -0.979967, -0.114836,
		0.979810, -0.174191, 0.098136,
		32.139931, 31.824436, 49.054028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492414, 31.398975, 49.295120>,  <31.454063, 31.946369, 48.985332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492414, 31.398975, 49.295120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.867594, 31.518867, 49.364880>,  <32.092701, 31.590803, 49.406734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.867594, 31.518867, 49.364880>,  <31.492414, 31.398975, 49.295120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867594, 31.518867, 49.364880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159799, -0.072753, 0.984465,
		0.307763, -0.951245, -0.020341,
		0.937947, 0.299732, 0.174399,
		32.148979, 31.608788, 49.417198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785152, 30.967571, 49.733116>,  <31.492414, 31.398975, 49.295120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785152, 30.967571, 49.733116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.974190, 31.315659, 49.788803>,  <32.087612, 31.524511, 49.822216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.974190, 31.315659, 49.788803>,  <31.785152, 30.967571, 49.733116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974190, 31.315659, 49.788803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099969, -0.104013, 0.989539,
		0.875593, -0.481564, 0.037839,
		0.472591, 0.870217, 0.139214,
		32.115967, 31.576723, 49.830566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358536, 30.816496, 50.274307>,  <31.785152, 30.967571, 49.733116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358536, 30.816496, 50.274307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.272377, 31.206579, 50.254028>,  <32.220684, 31.440630, 50.241859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.272377, 31.206579, 50.254028>,  <32.358536, 30.816496, 50.274307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272377, 31.206579, 50.254028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226206, 0.000679, 0.974079,
		0.949966, 0.221280, 0.220452,
		-0.215395, 0.975210, -0.050700,
		32.207760, 31.499142, 50.238819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613403, 31.065500, 50.920364>,  <32.358536, 30.816496, 50.274307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613403, 31.065500, 50.920364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.369343, 31.361963, 50.808369>,  <32.222904, 31.539841, 50.741169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.369343, 31.361963, 50.808369>,  <32.613403, 31.065500, 50.920364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369343, 31.361963, 50.808369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301182, 0.109889, 0.947214,
		0.732804, 0.662275, 0.156175,
		-0.610154, 0.741159, -0.279993,
		32.186298, 31.584311, 50.724369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746399, 31.645323, 51.410568>,  <32.613403, 31.065500, 50.920364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746399, 31.645323, 51.410568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.381649, 31.723358, 51.266109>,  <32.162800, 31.770180, 51.179436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.381649, 31.723358, 51.266109>,  <32.746399, 31.645323, 51.410568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381649, 31.723358, 51.266109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354908, 0.067299, 0.932476,
		0.206219, 0.978474, 0.007870,
		-0.911874, 0.195087, -0.361146,
		32.108086, 31.781885, 51.157764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586319, 32.284702, 51.596672>,  <32.746399, 31.645323, 51.410568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586319, 32.284702, 51.596672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.232510, 32.110710, 51.529255>,  <32.020222, 32.006317, 51.488804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.232510, 32.110710, 51.529255>,  <32.586319, 32.284702, 51.596672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232510, 32.110710, 51.529255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309042, 0.275756, 0.910193,
		-0.349435, 0.857178, -0.378339,
		-0.884527, -0.434976, -0.168546,
		31.967152, 31.980217, 51.478691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064934, 32.867920, 51.546501>,  <32.586319, 32.284702, 51.596672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064934, 32.867920, 51.546501> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.881252, 32.533978, 51.667919>,  <31.771044, 32.333611, 51.740768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.881252, 32.533978, 51.667919>,  <32.064934, 32.867920, 51.546501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881252, 32.533978, 51.667919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211061, 0.434456, 0.875615,
		-0.862893, 0.338020, -0.375710,
		-0.459204, -0.834860, 0.303546,
		31.743490, 32.283520, 51.758984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487890, 33.123596, 51.868416>,  <32.064934, 32.867920, 51.546501>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487890, 33.123596, 51.868416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.488840, 32.744465, 51.995926>,  <31.489410, 32.516987, 52.072433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.488840, 32.744465, 51.995926>,  <31.487890, 33.123596, 51.868416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488840, 32.744465, 51.995926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316425, 0.301688, 0.899366,
		-0.948614, -0.103007, -0.299199,
		0.002377, -0.947826, 0.318780,
		31.489553, 32.460117, 52.091560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452139, 33.717419, 52.296185>,  <31.487890, 33.123596, 51.868416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452139, 33.717419, 52.296185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.249399, 34.062073, 52.306618>,  <31.127756, 34.268867, 52.312878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.249399, 34.062073, 52.306618>,  <31.452139, 33.717419, 52.296185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249399, 34.062073, 52.306618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266475, 0.185385, -0.945845,
		-0.819814, -0.472450, -0.323568,
		-0.506849, 0.861640, 0.026085,
		31.097343, 34.320564, 52.314442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838703, 33.710056, 51.728680>,  <31.452139, 33.717419, 52.296185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838703, 33.710056, 51.728680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.001865, 34.065987, 51.810474>,  <31.099762, 34.279545, 51.859550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.001865, 34.065987, 51.810474>,  <30.838703, 33.710056, 51.728680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001865, 34.065987, 51.810474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109674, 0.174596, -0.978513,
		-0.906413, 0.421569, -0.026372,
		0.407906, 0.889829, 0.204491,
		31.124237, 34.332935, 51.871822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518263, 34.232487, 51.233036>,  <30.838703, 33.710056, 51.728680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518263, 34.232487, 51.233036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.852802, 34.386570, 51.389057>,  <31.053526, 34.479019, 51.482670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.852802, 34.386570, 51.389057>,  <30.518263, 34.232487, 51.233036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852802, 34.386570, 51.389057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268333, 0.332797, -0.904015,
		-0.478040, 0.860734, 0.174970,
		0.836346, 0.385205, 0.390054,
		31.103706, 34.502132, 51.506073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493151, 34.880337, 50.876396>,  <30.518263, 34.232487, 51.233036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493151, 34.880337, 50.876396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.868391, 34.822495, 51.002293>,  <31.093534, 34.787788, 51.077831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.868391, 34.822495, 51.002293>,  <30.493151, 34.880337, 50.876396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868391, 34.822495, 51.002293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342553, 0.252846, -0.904835,
		0.051262, 0.956639, 0.286729,
		0.938099, -0.144604, 0.314738,
		31.149820, 34.779114, 51.096714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710371, 35.428463, 50.537411>,  <30.493151, 34.880337, 50.876396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710371, 35.428463, 50.537411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.034134, 35.209423, 50.622257>,  <31.228392, 35.077999, 50.673164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.034134, 35.209423, 50.622257>,  <30.710371, 35.428463, 50.537411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034134, 35.209423, 50.622257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437573, 0.321494, -0.839745,
		0.391652, 0.772511, 0.499835,
		0.809406, -0.547602, 0.212116,
		31.276957, 35.045143, 50.685890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348303, 35.845959, 50.579044>,  <30.710371, 35.428463, 50.537411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348303, 35.845959, 50.579044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.442137, 35.475777, 50.460052>,  <31.498438, 35.253666, 50.388657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.442137, 35.475777, 50.460052>,  <31.348303, 35.845959, 50.579044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442137, 35.475777, 50.460052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254316, 0.353790, -0.900087,
		0.938239, 0.135493, 0.318353,
		0.234585, -0.925459, -0.297482,
		31.512512, 35.198139, 50.370808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907017, 35.942093, 50.104626>,  <31.348303, 35.845959, 50.579044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907017, 35.942093, 50.104626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.797497, 35.560593, 50.055000>,  <31.731785, 35.331692, 50.025223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.797497, 35.560593, 50.055000>,  <31.907017, 35.942093, 50.104626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797497, 35.560593, 50.055000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021904, 0.122779, -0.992192,
		0.961538, -0.274377, -0.012726,
		-0.273798, -0.953752, -0.124066,
		31.715357, 35.274467, 50.017780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415569, 35.722946, 49.680016>,  <31.907017, 35.942093, 50.104626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415569, 35.722946, 49.680016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.106899, 35.478989, 49.607861>,  <31.921698, 35.332615, 49.564568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.106899, 35.478989, 49.607861>,  <32.415569, 35.722946, 49.680016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106899, 35.478989, 49.607861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153652, 0.096446, -0.983407,
		0.617176, -0.786589, 0.019287,
		-0.771677, -0.609899, -0.180385,
		31.875397, 35.296021, 49.553745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767208, 36.359566, 49.543346>,  <32.415569, 35.722946, 49.680016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767208, 36.359566, 49.543346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.029343, 36.658566, 49.499943>,  <33.186623, 36.837967, 49.473900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.029343, 36.658566, 49.499943>,  <32.767208, 36.359566, 49.543346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029343, 36.658566, 49.499943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367070, -0.189618, 0.910662,
		0.660145, -0.636623, -0.398649,
		0.655339, 0.747501, -0.108510,
		33.225945, 36.882816, 49.467388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532600, 36.097588, 49.589771>,  <32.767208, 36.359566, 49.543346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532600, 36.097588, 49.589771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.523663, 36.484863, 49.689461>,  <33.518299, 36.717228, 49.749275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.523663, 36.484863, 49.689461>,  <33.532600, 36.097588, 49.589771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523663, 36.484863, 49.689461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349531, -0.225986, 0.909263,
		0.936659, 0.107424, -0.333363,
		-0.022341, 0.968189, 0.249220,
		33.516960, 36.775322, 49.764225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157871, 36.215073, 49.908352>,  <33.532600, 36.097588, 49.589771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157871, 36.215073, 49.908352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.937214, 36.525967, 50.029411>,  <33.804821, 36.712502, 50.102047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.937214, 36.525967, 50.029411>,  <34.157871, 36.215073, 49.908352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937214, 36.525967, 50.029411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424911, -0.050368, 0.903833,
		0.717734, 0.627192, -0.302471,
		-0.551642, 0.777234, 0.302651,
		33.771721, 36.759136, 50.120205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587986, 36.587223, 50.412903>,  <34.157871, 36.215073, 49.908352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587986, 36.587223, 50.412903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.211906, 36.704151, 50.482853>,  <33.986259, 36.774307, 50.524822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.211906, 36.704151, 50.482853>,  <34.587986, 36.587223, 50.412903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211906, 36.704151, 50.482853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241638, 0.210497, 0.947260,
		0.240096, 0.932865, -0.268545,
		-0.940194, 0.292324, 0.174876,
		33.929848, 36.791847, 50.535316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687122, 37.041840, 50.886177>,  <34.587986, 36.587223, 50.412903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687122, 37.041840, 50.886177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.313290, 36.907589, 50.933365>,  <34.088989, 36.827038, 50.961678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.313290, 36.907589, 50.933365>,  <34.687122, 37.041840, 50.886177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313290, 36.907589, 50.933365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185900, -0.178003, 0.966311,
		-0.303324, 0.925023, 0.228751,
		-0.934578, -0.335630, 0.117969,
		34.032917, 36.806900, 50.968754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263962, 37.616146, 51.267460>,  <34.687122, 37.041840, 50.886177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263962, 37.616146, 51.267460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.094303, 37.262474, 51.345764>,  <33.992508, 37.050270, 51.392746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.094303, 37.262474, 51.345764>,  <34.263962, 37.616146, 51.267460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094303, 37.262474, 51.345764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101661, 0.168309, 0.980478,
		-0.899868, 0.435769, 0.018499,
		-0.424149, -0.884182, 0.195757,
		33.967060, 36.997219, 51.404491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922001, 37.789635, 51.851231>,  <34.263962, 37.616146, 51.267460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922001, 37.789635, 51.851231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.881470, 37.391708, 51.854610>,  <33.857151, 37.152950, 51.856636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.881470, 37.391708, 51.854610>,  <33.922001, 37.789635, 51.851231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881470, 37.391708, 51.854610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038318, 0.004583, 0.999255,
		-0.994115, 0.101572, 0.037655,
		-0.101324, -0.994818, 0.008448,
		33.851074, 37.093262, 51.857143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550468, 37.701893, 52.386745>,  <33.922001, 37.789635, 51.851231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550468, 37.701893, 52.386745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.725471, 37.344666, 52.344746>,  <33.830475, 37.130329, 52.319546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.725471, 37.344666, 52.344746>,  <33.550468, 37.701893, 52.386745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725471, 37.344666, 52.344746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037351, -0.098617, 0.994424,
		-0.898439, -0.438989, -0.009789,
		0.437506, -0.893064, -0.104999,
		33.856724, 37.076748, 52.313248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230946, 37.274765, 52.826374>,  <33.550468, 37.701893, 52.386745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230946, 37.274765, 52.826374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.600288, 37.129578, 52.776318>,  <33.821896, 37.042465, 52.746284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.600288, 37.129578, 52.776318>,  <33.230946, 37.274765, 52.826374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600288, 37.129578, 52.776318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114109, -0.051776, 0.992118,
		-0.366591, -0.930360, -0.006390,
		0.923358, -0.362972, -0.125143,
		33.877296, 37.020687, 52.738773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.896828, 36.176273, 36.509254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263626, 36.146793, 36.666069>,  <34.483704, 36.129105, 36.760159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263626, 36.146793, 36.666069>,  <33.896828, 36.176273, 36.509254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263626, 36.146793, 36.666069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391304, 0.024670, 0.919931,
		-0.077469, -0.996975, -0.006216,
		0.916995, -0.073698, 0.392032,
		34.538723, 36.124683, 36.783680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721722, 35.919842, 37.200809>,  <33.896828, 36.176273, 36.509254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721722, 35.919842, 37.200809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093166, 36.057346, 37.256676>,  <34.316032, 36.139847, 37.290195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093166, 36.057346, 37.256676>,  <33.721722, 35.919842, 37.200809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093166, 36.057346, 37.256676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235638, 0.255580, 0.937632,
		0.286629, -0.903606, 0.318339,
		0.928611, 0.343765, 0.139667,
		34.371750, 36.160473, 37.298576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921070, 35.698036, 37.791134>,  <33.721722, 35.919842, 37.200809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921070, 35.698036, 37.791134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184822, 35.997303, 37.761570>,  <34.343071, 36.176865, 37.743832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.184822, 35.997303, 37.761570>,  <33.921070, 35.698036, 37.791134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184822, 35.997303, 37.761570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194250, 0.264517, 0.944615,
		0.726285, -0.608499, 0.319749,
		0.659377, 0.748171, -0.073914,
		34.382637, 36.221756, 37.739395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371033, 35.666359, 38.405544>,  <33.921070, 35.698036, 37.791134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371033, 35.666359, 38.405544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405647, 36.045540, 38.282978>,  <34.426414, 36.273048, 38.209438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405647, 36.045540, 38.282978>,  <34.371033, 35.666359, 38.405544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405647, 36.045540, 38.282978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071639, 0.312697, 0.947148,
		0.993670, -0.060011, 0.094970,
		0.086536, 0.947955, -0.306418,
		34.431606, 36.329926, 38.191051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846069, 35.904011, 38.824501>,  <34.371033, 35.666359, 38.405544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846069, 35.904011, 38.824501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647141, 36.225407, 38.693615>,  <34.527782, 36.418243, 38.615082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647141, 36.225407, 38.693615>,  <34.846069, 35.904011, 38.824501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647141, 36.225407, 38.693615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004919, 0.374552, 0.927193,
		0.867553, 0.462721, -0.182320,
		-0.497320, 0.803492, -0.327220,
		34.497944, 36.466454, 38.595448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204212, 36.460968, 39.180305>,  <34.846069, 35.904011, 38.824501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204212, 36.460968, 39.180305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854000, 36.612572, 39.060440>,  <34.643871, 36.703533, 38.988522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854000, 36.612572, 39.060440>,  <35.204212, 36.460968, 39.180305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854000, 36.612572, 39.060440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115702, 0.437703, 0.891644,
		0.469105, 0.815333, -0.339370,
		-0.875531, 0.379009, -0.299664,
		34.591339, 36.726273, 38.970539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267658, 37.171329, 39.354740>,  <35.204212, 36.460968, 39.180305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267658, 37.171329, 39.354740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881622, 37.071972, 39.321487>,  <34.650002, 37.012360, 39.301537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881622, 37.071972, 39.321487>,  <35.267658, 37.171329, 39.354740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881622, 37.071972, 39.321487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195336, 0.471045, 0.860209,
		-0.174509, 0.846415, -0.503119,
		-0.965086, -0.248392, -0.083134,
		34.592098, 36.997456, 39.296547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850491, 37.718945, 39.631142>,  <35.267658, 37.171329, 39.354740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850491, 37.718945, 39.631142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556870, 37.448158, 39.652634>,  <34.380695, 37.285686, 39.665531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556870, 37.448158, 39.652634>,  <34.850491, 37.718945, 39.631142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556870, 37.448158, 39.652634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300988, 0.395255, 0.867859,
		-0.608747, 0.620881, -0.493896,
		-0.734052, -0.676964, 0.053732,
		34.336655, 37.245068, 39.668755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365974, 38.044750, 39.914200>,  <34.850491, 37.718945, 39.631142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365974, 38.044750, 39.914200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224720, 37.675819, 39.976944>,  <34.139965, 37.454460, 40.014591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224720, 37.675819, 39.976944>,  <34.365974, 38.044750, 39.914200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224720, 37.675819, 39.976944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222647, 0.245692, 0.943432,
		-0.908692, 0.298238, -0.292117,
		-0.353138, -0.922328, 0.156856,
		34.118778, 37.399120, 40.024002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536156, 38.088039, 39.950855>,  <34.365974, 38.044750, 39.914200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536156, 38.088039, 39.950855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711231, 37.784691, 40.144062>,  <33.816277, 37.602684, 40.259987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711231, 37.784691, 40.144062>,  <33.536156, 38.088039, 39.950855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711231, 37.784691, 40.144062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428643, 0.296242, 0.853526,
		-0.790378, -0.580619, -0.195409,
		0.437685, -0.758368, 0.483021,
		33.842537, 37.557178, 40.288967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992264, 37.855671, 40.449306>,  <33.536156, 38.088039, 39.950855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992264, 37.855671, 40.449306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321556, 37.675011, 40.586891>,  <33.519131, 37.566612, 40.669441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321556, 37.675011, 40.586891>,  <32.992264, 37.855671, 40.449306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321556, 37.675011, 40.586891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246602, 0.261232, 0.933244,
		-0.511357, -0.853092, 0.103674,
		0.823226, -0.451655, 0.343957,
		33.568523, 37.539513, 40.690079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739292, 37.402397, 40.949730>,  <32.992264, 37.855671, 40.449306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739292, 37.402397, 40.949730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119175, 37.449883, 41.065632>,  <33.347107, 37.478374, 41.135174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119175, 37.449883, 41.065632>,  <32.739292, 37.402397, 40.949730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119175, 37.449883, 41.065632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311595, 0.266846, 0.911977,
		0.030946, -0.956399, 0.290418,
		0.949711, 0.118714, 0.289752,
		33.404087, 37.485497, 41.152557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279175, 36.787331, 40.847954>,  <32.739292, 37.402397, 40.949730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279175, 36.787331, 40.847954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934927, 36.622303, 40.967361>,  <31.728378, 36.523285, 41.039005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934927, 36.622303, 40.967361>,  <32.279175, 36.787331, 40.847954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934927, 36.622303, 40.967361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213796, -0.239305, -0.947114,
		0.462190, -0.878929, 0.117745,
		-0.860622, -0.412573, 0.298516,
		31.676741, 36.498531, 41.056915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169018, 36.204922, 40.365318>,  <32.279175, 36.787331, 40.847954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169018, 36.204922, 40.365318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817596, 36.303310, 40.529095>,  <31.606743, 36.362343, 40.627361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817596, 36.303310, 40.529095>,  <32.169018, 36.204922, 40.365318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817596, 36.303310, 40.529095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445303, -0.111742, -0.888380,
		-0.172779, -0.962810, 0.207710,
		-0.878551, 0.245987, 0.409435,
		31.554031, 36.377102, 40.651928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744020, 35.676289, 40.176205>,  <32.169018, 36.204922, 40.365318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744020, 35.676289, 40.176205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495399, 35.976597, 40.265656>,  <31.346226, 36.156784, 40.319328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495399, 35.976597, 40.265656>,  <31.744020, 35.676289, 40.176205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495399, 35.976597, 40.265656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492587, -0.152599, -0.856780,
		-0.609122, -0.642692, 0.464669,
		-0.621553, 0.750774, 0.223630,
		31.308933, 36.201828, 40.332745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048565, 35.367554, 40.140732>,  <31.744020, 35.676289, 40.176205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048565, 35.367554, 40.140732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972628, 35.759758, 40.120499>,  <30.927065, 35.995079, 40.108356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972628, 35.759758, 40.120499>,  <31.048565, 35.367554, 40.140732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972628, 35.759758, 40.120499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574024, -0.152647, -0.804485,
		-0.796528, -0.123688, 0.591815,
		-0.189844, 0.980510, -0.050588,
		30.915674, 36.053909, 40.105324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356922, 35.427410, 40.036819>,  <31.048565, 35.367554, 40.140732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356922, 35.427410, 40.036819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492065, 35.791611, 39.941456>,  <30.573153, 36.010132, 39.884239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492065, 35.791611, 39.941456>,  <30.356922, 35.427410, 40.036819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492065, 35.791611, 39.941456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544846, -0.017344, -0.838357,
		-0.767460, 0.413144, 0.490223,
		0.337859, 0.910501, -0.238411,
		30.593424, 36.064762, 39.869934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798861, 35.763729, 39.873352>,  <30.356922, 35.427410, 40.036819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798861, 35.763729, 39.873352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100340, 35.936001, 39.674774>,  <30.281227, 36.039364, 39.555626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100340, 35.936001, 39.674774>,  <29.798861, 35.763729, 39.873352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100340, 35.936001, 39.674774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585819, 0.097827, -0.804516,
		-0.297921, 0.897188, 0.326031,
		0.753697, 0.430678, -0.496445,
		30.326448, 36.065205, 39.525841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522091, 36.370365, 39.415051>,  <29.798861, 35.763729, 39.873352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522091, 36.370365, 39.415051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888029, 36.293922, 39.272762>,  <30.107592, 36.248058, 39.187389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888029, 36.293922, 39.272762>,  <29.522091, 36.370365, 39.415051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888029, 36.293922, 39.272762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339322, 0.113745, -0.933768,
		0.218908, 0.974957, 0.039213,
		0.914844, -0.191103, -0.355724,
		30.162483, 36.236591, 39.166046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640085, 36.823128, 38.774986>,  <29.522091, 36.370365, 39.415051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640085, 36.823128, 38.774986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919367, 36.538261, 38.745766>,  <30.086937, 36.367344, 38.728233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919367, 36.538261, 38.745766>,  <29.640085, 36.823128, 38.774986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919367, 36.538261, 38.745766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328458, -0.228001, -0.916587,
		0.636102, 0.663959, -0.393106,
		0.698205, -0.712161, -0.073051,
		30.128828, 36.324612, 38.723850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813129, 36.855385, 38.030163>,  <29.640085, 36.823128, 38.774986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813129, 36.855385, 38.030163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952864, 36.504314, 38.161404>,  <30.036705, 36.293671, 38.240147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952864, 36.504314, 38.161404>,  <29.813129, 36.855385, 38.030163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952864, 36.504314, 38.161404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171368, -0.404101, -0.898519,
		0.921193, 0.257661, -0.291573,
		0.349338, -0.877675, 0.328100,
		30.057665, 36.241013, 38.259834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271605, 36.585896, 37.485935>,  <29.813129, 36.855385, 38.030163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271605, 36.585896, 37.485935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146338, 36.278690, 37.709393>,  <30.071177, 36.094368, 37.843468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146338, 36.278690, 37.709393>,  <30.271605, 36.585896, 37.485935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146338, 36.278690, 37.709393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200176, -0.521635, -0.829353,
		0.928361, -0.371555, 0.009622,
		-0.313169, -0.768013, 0.558642,
		30.052387, 36.048286, 37.876984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446320, 36.050495, 37.102333>,  <30.271605, 36.585896, 37.485935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446320, 36.050495, 37.102333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168919, 35.908447, 37.353077>,  <30.002478, 35.823219, 37.503521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168919, 35.908447, 37.353077>,  <30.446320, 36.050495, 37.102333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168919, 35.908447, 37.353077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325133, -0.622178, -0.712168,
		0.642919, -0.697701, 0.316020,
		-0.693501, -0.355118, 0.626856,
		29.960869, 35.801910, 37.541134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469723, 35.345303, 37.052807>,  <30.446320, 36.050495, 37.102333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469723, 35.345303, 37.052807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110964, 35.431679, 37.207180>,  <29.895708, 35.483505, 37.299805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110964, 35.431679, 37.207180>,  <30.469723, 35.345303, 37.052807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110964, 35.431679, 37.207180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436502, -0.572350, -0.694176,
		0.070990, -0.791066, 0.607597,
		-0.896898, 0.215938, 0.385933,
		29.841894, 35.496460, 37.322960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120026, 34.752300, 37.095146>,  <30.469723, 35.345303, 37.052807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120026, 34.752300, 37.095146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826857, 35.023853, 37.077526>,  <29.650955, 35.186787, 37.066956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826857, 35.023853, 37.077526>,  <30.120026, 34.752300, 37.095146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826857, 35.023853, 37.077526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569480, -0.647649, -0.506204,
		-0.372182, -0.345923, 0.861288,
		-0.732920, 0.678887, -0.044047,
		29.606981, 35.227520, 37.064312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415356, 34.342140, 37.298672>,  <30.120026, 34.752300, 37.095146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415356, 34.342140, 37.298672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358364, 34.684853, 37.100426>,  <29.324169, 34.890480, 36.981480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358364, 34.684853, 37.100426>,  <29.415356, 34.342140, 37.298672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358364, 34.684853, 37.100426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694172, -0.443428, -0.567008,
		-0.705568, 0.263253, 0.657930,
		-0.142478, 0.856778, -0.495611,
		29.315620, 34.941887, 36.951744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403162, 33.781845, 36.855278>,  <29.415356, 34.342140, 37.298672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403162, 33.781845, 36.855278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481504, 33.422043, 36.699059>,  <29.528511, 33.206161, 36.605328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.481504, 33.422043, 36.699059>,  <29.403162, 33.781845, 36.855278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481504, 33.422043, 36.699059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051036, -0.407072, 0.911969,
		-0.979303, -0.158684, -0.125636,
		0.195858, -0.899506, -0.390548,
		29.540262, 33.152191, 36.581894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913843, 33.173809, 37.143562>,  <29.403162, 33.781845, 36.855278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913843, 33.173809, 37.143562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301804, 33.112705, 37.067711>,  <29.534580, 33.076042, 37.022202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301804, 33.112705, 37.067711>,  <28.913843, 33.173809, 37.143562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301804, 33.112705, 37.067711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086598, -0.511447, 0.854940,
		-0.227588, -0.845627, -0.482823,
		0.969899, -0.152762, -0.189629,
		29.592773, 33.066875, 37.010822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078697, 32.456718, 37.104671>,  <28.913843, 33.173809, 37.143562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078697, 32.456718, 37.104671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359619, 32.699966, 37.252705>,  <29.528173, 32.845913, 37.341522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359619, 32.699966, 37.252705>,  <29.078697, 32.456718, 37.104671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359619, 32.699966, 37.252705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115509, -0.415629, 0.902170,
		0.702441, -0.676347, -0.221656,
		0.702306, 0.608118, 0.370080,
		29.570311, 32.882401, 37.363728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197506, 32.172379, 37.735794>,  <29.078697, 32.456718, 37.104671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197506, 32.172379, 37.735794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402840, 32.513348, 37.775505>,  <29.526041, 32.717930, 37.799332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402840, 32.513348, 37.775505>,  <29.197506, 32.172379, 37.735794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402840, 32.513348, 37.775505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112300, -0.181408, 0.976975,
		0.850809, -0.490367, -0.188851,
		0.513336, 0.852427, 0.099275,
		29.556841, 32.769077, 37.805286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847136, 31.958073, 37.920177>,  <29.197506, 32.172379, 37.735794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847136, 31.958073, 37.920177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758841, 32.329010, 38.041050>,  <29.705864, 32.551571, 38.113575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758841, 32.329010, 38.041050>,  <29.847136, 31.958073, 37.920177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758841, 32.329010, 38.041050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140232, -0.276428, 0.950748,
		0.965200, 0.252241, -0.069025,
		-0.220737, 0.927341, 0.302181,
		29.692619, 32.607212, 38.131702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325562, 32.108070, 38.434933>,  <29.847136, 31.958073, 37.920177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325562, 32.108070, 38.434933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067461, 32.407906, 38.493954>,  <29.912601, 32.587807, 38.529366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067461, 32.407906, 38.493954>,  <30.325562, 32.108070, 38.434933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067461, 32.407906, 38.493954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103013, -0.106003, 0.989016,
		0.756995, 0.653361, -0.008819,
		-0.645249, 0.749588, 0.147549,
		29.873886, 32.632782, 38.538219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703964, 32.635540, 38.740864>,  <30.325562, 32.108070, 38.434933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703964, 32.635540, 38.740864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319752, 32.681114, 38.842369>,  <30.089224, 32.708458, 38.903271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319752, 32.681114, 38.842369>,  <30.703964, 32.635540, 38.740864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319752, 32.681114, 38.842369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265628, 0.104895, 0.958352,
		0.082570, 0.987935, -0.131019,
		-0.960533, 0.113933, 0.253762,
		30.031591, 32.715294, 38.918499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691454, 33.198524, 39.242489>,  <30.703964, 32.635540, 38.740864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691454, 33.198524, 39.242489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353571, 32.996349, 39.312923>,  <30.150841, 32.875046, 39.355186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353571, 32.996349, 39.312923>,  <30.691454, 33.198524, 39.242489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353571, 32.996349, 39.312923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068537, 0.224147, 0.972142,
		-0.530824, 0.833243, -0.154698,
		-0.844706, -0.505434, 0.176091,
		30.100159, 32.844719, 39.365749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399973, 33.632420, 39.808105>,  <30.691454, 33.198524, 39.242489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399973, 33.632420, 39.808105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237270, 33.267017, 39.810863>,  <30.139648, 33.047775, 39.812519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237270, 33.267017, 39.810863>,  <30.399973, 33.632420, 39.808105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237270, 33.267017, 39.810863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114119, -0.043326, 0.992522,
		-0.906380, 0.404502, 0.121872,
		-0.406758, -0.913510, 0.006892,
		30.115244, 32.992966, 39.812931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033602, 33.668533, 40.348442>,  <30.399973, 33.632420, 39.808105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033602, 33.668533, 40.348442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049164, 33.273422, 40.288055>,  <30.058502, 33.036358, 40.251823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049164, 33.273422, 40.288055>,  <30.033602, 33.668533, 40.348442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049164, 33.273422, 40.288055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170800, -0.142283, 0.974979,
		-0.984537, -0.063718, 0.163176,
		0.038907, -0.987773, -0.150965,
		30.060835, 32.977089, 40.242767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563160, 33.362270, 40.745323>,  <30.033602, 33.668533, 40.348442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563160, 33.362270, 40.745323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833626, 33.078018, 40.667545>,  <29.995905, 32.907467, 40.620876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833626, 33.078018, 40.667545>,  <29.563160, 33.362270, 40.745323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833626, 33.078018, 40.667545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060777, -0.209228, 0.975976,
		-0.734241, -0.671737, -0.098282,
		0.676163, -0.710629, -0.194449,
		30.036474, 32.864830, 40.609211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372816, 32.778137, 41.126072>,  <29.563160, 33.362270, 40.745323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372816, 32.778137, 41.126072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761818, 32.710758, 41.061749>,  <29.995218, 32.670330, 41.023155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761818, 32.710758, 41.061749>,  <29.372816, 32.778137, 41.126072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761818, 32.710758, 41.061749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119692, -0.230803, 0.965611,
		-0.199772, -0.958308, -0.204295,
		0.972504, -0.168450, -0.160810,
		30.053570, 32.660225, 41.013504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528379, 32.165356, 41.435986>,  <29.372816, 32.778137, 41.126072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528379, 32.165356, 41.435986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900831, 32.309616, 41.414345>,  <30.124302, 32.396172, 41.401360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900831, 32.309616, 41.414345>,  <29.528379, 32.165356, 41.435986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900831, 32.309616, 41.414345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174699, -0.310902, 0.934248,
		0.320118, -0.879358, -0.352496,
		0.931131, 0.360651, -0.054097,
		30.180170, 32.417812, 41.398117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909321, 31.693556, 41.759647>,  <29.528379, 32.165356, 41.435986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909321, 31.693556, 41.759647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159842, 32.005352, 41.754852>,  <30.310154, 32.192429, 41.751976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159842, 32.005352, 41.754852>,  <29.909321, 31.693556, 41.759647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159842, 32.005352, 41.754852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334429, -0.254753, 0.907336,
		0.704206, -0.572272, -0.420236,
		0.626299, 0.779490, -0.011986,
		30.347731, 32.239201, 41.751255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467987, 31.354187, 42.140160>,  <29.909321, 31.693556, 41.759647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467987, 31.354187, 42.140160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582079, 31.737501, 42.132801>,  <30.650534, 31.967489, 42.128387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582079, 31.737501, 42.132801>,  <30.467987, 31.354187, 42.140160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582079, 31.737501, 42.132801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459500, -0.119876, 0.880051,
		0.841133, -0.259468, -0.474523,
		0.285229, 0.958283, -0.018394,
		30.667648, 32.024986, 42.127281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165934, 31.439199, 42.369358>,  <30.467987, 31.354187, 42.140160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165934, 31.439199, 42.369358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022676, 31.808279, 42.426434>,  <30.936722, 32.029728, 42.460678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022676, 31.808279, 42.426434>,  <31.165934, 31.439199, 42.369358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022676, 31.808279, 42.426434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551513, 0.085755, 0.829746,
		0.753369, 0.375865, -0.539593,
		-0.358145, 0.922698, 0.142689,
		30.915234, 32.085087, 42.469242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783985, 31.937716, 42.520782>,  <31.165934, 31.439199, 42.369358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783985, 31.937716, 42.520782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462708, 32.112194, 42.683075>,  <31.269941, 32.216881, 42.780449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462708, 32.112194, 42.683075>,  <31.783985, 31.937716, 42.520782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462708, 32.112194, 42.683075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545944, 0.266433, 0.794329,
		0.238385, 0.859503, -0.452136,
		-0.803192, 0.436197, 0.405727,
		31.221750, 32.243053, 42.804794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950579, 32.647865, 42.771351>,  <31.783985, 31.937716, 42.520782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950579, 32.647865, 42.771351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644733, 32.520710, 42.995605>,  <31.461226, 32.444416, 43.130157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644733, 32.520710, 42.995605>,  <31.950579, 32.647865, 42.771351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644733, 32.520710, 42.995605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472647, 0.314795, 0.823110,
		-0.438143, 0.894343, -0.090448,
		-0.764615, -0.317890, 0.560633,
		31.415348, 32.425343, 43.163795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832037, 33.156414, 43.269440>,  <31.950579, 32.647865, 42.771351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832037, 33.156414, 43.269440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663012, 32.826401, 43.419518>,  <31.561596, 32.628395, 43.509563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663012, 32.826401, 43.419518>,  <31.832037, 33.156414, 43.269440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663012, 32.826401, 43.419518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267562, 0.281960, 0.921363,
		-0.865939, 0.489721, 0.101600,
		-0.422563, -0.825029, 0.375191,
		31.536243, 32.578892, 43.532074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642426, 33.355526, 43.953339>,  <31.832037, 33.156414, 43.269440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642426, 33.355526, 43.953339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554295, 32.965542, 43.965389>,  <31.501415, 32.731552, 43.972618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554295, 32.965542, 43.965389>,  <31.642426, 33.355526, 43.953339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554295, 32.965542, 43.965389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083030, 0.012023, 0.996474,
		-0.971885, 0.222054, 0.078302,
		-0.220329, -0.974960, 0.030122,
		31.488195, 32.673054, 43.974426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208847, 33.315922, 44.520351>,  <31.642426, 33.355526, 43.953339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208847, 33.315922, 44.520351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394552, 32.964211, 44.477779>,  <31.505976, 32.753185, 44.452236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394552, 32.964211, 44.477779>,  <31.208847, 33.315922, 44.520351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394552, 32.964211, 44.477779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183036, -0.022320, 0.982853,
		-0.866578, -0.475783, 0.150578,
		0.464264, -0.879279, -0.106428,
		31.533831, 32.700428, 44.445850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902864, 32.867256, 45.031666>,  <31.208847, 33.315922, 44.520351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902864, 32.867256, 45.031666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245825, 32.687443, 44.931435>,  <31.451601, 32.579556, 44.871296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245825, 32.687443, 44.931435>,  <30.902864, 32.867256, 45.031666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245825, 32.687443, 44.931435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237514, -0.086308, 0.967542,
		-0.456567, -0.889085, 0.032770,
		0.857399, -0.449531, -0.250576,
		31.503044, 32.552582, 44.856262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923717, 32.222095, 45.459679>,  <30.902864, 32.867256, 45.031666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923717, 32.222095, 45.459679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307428, 32.269138, 45.356949>,  <31.537655, 32.297363, 45.295311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307428, 32.269138, 45.356949>,  <30.923717, 32.222095, 45.459679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307428, 32.269138, 45.356949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281644, -0.328767, 0.901437,
		0.021580, -0.937060, -0.348501,
		0.959276, 0.117606, -0.256822,
		31.595211, 32.304420, 45.279903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245438, 31.659393, 45.731876>,  <30.923717, 32.222095, 45.459679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245438, 31.659393, 45.731876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538733, 31.925695, 45.676552>,  <31.714710, 32.085476, 45.643356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538733, 31.925695, 45.676552>,  <31.245438, 31.659393, 45.731876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538733, 31.925695, 45.676552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403589, -0.262405, 0.876504,
		0.547244, -0.698507, -0.461098,
		0.733239, 0.665756, -0.138310,
		31.758705, 32.125423, 45.635059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957577, 31.314438, 45.743103>,  <31.245438, 31.659393, 45.731876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957577, 31.314438, 45.743103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049591, 31.696152, 45.819439>,  <32.104797, 31.925180, 45.865242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049591, 31.696152, 45.819439>,  <31.957577, 31.314438, 45.743103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049591, 31.696152, 45.819439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556988, -0.289908, 0.778278,
		0.798028, -0.072733, -0.598215,
		0.230034, 0.954287, 0.190843,
		32.118603, 31.982437, 45.876694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677219, 31.339733, 45.868004>,  <31.957577, 31.314438, 45.743103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677219, 31.339733, 45.868004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537048, 31.672173, 46.040737>,  <32.452946, 31.871635, 46.144375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537048, 31.672173, 46.040737>,  <32.677219, 31.339733, 45.868004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537048, 31.672173, 46.040737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620311, -0.139493, 0.771852,
		0.701722, 0.538349, -0.466656,
		-0.350430, 0.831097, 0.431829,
		32.431919, 31.921501, 46.170284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240059, 31.430225, 46.309772>,  <32.677219, 31.339733, 45.868004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240059, 31.430225, 46.309772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957157, 31.667673, 46.463345>,  <32.787415, 31.810143, 46.555489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957157, 31.667673, 46.463345>,  <33.240059, 31.430225, 46.309772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957157, 31.667673, 46.463345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408191, -0.100508, 0.907347,
		0.577207, 0.798445, -0.171225,
		-0.707257, 0.593620, 0.383932,
		32.744980, 31.845758, 46.578526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521862, 32.081051, 46.802513>,  <33.240059, 31.430225, 46.309772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521862, 32.081051, 46.802513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147022, 31.995846, 46.913120>,  <32.922119, 31.944721, 46.979485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147022, 31.995846, 46.913120>,  <33.521862, 32.081051, 46.802513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147022, 31.995846, 46.913120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276009, 0.032760, 0.960597,
		-0.213682, 0.976499, 0.028096,
		-0.937101, -0.213017, 0.276522,
		32.865891, 31.931940, 46.996078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145370, 32.362270, 46.587841>,  <33.521862, 32.081051, 46.802513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145370, 32.362270, 46.587841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421822, 32.073483, 46.601093>,  <34.587692, 31.900209, 46.609047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421822, 32.073483, 46.601093>,  <34.145370, 32.362270, 46.587841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421822, 32.073483, 46.601093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189660, -0.225413, -0.955624,
		0.697405, 0.654173, -0.292719,
		0.691127, -0.721974, 0.033134,
		34.629158, 31.856890, 46.611034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567551, 32.507416, 46.043171>,  <34.145370, 32.362270, 46.587841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567551, 32.507416, 46.043171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647568, 32.123192, 46.120426>,  <34.695580, 31.892656, 46.166779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647568, 32.123192, 46.120426>,  <34.567551, 32.507416, 46.043171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647568, 32.123192, 46.120426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135461, -0.168120, -0.976415,
		0.970378, 0.221487, 0.096488,
		0.200041, -0.960562, 0.193143,
		34.707581, 31.835024, 46.178368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904892, 32.358387, 45.523697>,  <34.567551, 32.507416, 46.043171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904892, 32.358387, 45.523697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858177, 31.989223, 45.670444>,  <34.830151, 31.767725, 45.758492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858177, 31.989223, 45.670444>,  <34.904892, 32.358387, 45.523697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858177, 31.989223, 45.670444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008268, -0.370287, -0.928881,
		0.993123, -0.105446, 0.050875,
		-0.116785, -0.922913, 0.366868,
		34.823143, 31.712349, 45.780506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554943, 31.850733, 45.407871>,  <34.904892, 32.358387, 45.523697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554943, 31.850733, 45.407871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230896, 31.617325, 45.430534>,  <35.036469, 31.477280, 45.444134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230896, 31.617325, 45.430534>,  <35.554943, 31.850733, 45.407871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230896, 31.617325, 45.430534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129650, -0.272565, -0.953362,
		0.571748, -0.764992, 0.296464,
		-0.810120, -0.583519, 0.056657,
		34.987862, 31.442268, 45.447533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717529, 31.190891, 45.135700>,  <35.554943, 31.850733, 45.407871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717529, 31.190891, 45.135700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319424, 31.199835, 45.097851>,  <35.080563, 31.205200, 45.075142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319424, 31.199835, 45.097851>,  <35.717529, 31.190891, 45.135700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319424, 31.199835, 45.097851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090088, -0.154082, -0.983943,
		-0.036575, -0.987805, 0.151338,
		-0.995261, 0.022354, -0.094625,
		35.020844, 31.206541, 45.069462>
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
