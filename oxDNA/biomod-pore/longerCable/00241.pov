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
	<24.044340, 35.200844, 34.766762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.164795, 34.875999, 34.966679>,  <24.237068, 34.681091, 35.086628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.164795, 34.875999, 34.966679>,  <24.044340, 35.200844, 34.766762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.164795, 34.875999, 34.966679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573083, -0.573038, -0.585835,
		0.762163, -0.110007, -0.637970,
		0.301135, -0.812112, 0.499792,
		24.255135, 34.632366, 35.116615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.435009, 35.732101, 35.169182>,  <24.044340, 35.200844, 34.766762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.435009, 35.732101, 35.169182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.595646, 36.049591, 34.986439>,  <24.692028, 36.240086, 34.876793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.595646, 36.049591, 34.986439>,  <24.435009, 35.732101, 35.169182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.595646, 36.049591, 34.986439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058429, -0.520041, -0.852141,
		-0.913953, 0.315520, -0.255222,
		0.401593, 0.793728, -0.456857,
		24.716124, 36.287708, 34.849380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.156155, 35.927780, 34.458672>,  <24.435009, 35.732101, 35.169182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.156155, 35.927780, 34.458672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543907, 36.024574, 34.475376>,  <24.776558, 36.082649, 34.485401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543907, 36.024574, 34.475376>,  <24.156155, 35.927780, 34.458672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.543907, 36.024574, 34.475376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162056, -0.502629, -0.849177,
		-0.184492, 0.829945, -0.526453,
		0.969381, 0.241982, 0.041766,
		24.834723, 36.097168, 34.487907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.372150, 36.077312, 33.824108>,  <24.156155, 35.927780, 34.458672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.372150, 36.077312, 33.824108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.709122, 35.988979, 34.020699>,  <24.911304, 35.935978, 34.138653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.709122, 35.988979, 34.020699>,  <24.372150, 36.077312, 33.824108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.709122, 35.988979, 34.020699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267770, -0.619948, -0.737539,
		0.467561, 0.752926, -0.463130,
		0.842428, -0.220832, 0.491475,
		24.961851, 35.922729, 34.168140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.945177, 36.193153, 33.390751>,  <24.372150, 36.077312, 33.824108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.945177, 36.193153, 33.390751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139542, 35.940491, 33.632381>,  <25.256161, 35.788895, 33.777359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139542, 35.940491, 33.632381>,  <24.945177, 36.193153, 33.390751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.139542, 35.940491, 33.632381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263470, -0.553141, -0.790328,
		0.833352, 0.543183, -0.102355,
		0.485910, -0.631654, 0.604073,
		25.285315, 35.750996, 33.813602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.624352, 36.005314, 33.106544>,  <24.945177, 36.193153, 33.390751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.624352, 36.005314, 33.106544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495430, 35.701088, 33.331989>,  <25.418077, 35.518551, 33.467255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495430, 35.701088, 33.331989>,  <25.624352, 36.005314, 33.106544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.495430, 35.701088, 33.331989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283672, -0.645623, -0.709014,
		0.903133, -0.068638, 0.423839,
		-0.322306, -0.760565, 0.563613,
		25.398739, 35.472919, 33.501072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.160480, 35.388054, 33.102825>,  <25.624352, 36.005314, 33.106544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.160480, 35.388054, 33.102825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774622, 35.282917, 33.095093>,  <25.543108, 35.219833, 33.090454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774622, 35.282917, 33.095093>,  <26.160480, 35.388054, 33.102825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.774622, 35.282917, 33.095093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186461, -0.628789, -0.754889,
		0.186263, -0.731804, 0.655568,
		-0.964644, -0.262846, -0.019332,
		25.485229, 35.204063, 33.089294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093769, 34.689377, 33.098866>,  <26.160480, 35.388054, 33.102825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093769, 34.689377, 33.098866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767811, 34.804024, 32.897354>,  <25.572235, 34.872810, 32.776447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767811, 34.804024, 32.897354>,  <26.093769, 34.689377, 33.098866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767811, 34.804024, 32.897354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176429, -0.705274, -0.686630,
		-0.552100, -0.648415, 0.524160,
		-0.814898, 0.286612, -0.503781,
		25.523342, 34.890007, 32.746220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.643713, 34.080910, 33.000683>,  <26.093769, 34.689377, 33.098866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.643713, 34.080910, 33.000683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549385, 34.340279, 32.711151>,  <25.492788, 34.495899, 32.537430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549385, 34.340279, 32.711151>,  <25.643713, 34.080910, 33.000683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.549385, 34.340279, 32.711151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048236, -0.751731, -0.657703,
		-0.970599, -0.120185, 0.208551,
		-0.235820, 0.648426, -0.723832,
		25.478640, 34.534805, 32.494003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.006079, 33.838924, 32.624027>,  <25.643713, 34.080910, 33.000683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.006079, 33.838924, 32.624027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.210417, 34.081753, 32.380550>,  <25.333019, 34.227448, 32.234463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.210417, 34.081753, 32.380550>,  <25.006079, 33.838924, 32.624027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.210417, 34.081753, 32.380550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050257, -0.727929, -0.683808,
		-0.858203, 0.318728, -0.402367,
		0.510844, 0.607068, -0.608693,
		25.363670, 34.263874, 32.197941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.782099, 33.770332, 31.948570>,  <25.006079, 33.838924, 32.624027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.782099, 33.770332, 31.948570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.131832, 33.942772, 31.859398>,  <25.341671, 34.046234, 31.805895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.131832, 33.942772, 31.859398>,  <24.782099, 33.770332, 31.948570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.131832, 33.942772, 31.859398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148228, -0.674593, -0.723155,
		-0.462138, 0.599233, -0.653719,
		0.874332, 0.431097, -0.222932,
		25.394133, 34.072102, 31.792519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.975180, 33.838108, 31.180828>,  <24.782099, 33.770332, 31.948570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.975180, 33.838108, 31.180828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308050, 33.787323, 31.396740>,  <25.507772, 33.756851, 31.526287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308050, 33.787323, 31.396740>,  <24.975180, 33.838108, 31.180828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.308050, 33.787323, 31.396740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255256, -0.776457, -0.576158,
		0.492267, 0.617247, -0.613742,
		0.832177, -0.126962, 0.539780,
		25.557703, 33.749233, 31.558674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603258, 33.858433, 30.821312>,  <24.975180, 33.838108, 31.180828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.603258, 33.858433, 30.821312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678045, 33.631638, 31.142204>,  <25.722918, 33.495560, 31.334740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678045, 33.631638, 31.142204>,  <25.603258, 33.858433, 30.821312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678045, 33.631638, 31.142204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363824, -0.718594, -0.592668,
		0.912510, 0.402681, 0.071928,
		0.186969, -0.566984, 0.802229,
		25.734137, 33.461544, 31.382874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335361, 33.641418, 30.784367>,  <25.603258, 33.858433, 30.821312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335361, 33.641418, 30.784367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112558, 33.392933, 31.004852>,  <25.978876, 33.243843, 31.137144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112558, 33.392933, 31.004852>,  <26.335361, 33.641418, 30.784367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112558, 33.392933, 31.004852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234626, -0.754373, -0.613084,
		0.796678, -0.212162, 0.565943,
		-0.557005, -0.621215, 0.551213,
		25.945457, 33.206570, 31.170216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711493, 33.435825, 31.522018>,  <26.335361, 33.641418, 30.784367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.711493, 33.435825, 31.522018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349054, 33.536366, 31.385893>,  <26.131592, 33.596691, 31.304218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349054, 33.536366, 31.385893>,  <26.711493, 33.435825, 31.522018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349054, 33.536366, 31.385893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044517, 0.856564, 0.514118,
		0.420725, 0.450690, -0.787318,
		-0.906095, 0.251352, -0.340314,
		26.077227, 33.611771, 31.283798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585163, 34.109520, 31.805471>,  <26.711493, 33.435825, 31.522018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585163, 34.109520, 31.805471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227507, 34.053764, 31.635258>,  <26.012913, 34.020313, 31.533129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227507, 34.053764, 31.635258>,  <26.585163, 34.109520, 31.805471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227507, 34.053764, 31.635258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329209, 0.848803, 0.413709,
		0.303531, 0.510005, -0.804838,
		-0.894142, -0.139387, -0.425536,
		25.959265, 34.011948, 31.507597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417618, 34.759502, 31.458490>,  <26.585163, 34.109520, 31.805471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417618, 34.759502, 31.458490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090332, 34.550568, 31.554567>,  <25.893961, 34.425209, 31.612213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090332, 34.550568, 31.554567>,  <26.417618, 34.759502, 31.458490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090332, 34.550568, 31.554567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383518, 0.807149, 0.448804,
		-0.428297, 0.275099, -0.860745,
		-0.818215, -0.522333, 0.240194,
		25.844868, 34.393867, 31.626625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904217, 35.186028, 31.545380>,  <26.417618, 34.759502, 31.458490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904217, 35.186028, 31.545380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707684, 34.889786, 31.728725>,  <25.589764, 34.712040, 31.838734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707684, 34.889786, 31.728725>,  <25.904217, 35.186028, 31.545380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707684, 34.889786, 31.728725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253001, 0.624938, 0.738541,
		-0.833416, 0.246903, -0.494426,
		-0.491333, -0.740602, 0.458366,
		25.560284, 34.667606, 31.866236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.063824, 35.337238, 31.599873>,  <25.904217, 35.186028, 31.545380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.063824, 35.337238, 31.599873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204008, 35.092476, 31.883492>,  <25.288118, 34.945618, 32.053661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.204008, 35.092476, 31.883492>,  <25.063824, 35.337238, 31.599873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.204008, 35.092476, 31.883492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256351, 0.665481, 0.701013,
		-0.900812, -0.427442, 0.076361,
		0.350459, -0.611906, 0.709048,
		25.309145, 34.908905, 32.096207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.558130, 35.481682, 32.131435>,  <25.063824, 35.337238, 31.599873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.558130, 35.481682, 32.131435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.869259, 35.307816, 32.313011>,  <25.055935, 35.203495, 32.421955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.869259, 35.307816, 32.313011>,  <24.558130, 35.481682, 32.131435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.869259, 35.307816, 32.313011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074710, 0.653202, 0.753489,
		-0.624030, -0.619993, 0.475600,
		0.777820, -0.434668, 0.453937,
		25.102606, 35.177414, 32.449192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.345491, 35.109699, 32.809216>,  <24.558130, 35.481682, 32.131435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.345491, 35.109699, 32.809216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.712202, 35.264751, 32.770714>,  <24.932228, 35.357784, 32.747612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.712202, 35.264751, 32.770714>,  <24.345491, 35.109699, 32.809216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.712202, 35.264751, 32.770714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139522, 0.536628, 0.832204,
		0.374239, -0.749515, 0.546051,
		0.916776, 0.387629, -0.096253,
		24.987234, 35.381039, 32.741837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.736868, 34.929871, 33.443962>,  <24.345491, 35.109699, 32.809216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.736868, 34.929871, 33.443962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865490, 35.271900, 33.281258>,  <24.942663, 35.477119, 33.183636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865490, 35.271900, 33.281258>,  <24.736868, 34.929871, 33.443962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.865490, 35.271900, 33.281258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049057, 0.444038, 0.894664,
		0.945619, -0.267730, 0.184731,
		0.321556, 0.855074, -0.406757,
		24.961956, 35.528423, 33.159229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.196890, 34.430325, 33.652313>,  <24.736868, 34.929871, 33.443962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.196890, 34.430325, 33.652313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477591, 34.705029, 33.576519>,  <25.646011, 34.869850, 33.531040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.477591, 34.705029, 33.576519>,  <25.196890, 34.430325, 33.652313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.477591, 34.705029, 33.576519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245519, 0.482816, 0.840600,
		0.668781, -0.543367, 0.507429,
		0.701750, 0.686761, -0.189491,
		25.688116, 34.911057, 33.519672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.358335, 34.668407, 34.259777>,  <25.196890, 34.430325, 33.652313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.358335, 34.668407, 34.259777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509201, 34.965237, 34.038120>,  <25.599720, 35.143333, 33.905128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509201, 34.965237, 34.038120>,  <25.358335, 34.668407, 34.259777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.509201, 34.965237, 34.038120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077953, 0.621641, 0.779414,
		0.922860, -0.250770, 0.292307,
		0.377164, 0.742077, -0.554139,
		25.622351, 35.187859, 33.871880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.853374, 35.034126, 34.655731>,  <25.358335, 34.668407, 34.259777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.853374, 35.034126, 34.655731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705572, 35.285885, 34.382286>,  <25.616890, 35.436939, 34.218220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.705572, 35.285885, 34.382286>,  <25.853374, 35.034126, 34.655731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.705572, 35.285885, 34.382286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218346, 0.656272, 0.722241,
		0.903210, 0.416138, -0.105072,
		-0.369508, 0.629393, -0.683614,
		25.594719, 35.474705, 34.177200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.054583, 35.630840, 34.801956>,  <25.853374, 35.034126, 34.655731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.054583, 35.630840, 34.801956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716934, 35.729134, 34.611347>,  <25.514345, 35.788109, 34.496983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716934, 35.729134, 34.611347>,  <26.054583, 35.630840, 34.801956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.716934, 35.729134, 34.611347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154776, 0.739255, 0.655398,
		0.513328, 0.626989, -0.585986,
		-0.844120, 0.245738, -0.476523,
		25.463697, 35.802856, 34.468391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056156, 36.411339, 34.798481>,  <26.054583, 35.630840, 34.801956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056156, 36.411339, 34.798481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684607, 36.309200, 34.691154>,  <25.461678, 36.247917, 34.626759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684607, 36.309200, 34.691154>,  <26.056156, 36.411339, 34.798481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684607, 36.309200, 34.691154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364187, 0.761740, 0.535835,
		0.067563, 0.595440, -0.800554,
		-0.928872, -0.255349, -0.268317,
		25.405945, 36.232597, 34.610661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539076, 36.031681, 34.409248>,  <26.056156, 36.411339, 34.798481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539076, 36.031681, 34.409248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838392, 36.188534, 34.195225>,  <27.017982, 36.282646, 34.066811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838392, 36.188534, 34.195225>,  <26.539076, 36.031681, 34.409248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838392, 36.188534, 34.195225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091814, -0.737602, -0.668965,
		-0.656984, 0.549708, -0.515939,
		0.748293, 0.392129, -0.535063,
		27.062880, 36.306171, 34.034706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345465, 36.033112, 33.652584>,  <26.539076, 36.031681, 34.409248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345465, 36.033112, 33.652584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740950, 36.036568, 33.712418>,  <26.978241, 36.038639, 33.748318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740950, 36.036568, 33.712418>,  <26.345465, 36.033112, 33.652584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740950, 36.036568, 33.712418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106211, -0.744564, -0.659047,
		0.105680, 0.667495, -0.737077,
		0.988712, 0.008638, 0.149581,
		27.037563, 36.039158, 33.757294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747456, 35.973923, 32.977711>,  <26.345465, 36.033112, 33.652584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747456, 35.973923, 32.977711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956894, 35.820801, 33.282162>,  <27.082556, 35.728928, 33.464832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956894, 35.820801, 33.282162>,  <26.747456, 35.973923, 32.977711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956894, 35.820801, 33.282162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097000, -0.860776, -0.499655,
		0.846428, 0.335446, -0.413566,
		0.523595, -0.382806, 0.761123,
		27.113972, 35.705959, 33.510498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340555, 35.709507, 32.647041>,  <26.747456, 35.973923, 32.977711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340555, 35.709507, 32.647041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238968, 35.523926, 32.986511>,  <27.178017, 35.412575, 33.190193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238968, 35.523926, 32.986511>,  <27.340555, 35.709507, 32.647041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238968, 35.523926, 32.986511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277753, -0.875468, -0.395486,
		0.926474, 0.135281, 0.351205,
		-0.253967, -0.463956, 0.848673,
		27.162777, 35.384739, 33.241112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985109, 35.628571, 32.987968>,  <27.340555, 35.709507, 32.647041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985109, 35.628571, 32.987968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.673607, 35.385414, 33.049950>,  <27.486706, 35.239521, 33.087139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.673607, 35.385414, 33.049950>,  <27.985109, 35.628571, 32.987968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.673607, 35.385414, 33.049950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554816, -0.782682, -0.282116,
		0.292776, -0.133728, 0.946784,
		-0.778757, -0.607887, 0.154956,
		27.439980, 35.203049, 33.096436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773109, 35.833939, 32.825104>,  <27.985109, 35.628571, 32.987968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773109, 35.833939, 32.825104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165615, 35.757893, 32.812599>,  <29.401119, 35.712265, 32.805096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165615, 35.757893, 32.812599>,  <28.773109, 35.833939, 32.825104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165615, 35.757893, 32.812599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175104, -0.812285, -0.556356,
		0.080379, 0.551406, -0.830356,
		0.981263, -0.190118, -0.031263,
		29.459993, 35.700859, 32.803219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926872, 35.814362, 32.080479>,  <28.773109, 35.833939, 32.825104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926872, 35.814362, 32.080479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188248, 35.596256, 32.290512>,  <29.345072, 35.465393, 32.416531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.188248, 35.596256, 32.290512>,  <28.926872, 35.814362, 32.080479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188248, 35.596256, 32.290512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192593, -0.790578, -0.581286,
		0.732071, 0.278707, -0.621606,
		0.653437, -0.545260, 0.525083,
		29.384279, 35.432678, 32.448036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248020, 35.085835, 31.895267>,  <28.926872, 35.814362, 32.080479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248020, 35.085835, 31.895267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577606, 35.042313, 32.117706>,  <29.775358, 35.016197, 32.251171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577606, 35.042313, 32.117706>,  <29.248020, 35.085835, 31.895267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577606, 35.042313, 32.117706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044960, -0.965743, -0.255575,
		0.564855, 0.235587, -0.790847,
		0.823965, -0.108806, 0.556096,
		29.824795, 35.009670, 32.284534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931967, 34.939110, 31.584433>,  <29.248020, 35.085835, 31.895267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931967, 34.939110, 31.584433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888563, 34.785255, 31.951099>,  <29.862520, 34.692944, 32.171101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888563, 34.785255, 31.951099>,  <29.931967, 34.939110, 31.584433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888563, 34.785255, 31.951099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135140, -0.907846, -0.396930,
		0.984867, -0.166950, 0.046531,
		-0.108510, -0.384635, 0.916669,
		29.856010, 34.669865, 32.226101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229939, 34.230465, 31.628229>,  <29.931967, 34.939110, 31.584433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229939, 34.230465, 31.628229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966272, 34.248283, 31.928501>,  <29.808073, 34.258972, 32.108665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966272, 34.248283, 31.928501>,  <30.229939, 34.230465, 31.628229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966272, 34.248283, 31.928501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317363, -0.921469, -0.223998,
		0.681749, -0.385889, 0.621536,
		-0.659165, 0.044542, 0.750678,
		29.768522, 34.261646, 32.153706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245327, 33.606289, 32.048679>,  <30.229939, 34.230465, 31.628229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245327, 33.606289, 32.048679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880713, 33.759624, 32.108208>,  <29.661943, 33.851627, 32.143925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880713, 33.759624, 32.108208>,  <30.245327, 33.606289, 32.048679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880713, 33.759624, 32.108208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410146, -0.873657, -0.261731,
		0.029690, -0.299618, 0.953597,
		-0.911537, 0.383343, 0.148826,
		29.607252, 33.874626, 32.152855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839199, 33.033146, 32.493515>,  <30.245327, 33.606289, 32.048679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839199, 33.033146, 32.493515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616472, 33.281525, 32.272835>,  <29.482836, 33.430553, 32.140427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616472, 33.281525, 32.272835>,  <29.839199, 33.033146, 32.493515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616472, 33.281525, 32.272835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440135, -0.783850, -0.438020,
		-0.704438, -0.001076, 0.709764,
		-0.556820, 0.620950, -0.551700,
		29.449427, 33.467808, 32.107323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613890, 32.392056, 32.074451>,  <29.839199, 33.033146, 32.493515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613890, 32.392056, 32.074451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244373, 32.413372, 32.226116>,  <29.022663, 32.426163, 32.317116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244373, 32.413372, 32.226116>,  <29.613890, 32.392056, 32.074451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244373, 32.413372, 32.226116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094043, 0.991514, 0.089755,
		-0.371165, 0.118573, -0.920965,
		-0.923793, 0.053296, 0.379166,
		28.967236, 32.429359, 32.339867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414177, 32.917900, 31.733690>,  <29.613890, 32.392056, 32.074451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414177, 32.917900, 31.733690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162487, 32.900463, 32.044090>,  <29.011473, 32.889999, 32.230331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162487, 32.900463, 32.044090>,  <29.414177, 32.917900, 31.733690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162487, 32.900463, 32.044090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017730, 0.998971, 0.041746,
		-0.777021, 0.012510, -0.629350,
		-0.629225, -0.043596, 0.775999,
		28.973719, 32.887383, 32.276890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743292, 33.331593, 31.571293>,  <29.414177, 32.917900, 31.733690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743292, 33.331593, 31.571293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866920, 33.326481, 31.951674>,  <28.941097, 33.323414, 32.179901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866920, 33.326481, 31.951674>,  <28.743292, 33.331593, 31.571293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866920, 33.326481, 31.951674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229751, 0.969290, 0.087697,
		-0.922871, -0.245587, 0.296643,
		0.309070, -0.012779, 0.950953,
		28.959642, 33.322647, 32.236961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345139, 33.823868, 31.937632>,  <28.743292, 33.331593, 31.571293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345139, 33.823868, 31.937632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691572, 33.757214, 32.126156>,  <28.899433, 33.717220, 32.239269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691572, 33.757214, 32.126156>,  <28.345139, 33.823868, 31.937632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691572, 33.757214, 32.126156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103967, 0.982235, 0.156220,
		-0.488968, -0.086299, 0.868023,
		0.866084, -0.166632, 0.471309,
		28.951397, 33.707226, 32.267548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467262, 34.301208, 32.515514>,  <28.345139, 33.823868, 31.937632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467262, 34.301208, 32.515514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833965, 34.160297, 32.440193>,  <29.053988, 34.075752, 32.395000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833965, 34.160297, 32.440193>,  <28.467262, 34.301208, 32.515514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833965, 34.160297, 32.440193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391702, 0.885195, 0.250996,
		0.078268, -0.303862, 0.949496,
		0.916757, -0.352274, -0.188306,
		29.108992, 34.054615, 32.383701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900076, 34.462074, 33.073807>,  <28.467262, 34.301208, 32.515514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900076, 34.462074, 33.073807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157547, 34.392994, 32.775585>,  <29.312031, 34.351547, 32.596653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157547, 34.392994, 32.775585>,  <28.900076, 34.462074, 33.073807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157547, 34.392994, 32.775585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397035, 0.908203, 0.132406,
		0.654247, -0.381238, 0.653160,
		0.643680, -0.172701, -0.745554,
		29.350651, 34.341183, 32.551918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600349, 34.460094, 33.278893>,  <28.900076, 34.462074, 33.073807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600349, 34.460094, 33.278893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587038, 34.601322, 32.904892>,  <29.579052, 34.686058, 32.680492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587038, 34.601322, 32.904892>,  <29.600349, 34.460094, 33.278893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587038, 34.601322, 32.904892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351136, 0.880015, 0.319808,
		0.935733, -0.317671, -0.153262,
		-0.033279, 0.353071, -0.935005,
		29.577055, 34.707245, 32.624390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.232487, 34.737453, 33.158691>,  <29.600349, 34.460094, 33.278893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.232487, 34.737453, 33.158691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991405, 34.951488, 32.921902>,  <29.846756, 35.079910, 32.779827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991405, 34.951488, 32.921902>,  <30.232487, 34.737453, 33.158691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991405, 34.951488, 32.921902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264750, 0.833917, 0.484241,
		0.752767, 0.135129, -0.644269,
		-0.602702, 0.535091, -0.591970,
		29.810595, 35.112015, 32.744312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635443, 35.242664, 32.780575>,  <30.232487, 34.737453, 33.158691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635443, 35.242664, 32.780575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266218, 35.393814, 32.809345>,  <30.044683, 35.484505, 32.826607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266218, 35.393814, 32.809345>,  <30.635443, 35.242664, 32.780575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266218, 35.393814, 32.809345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371224, 0.826123, 0.423926,
		0.100767, 0.418010, -0.902836,
		-0.923059, 0.377872, 0.071930,
		29.989300, 35.507175, 32.830925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452244, 35.906704, 32.421192>,  <30.635443, 35.242664, 32.780575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452244, 35.906704, 32.421192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282059, 35.821285, 32.772961>,  <30.179947, 35.770035, 32.984020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282059, 35.821285, 32.772961>,  <30.452244, 35.906704, 32.421192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282059, 35.821285, 32.772961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304280, 0.881429, 0.361243,
		-0.852289, 0.421286, -0.310037,
		-0.425462, -0.213546, 0.879421,
		30.154421, 35.757221, 33.036785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092165, 36.471115, 32.679790>,  <30.452244, 35.906704, 32.421192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092165, 36.471115, 32.679790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187614, 36.246979, 32.997047>,  <30.244884, 36.112499, 33.187401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.187614, 36.246979, 32.997047>,  <30.092165, 36.471115, 32.679790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187614, 36.246979, 32.997047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419697, 0.796031, 0.436106,
		-0.875736, 0.228816, 0.425124,
		0.238624, -0.560337, 0.793146,
		30.259201, 36.078876, 33.234993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666744, 36.601562, 33.332745>,  <30.092165, 36.471115, 32.679790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666744, 36.601562, 33.332745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053772, 36.500523, 33.332676>,  <30.285988, 36.439899, 33.332634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053772, 36.500523, 33.332676>,  <29.666744, 36.601562, 33.332745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053772, 36.500523, 33.332676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225163, 0.862165, 0.453842,
		-0.114498, -0.439161, 0.891082,
		0.967570, -0.252603, -0.000167,
		30.344044, 36.424744, 33.332626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962954, 36.580933, 33.990795>,  <29.666744, 36.601562, 33.332745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962954, 36.580933, 33.990795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259733, 36.659279, 33.734314>,  <30.437801, 36.706287, 33.580425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259733, 36.659279, 33.734314>,  <29.962954, 36.580933, 33.990795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259733, 36.659279, 33.734314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183977, 0.860184, 0.475643,
		0.644720, -0.470870, 0.602177,
		0.741949, 0.195870, -0.641207,
		30.482317, 36.718040, 33.541950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552011, 36.725082, 34.426819>,  <29.962954, 36.580933, 33.990795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552011, 36.725082, 34.426819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561745, 36.921036, 34.078239>,  <30.567585, 37.038609, 33.869091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561745, 36.921036, 34.078239>,  <30.552011, 36.725082, 34.426819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561745, 36.921036, 34.078239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001020, 0.871717, 0.490009,
		0.999703, -0.011034, 0.021710,
		0.024332, 0.489886, -0.871447,
		30.569044, 37.068001, 33.816807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097046, 37.252396, 34.427444>,  <30.552011, 36.725082, 34.426819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097046, 37.252396, 34.427444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770662, 37.344498, 34.215336>,  <30.574833, 37.399761, 34.088070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770662, 37.344498, 34.215336>,  <31.097046, 37.252396, 34.427444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770662, 37.344498, 34.215336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166123, 0.785181, 0.596568,
		0.553727, 0.574866, -0.602425,
		-0.815959, 0.230259, -0.530275,
		30.525875, 37.413574, 34.056252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591255, 36.672237, 34.126717>,  <31.097046, 37.252396, 34.427444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591255, 36.672237, 34.126717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937984, 36.631348, 34.321926>,  <32.146023, 36.606812, 34.439053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937984, 36.631348, 34.321926>,  <31.591255, 36.672237, 34.126717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937984, 36.631348, 34.321926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455243, 0.236994, 0.858247,
		-0.203395, -0.966118, 0.158893,
		0.866824, -0.102228, 0.488021,
		32.198032, 36.600677, 34.468334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431353, 36.336735, 34.700932>,  <31.591255, 36.672237, 34.126717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431353, 36.336735, 34.700932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783550, 36.507301, 34.783779>,  <31.994869, 36.609642, 34.833488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783550, 36.507301, 34.783779>,  <31.431353, 36.336735, 34.700932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783550, 36.507301, 34.783779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351312, 0.293597, 0.889033,
		0.318281, -0.855556, 0.408314,
		0.880498, 0.426409, 0.207121,
		32.047699, 36.635227, 34.845913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515821, 36.125469, 35.333347>,  <31.431353, 36.336735, 34.700932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515821, 36.125469, 35.333347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752565, 36.443993, 35.283394>,  <31.894611, 36.635105, 35.253422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752565, 36.443993, 35.283394>,  <31.515821, 36.125469, 35.333347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752565, 36.443993, 35.283394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396542, 0.422545, 0.814991,
		0.701752, -0.432840, 0.565857,
		0.591861, 0.796308, -0.124883,
		31.930124, 36.682884, 35.245930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754673, 36.269627, 35.913181>,  <31.515821, 36.125469, 35.333347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754673, 36.269627, 35.913181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821703, 36.620682, 35.733551>,  <31.861921, 36.831314, 35.625774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821703, 36.620682, 35.733551>,  <31.754673, 36.269627, 35.913181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821703, 36.620682, 35.733551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363735, 0.478419, 0.799257,
		0.916305, 0.029409, 0.399400,
		0.167576, 0.877639, -0.449075,
		31.871975, 36.883972, 35.598827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975574, 36.745422, 36.523663>,  <31.754673, 36.269627, 35.913181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975574, 36.745422, 36.523663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810921, 36.878983, 36.184471>,  <31.712128, 36.959118, 35.980957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810921, 36.878983, 36.184471>,  <31.975574, 36.745422, 36.523663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810921, 36.878983, 36.184471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612267, 0.587880, 0.528702,
		0.675044, 0.736821, -0.037554,
		-0.411636, 0.333904, -0.847976,
		31.687429, 36.979153, 35.930077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091465, 37.527874, 36.413746>,  <31.975574, 36.745422, 36.523663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091465, 37.527874, 36.413746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764128, 37.360706, 36.255936>,  <31.567724, 37.260406, 36.161251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764128, 37.360706, 36.255936>,  <32.091465, 37.527874, 36.413746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764128, 37.360706, 36.255936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574607, 0.581129, 0.576295,
		-0.011576, 0.698306, -0.715706,
		-0.818348, -0.417921, -0.394524,
		31.518623, 37.235329, 36.137577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789768, 38.050476, 36.255722>,  <32.091465, 37.527874, 36.413746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789768, 38.050476, 36.255722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454733, 37.842197, 36.321831>,  <31.253712, 37.717228, 36.361496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454733, 37.842197, 36.321831>,  <31.789768, 38.050476, 36.255722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454733, 37.842197, 36.321831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410813, 0.799765, 0.437732,
		-0.360107, 0.298743, -0.883785,
		-0.837589, -0.520700, 0.165274,
		31.203457, 37.685986, 36.371414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736444, 37.950237, 35.521404>,  <31.789768, 38.050476, 36.255722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736444, 37.950237, 35.521404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568806, 37.834282, 35.177235>,  <31.468224, 37.764709, 34.970734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.568806, 37.834282, 35.177235>,  <31.736444, 37.950237, 35.521404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568806, 37.834282, 35.177235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444631, -0.891777, 0.083885,
		-0.791620, -0.347413, 0.502635,
		-0.419095, -0.289892, -0.860420,
		31.443077, 37.747314, 34.919109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239872, 37.969116, 35.024712>,  <31.736444, 37.950237, 35.521404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239872, 37.969116, 35.024712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195900, 37.632038, 35.235531>,  <32.169518, 37.429790, 35.362022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.195900, 37.632038, 35.235531>,  <32.239872, 37.969116, 35.024712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195900, 37.632038, 35.235531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575968, -0.486164, -0.657195,
		0.810047, 0.231317, 0.538810,
		-0.109929, -0.842697, 0.527047,
		32.162922, 37.379230, 35.393646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832882, 37.596352, 34.962585>,  <32.239872, 37.969116, 35.024712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832882, 37.596352, 34.962585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577728, 37.314236, 35.086304>,  <32.424637, 37.144966, 35.160534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577728, 37.314236, 35.086304>,  <32.832882, 37.596352, 34.962585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577728, 37.314236, 35.086304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383597, -0.639228, -0.666514,
		0.667798, -0.306515, 0.678303,
		-0.637887, -0.705292, 0.309297,
		32.386364, 37.102650, 35.179092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227459, 37.025944, 35.319942>,  <32.832882, 37.596352, 34.962585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227459, 37.025944, 35.319942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882153, 36.907383, 35.156521>,  <32.674969, 36.836246, 35.058468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882153, 36.907383, 35.156521>,  <33.227459, 37.025944, 35.319942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882153, 36.907383, 35.156521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500890, -0.603010, -0.620877,
		-0.062333, -0.740623, 0.669023,
		-0.863263, -0.296406, -0.408558,
		32.623173, 36.818462, 35.033955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251961, 36.271988, 35.168896>,  <33.227459, 37.025944, 35.319942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251961, 36.271988, 35.168896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961040, 36.391640, 34.921814>,  <32.786488, 36.463432, 34.773563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961040, 36.391640, 34.921814>,  <33.251961, 36.271988, 35.168896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961040, 36.391640, 34.921814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400817, -0.545468, -0.736078,
		-0.557125, -0.782933, 0.276818,
		-0.727294, 0.299134, -0.617706,
		32.742851, 36.481380, 34.736504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963032, 35.664791, 34.856754>,  <33.251961, 36.271988, 35.168896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963032, 35.664791, 34.856754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887081, 35.976242, 34.617523>,  <32.841511, 36.163113, 34.473984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.887081, 35.976242, 34.617523>,  <32.963032, 35.664791, 34.856754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887081, 35.976242, 34.617523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135539, -0.582535, -0.801425,
		-0.972407, -0.233236, 0.005077,
		-0.189879, 0.778623, -0.598074,
		32.830116, 36.209827, 34.438103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482849, 35.483196, 34.377541>,  <32.963032, 35.664791, 34.856754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482849, 35.483196, 34.377541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691036, 35.772480, 34.195957>,  <32.815948, 35.946049, 34.087009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691036, 35.772480, 34.195957>,  <32.482849, 35.483196, 34.377541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691036, 35.772480, 34.195957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028124, -0.545872, -0.837397,
		-0.853415, 0.423075, -0.304450,
		0.520472, 0.723210, -0.453957,
		32.847179, 35.989445, 34.059769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139374, 35.616985, 33.731464>,  <32.482849, 35.483196, 34.377541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139374, 35.616985, 33.731464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518433, 35.738602, 33.692429>,  <32.745869, 35.811573, 33.669006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518433, 35.738602, 33.692429>,  <32.139374, 35.616985, 33.731464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518433, 35.738602, 33.692429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032029, -0.394576, -0.918305,
		-0.317711, 0.867103, -0.383657,
		0.947646, 0.304044, -0.097589,
		32.802727, 35.829815, 33.663151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218670, 35.976910, 33.005512>,  <32.139374, 35.616985, 33.731464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218670, 35.976910, 33.005512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585976, 35.884861, 33.134411>,  <32.806358, 35.829632, 33.211750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585976, 35.884861, 33.134411>,  <32.218670, 35.976910, 33.005512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585976, 35.884861, 33.134411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253338, -0.284030, -0.924742,
		0.304326, 0.930791, -0.202517,
		0.918262, -0.230118, 0.322242,
		32.861454, 35.815826, 33.231083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612190, 36.136852, 32.495113>,  <32.218670, 35.976910, 33.005512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612190, 36.136852, 32.495113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861671, 35.893623, 32.691582>,  <33.011360, 35.747684, 32.809464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861671, 35.893623, 32.691582>,  <32.612190, 36.136852, 32.495113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861671, 35.893623, 32.691582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357602, -0.336779, -0.871034,
		0.695069, 0.718904, 0.007400,
		0.623698, -0.608076, 0.491166,
		33.048782, 35.711201, 32.838932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138302, 36.066456, 31.970293>,  <32.612190, 36.136852, 32.495113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138302, 36.066456, 31.970293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217930, 35.777130, 32.234776>,  <33.265705, 35.603535, 32.393463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.217930, 35.777130, 32.234776>,  <33.138302, 36.066456, 31.970293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217930, 35.777130, 32.234776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475670, -0.518582, -0.710500,
		0.856803, 0.455951, 0.240826,
		0.199065, -0.723313, 0.661205,
		33.277649, 35.560135, 32.433136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803005, 35.960407, 31.871161>,  <33.138302, 36.066456, 31.970293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803005, 35.960407, 31.871161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634975, 35.632496, 32.026855>,  <33.534157, 35.435749, 32.120274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634975, 35.632496, 32.026855>,  <33.803005, 35.960407, 31.871161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634975, 35.632496, 32.026855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400647, -0.552385, -0.730994,
		0.814261, -0.151124, 0.560482,
		-0.420073, -0.819776, 0.389238,
		33.508953, 35.386562, 32.143627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350746, 35.450302, 31.891153>,  <33.803005, 35.960407, 31.871161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350746, 35.450302, 31.891153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010883, 35.242710, 31.928539>,  <33.806965, 35.118156, 31.950972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010883, 35.242710, 31.928539>,  <34.350746, 35.450302, 31.891153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010883, 35.242710, 31.928539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271148, -0.581988, -0.766660,
		0.452278, -0.626058, 0.635213,
		-0.849661, -0.518981, 0.093466,
		33.755985, 35.087017, 31.956579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452972, 34.732136, 31.561682>,  <34.350746, 35.450302, 31.891153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452972, 34.732136, 31.561682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053421, 34.736645, 31.580097>,  <33.813690, 34.739349, 31.591146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053421, 34.736645, 31.580097>,  <34.452972, 34.732136, 31.561682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053421, 34.736645, 31.580097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045324, -0.511553, -0.858056,
		0.013880, -0.859178, 0.511488,
		-0.998876, 0.011273, 0.046041,
		33.753757, 34.740028, 31.593910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162613, 34.025833, 31.376770>,  <34.452972, 34.732136, 31.561682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162613, 34.025833, 31.376770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890003, 34.299828, 31.273760>,  <33.726437, 34.464226, 31.211954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890003, 34.299828, 31.273760>,  <34.162613, 34.025833, 31.376770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890003, 34.299828, 31.273760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149563, -0.474858, -0.867261,
		-0.716352, -0.552539, 0.426075,
		-0.681521, 0.684989, -0.257526,
		33.685547, 34.505325, 31.196503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601624, 33.618828, 31.081158>,  <34.162613, 34.025833, 31.376770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601624, 33.618828, 31.081158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544182, 33.998592, 30.969444>,  <33.509716, 34.226452, 30.902416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544182, 33.998592, 30.969444>,  <33.601624, 33.618828, 31.081158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544182, 33.998592, 30.969444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063360, -0.290451, -0.954790,
		-0.987605, -0.119417, 0.101865,
		-0.143605, 0.949409, -0.279285,
		33.501099, 34.283417, 30.885658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082127, 33.499004, 30.508509>,  <33.601624, 33.618828, 31.081158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082127, 33.499004, 30.508509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224277, 33.869877, 30.461105>,  <33.309566, 34.092400, 30.432663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224277, 33.869877, 30.461105>,  <33.082127, 33.499004, 30.508509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224277, 33.869877, 30.461105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129940, -0.076551, -0.988562,
		-0.925647, 0.366712, 0.093273,
		0.355378, 0.927180, -0.118510,
		33.330891, 34.148029, 30.425552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647644, 33.789356, 29.974121>,  <33.082127, 33.499004, 30.508509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647644, 33.789356, 29.974121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979561, 34.012531, 29.979111>,  <33.178711, 34.146435, 29.982105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979561, 34.012531, 29.979111>,  <32.647644, 33.789356, 29.974121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979561, 34.012531, 29.979111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068303, 0.123719, -0.989964,
		-0.553881, 0.820610, 0.140769,
		0.829790, 0.557937, 0.012475,
		33.228497, 34.179913, 29.982853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431068, 34.349686, 29.542709>,  <32.647644, 33.789356, 29.974121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431068, 34.349686, 29.542709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830570, 34.350868, 29.562605>,  <33.070271, 34.351578, 29.574541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830570, 34.350868, 29.562605>,  <32.431068, 34.349686, 29.542709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830570, 34.350868, 29.562605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048920, 0.131118, -0.990159,
		-0.009453, 0.991362, 0.130810,
		0.998758, 0.002961, 0.049737,
		33.130199, 34.351757, 29.577526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687752, 34.994339, 29.188814>,  <32.431068, 34.349686, 29.542709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687752, 34.994339, 29.188814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997101, 34.743332, 29.152786>,  <33.182709, 34.592728, 29.131168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997101, 34.743332, 29.152786>,  <32.687752, 34.994339, 29.188814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997101, 34.743332, 29.152786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080468, 0.238099, -0.967902,
		0.628823, 0.741302, 0.234635,
		0.773374, -0.627519, -0.090071,
		33.229115, 34.555077, 29.125765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139908, 35.437569, 29.043959>,  <32.687752, 34.994339, 29.188814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139908, 35.437569, 29.043959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271927, 35.080299, 28.921772>,  <33.351139, 34.865936, 28.848461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271927, 35.080299, 28.921772>,  <33.139908, 35.437569, 29.043959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271927, 35.080299, 28.921772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078797, 0.348537, -0.933977,
		0.940668, 0.284192, 0.185414,
		0.330052, -0.893173, -0.305464,
		33.370941, 34.812347, 28.830133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754528, 35.588299, 28.656490>,  <33.139908, 35.437569, 29.043959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754528, 35.588299, 28.656490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638264, 35.229435, 28.523455>,  <33.568504, 35.014114, 28.443634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638264, 35.229435, 28.523455>,  <33.754528, 35.588299, 28.656490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638264, 35.229435, 28.523455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105785, 0.315333, -0.943066,
		0.950959, -0.309298, 0.003250,
		-0.290664, -0.897162, -0.332588,
		33.551064, 34.960285, 28.423677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109421, 35.423531, 28.079023>,  <33.754528, 35.588299, 28.656490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109421, 35.423531, 28.079023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836277, 35.135857, 28.027662>,  <33.672390, 34.963253, 27.996845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836277, 35.135857, 28.027662>,  <34.109421, 35.423531, 28.079023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836277, 35.135857, 28.027662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075176, 0.105653, -0.991557,
		0.726676, -0.686743, -0.018080,
		-0.682855, -0.719182, -0.128402,
		33.631420, 34.920101, 27.989141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356030, 35.105553, 27.489883>,  <34.109421, 35.423531, 28.079023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356030, 35.105553, 27.489883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976891, 34.980480, 27.514612>,  <33.749409, 34.905437, 27.529449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976891, 34.980480, 27.514612>,  <34.356030, 35.105553, 27.489883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976891, 34.980480, 27.514612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077675, 0.038495, -0.996235,
		0.309120, -0.949079, -0.060774,
		-0.947846, -0.312676, 0.061820,
		33.692535, 34.886677, 27.533157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297955, 34.518448, 27.046560>,  <34.356030, 35.105553, 27.489883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297955, 34.518448, 27.046560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926636, 34.663857, 27.077847>,  <33.703846, 34.751102, 27.096619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926636, 34.663857, 27.077847>,  <34.297955, 34.518448, 27.046560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926636, 34.663857, 27.077847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079007, 0.012720, -0.996793,
		-0.363352, -0.931498, 0.016913,
		-0.928296, 0.363523, 0.078217,
		33.648148, 34.772915, 27.101311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985100, 34.193058, 26.573742>,  <34.297955, 34.518448, 27.046560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985100, 34.193058, 26.573742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740150, 34.503593, 26.633461>,  <33.593182, 34.689915, 26.669292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740150, 34.503593, 26.633461>,  <33.985100, 34.193058, 26.573742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740150, 34.503593, 26.633461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200527, 0.030142, -0.979224,
		-0.764715, -0.629589, 0.137220,
		-0.612373, 0.776343, 0.149300,
		33.556438, 34.736496, 26.678251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481670, 34.048752, 26.230333>,  <33.985100, 34.193058, 26.573742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481670, 34.048752, 26.230333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414883, 34.438805, 26.288622>,  <33.374809, 34.672836, 26.323595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414883, 34.438805, 26.288622>,  <33.481670, 34.048752, 26.230333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414883, 34.438805, 26.288622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329740, 0.084057, -0.940322,
		-0.929189, -0.205057, 0.307506,
		-0.166972, 0.975134, 0.145720,
		33.364792, 34.731346, 26.332338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867344, 34.213238, 25.792496>,  <33.481670, 34.048752, 26.230333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867344, 34.213238, 25.792496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038914, 34.563843, 25.879908>,  <33.141857, 34.774204, 25.932354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038914, 34.563843, 25.879908>,  <32.867344, 34.213238, 25.792496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038914, 34.563843, 25.879908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358108, 0.387079, -0.849663,
		-0.829326, 0.286185, 0.479913,
		0.428926, 0.876509, 0.218529,
		33.167591, 34.826794, 25.945467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400024, 34.651016, 25.663361>,  <32.867344, 34.213238, 25.792496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400024, 34.651016, 25.663361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753296, 34.836193, 25.633228>,  <32.965260, 34.947300, 25.615149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753296, 34.836193, 25.633228>,  <32.400024, 34.651016, 25.663361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753296, 34.836193, 25.633228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305546, 0.446016, -0.841256,
		-0.355858, 0.765996, 0.535364,
		0.883180, 0.462946, -0.075329,
		33.018250, 34.975079, 25.610630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244205, 35.313419, 25.466064>,  <32.400024, 34.651016, 25.663361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244205, 35.313419, 25.466064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638988, 35.313244, 25.401682>,  <32.875858, 35.313137, 25.363052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638988, 35.313244, 25.401682>,  <32.244205, 35.313419, 25.466064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638988, 35.313244, 25.401682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153417, 0.299875, -0.941561,
		0.048680, 0.953978, 0.295898,
		0.986962, -0.000439, -0.160954,
		32.935078, 35.313110, 25.353395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415283, 35.950939, 25.272537>,  <32.244205, 35.313419, 25.466064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415283, 35.950939, 25.272537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704323, 35.716206, 25.126404>,  <32.877747, 35.575363, 25.038723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704323, 35.716206, 25.126404>,  <32.415283, 35.950939, 25.272537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704323, 35.716206, 25.126404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115236, 0.418843, -0.900717,
		0.681592, 0.692959, 0.235032,
		0.722601, -0.586838, -0.365334,
		32.921104, 35.540154, 25.016804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740513, 36.349339, 24.770365>,  <32.415283, 35.950939, 25.272537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740513, 36.349339, 24.770365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827747, 35.964966, 24.702185>,  <32.880089, 35.734344, 24.661278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827747, 35.964966, 24.702185>,  <32.740513, 36.349339, 24.770365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827747, 35.964966, 24.702185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081943, 0.192066, -0.977955,
		0.972484, 0.199310, 0.120628,
		0.218084, -0.960930, -0.170449,
		32.893173, 35.676685, 24.651051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351322, 36.389637, 24.267063>,  <32.740513, 36.349339, 24.770365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351322, 36.389637, 24.267063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149246, 36.045063, 24.246218>,  <33.028000, 35.838318, 24.233711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149246, 36.045063, 24.246218>,  <33.351322, 36.389637, 24.267063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149246, 36.045063, 24.246218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134485, -0.018934, -0.990735,
		0.852468, -0.507513, 0.125416,
		-0.505186, -0.861436, -0.052112,
		32.997692, 35.786633, 24.230583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810608, 35.790871, 24.046715>,  <33.351322, 36.389637, 24.267063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810608, 35.790871, 24.046715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439278, 35.675518, 23.952869>,  <33.216480, 35.606304, 23.896563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439278, 35.675518, 23.952869>,  <33.810608, 35.790871, 24.046715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439278, 35.675518, 23.952869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194616, 0.160728, -0.967621,
		0.316757, -0.943928, -0.093083,
		-0.928326, -0.288386, -0.234616,
		33.160778, 35.589001, 23.882484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948574, 35.367367, 23.569386>,  <33.810608, 35.790871, 24.046715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948574, 35.367367, 23.569386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567513, 35.472435, 23.508114>,  <33.338875, 35.535477, 23.471352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567513, 35.472435, 23.508114>,  <33.948574, 35.367367, 23.569386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567513, 35.472435, 23.508114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200777, 0.165063, -0.965631,
		-0.228358, -0.950662, -0.209985,
		-0.952650, 0.262669, -0.153177,
		33.281719, 35.551235, 23.462160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794674, 35.114300, 22.925228>,  <33.948574, 35.367367, 23.569386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794674, 35.114300, 22.925228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492268, 35.372486, 22.968708>,  <33.310825, 35.527397, 22.994797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492268, 35.372486, 22.968708>,  <33.794674, 35.114300, 22.925228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492268, 35.372486, 22.968708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064861, 0.239122, -0.968821,
		-0.651337, -0.725389, -0.222645,
		-0.756011, 0.645470, 0.108700,
		33.265465, 35.566128, 23.001318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371597, 35.068871, 22.291079>,  <33.794674, 35.114300, 22.925228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371597, 35.068871, 22.291079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263275, 35.427204, 22.432018>,  <33.198280, 35.642204, 22.516582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263275, 35.427204, 22.432018>,  <33.371597, 35.068871, 22.291079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263275, 35.427204, 22.432018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078368, 0.385328, -0.919446,
		-0.959438, -0.221382, -0.174555,
		-0.270809, 0.895831, 0.352349,
		33.182034, 35.695953, 22.537724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824665, 35.355164, 21.841625>,  <33.371597, 35.068871, 22.291079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824665, 35.355164, 21.841625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941063, 35.689068, 22.028597>,  <33.010902, 35.889412, 22.140779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941063, 35.689068, 22.028597>,  <32.824665, 35.355164, 21.841625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941063, 35.689068, 22.028597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119457, 0.516451, -0.847944,
		-0.949239, 0.190905, 0.250000,
		0.290990, 0.834765, 0.467431,
		33.028358, 35.939499, 22.168825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296577, 35.914394, 21.680008>,  <32.824665, 35.355164, 21.841625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296577, 35.914394, 21.680008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630573, 36.119431, 21.760046>,  <32.830971, 36.242455, 21.808069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630573, 36.119431, 21.760046>,  <32.296577, 35.914394, 21.680008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630573, 36.119431, 21.760046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201532, 0.623244, -0.755614,
		-0.512030, 0.590605, 0.623707,
		0.834991, 0.512594, 0.200094,
		32.881069, 36.273209, 21.820074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100979, 36.578598, 21.547354>,  <32.296577, 35.914394, 21.680008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100979, 36.578598, 21.547354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500824, 36.582935, 21.537031>,  <32.740730, 36.585537, 21.530838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500824, 36.582935, 21.537031>,  <32.100979, 36.578598, 21.547354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500824, 36.582935, 21.537031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026301, 0.679342, -0.733350,
		0.009583, 0.733742, 0.679361,
		0.999608, 0.010841, -0.025808,
		32.800705, 36.586189, 21.529289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290195, 37.196003, 21.521645>,  <32.100979, 36.578598, 21.547354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290195, 37.196003, 21.521645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623161, 37.022148, 21.384134>,  <32.822941, 36.917835, 21.301628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.623161, 37.022148, 21.384134>,  <32.290195, 37.196003, 21.521645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623161, 37.022148, 21.384134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028240, 0.652826, -0.756982,
		0.553436, 0.620413, 0.555695,
		0.832413, -0.434634, -0.343776,
		32.872887, 36.891758, 21.281002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743999, 37.747166, 21.502474>,  <32.290195, 37.196003, 21.521645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743999, 37.747166, 21.502474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840939, 37.445293, 21.258596>,  <32.899101, 37.264172, 21.112270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840939, 37.445293, 21.258596>,  <32.743999, 37.747166, 21.502474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840939, 37.445293, 21.258596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164586, 0.651297, -0.740759,
		0.956128, 0.079173, 0.282049,
		0.242346, -0.754681, -0.609692,
		32.913643, 37.218887, 21.075689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347618, 37.991146, 21.241520>,  <32.743999, 37.747166, 21.502474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347618, 37.991146, 21.241520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230465, 37.726795, 20.965126>,  <33.160175, 37.568184, 20.799290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230465, 37.726795, 20.965126>,  <33.347618, 37.991146, 21.241520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230465, 37.726795, 20.965126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354212, 0.596262, -0.720420,
		0.888119, -0.455751, 0.059459,
		-0.292879, -0.660880, -0.690984,
		33.142601, 37.528530, 20.757832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734653, 38.083828, 20.754484>,  <33.347618, 37.991146, 21.241520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734653, 38.083828, 20.754484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479595, 37.852856, 20.550531>,  <33.326561, 37.714272, 20.428160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479595, 37.852856, 20.550531>,  <33.734653, 38.083828, 20.754484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479595, 37.852856, 20.550531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210102, 0.506443, -0.836285,
		0.741124, -0.640381, -0.201612,
		-0.637646, -0.577432, -0.509882,
		33.288300, 37.679626, 20.397568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124565, 37.698807, 20.281290>,  <33.734653, 38.083828, 20.754484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124565, 37.698807, 20.281290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749023, 37.706005, 20.143751>,  <33.523697, 37.710323, 20.061228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749023, 37.706005, 20.143751>,  <34.124565, 37.698807, 20.281290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749023, 37.706005, 20.143751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338165, 0.236149, -0.910976,
		0.064806, -0.971550, -0.227795,
		-0.938853, 0.017995, -0.343848,
		33.467369, 37.711403, 20.040596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231018, 37.505054, 19.534321>,  <34.124565, 37.698807, 20.281290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231018, 37.505054, 19.534321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853142, 37.636234, 19.534391>,  <33.626415, 37.714943, 19.534433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853142, 37.636234, 19.534391>,  <34.231018, 37.505054, 19.534321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853142, 37.636234, 19.534391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104580, 0.301761, -0.947631,
		-0.310833, -0.895202, -0.319369,
		-0.944694, 0.327954, 0.000177,
		33.569733, 37.734619, 19.534445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909595, 37.289780, 18.922215>,  <34.231018, 37.505054, 19.534321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909595, 37.289780, 18.922215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665028, 37.583622, 19.039873>,  <33.518288, 37.759926, 19.110468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665028, 37.583622, 19.039873>,  <33.909595, 37.289780, 18.922215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665028, 37.583622, 19.039873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010913, 0.363860, -0.931390,
		-0.791233, -0.572678, -0.214453,
		-0.611417, 0.734606, 0.294148,
		33.481602, 37.804005, 19.128117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225338, 37.303425, 18.474485>,  <33.909595, 37.289780, 18.922215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225338, 37.303425, 18.474485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258976, 37.670883, 18.628893>,  <33.279160, 37.891357, 18.721537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258976, 37.670883, 18.628893>,  <33.225338, 37.303425, 18.474485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258976, 37.670883, 18.628893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048443, 0.390700, -0.919242,
		-0.995280, 0.058604, 0.077359,
		0.084095, 0.918651, 0.386017,
		33.284206, 37.946480, 18.744698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612534, 37.748791, 18.301340>,  <33.225338, 37.303425, 18.474485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612534, 37.748791, 18.301340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961269, 37.941090, 18.338821>,  <33.170509, 38.056469, 18.361311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961269, 37.941090, 18.338821>,  <32.612534, 37.748791, 18.301340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961269, 37.941090, 18.338821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056663, 0.289027, -0.955642,
		-0.486505, 0.827856, 0.279226,
		0.871838, 0.480747, 0.093704,
		33.222820, 38.085312, 18.366932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633904, 38.317814, 17.919279>,  <32.612534, 37.748791, 18.301340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633904, 38.317814, 17.919279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026730, 38.333015, 17.993147>,  <33.262424, 38.342136, 18.037468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026730, 38.333015, 17.993147>,  <32.633904, 38.317814, 17.919279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026730, 38.333015, 17.993147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154524, 0.398975, -0.903848,
		-0.108028, 0.916174, 0.385947,
		0.982065, 0.038003, 0.184671,
		33.321350, 38.344418, 18.048548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904793, 39.001728, 17.566471>,  <32.633904, 38.317814, 17.919279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904793, 39.001728, 17.566471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192490, 38.729935, 17.624430>,  <33.365108, 38.566860, 17.659204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192490, 38.729935, 17.624430>,  <32.904793, 39.001728, 17.566471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192490, 38.729935, 17.624430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275644, 0.087642, -0.957256,
		0.637737, 0.728441, 0.250331,
		0.719244, -0.679480, 0.144897,
		33.408264, 38.526093, 17.667898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622967, 39.452446, 17.367819>,  <32.904793, 39.001728, 17.566471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622967, 39.452446, 17.367819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323074, 39.710503, 17.426725>,  <33.143139, 39.865337, 17.462070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323074, 39.710503, 17.426725>,  <33.622967, 39.452446, 17.367819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323074, 39.710503, 17.426725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192086, 0.000793, -0.981378,
		-0.633247, -0.764060, 0.123329,
		-0.749734, 0.645145, 0.147267,
		33.098156, 39.904045, 17.470905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383808, 39.630859, 16.639153>,  <33.622967, 39.452446, 17.367819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383808, 39.630859, 16.639153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109631, 39.823940, 16.857203>,  <32.945122, 39.939789, 16.988031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109631, 39.823940, 16.857203>,  <33.383808, 39.630859, 16.639153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109631, 39.823940, 16.857203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483828, 0.257530, -0.836414,
		-0.544127, -0.837063, 0.057023,
		-0.685446, 0.482705, 0.545124,
		32.903996, 39.968750, 17.020741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489288, 40.341526, 16.909771>,  <33.383808, 39.630859, 16.639153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489288, 40.341526, 16.909771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790325, 40.602165, 16.871769>,  <33.970947, 40.758549, 16.848967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790325, 40.602165, 16.871769>,  <33.489288, 40.341526, 16.909771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790325, 40.602165, 16.871769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089351, 0.041895, 0.995119,
		0.652398, -0.757406, -0.026691,
		0.752591, 0.651598, -0.095007,
		34.016102, 40.797646, 16.843267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043175, 40.212677, 17.414614>,  <33.489288, 40.341526, 16.909771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043175, 40.212677, 17.414614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988800, 40.601864, 17.339931>,  <33.956177, 40.835377, 17.295122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988800, 40.601864, 17.339931>,  <34.043175, 40.212677, 17.414614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988800, 40.601864, 17.339931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006149, 0.187623, 0.982222,
		0.990699, 0.134666, -0.019521,
		-0.135934, 0.972966, -0.186706,
		33.948021, 40.893753, 17.283920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698284, 40.615761, 17.705034>,  <34.043175, 40.212677, 17.414614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698284, 40.615761, 17.705034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338566, 40.786995, 17.669233>,  <34.122734, 40.889736, 17.647753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338566, 40.786995, 17.669233>,  <34.698284, 40.615761, 17.705034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338566, 40.786995, 17.669233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149479, -0.108538, 0.982790,
		0.411005, 0.897196, 0.161597,
		-0.899295, 0.428087, -0.089502,
		34.068779, 40.915421, 17.642384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644554, 41.172108, 18.075291>,  <34.698284, 40.615761, 17.705034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644554, 41.172108, 18.075291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276173, 41.024158, 18.124346>,  <34.055145, 40.935387, 18.153778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276173, 41.024158, 18.124346>,  <34.644554, 41.172108, 18.075291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276173, 41.024158, 18.124346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167678, -0.092064, 0.981534,
		-0.351754, 0.924509, 0.146806,
		-0.920952, -0.369875, 0.122636,
		33.999886, 40.913197, 18.161137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204784, 41.519844, 18.569994>,  <34.644554, 41.172108, 18.075291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204784, 41.519844, 18.569994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047752, 41.152409, 18.551767>,  <33.953533, 40.931946, 18.540831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047752, 41.152409, 18.551767>,  <34.204784, 41.519844, 18.569994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047752, 41.152409, 18.551767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035882, -0.034210, 0.998770,
		-0.919017, 0.393735, -0.019530,
		-0.392582, -0.918587, -0.045568,
		33.929977, 40.876831, 18.538097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479015, 41.291985, 19.234230>,  <34.204784, 41.519844, 18.569994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479015, 41.291985, 19.234230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233238, 41.010052, 19.092430>,  <34.085773, 40.840893, 19.007349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233238, 41.010052, 19.092430>,  <34.479015, 41.291985, 19.234230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233238, 41.010052, 19.092430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017861, -0.436783, 0.899389,
		-0.788761, 0.558953, 0.255789,
		-0.614441, -0.704835, -0.354501,
		34.048904, 40.798603, 18.986080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719006, 41.229034, 19.501440>,  <34.479015, 41.291985, 19.234230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719006, 41.229034, 19.501440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845940, 40.860405, 19.411993>,  <33.922100, 40.639229, 19.358324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845940, 40.860405, 19.411993>,  <33.719006, 41.229034, 19.501440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845940, 40.860405, 19.411993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169993, -0.287267, 0.942645,
		-0.932954, -0.261117, -0.247819,
		0.317331, -0.921572, -0.223619,
		33.941139, 40.583935, 19.344908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270828, 40.771969, 19.902332>,  <33.719006, 41.229034, 19.501440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270828, 40.771969, 19.902332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604881, 40.561699, 19.837564>,  <33.805313, 40.435535, 19.798704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604881, 40.561699, 19.837564>,  <33.270828, 40.771969, 19.902332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604881, 40.561699, 19.837564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080267, -0.407691, 0.909585,
		-0.544163, -0.746626, -0.382670,
		0.835132, -0.525678, -0.161921,
		33.855423, 40.403996, 19.788988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177608, 40.110237, 20.190126>,  <33.270828, 40.771969, 19.902332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177608, 40.110237, 20.190126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571068, 40.181477, 20.179358>,  <33.807144, 40.224220, 20.172895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571068, 40.181477, 20.179358>,  <33.177608, 40.110237, 20.190126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571068, 40.181477, 20.179358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106736, -0.455944, 0.883585,
		0.145088, -0.872007, -0.467496,
		0.983645, 0.178097, -0.026922,
		33.866161, 40.234905, 20.171280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456715, 39.567959, 20.480974>,  <33.177608, 40.110237, 20.190126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456715, 39.567959, 20.480974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770470, 39.814125, 20.511955>,  <33.958721, 39.961826, 20.530544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770470, 39.814125, 20.511955>,  <33.456715, 39.567959, 20.480974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770470, 39.814125, 20.511955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105303, -0.255181, 0.961142,
		0.611265, -0.745753, -0.264966,
		0.784389, 0.615415, 0.077453,
		34.005787, 39.998749, 20.535191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979366, 39.174557, 20.705582>,  <33.456715, 39.567959, 20.480974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979366, 39.174557, 20.705582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099995, 39.538540, 20.819447>,  <34.172371, 39.756931, 20.887766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099995, 39.538540, 20.819447>,  <33.979366, 39.174557, 20.705582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099995, 39.538540, 20.819447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265747, -0.366954, 0.891473,
		0.915660, -0.193195, -0.352481,
		0.301573, 0.909956, 0.284663,
		34.190468, 39.811527, 20.904846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496372, 39.017334, 21.138786>,  <33.979366, 39.174557, 20.705582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496372, 39.017334, 21.138786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433712, 39.402344, 21.227345>,  <34.396118, 39.633350, 21.280479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433712, 39.402344, 21.227345>,  <34.496372, 39.017334, 21.138786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433712, 39.402344, 21.227345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389259, -0.145852, 0.909508,
		0.907711, 0.228652, -0.351822,
		-0.156647, 0.962520, 0.221396,
		34.386719, 39.691101, 21.293764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154301, 39.342346, 21.279251>,  <34.496372, 39.017334, 21.138786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154301, 39.342346, 21.279251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867210, 39.560535, 21.452377>,  <34.694958, 39.691448, 21.556253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867210, 39.560535, 21.452377>,  <35.154301, 39.342346, 21.279251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867210, 39.560535, 21.452377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472913, -0.074388, 0.877964,
		0.511101, 0.834821, -0.204571,
		-0.717725, 0.545473, 0.432817,
		34.651894, 39.724178, 21.582222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453548, 39.898788, 21.593067>,  <35.154301, 39.342346, 21.279251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453548, 39.898788, 21.593067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108166, 39.836903, 21.785112>,  <34.900936, 39.799770, 21.900339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108166, 39.836903, 21.785112>,  <35.453548, 39.898788, 21.593067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108166, 39.836903, 21.785112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472577, 0.084727, 0.877207,
		-0.176391, 0.984320, -0.000045,
		-0.863456, -0.154710, 0.480112,
		34.849129, 39.790489, 21.929146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547302, 40.278488, 22.238209>,  <35.453548, 39.898788, 21.593067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547302, 40.278488, 22.238209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230812, 40.043407, 22.305819>,  <35.040916, 39.902359, 22.346384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230812, 40.043407, 22.305819>,  <35.547302, 40.278488, 22.238209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230812, 40.043407, 22.305819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322441, -0.166093, 0.931904,
		-0.519604, 0.791849, 0.320916,
		-0.791229, -0.587698, 0.169022,
		34.993443, 39.867100, 22.356525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284912, 40.484123, 22.918770>,  <35.547302, 40.278488, 22.238209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284912, 40.484123, 22.918770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137653, 40.122910, 22.830223>,  <35.049297, 39.906181, 22.777096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137653, 40.122910, 22.830223>,  <35.284912, 40.484123, 22.918770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137653, 40.122910, 22.830223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220298, -0.316028, 0.922819,
		-0.903291, 0.290968, 0.315281,
		-0.368149, -0.903030, -0.221366,
		35.027210, 39.852001, 22.763813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885971, 40.331734, 23.391207>,  <35.284912, 40.484123, 22.918770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885971, 40.331734, 23.391207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945957, 39.961479, 23.252237>,  <34.981949, 39.739326, 23.168856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945957, 39.961479, 23.252237>,  <34.885971, 40.331734, 23.391207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945957, 39.961479, 23.252237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073578, -0.339976, 0.937552,
		-0.985950, -0.166159, 0.017124,
		0.149961, -0.925639, -0.347425,
		34.990944, 39.683788, 23.148010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559917, 39.974289, 23.908480>,  <34.885971, 40.331734, 23.391207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559917, 39.974289, 23.908480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804398, 39.722775, 23.716202>,  <34.951084, 39.571865, 23.600836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804398, 39.722775, 23.716202>,  <34.559917, 39.974289, 23.908480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804398, 39.722775, 23.716202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198250, -0.466353, 0.862097,
		-0.766245, -0.622211, -0.160379,
		0.611199, -0.628783, -0.480694,
		34.987759, 39.534138, 23.571993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281254, 39.141964, 23.899494>,  <34.559917, 39.974289, 23.908480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281254, 39.141964, 23.899494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678783, 39.167076, 23.862890>,  <34.917301, 39.182144, 23.840927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678783, 39.167076, 23.862890>,  <34.281254, 39.141964, 23.899494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678783, 39.167076, 23.862890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110922, -0.536003, 0.836897,
		0.003494, -0.841878, -0.539657,
		0.993823, 0.062784, -0.091510,
		34.976929, 39.185913, 23.835438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522636, 38.609188, 24.192923>,  <34.281254, 39.141964, 23.899494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522636, 38.609188, 24.192923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854912, 38.830097, 24.164749>,  <35.054276, 38.962643, 24.147844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854912, 38.830097, 24.164749>,  <34.522636, 38.609188, 24.192923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854912, 38.830097, 24.164749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337740, -0.399300, 0.852345,
		0.442602, -0.731817, -0.518216,
		0.830684, 0.552271, -0.070433,
		35.104118, 38.995777, 24.143620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913708, 38.254089, 24.591022>,  <34.522636, 38.609188, 24.192923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913708, 38.254089, 24.591022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118710, 38.595901, 24.557283>,  <35.241711, 38.800987, 24.537039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118710, 38.595901, 24.557283>,  <34.913708, 38.254089, 24.591022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118710, 38.595901, 24.557283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394182, -0.146861, 0.907222,
		0.762862, -0.498206, -0.412108,
		0.512506, 0.854531, -0.084349,
		35.272461, 38.852261, 24.531979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628075, 38.114418, 24.891951>,  <34.913708, 38.254089, 24.591022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628075, 38.114418, 24.891951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546116, 38.505505, 24.910261>,  <35.496941, 38.740154, 24.921247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546116, 38.505505, 24.910261>,  <35.628075, 38.114418, 24.891951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546116, 38.505505, 24.910261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314694, 0.021521, 0.948949,
		0.926814, 0.208843, -0.312090,
		-0.204898, 0.977713, 0.045776,
		35.484646, 38.798817, 24.923994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204712, 38.417828, 25.423307>,  <35.628075, 38.114418, 24.891951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204712, 38.417828, 25.423307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907291, 38.683929, 25.396259>,  <35.728840, 38.843590, 25.380030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907291, 38.683929, 25.396259>,  <36.204712, 38.417828, 25.423307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907291, 38.683929, 25.396259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053479, 0.041638, 0.997701,
		0.666539, 0.745456, 0.004617,
		-0.743549, 0.665253, -0.067620,
		35.684227, 38.883507, 25.375973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375080, 38.817081, 25.848158>,  <36.204712, 38.417828, 25.423307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375080, 38.817081, 25.848158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987434, 38.908478, 25.811041>,  <35.754848, 38.963318, 25.788771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987434, 38.908478, 25.811041>,  <36.375080, 38.817081, 25.848158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987434, 38.908478, 25.811041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082775, 0.053060, 0.995155,
		0.232311, 0.972098, -0.032507,
		-0.969113, 0.228494, -0.092792,
		35.696701, 38.977028, 25.783203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178604, 39.394516, 26.253624>,  <36.375080, 38.817081, 25.848158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178604, 39.394516, 26.253624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823376, 39.218975, 26.198877>,  <35.610237, 39.113651, 26.166029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823376, 39.218975, 26.198877>,  <36.178604, 39.394516, 26.253624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823376, 39.218975, 26.198877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195059, 0.090144, 0.976640,
		-0.416264, 0.894026, -0.165657,
		-0.888074, -0.438853, -0.136865,
		35.556953, 39.087318, 26.157818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776279, 39.758801, 26.710690>,  <36.178604, 39.394516, 26.253624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776279, 39.758801, 26.710690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599583, 39.413486, 26.613043>,  <35.493565, 39.206299, 26.554455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599583, 39.413486, 26.613043>,  <35.776279, 39.758801, 26.710690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599583, 39.413486, 26.613043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408988, -0.048402, 0.911255,
		-0.798493, 0.502382, -0.331694,
		-0.441744, -0.863290, -0.244117,
		35.467060, 39.154499, 26.539808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020912, 39.838593, 26.886599>,  <35.776279, 39.758801, 26.710690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020912, 39.838593, 26.886599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081326, 39.443256, 26.878794>,  <35.117573, 39.206055, 26.874111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081326, 39.443256, 26.878794>,  <35.020912, 39.838593, 26.886599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081326, 39.443256, 26.878794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360866, -0.073501, 0.929717,
		-0.920308, -0.133373, -0.367758,
		0.151030, -0.988337, -0.019514,
		35.126633, 39.146755, 26.872940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372013, 39.573353, 27.170315>,  <35.020912, 39.838593, 26.886599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372013, 39.573353, 27.170315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653717, 39.290485, 27.195356>,  <34.822739, 39.120766, 27.210382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653717, 39.290485, 27.195356>,  <34.372013, 39.573353, 27.170315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653717, 39.290485, 27.195356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268580, -0.183766, 0.945566,
		-0.657174, -0.682742, -0.319352,
		0.704264, -0.707173, 0.062605,
		34.864998, 39.078335, 27.214138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069683, 39.124184, 27.515182>,  <34.372013, 39.573353, 27.170315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069683, 39.124184, 27.515182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442883, 39.000488, 27.588816>,  <34.666801, 38.926270, 27.632996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442883, 39.000488, 27.588816>,  <34.069683, 39.124184, 27.515182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442883, 39.000488, 27.588816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239832, -0.152892, 0.958699,
		-0.268325, -0.938613, -0.216814,
		0.932996, -0.309242, 0.184085,
		34.722782, 38.907715, 27.644041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049862, 38.554188, 27.966766>,  <34.069683, 39.124184, 27.515182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049862, 38.554188, 27.966766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425854, 38.686348, 28.000881>,  <34.651447, 38.765644, 28.021351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425854, 38.686348, 28.000881>,  <34.049862, 38.554188, 27.966766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425854, 38.686348, 28.000881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078874, -0.032794, 0.996345,
		0.331990, -0.943271, -0.004765,
		0.939979, 0.330401, 0.085287,
		34.707848, 38.785469, 28.026466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290745, 38.183331, 28.426622>,  <34.049862, 38.554188, 27.966766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290745, 38.183331, 28.426622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531239, 38.502899, 28.432764>,  <34.675533, 38.694641, 28.436449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531239, 38.502899, 28.432764>,  <34.290745, 38.183331, 28.426622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531239, 38.502899, 28.432764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062730, 0.028034, 0.997637,
		0.796606, -0.600778, 0.066972,
		0.601236, 0.798924, 0.015354,
		34.711609, 38.742577, 28.437370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853283, 38.017220, 28.903822>,  <34.290745, 38.183331, 28.426622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853283, 38.017220, 28.903822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902828, 38.413834, 28.888222>,  <34.932556, 38.651802, 28.878862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902828, 38.413834, 28.888222>,  <34.853283, 38.017220, 28.903822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902828, 38.413834, 28.888222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005891, 0.038567, 0.999239,
		0.992282, -0.123996, -0.001065,
		0.123861, 0.991533, -0.038999,
		34.939987, 38.711292, 28.876522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481472, 38.295971, 29.275719>,  <34.853283, 38.017220, 28.903822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481472, 38.295971, 29.275719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229576, 38.604324, 29.237421>,  <35.078438, 38.789337, 29.214443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229576, 38.604324, 29.237421>,  <35.481472, 38.295971, 29.275719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229576, 38.604324, 29.237421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010899, 0.114470, 0.993367,
		0.776733, 0.626602, -0.063684,
		-0.629736, 0.770887, -0.095742,
		35.040657, 38.835590, 29.208698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781258, 38.683559, 29.780602>,  <35.481472, 38.295971, 29.275719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781258, 38.683559, 29.780602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416077, 38.833073, 29.715126>,  <35.196968, 38.922783, 29.675840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416077, 38.833073, 29.715126>,  <35.781258, 38.683559, 29.780602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416077, 38.833073, 29.715126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108601, 0.164099, 0.980447,
		0.393339, 0.912883, -0.109221,
		-0.912957, 0.373786, -0.163687,
		35.142189, 38.945210, 29.666019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852921, 39.185604, 30.266989>,  <35.781258, 38.683559, 29.780602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852921, 39.185604, 30.266989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467583, 39.178955, 30.159885>,  <35.236382, 39.174965, 30.095623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467583, 39.178955, 30.159885>,  <35.852921, 39.185604, 30.266989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467583, 39.178955, 30.159885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259532, 0.310453, 0.914474,
		0.067930, 0.950444, -0.303385,
		-0.963342, -0.016618, -0.267759,
		35.178581, 39.173969, 30.079557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529339, 39.873711, 30.332115>,  <35.852921, 39.185604, 30.266989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529339, 39.873711, 30.332115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263313, 39.577118, 30.367678>,  <35.103699, 39.399162, 30.389015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263313, 39.577118, 30.367678>,  <35.529339, 39.873711, 30.332115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263313, 39.577118, 30.367678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016639, 0.104309, 0.994406,
		-0.746605, 0.662818, -0.057034,
		-0.665059, -0.741479, 0.088906,
		35.063797, 39.354675, 30.394350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059208, 40.088535, 30.871851>,  <35.529339, 39.873711, 30.332115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059208, 40.088535, 30.871851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967651, 39.700703, 30.837143>,  <34.912720, 39.468002, 30.816319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967651, 39.700703, 30.837143>,  <35.059208, 40.088535, 30.871851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967651, 39.700703, 30.837143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077217, -0.106939, 0.991263,
		-0.970385, 0.220190, 0.099345,
		-0.228890, -0.969578, -0.086769,
		34.898983, 39.409828, 30.811111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798260, 39.987434, 31.457039>,  <35.059208, 40.088535, 30.871851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798260, 39.987434, 31.457039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826855, 39.610462, 31.326370>,  <34.844013, 39.384277, 31.247969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826855, 39.610462, 31.326370>,  <34.798260, 39.987434, 31.457039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826855, 39.610462, 31.326370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006793, -0.327043, 0.944985,
		-0.997418, -0.069775, -0.016977,
		0.071489, -0.942430, -0.326673,
		34.848301, 39.327732, 31.228369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193775, 39.608799, 31.761913>,  <34.798260, 39.987434, 31.457039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193775, 39.608799, 31.761913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509823, 39.377739, 31.679911>,  <34.699451, 39.239105, 31.630709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509823, 39.377739, 31.679911>,  <34.193775, 39.608799, 31.761913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509823, 39.377739, 31.679911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095145, -0.445989, 0.889967,
		-0.605518, -0.683679, -0.407347,
		0.790124, -0.577648, -0.205006,
		34.746861, 39.204445, 31.618408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964283, 38.930309, 31.970133>,  <34.193775, 39.608799, 31.761913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964283, 38.930309, 31.970133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363758, 38.911869, 31.961216>,  <34.603443, 38.900806, 31.955866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363758, 38.911869, 31.961216>,  <33.964283, 38.930309, 31.970133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363758, 38.911869, 31.961216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003192, -0.490513, 0.871428,
		-0.051106, -0.870214, -0.490017,
		0.998688, -0.046099, -0.022291,
		34.663364, 38.898041, 31.954529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079063, 38.261436, 32.132420>,  <33.964283, 38.930309, 31.970133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079063, 38.261436, 32.132420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422611, 38.456512, 32.195038>,  <34.628738, 38.573559, 32.232609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422611, 38.456512, 32.195038>,  <34.079063, 38.261436, 32.132420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422611, 38.456512, 32.195038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045211, -0.376624, 0.925262,
		0.510200, -0.787600, -0.345519,
		0.858867, 0.487690, 0.156545,
		34.680271, 38.602818, 32.242001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454578, 37.858124, 32.528625>,  <34.079063, 38.261436, 32.132420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454578, 37.858124, 32.528625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674187, 38.189693, 32.571457>,  <34.805950, 38.388634, 32.597157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674187, 38.189693, 32.571457>,  <34.454578, 37.858124, 32.528625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674187, 38.189693, 32.571457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218067, -0.265741, 0.939057,
		0.806859, -0.492213, -0.326658,
		0.549022, 0.828920, 0.107080,
		34.838894, 38.438370, 32.603580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166164, 37.657284, 32.619232>,  <34.454578, 37.858124, 32.528625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166164, 37.657284, 32.619232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104893, 38.011349, 32.794971>,  <35.068130, 38.223785, 32.900417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104893, 38.011349, 32.794971>,  <35.166164, 37.657284, 32.619232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104893, 38.011349, 32.794971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240989, -0.397714, 0.885295,
		0.958363, 0.241487, -0.152392,
		-0.153179, 0.885159, 0.439351,
		35.058937, 38.276897, 32.926777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849270, 37.819672, 32.911148>,  <35.166164, 37.657284, 32.619232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849270, 37.819672, 32.911148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569485, 38.028988, 33.105850>,  <35.401615, 38.154575, 33.222672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569485, 38.028988, 33.105850>,  <35.849270, 37.819672, 32.911148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569485, 38.028988, 33.105850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428424, -0.238122, 0.871637,
		0.572022, 0.818211, -0.057631,
		-0.699459, 0.523286, 0.486753,
		35.359646, 38.185974, 33.251877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255371, 38.221565, 33.356873>,  <35.849270, 37.819672, 32.911148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255371, 38.221565, 33.356873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882904, 38.217995, 33.502663>,  <35.659424, 38.215851, 33.590137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882904, 38.217995, 33.502663>,  <36.255371, 38.221565, 33.356873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882904, 38.217995, 33.502663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337401, -0.399852, 0.852220,
		0.138128, 0.916536, 0.375343,
		-0.931172, -0.008926, 0.364471,
		35.603554, 38.215317, 33.612003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646954, 38.845325, 32.995914>,  <36.255371, 38.221565, 33.356873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646954, 38.845325, 32.995914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026943, 38.883190, 33.114967>,  <37.254936, 38.905910, 33.186401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026943, 38.883190, 33.114967>,  <36.646954, 38.845325, 32.995914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026943, 38.883190, 33.114967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283715, 0.136896, -0.949086,
		-0.130586, 0.986052, 0.103191,
		0.949975, 0.094660, 0.297635,
		37.311935, 38.911587, 33.204258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806252, 39.312229, 32.615856>,  <36.646954, 38.845325, 32.995914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806252, 39.312229, 32.615856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150288, 39.143101, 32.730026>,  <37.356709, 39.041622, 32.798527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.150288, 39.143101, 32.730026>,  <36.806252, 39.312229, 32.615856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150288, 39.143101, 32.730026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359094, 0.104390, -0.927445,
		0.362350, 0.900179, 0.241618,
		0.860090, -0.422824, 0.285423,
		37.408314, 39.016254, 32.815655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313717, 39.747734, 32.346512>,  <36.806252, 39.312229, 32.615856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313717, 39.747734, 32.346512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518948, 39.414440, 32.428955>,  <37.642086, 39.214466, 32.478420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518948, 39.414440, 32.428955>,  <37.313717, 39.747734, 32.346512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518948, 39.414440, 32.428955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515225, 0.106909, -0.850361,
		0.686512, 0.542491, 0.484154,
		0.513073, -0.833231, 0.206110,
		37.672871, 39.164471, 32.490788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069515, 39.893093, 32.271336>,  <37.313717, 39.747734, 32.346512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069515, 39.893093, 32.271336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005196, 39.504967, 32.199081>,  <37.966602, 39.272091, 32.155731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005196, 39.504967, 32.199081>,  <38.069515, 39.893093, 32.271336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005196, 39.504967, 32.199081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457438, 0.088906, -0.884786,
		0.874583, -0.224901, 0.429564,
		-0.160799, -0.970317, -0.180634,
		37.956955, 39.213871, 32.144890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676357, 39.697063, 32.015331>,  <38.069515, 39.893093, 32.271336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676357, 39.697063, 32.015331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431114, 39.408955, 31.885529>,  <38.283970, 39.236088, 31.807646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431114, 39.408955, 31.885529>,  <38.676357, 39.697063, 32.015331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431114, 39.408955, 31.885529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507936, -0.044796, -0.860229,
		0.605062, -0.692244, 0.393317,
		-0.613107, -0.720272, -0.324511,
		38.247181, 39.192875, 31.788176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135143, 39.162434, 31.739182>,  <38.676357, 39.697063, 32.015331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135143, 39.162434, 31.739182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767063, 39.103569, 31.594084>,  <38.546215, 39.068249, 31.507025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767063, 39.103569, 31.594084>,  <39.135143, 39.162434, 31.739182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767063, 39.103569, 31.594084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384677, -0.168218, -0.907594,
		0.072543, -0.974703, 0.211404,
		-0.920196, -0.147162, -0.362743,
		38.491005, 39.059422, 31.485260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200687, 38.597778, 31.271490>,  <39.135143, 39.162434, 31.739182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200687, 38.597778, 31.271490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858402, 38.769669, 31.156191>,  <38.653030, 38.872803, 31.087011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858402, 38.769669, 31.156191>,  <39.200687, 38.597778, 31.271490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858402, 38.769669, 31.156191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293366, -0.055971, -0.954360,
		-0.426249, -0.901222, -0.078173,
		-0.855715, 0.429728, -0.288246,
		38.601688, 38.898586, 31.069717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867832, 38.194580, 30.767879>,  <39.200687, 38.597778, 31.271490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867832, 38.194580, 30.767879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697575, 38.551674, 30.708754>,  <38.595421, 38.765930, 30.673279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697575, 38.551674, 30.708754>,  <38.867832, 38.194580, 30.767879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697575, 38.551674, 30.708754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102424, -0.114769, -0.988098,
		-0.899074, -0.435721, -0.042587,
		-0.425647, 0.892735, -0.147814,
		38.569881, 38.819496, 30.664410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719181, 38.153851, 30.011488>,  <38.867832, 38.194580, 30.767879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719181, 38.153851, 30.011488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625580, 38.536171, 30.082685>,  <38.569420, 38.765564, 30.125404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625580, 38.536171, 30.082685>,  <38.719181, 38.153851, 30.011488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625580, 38.536171, 30.082685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110992, 0.155619, -0.981562,
		-0.965879, -0.249446, 0.069671,
		-0.234004, 0.955803, 0.177995,
		38.555378, 38.822910, 30.136084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044563, 38.311829, 29.646915>,  <38.719181, 38.153851, 30.011488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044563, 38.311829, 29.646915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268848, 38.641331, 29.680450>,  <38.403419, 38.839031, 29.700571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268848, 38.641331, 29.680450>,  <38.044563, 38.311829, 29.646915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268848, 38.641331, 29.680450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111358, 0.175354, -0.978187,
		-0.820489, 0.539144, 0.190054,
		0.560711, 0.823756, 0.083838,
		38.437061, 38.888458, 29.705603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717503, 38.886330, 29.221359>,  <38.044563, 38.311829, 29.646915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717503, 38.886330, 29.221359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096130, 39.001549, 29.279362>,  <38.323307, 39.070683, 29.314163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096130, 39.001549, 29.279362>,  <37.717503, 38.886330, 29.221359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096130, 39.001549, 29.279362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047632, 0.319839, -0.946274,
		-0.318954, 0.902624, 0.289030,
		0.946573, 0.288051, 0.145007,
		38.380100, 39.087963, 29.322865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784885, 39.503227, 28.968422>,  <37.717503, 38.886330, 29.221359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784885, 39.503227, 28.968422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164806, 39.378448, 28.958914>,  <38.392757, 39.303581, 28.953209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164806, 39.378448, 28.958914>,  <37.784885, 39.503227, 28.968422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164806, 39.378448, 28.958914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066247, 0.274795, -0.959218,
		0.305755, 0.909493, 0.281666,
		0.949803, -0.311945, -0.023768,
		38.449749, 39.284866, 28.951784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142952, 39.983986, 28.671232>,  <37.784885, 39.503227, 28.968422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142952, 39.983986, 28.671232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425644, 39.704338, 28.627838>,  <38.595261, 39.536549, 28.601801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425644, 39.704338, 28.627838>,  <38.142952, 39.983986, 28.671232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425644, 39.704338, 28.627838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062843, 0.214766, -0.974641,
		0.704688, 0.681989, 0.195717,
		0.706728, -0.699118, -0.108485,
		38.637661, 39.494602, 28.595293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729004, 40.283932, 28.326136>,  <38.142952, 39.983986, 28.671232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729004, 40.283932, 28.326136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718651, 39.887188, 28.276253>,  <38.712440, 39.649143, 28.246323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718651, 39.887188, 28.276253>,  <38.729004, 40.283932, 28.326136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718651, 39.887188, 28.276253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012412, 0.124422, -0.992152,
		0.999588, -0.027225, 0.009091,
		-0.025880, -0.991856, -0.124708,
		38.710888, 39.589630, 28.238840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024776, 40.230656, 27.733751>,  <38.729004, 40.283932, 28.326136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024776, 40.230656, 27.733751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857578, 39.868412, 27.762466>,  <38.757259, 39.651066, 27.779696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857578, 39.868412, 27.762466>,  <39.024776, 40.230656, 27.733751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857578, 39.868412, 27.762466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025517, -0.067286, -0.997407,
		0.908093, -0.418739, 0.005016,
		-0.417991, -0.905611, 0.071787,
		38.732182, 39.596729, 27.784002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428822, 39.810150, 27.317909>,  <39.024776, 40.230656, 27.733751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428822, 39.810150, 27.317909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068466, 39.639965, 27.352283>,  <38.852253, 39.537853, 27.372908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068466, 39.639965, 27.352283>,  <39.428822, 39.810150, 27.317909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068466, 39.639965, 27.352283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055966, -0.082473, -0.995021,
		0.430435, -0.901209, 0.050488,
		-0.900885, -0.425466, 0.085936,
		38.798203, 39.512325, 27.378065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454990, 39.419613, 26.749479>,  <39.428822, 39.810150, 27.317909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454990, 39.419613, 26.749479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069435, 39.436619, 26.854631>,  <38.838100, 39.446823, 26.917723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069435, 39.436619, 26.854631>,  <39.454990, 39.419613, 26.749479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069435, 39.436619, 26.854631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266203, -0.127537, -0.955442,
		-0.007090, -0.990922, 0.134249,
		-0.963891, 0.042511, 0.262882,
		38.780270, 39.449371, 26.933496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224358, 38.904896, 26.430239>,  <39.454990, 39.419613, 26.749479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224358, 38.904896, 26.430239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900608, 39.123901, 26.515224>,  <38.706356, 39.255302, 26.566216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900608, 39.123901, 26.515224>,  <39.224358, 38.904896, 26.430239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900608, 39.123901, 26.515224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342369, -0.145938, -0.928162,
		-0.477173, -0.823974, 0.305570,
		-0.809376, 0.547511, 0.212466,
		38.657795, 39.288155, 26.578964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665718, 38.526012, 26.248455>,  <39.224358, 38.904896, 26.430239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665718, 38.526012, 26.248455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524605, 38.900253, 26.253933>,  <38.439938, 39.124798, 26.257219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524605, 38.900253, 26.253933>,  <38.665718, 38.526012, 26.248455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524605, 38.900253, 26.253933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287133, -0.094315, -0.953236,
		-0.890562, -0.340216, 0.301915,
		-0.352781, 0.935605, 0.013694,
		38.418770, 39.180935, 26.258041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105606, 38.524532, 25.794237>,  <38.665718, 38.526012, 26.248455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105606, 38.524532, 25.794237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168736, 38.919029, 25.813868>,  <38.206615, 39.155727, 25.825645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168736, 38.919029, 25.813868>,  <38.105606, 38.524532, 25.794237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168736, 38.919029, 25.813868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382471, 0.106873, -0.917766,
		-0.910389, 0.126077, 0.394078,
		0.157826, 0.986247, 0.049075,
		38.216084, 39.214905, 25.828590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489147, 38.873898, 25.662842>,  <38.105606, 38.524532, 25.794237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489147, 38.873898, 25.662842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779224, 39.129433, 25.560099>,  <37.953270, 39.282753, 25.498453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779224, 39.129433, 25.560099>,  <37.489147, 38.873898, 25.662842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779224, 39.129433, 25.560099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370398, 0.047484, -0.927659,
		-0.580428, 0.767874, 0.271060,
		0.725196, 0.638839, -0.256858,
		37.996784, 39.321083, 25.483042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096256, 39.573986, 25.416306>,  <37.489147, 38.873898, 25.662842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096256, 39.573986, 25.416306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468887, 39.550583, 25.272783>,  <37.692467, 39.536541, 25.186670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468887, 39.550583, 25.272783>,  <37.096256, 39.573986, 25.416306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468887, 39.550583, 25.272783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335138, 0.244256, -0.909957,
		0.140880, 0.967944, 0.207935,
		0.931577, -0.058508, -0.358806,
		37.748360, 39.533031, 25.165142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137165, 40.208248, 24.914421>,  <37.096256, 39.573986, 25.416306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137165, 40.208248, 24.914421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407238, 39.933468, 24.806923>,  <37.569283, 39.768600, 24.742424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407238, 39.933468, 24.806923>,  <37.137165, 40.208248, 24.914421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407238, 39.933468, 24.806923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183197, 0.196753, -0.963186,
		0.714538, 0.699562, 0.006997,
		0.675185, -0.686951, -0.268745,
		37.609795, 39.727383, 24.726299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653839, 40.565006, 24.374569>,  <37.137165, 40.208248, 24.914421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653839, 40.565006, 24.374569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712242, 40.173420, 24.317572>,  <37.747284, 39.938469, 24.283373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712242, 40.173420, 24.317572>,  <37.653839, 40.565006, 24.374569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712242, 40.173420, 24.317572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151558, 0.164470, -0.974669,
		0.977605, 0.120718, 0.172385,
		0.146012, -0.978967, -0.142491,
		37.756046, 39.879730, 24.274824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115501, 40.468235, 23.762835>,  <37.653839, 40.565006, 24.374569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115501, 40.468235, 23.762835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935154, 40.111984, 23.786484>,  <37.826946, 39.898235, 23.800673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935154, 40.111984, 23.786484>,  <38.115501, 40.468235, 23.762835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935154, 40.111984, 23.786484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027099, -0.052549, -0.998251,
		0.892177, -0.451687, -0.000442,
		-0.450873, -0.890628, 0.059123,
		37.799892, 39.844795, 23.804220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535946, 40.057346, 23.219654>,  <38.115501, 40.468235, 23.762835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535946, 40.057346, 23.219654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177971, 39.893845, 23.291218>,  <37.963184, 39.795746, 23.334156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177971, 39.893845, 23.291218>,  <38.535946, 40.057346, 23.219654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177971, 39.893845, 23.291218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100057, -0.206912, -0.973230,
		0.434829, -0.888881, 0.144275,
		-0.894937, -0.408753, 0.178910,
		37.909489, 39.771217, 23.344891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543541, 39.445686, 22.923353>,  <38.535946, 40.057346, 23.219654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543541, 39.445686, 22.923353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161312, 39.561119, 22.947386>,  <37.931976, 39.630379, 22.961805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161312, 39.561119, 22.947386>,  <38.543541, 39.445686, 22.923353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161312, 39.561119, 22.947386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141219, -0.269281, -0.952651,
		-0.258719, -0.918814, 0.298069,
		-0.955574, 0.288562, 0.060086,
		37.874641, 39.647694, 22.965410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273018, 39.184772, 22.274061>,  <38.543541, 39.445686, 22.923353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273018, 39.184772, 22.274061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942497, 39.382015, 22.382933>,  <37.744186, 39.500359, 22.448256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942497, 39.382015, 22.382933>,  <38.273018, 39.184772, 22.274061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942497, 39.382015, 22.382933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316173, -0.006170, -0.948681,
		-0.466120, -0.869948, 0.161005,
		-0.826297, 0.493105, 0.272179,
		37.694607, 39.529945, 22.464586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652050, 38.885239, 21.973034>,  <38.273018, 39.184772, 22.274061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652050, 38.885239, 21.973034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545036, 39.264236, 22.043098>,  <37.480827, 39.491634, 22.085138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545036, 39.264236, 22.043098>,  <37.652050, 38.885239, 21.973034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545036, 39.264236, 22.043098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256667, 0.105145, -0.960764,
		-0.928735, -0.301992, 0.215061,
		-0.267531, 0.947494, 0.175163,
		37.464779, 39.548485, 22.095648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044868, 39.007450, 21.585997>,  <37.652050, 38.885239, 21.973034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044868, 39.007450, 21.585997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194057, 39.371876, 21.656256>,  <37.283569, 39.590530, 21.698412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194057, 39.371876, 21.656256>,  <37.044868, 39.007450, 21.585997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194057, 39.371876, 21.656256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164412, 0.251208, -0.953867,
		-0.913159, 0.326889, 0.243484,
		0.372973, 0.911065, 0.175648,
		37.305950, 39.645195, 21.708950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509983, 39.638538, 21.270647>,  <37.044868, 39.007450, 21.585997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509983, 39.638538, 21.270647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875603, 39.795483, 21.311758>,  <37.094975, 39.889648, 21.336424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875603, 39.795483, 21.311758>,  <36.509983, 39.638538, 21.270647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875603, 39.795483, 21.311758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052970, 0.366702, -0.928829,
		-0.402125, 0.843553, 0.355967,
		0.914051, 0.392361, 0.102777,
		37.149818, 39.913193, 21.342590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447624, 40.245907, 20.909966>,  <36.509983, 39.638538, 21.270647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447624, 40.245907, 20.909966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843609, 40.215469, 20.957594>,  <37.081200, 40.197205, 20.986170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843609, 40.215469, 20.957594>,  <36.447624, 40.245907, 20.909966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843609, 40.215469, 20.957594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140070, 0.417060, -0.898021,
		0.018679, 0.905688, 0.423534,
		0.989965, -0.076098, 0.119069,
		37.140598, 40.192638, 20.993315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783024, 40.844715, 20.622416>,  <36.447624, 40.245907, 20.909966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783024, 40.844715, 20.622416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073509, 40.570278, 20.639820>,  <37.247799, 40.405617, 20.650263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073509, 40.570278, 20.639820>,  <36.783024, 40.844715, 20.622416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073509, 40.570278, 20.639820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390189, 0.359247, -0.847759,
		0.566008, 0.632632, 0.528594,
		0.726215, -0.686090, 0.043509,
		37.291374, 40.364452, 20.652872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319023, 41.178104, 20.530647>,  <36.783024, 40.844715, 20.622416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319023, 41.178104, 20.530647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394772, 40.799858, 20.424856>,  <37.440220, 40.572910, 20.361382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394772, 40.799858, 20.424856>,  <37.319023, 41.178104, 20.530647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394772, 40.799858, 20.424856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240137, 0.305771, -0.921324,
		0.952089, 0.110959, 0.284981,
		0.189368, -0.945617, -0.264476,
		37.451584, 40.516174, 20.345514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954739, 41.241348, 20.186710>,  <37.319023, 41.178104, 20.530647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954739, 41.241348, 20.186710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811230, 40.885887, 20.072468>,  <37.725124, 40.672611, 20.003922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811230, 40.885887, 20.072468>,  <37.954739, 41.241348, 20.186710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811230, 40.885887, 20.072468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404118, 0.127935, -0.905716,
		0.841409, -0.440367, 0.313222,
		-0.358775, -0.888656, -0.285606,
		37.703598, 40.619289, 19.986786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571243, 40.820518, 20.019312>,  <37.954739, 41.241348, 20.186710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571243, 40.820518, 20.019312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247200, 40.657341, 19.850878>,  <38.052776, 40.559433, 19.749817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247200, 40.657341, 19.850878>,  <38.571243, 40.820518, 20.019312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247200, 40.657341, 19.850878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505033, -0.120763, -0.854610,
		0.297779, -0.904986, 0.303855,
		-0.810104, -0.407942, -0.421087,
		38.004169, 40.534958, 19.724552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792610, 40.287903, 19.625935>,  <38.571243, 40.820518, 20.019312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792610, 40.287903, 19.625935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447220, 40.347961, 19.433325>,  <38.239986, 40.383995, 19.317759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447220, 40.347961, 19.433325>,  <38.792610, 40.287903, 19.625935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447220, 40.347961, 19.433325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481136, -0.041332, -0.875671,
		-0.151383, -0.987799, -0.036553,
		-0.863476, 0.150149, -0.481523,
		38.188175, 40.393005, 19.288868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794758, 39.787361, 18.979630>,  <38.792610, 40.287903, 19.625935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794758, 39.787361, 18.979630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531132, 40.081238, 18.915312>,  <38.372955, 40.257565, 18.876722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531132, 40.081238, 18.915312>,  <38.794758, 39.787361, 18.979630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531132, 40.081238, 18.915312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458087, 0.222587, -0.860588,
		-0.596480, -0.640841, -0.483254,
		-0.659066, 0.734696, -0.160792,
		38.333412, 40.301647, 18.867075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863194, 39.115227, 19.112535>,  <38.794758, 39.787361, 18.979630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863194, 39.115227, 19.112535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919540, 38.738167, 18.991495>,  <38.953350, 38.511932, 18.918871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919540, 38.738167, 18.991495>,  <38.863194, 39.115227, 19.112535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919540, 38.738167, 18.991495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075582, -0.294516, 0.952653,
		-0.987139, -0.157071, 0.029759,
		0.140870, -0.942650, -0.302600,
		38.961800, 38.455372, 18.900715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361244, 38.730396, 19.360888>,  <38.863194, 39.115227, 19.112535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361244, 38.730396, 19.360888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659893, 38.468685, 19.312769>,  <38.839085, 38.311657, 19.283897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659893, 38.468685, 19.312769>,  <38.361244, 38.730396, 19.360888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659893, 38.468685, 19.312769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077596, -0.093940, 0.992549,
		-0.660705, -0.750396, -0.019368,
		0.746624, -0.654279, -0.120294,
		38.883881, 38.272400, 19.276680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204926, 38.095734, 19.655802>,  <38.361244, 38.730396, 19.360888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204926, 38.095734, 19.655802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604832, 38.091942, 19.648056>,  <38.844776, 38.089668, 19.643408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.604832, 38.091942, 19.648056>,  <38.204926, 38.095734, 19.655802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604832, 38.091942, 19.648056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017653, -0.155814, 0.987629,
		-0.012376, -0.987741, -0.155610,
		0.999767, -0.009476, -0.019365,
		38.904762, 38.089100, 19.642246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386604, 37.518524, 19.977798>,  <38.204926, 38.095734, 19.655802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386604, 37.518524, 19.977798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700161, 37.766060, 19.998009>,  <38.888294, 37.914581, 20.010136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700161, 37.766060, 19.998009>,  <38.386604, 37.518524, 19.977798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700161, 37.766060, 19.998009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119082, -0.229708, 0.965947,
		0.609375, -0.751178, -0.253759,
		0.783889, 0.618842, 0.050526,
		38.935329, 37.951714, 20.013166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725151, 37.195381, 20.521196>,  <38.386604, 37.518524, 19.977798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725151, 37.195381, 20.521196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895123, 37.557068, 20.504118>,  <38.997105, 37.774082, 20.493872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895123, 37.557068, 20.504118>,  <38.725151, 37.195381, 20.521196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895123, 37.557068, 20.504118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248630, -0.071231, 0.965976,
		0.870413, -0.421086, -0.255085,
		0.424929, 0.904219, -0.042694,
		39.022602, 37.828335, 20.491310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317417, 37.041168, 20.776127>,  <38.725151, 37.195381, 20.521196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317417, 37.041168, 20.776127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279118, 37.438145, 20.806845>,  <39.256138, 37.676331, 20.825275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279118, 37.438145, 20.806845>,  <39.317417, 37.041168, 20.776127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279118, 37.438145, 20.806845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099295, -0.067242, 0.992783,
		0.990441, 0.102679, -0.092106,
		-0.095745, 0.992439, 0.076795,
		39.250393, 37.735878, 20.829884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878296, 37.174404, 21.249098>,  <39.317417, 37.041168, 20.776127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878296, 37.174404, 21.249098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619133, 37.478874, 21.260639>,  <39.463634, 37.661556, 21.267565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619133, 37.478874, 21.260639>,  <39.878296, 37.174404, 21.249098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619133, 37.478874, 21.260639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190524, 0.125262, 0.973658,
		0.737507, 0.636338, -0.226180,
		-0.647908, 0.761172, 0.028856,
		39.424759, 37.707226, 21.269297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158504, 37.736858, 21.550591>,  <39.878296, 37.174404, 21.249098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158504, 37.736858, 21.550591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767422, 37.810253, 21.591421>,  <39.532772, 37.854290, 21.615919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767422, 37.810253, 21.591421>,  <40.158504, 37.736858, 21.550591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767422, 37.810253, 21.591421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130487, 0.150099, 0.980022,
		0.164498, 0.971495, -0.170696,
		-0.977708, 0.183485, 0.102076,
		39.474110, 37.865299, 21.622044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180908, 38.213383, 22.065786>,  <40.158504, 37.736858, 21.550591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180908, 38.213383, 22.065786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810963, 38.062984, 22.042953>,  <39.588997, 37.972744, 22.029253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810963, 38.062984, 22.042953>,  <40.180908, 38.213383, 22.065786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810963, 38.062984, 22.042953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140400, 0.198076, 0.970079,
		-0.353437, 0.905204, -0.235983,
		-0.924862, -0.375994, -0.057083,
		39.533504, 37.950188, 22.025829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685081, 38.733505, 22.313751>,  <40.180908, 38.213383, 22.065786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685081, 38.733505, 22.313751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569317, 38.354767, 22.369926>,  <39.499859, 38.127525, 22.403631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569317, 38.354767, 22.369926>,  <39.685081, 38.733505, 22.313751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569317, 38.354767, 22.369926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191996, 0.201156, 0.960559,
		-0.937752, 0.251034, -0.240007,
		-0.289411, -0.946847, 0.140437,
		39.482494, 38.070713, 22.412058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395290, 38.817730, 22.932901>,  <39.685081, 38.733505, 22.313751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395290, 38.817730, 22.932901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347942, 38.420773, 22.919380>,  <39.319534, 38.182598, 22.911266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347942, 38.420773, 22.919380>,  <39.395290, 38.817730, 22.932901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347942, 38.420773, 22.919380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144666, -0.050915, 0.988170,
		-0.982375, 0.112076, 0.149593,
		-0.118367, -0.992394, -0.033804,
		39.312431, 38.123055, 22.909239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822285, 38.610279, 23.367941>,  <39.395290, 38.817730, 22.932901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822285, 38.610279, 23.367941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037334, 38.276371, 23.320414>,  <39.166363, 38.076027, 23.291897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037334, 38.276371, 23.320414>,  <38.822285, 38.610279, 23.367941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037334, 38.276371, 23.320414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089089, -0.083887, 0.992485,
		-0.838464, -0.544170, 0.029269,
		0.537625, -0.834771, -0.118816,
		39.198624, 38.025940, 23.284769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479202, 38.009293, 23.846210>,  <38.822285, 38.610279, 23.367941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479202, 38.009293, 23.846210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859669, 37.897591, 23.793602>,  <39.087948, 37.830570, 23.762037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859669, 37.897591, 23.793602>,  <38.479202, 38.009293, 23.846210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859669, 37.897591, 23.793602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123739, -0.045404, 0.991275,
		-0.282795, -0.959141, -0.008631,
		0.951165, -0.279260, -0.131524,
		39.145020, 37.813812, 23.754145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567535, 37.510979, 24.228819>,  <38.479202, 38.009293, 23.846210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567535, 37.510979, 24.228819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951557, 37.609863, 24.176373>,  <39.181969, 37.669193, 24.144905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951557, 37.609863, 24.176373>,  <38.567535, 37.510979, 24.228819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951557, 37.609863, 24.176373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178390, -0.179687, 0.967414,
		0.215594, -0.952155, -0.216609,
		0.960050, 0.247209, -0.131116,
		39.239571, 37.684025, 24.137037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951229, 37.005672, 24.592554>,  <38.567535, 37.510979, 24.228819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951229, 37.005672, 24.592554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187664, 37.322937, 24.533884>,  <39.329525, 37.513294, 24.498682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187664, 37.322937, 24.533884>,  <38.951229, 37.005672, 24.592554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187664, 37.322937, 24.533884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278526, -0.030045, 0.959959,
		0.756994, -0.608272, -0.238675,
		0.591087, 0.793160, -0.146675,
		39.364990, 37.560886, 24.489882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643505, 36.688122, 24.738071>,  <38.951229, 37.005672, 24.592554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643505, 36.688122, 24.738071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607677, 37.085381, 24.768108>,  <39.586182, 37.323734, 24.786131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.607677, 37.085381, 24.768108>,  <39.643505, 36.688122, 24.738071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607677, 37.085381, 24.768108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293399, -0.045737, 0.954895,
		0.951784, 0.107564, -0.287291,
		-0.089573, 0.993146, 0.075091,
		39.580807, 37.383324, 24.790636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280163, 36.887177, 25.010900>,  <39.643505, 36.688122, 24.738071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280163, 36.887177, 25.010900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036827, 37.199684, 25.066828>,  <39.890827, 37.387188, 25.100384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036827, 37.199684, 25.066828>,  <40.280163, 36.887177, 25.010900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036827, 37.199684, 25.066828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338365, 0.095942, 0.936111,
		0.717936, 0.616782, -0.322718,
		-0.608339, 0.781265, 0.139817,
		39.854324, 37.434063, 25.108772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654400, 37.353870, 25.346067>,  <40.280163, 36.887177, 25.010900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654400, 37.353870, 25.346067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281445, 37.474815, 25.425287>,  <40.057671, 37.547382, 25.472818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.281445, 37.474815, 25.425287>,  <40.654400, 37.353870, 25.346067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281445, 37.474815, 25.425287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272909, 0.229645, 0.934229,
		0.236998, 0.925115, -0.296637,
		-0.932391, 0.302365, 0.198047,
		40.001728, 37.565525, 25.484701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704685, 38.089596, 25.641184>,  <40.654400, 37.353870, 25.346067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704685, 38.089596, 25.641184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369797, 37.905064, 25.758650>,  <40.168865, 37.794346, 25.829130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369797, 37.905064, 25.758650>,  <40.704685, 38.089596, 25.641184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369797, 37.905064, 25.758650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333635, -0.005401, 0.942687,
		-0.433301, 0.887214, 0.158437,
		-0.837221, -0.461327, 0.293665,
		40.118629, 37.766666, 25.846750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703701, 38.244114, 26.332561>,  <40.704685, 38.089596, 25.641184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703701, 38.244114, 26.332561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377777, 38.012276, 26.337492>,  <40.182224, 37.873173, 26.340450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377777, 38.012276, 26.337492>,  <40.703701, 38.244114, 26.332561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377777, 38.012276, 26.337492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080530, -0.092102, 0.992488,
		-0.574109, 0.809681, 0.121720,
		-0.814809, -0.579598, 0.012327,
		40.133335, 37.838398, 26.341190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.150833, 38.518276, 26.775578>,  <40.703701, 38.244114, 26.332561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.150833, 38.518276, 26.775578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152340, 38.119041, 26.750866>,  <40.153244, 37.879501, 26.736040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152340, 38.119041, 26.750866>,  <40.150833, 38.518276, 26.775578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152340, 38.119041, 26.750866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227169, -0.059309, 0.972048,
		-0.973848, -0.017694, 0.226510,
		0.003765, -0.998083, -0.061778,
		40.153469, 37.819618, 26.732332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654133, 38.308674, 27.273380>,  <40.150833, 38.518276, 26.775578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654133, 38.308674, 27.273380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831188, 37.956085, 27.207554>,  <39.937420, 37.744534, 27.168058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831188, 37.956085, 27.207554>,  <39.654133, 38.308674, 27.273380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831188, 37.956085, 27.207554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013348, -0.177026, 0.984116,
		-0.896600, -0.437805, -0.066593,
		0.442640, -0.881470, -0.164565,
		39.963982, 37.691643, 27.158184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172421, 37.721420, 27.564611>,  <39.654133, 38.308674, 27.273380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172421, 37.721420, 27.564611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537048, 37.559784, 27.534300>,  <39.755825, 37.462803, 27.516113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537048, 37.559784, 27.534300>,  <39.172421, 37.721420, 27.564611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537048, 37.559784, 27.534300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072312, -0.339030, 0.937993,
		-0.404727, -0.849569, -0.338271,
		0.911574, -0.404093, -0.075780,
		39.810520, 37.438557, 27.511566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164364, 36.944202, 27.800415>,  <39.172421, 37.721420, 27.564611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164364, 36.944202, 27.800415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541553, 37.076111, 27.818529>,  <39.767868, 37.155254, 27.829397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541553, 37.076111, 27.818529>,  <39.164364, 36.944202, 27.800415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541553, 37.076111, 27.818529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008165, -0.158923, 0.987257,
		0.332768, -0.930588, -0.152553,
		0.942974, 0.329773, 0.045286,
		39.824444, 37.175041, 27.832115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456932, 36.445835, 28.116590>,  <39.164364, 36.944202, 27.800415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456932, 36.445835, 28.116590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684082, 36.770325, 28.172363>,  <39.820370, 36.965019, 28.205826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684082, 36.770325, 28.172363>,  <39.456932, 36.445835, 28.116590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684082, 36.770325, 28.172363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010561, -0.162199, 0.986702,
		0.823050, -0.561792, -0.083541,
		0.567871, 0.811222, 0.139431,
		39.854443, 37.013691, 28.214193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749565, 36.186237, 28.654402>,  <39.456932, 36.445835, 28.116590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749565, 36.186237, 28.654402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837585, 36.576221, 28.667284>,  <39.890400, 36.810211, 28.675013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837585, 36.576221, 28.667284>,  <39.749565, 36.186237, 28.654402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837585, 36.576221, 28.667284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086428, -0.052370, 0.994881,
		0.971651, -0.216144, -0.095788,
		0.220054, 0.974956, 0.032204,
		39.903603, 36.868710, 28.676945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384361, 36.214935, 28.958035>,  <39.749565, 36.186237, 28.654402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.384361, 36.214935, 28.958035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209396, 36.572662, 28.995703>,  <40.104416, 36.787296, 29.018305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209396, 36.572662, 28.995703>,  <40.384361, 36.214935, 28.958035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209396, 36.572662, 28.995703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187762, -0.011586, 0.982146,
		0.879439, 0.447287, -0.162851,
		-0.437414, 0.894315, 0.094173,
		40.078171, 36.840958, 29.023954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863964, 36.550327, 29.427204>,  <40.384361, 36.214935, 28.958035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863964, 36.550327, 29.427204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531445, 36.772160, 29.442049>,  <40.331932, 36.905258, 29.450956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531445, 36.772160, 29.442049>,  <40.863964, 36.550327, 29.427204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531445, 36.772160, 29.442049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188222, 0.218055, 0.957614,
		0.522985, 0.803050, -0.285654,
		-0.831300, 0.554584, 0.037113,
		40.282055, 36.938534, 29.453182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063038, 37.139236, 29.841700>,  <40.863964, 36.550327, 29.427204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063038, 37.139236, 29.841700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663986, 37.130463, 29.815586>,  <40.424557, 37.125198, 29.799917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663986, 37.130463, 29.815586>,  <41.063038, 37.139236, 29.841700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663986, 37.130463, 29.815586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067435, 0.118611, 0.990648,
		-0.013986, 0.992699, -0.119809,
		-0.997626, -0.021935, -0.065283,
		40.364700, 37.123882, 29.796001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897644, 37.768387, 30.221176>,  <41.063038, 37.139236, 29.841700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897644, 37.768387, 30.221176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603996, 37.497417, 30.202551>,  <40.427807, 37.334835, 30.191376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603996, 37.497417, 30.202551>,  <40.897644, 37.768387, 30.221176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603996, 37.497417, 30.202551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025642, -0.040867, 0.998835,
		-0.678535, 0.734460, 0.012631,
		-0.734121, -0.677420, -0.046563,
		40.383759, 37.294189, 30.188581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329460, 37.962521, 30.690182>,  <40.897644, 37.768387, 30.221176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329460, 37.962521, 30.690182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279831, 37.571480, 30.622179>,  <40.250053, 37.336857, 30.581377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279831, 37.571480, 30.622179>,  <40.329460, 37.962521, 30.690182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279831, 37.571480, 30.622179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134512, -0.153178, 0.979001,
		-0.983114, 0.144331, -0.112494,
		-0.124069, -0.977602, -0.170005,
		40.242611, 37.278198, 30.571177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803024, 37.776482, 31.166283>,  <40.329460, 37.962521, 30.690182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803024, 37.776482, 31.166283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932125, 37.413258, 31.059511>,  <40.009586, 37.195324, 30.995447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932125, 37.413258, 31.059511>,  <39.803024, 37.776482, 31.166283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932125, 37.413258, 31.059511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056756, -0.300085, 0.952223,
		-0.944780, -0.292183, -0.148391,
		0.322753, -0.908063, -0.266931,
		40.028950, 37.140839, 30.979431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278404, 37.330975, 31.283216>,  <39.803024, 37.776482, 31.166283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278404, 37.330975, 31.283216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612938, 37.111774, 31.289507>,  <39.813656, 36.980255, 31.293282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.612938, 37.111774, 31.289507>,  <39.278404, 37.330975, 31.283216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612938, 37.111774, 31.289507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152813, -0.205473, 0.966659,
		-0.526495, -0.810851, -0.255585,
		0.836332, -0.547998, 0.015728,
		39.863838, 36.947376, 31.294226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111790, 36.660290, 31.691446>,  <39.278404, 37.330975, 31.283216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111790, 36.660290, 31.691446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509689, 36.673882, 31.730072>,  <39.748428, 36.682037, 31.753248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509689, 36.673882, 31.730072>,  <39.111790, 36.660290, 31.691446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509689, 36.673882, 31.730072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065386, -0.514908, 0.854748,
		0.078767, -0.856572, -0.509981,
		0.994747, 0.033980, 0.096565,
		39.808113, 36.684074, 31.759041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327522, 36.029877, 31.938896>,  <39.111790, 36.660290, 31.691446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327522, 36.029877, 31.938896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642395, 36.264198, 32.016033>,  <39.831318, 36.404789, 32.062317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642395, 36.264198, 32.016033>,  <39.327522, 36.029877, 31.938896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642395, 36.264198, 32.016033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037255, -0.357285, 0.933252,
		0.615600, -0.727450, -0.303071,
		0.787177, 0.585801, 0.192844,
		39.878548, 36.439938, 32.073887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801025, 35.659138, 32.389030>,  <39.327522, 36.029877, 31.938896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801025, 35.659138, 32.389030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917591, 36.036064, 32.454906>,  <39.987530, 36.262218, 32.494431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917591, 36.036064, 32.454906>,  <39.801025, 35.659138, 32.389030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917591, 36.036064, 32.454906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076623, -0.194603, 0.977885,
		0.953523, -0.272352, -0.128913,
		0.291416, 0.942313, 0.164690,
		40.005016, 36.318760, 32.504314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324802, 35.637009, 32.821018>,  <39.801025, 35.659138, 32.389030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324802, 35.637009, 32.821018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171490, 36.005203, 32.851494>,  <40.079502, 36.226120, 32.869778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171490, 36.005203, 32.851494>,  <40.324802, 35.637009, 32.821018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171490, 36.005203, 32.851494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206425, 0.004967, 0.978450,
		0.900270, 0.390746, -0.191915,
		-0.383279, 0.920485, 0.076189,
		40.056507, 36.281349, 32.874352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817715, 35.925873, 33.205078>,  <40.324802, 35.637009, 32.821018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817715, 35.925873, 33.205078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478901, 36.134956, 33.243664>,  <40.275612, 36.260406, 33.266815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478901, 36.134956, 33.243664>,  <40.817715, 35.925873, 33.205078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478901, 36.134956, 33.243664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084844, -0.046189, 0.995323,
		0.524722, 0.851258, -0.005225,
		-0.847035, 0.522711, 0.096461,
		40.224789, 36.291771, 33.272602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856678, 36.107319, 33.922386>,  <40.817715, 35.925873, 33.205078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856678, 36.107319, 33.922386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480438, 36.222065, 33.849743>,  <40.254696, 36.290913, 33.806156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480438, 36.222065, 33.849743>,  <40.856678, 36.107319, 33.922386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480438, 36.222065, 33.849743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211121, -0.075260, 0.974558,
		0.265894, 0.955012, 0.131352,
		-0.940600, 0.286861, -0.181611,
		40.198257, 36.308125, 33.795258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665134, 36.592411, 34.421741>,  <40.856678, 36.107319, 33.922386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665134, 36.592411, 34.421741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321060, 36.447372, 34.278294>,  <40.114616, 36.360348, 34.192223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321060, 36.447372, 34.278294>,  <40.665134, 36.592411, 34.421741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321060, 36.447372, 34.278294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344816, -0.104600, 0.932824,
		-0.375750, 0.926058, -0.035054,
		-0.860182, -0.362596, -0.358624,
		40.063007, 36.338593, 34.170708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141808, 36.820297, 34.955276>,  <40.665134, 36.592411, 34.421741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141808, 36.820297, 34.955276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983219, 36.512985, 34.754257>,  <39.888065, 36.328598, 34.633644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983219, 36.512985, 34.754257>,  <40.141808, 36.820297, 34.955276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983219, 36.512985, 34.754257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378012, -0.362236, 0.851993,
		-0.836610, 0.527762, -0.146802,
		-0.396472, -0.768279, -0.502551,
		39.864277, 36.282501, 34.603493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415287, 36.747978, 35.051231>,  <40.141808, 36.820297, 34.955276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415287, 36.747978, 35.051231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524601, 36.372719, 34.966198>,  <39.590187, 36.147564, 34.915176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524601, 36.372719, 34.966198>,  <39.415287, 36.747978, 35.051231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524601, 36.372719, 34.966198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468948, -0.322887, 0.822090,
		-0.839884, -0.124971, -0.528183,
		0.273281, -0.938151, -0.212583,
		39.606586, 36.091274, 34.902424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747269, 36.391811, 35.137657>,  <39.415287, 36.747978, 35.051231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747269, 36.391811, 35.137657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036812, 36.116154, 35.150986>,  <39.210537, 35.950760, 35.158985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036812, 36.116154, 35.150986>,  <38.747269, 36.391811, 35.137657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036812, 36.116154, 35.150986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483644, -0.472374, 0.736852,
		-0.492053, -0.549496, -0.675232,
		0.723859, -0.689142, 0.033328,
		39.253971, 35.909412, 35.160984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332428, 35.843079, 35.277779>,  <38.747269, 36.391811, 35.137657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332428, 35.843079, 35.277779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711864, 35.735588, 35.344673>,  <38.939526, 35.671093, 35.384811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711864, 35.735588, 35.344673>,  <38.332428, 35.843079, 35.277779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711864, 35.735588, 35.344673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305599, -0.640019, 0.704972,
		-0.082408, -0.719835, -0.689236,
		0.948587, -0.268725, 0.167238,
		38.996441, 35.654972, 35.394844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354149, 35.176548, 35.291931>,  <38.332428, 35.843079, 35.277779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354149, 35.176548, 35.291931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651146, 35.290543, 35.534412>,  <38.829346, 35.358940, 35.679901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651146, 35.290543, 35.534412>,  <38.354149, 35.176548, 35.291931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651146, 35.290543, 35.534412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483601, -0.398139, 0.779496,
		0.463502, -0.871933, -0.157795,
		0.742493, 0.284988, 0.606206,
		38.873894, 35.376038, 35.716274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625755, 34.582291, 35.597633>,  <38.354149, 35.176548, 35.291931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625755, 34.582291, 35.597633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680775, 34.888027, 35.849625>,  <38.713787, 35.071468, 36.000820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680775, 34.888027, 35.849625>,  <38.625755, 34.582291, 35.597633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680775, 34.888027, 35.849625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509891, -0.490631, 0.706606,
		0.849171, -0.418410, 0.322243,
		0.137549, 0.764339, 0.629974,
		38.722038, 35.117329, 36.038616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006519, 34.548489, 35.100334>,  <38.625755, 34.582291, 35.597633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006519, 34.548489, 35.100334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946186, 34.249691, 35.359329>,  <37.909985, 34.070412, 35.514729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946186, 34.249691, 35.359329>,  <38.006519, 34.548489, 35.100334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946186, 34.249691, 35.359329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035276, 0.658633, 0.751637,
		-0.987930, 0.090530, -0.125694,
		-0.150832, -0.746998, 0.647490,
		37.900936, 34.025593, 35.553577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448547, 34.766243, 35.556423>,  <38.006519, 34.548489, 35.100334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448547, 34.766243, 35.556423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619114, 34.477303, 35.774189>,  <37.721455, 34.303940, 35.904850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619114, 34.477303, 35.774189>,  <37.448547, 34.766243, 35.556423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619114, 34.477303, 35.774189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176722, 0.523747, 0.833342,
		-0.887098, -0.451557, 0.095678,
		0.426412, -0.722347, 0.544415,
		37.747036, 34.260597, 35.937515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956684, 34.512505, 36.028000>,  <37.448547, 34.766243, 35.556423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956684, 34.512505, 36.028000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326874, 34.490147, 36.177864>,  <37.548988, 34.476730, 36.267784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326874, 34.490147, 36.177864>,  <36.956684, 34.512505, 36.028000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326874, 34.490147, 36.177864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297252, 0.505918, 0.809746,
		-0.234812, -0.860769, 0.451598,
		0.925475, -0.055900, 0.374661,
		37.604515, 34.473377, 36.290264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924091, 34.356499, 36.697380>,  <36.956684, 34.512505, 36.028000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924091, 34.356499, 36.697380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281902, 34.533657, 36.673141>,  <37.496590, 34.639950, 36.658596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281902, 34.533657, 36.673141>,  <36.924091, 34.356499, 36.697380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281902, 34.533657, 36.673141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165578, 0.454200, 0.875378,
		0.415219, -0.773015, 0.479626,
		0.894526, 0.442889, -0.060598,
		37.550259, 34.666523, 36.654961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369545, 34.297318, 37.369686>,  <36.924091, 34.356499, 36.697380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369545, 34.297318, 37.369686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416260, 34.629490, 37.151787>,  <37.444290, 34.828793, 37.021046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416260, 34.629490, 37.151787>,  <37.369545, 34.297318, 37.369686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416260, 34.629490, 37.151787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154490, 0.557015, 0.816006,
		0.981067, -0.011144, 0.193347,
		0.116791, 0.830427, -0.544748,
		37.451298, 34.878616, 36.988361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893658, 34.871151, 37.707417>,  <37.369545, 34.297318, 37.369686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893658, 34.871151, 37.707417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603935, 35.010033, 37.469147>,  <37.430099, 35.093361, 37.326187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603935, 35.010033, 37.469147>,  <37.893658, 34.871151, 37.707417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603935, 35.010033, 37.469147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297514, 0.621982, 0.724309,
		0.621982, 0.701844, -0.347208,
		-0.724309, 0.347208, -0.595670,
		37.386642, 35.114197, 37.290447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434525, 35.282215, 37.869801>,  <37.893658, 34.871151, 37.707417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434525, 35.282215, 37.869801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683834, 34.976059, 37.933933>,  <38.833420, 34.792366, 37.972412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.683834, 34.976059, 37.933933>,  <38.434525, 35.282215, 37.869801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683834, 34.976059, 37.933933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197287, 0.044493, 0.979336,
		-0.756709, -0.642025, -0.123270,
		0.623274, -0.765391, 0.160331,
		38.870815, 34.746441, 37.982033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135960, 35.021160, 38.463497>,  <38.434525, 35.282215, 37.869801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135960, 35.021160, 38.463497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499725, 34.855080, 38.473148>,  <38.717983, 34.755432, 38.478939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499725, 34.855080, 38.473148>,  <38.135960, 35.021160, 38.463497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499725, 34.855080, 38.473148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013522, 0.087499, 0.996073,
		-0.415678, -0.905514, 0.085187,
		0.909411, -0.415197, 0.024127,
		38.772549, 34.730522, 38.480385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932301, 34.447224, 38.902290>,  <38.135960, 35.021160, 38.463497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932301, 34.447224, 38.902290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312622, 34.571041, 38.897472>,  <38.540817, 34.645332, 38.894581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312622, 34.571041, 38.897472>,  <37.932301, 34.447224, 38.902290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312622, 34.571041, 38.897472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026576, 0.120253, 0.992388,
		0.308641, -0.943249, 0.122564,
		0.950807, 0.309548, -0.012047,
		38.597866, 34.663906, 38.893860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354889, 34.053406, 39.392574>,  <37.932301, 34.447224, 38.902290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354889, 34.053406, 39.392574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504971, 34.418423, 39.327480>,  <38.595020, 34.637432, 39.288422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.504971, 34.418423, 39.327480>,  <38.354889, 34.053406, 39.392574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504971, 34.418423, 39.327480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323419, 0.293411, 0.899617,
		0.868690, -0.284907, 0.405223,
		0.375204, 0.912545, -0.162739,
		38.617531, 34.692184, 39.278660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876850, 34.242191, 39.909721>,  <38.354889, 34.053406, 39.392574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876850, 34.242191, 39.909721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752289, 34.590260, 39.756969>,  <38.677551, 34.799099, 39.665318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752289, 34.590260, 39.756969>,  <38.876850, 34.242191, 39.909721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752289, 34.590260, 39.756969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124227, 0.361137, 0.924201,
		0.942122, 0.335242, -0.004362,
		-0.311406, 0.870168, -0.381882,
		38.658867, 34.851311, 39.642406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280857, 34.870281, 40.244083>,  <38.876850, 34.242191, 39.909721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280857, 34.870281, 40.244083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918468, 34.962570, 40.102108>,  <38.701035, 35.017944, 40.016922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918468, 34.962570, 40.102108>,  <39.280857, 34.870281, 40.244083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918468, 34.962570, 40.102108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264945, 0.344907, 0.900468,
		0.330182, 0.909838, -0.251346,
		-0.905971, 0.230725, -0.354939,
		38.646679, 35.031788, 39.995625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115490, 35.539982, 40.539993>,  <39.280857, 34.870281, 40.244083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115490, 35.539982, 40.539993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760757, 35.414524, 40.404255>,  <38.547916, 35.339249, 40.322811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760757, 35.414524, 40.404255>,  <39.115490, 35.539982, 40.539993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760757, 35.414524, 40.404255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456656, 0.482592, 0.747376,
		-0.070646, 0.817761, -0.571206,
		-0.886834, -0.313644, -0.339342,
		38.494709, 35.320431, 40.302452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750568, 36.064014, 40.392887>,  <39.115490, 35.539982, 40.539993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750568, 36.064014, 40.392887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482288, 35.777279, 40.469105>,  <38.321320, 35.605236, 40.514835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482288, 35.777279, 40.469105>,  <38.750568, 36.064014, 40.392887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482288, 35.777279, 40.469105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406608, 0.570177, 0.713840,
		-0.620351, 0.401295, -0.673889,
		-0.670697, -0.716841, 0.190540,
		38.281078, 35.562225, 40.526268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122589, 36.461357, 40.437466>,  <38.750568, 36.064014, 40.392887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122589, 36.461357, 40.437466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110432, 36.124813, 40.653316>,  <38.103138, 35.922886, 40.782825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110432, 36.124813, 40.653316>,  <38.122589, 36.461357, 40.437466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110432, 36.124813, 40.653316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349204, 0.514792, 0.782972,
		-0.936553, -0.164638, -0.309454,
		-0.030398, -0.841358, 0.539623,
		38.101311, 35.872406, 40.815205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460484, 36.213352, 40.635818>,  <38.122589, 36.461357, 40.437466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460484, 36.213352, 40.635818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735561, 36.132961, 40.914871>,  <37.900608, 36.084728, 41.082302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735561, 36.132961, 40.914871>,  <37.460484, 36.213352, 40.635818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735561, 36.132961, 40.914871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506032, 0.556349, 0.659096,
		-0.520587, -0.806279, 0.280899,
		0.687693, -0.200973, 0.697631,
		37.941868, 36.072670, 41.124161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021679, 36.125046, 41.329189>,  <37.460484, 36.213352, 40.635818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021679, 36.125046, 41.329189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384655, 36.280743, 41.392490>,  <37.602440, 36.374161, 41.430473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384655, 36.280743, 41.392490>,  <37.021679, 36.125046, 41.329189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384655, 36.280743, 41.392490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418760, 0.806814, 0.416762,
		0.034538, -0.444458, 0.895134,
		0.907440, 0.389241, 0.158255,
		37.656887, 36.397514, 41.439968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419174, 35.485123, 41.334900>,  <37.021679, 36.125046, 41.329189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419174, 35.485123, 41.334900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637436, 35.150505, 41.315125>,  <37.768394, 34.949734, 41.303257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637436, 35.150505, 41.315125>,  <37.419174, 35.485123, 41.334900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637436, 35.150505, 41.315125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819858, -0.545123, 0.175139,
		-0.173464, -0.055031, -0.983302,
		0.545659, -0.836548, -0.049441,
		37.801132, 34.899540, 41.300293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225319, 34.990337, 40.784481>,  <37.419174, 35.485123, 41.334900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225319, 34.990337, 40.784481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367920, 34.813477, 41.113701>,  <37.453480, 34.707359, 41.311234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367920, 34.813477, 41.113701>,  <37.225319, 34.990337, 40.784481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367920, 34.813477, 41.113701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884967, -0.442259, 0.145741,
		0.299561, -0.780327, -0.548956,
		0.356506, -0.442149, 0.823047,
		37.474873, 34.680832, 41.360615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654526, 34.487885, 40.401539>,  <37.225319, 34.990337, 40.784481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654526, 34.487885, 40.401539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797462, 34.860840, 40.423279>,  <37.883224, 35.084614, 40.436321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797462, 34.860840, 40.423279>,  <37.654526, 34.487885, 40.401539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797462, 34.860840, 40.423279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455821, -0.123314, -0.881488,
		-0.815191, 0.339762, -0.469069,
		0.357339, 0.932392, 0.054346,
		37.904663, 35.140556, 40.439583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406479, 34.920929, 39.813221>,  <37.654526, 34.487885, 40.401539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406479, 34.920929, 39.813221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752525, 35.060905, 39.956951>,  <37.960152, 35.144894, 40.043190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752525, 35.060905, 39.956951>,  <37.406479, 34.920929, 39.813221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752525, 35.060905, 39.956951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414851, -0.096556, -0.904751,
		-0.281916, 0.931781, -0.228707,
		0.865114, 0.349944, 0.359330,
		38.012058, 35.165890, 40.064751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632553, 35.499603, 39.386948>,  <37.406479, 34.920929, 39.813221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632553, 35.499603, 39.386948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949364, 35.350605, 39.580418>,  <38.139450, 35.261204, 39.696499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949364, 35.350605, 39.580418>,  <37.632553, 35.499603, 39.386948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949364, 35.350605, 39.580418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446855, -0.186083, -0.875039,
		0.415956, 0.909185, 0.019071,
		0.792023, -0.372500, 0.483676,
		38.186970, 35.238853, 39.725521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139591, 35.913239, 39.100861>,  <37.632553, 35.499603, 39.386948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139591, 35.913239, 39.100861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291088, 35.573967, 39.248997>,  <38.381985, 35.370403, 39.337879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291088, 35.573967, 39.248997>,  <38.139591, 35.913239, 39.100861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291088, 35.573967, 39.248997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443934, -0.184619, -0.876834,
		0.812083, 0.496498, 0.306612,
		0.378740, -0.848178, 0.370338,
		38.404709, 35.319515, 39.360100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856709, 35.882481, 39.087109>,  <38.139591, 35.913239, 39.100861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856709, 35.882481, 39.087109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743896, 35.498821, 39.095989>,  <38.676208, 35.268627, 39.101318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743896, 35.498821, 39.095989>,  <38.856709, 35.882481, 39.087109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743896, 35.498821, 39.095989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723252, -0.227760, -0.651945,
		0.630370, -0.167808, 0.757941,
		-0.282031, -0.959149, 0.022205,
		38.659286, 35.211075, 39.102650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385284, 35.402798, 39.170139>,  <38.856709, 35.882481, 39.087109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385284, 35.402798, 39.170139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238552, 35.038574, 39.246376>,  <39.150513, 34.820042, 39.292118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238552, 35.038574, 39.246376>,  <39.385284, 35.402798, 39.170139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238552, 35.038574, 39.246376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086359, -0.237317, -0.967586,
		0.926273, -0.338477, 0.165689,
		-0.366826, -0.910557, 0.190590,
		39.128506, 34.765408, 39.303555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825176, 34.960438, 38.745205>,  <39.385284, 35.402798, 39.170139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825176, 34.960438, 38.745205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490429, 34.759914, 38.833160>,  <39.289581, 34.639603, 38.885933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490429, 34.759914, 38.833160>,  <39.825176, 34.960438, 38.745205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490429, 34.759914, 38.833160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054228, -0.323786, -0.944575,
		0.544717, -0.802406, 0.243780,
		-0.836865, -0.501307, 0.219885,
		39.239368, 34.609524, 38.899124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927544, 34.239731, 38.647503>,  <39.825176, 34.960438, 38.745205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927544, 34.239731, 38.647503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551285, 34.362740, 38.590088>,  <39.325527, 34.436546, 38.555637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551285, 34.362740, 38.590088>,  <39.927544, 34.239731, 38.647503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551285, 34.362740, 38.590088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021270, -0.368696, -0.929307,
		-0.338701, -0.877209, 0.340274,
		-0.940654, 0.307520, -0.143536,
		39.269089, 34.454998, 38.547028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541599, 33.736465, 38.455502>,  <39.927544, 34.239731, 38.647503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541599, 33.736465, 38.455502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338623, 34.037128, 38.286972>,  <39.216835, 34.217525, 38.185856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338623, 34.037128, 38.286972>,  <39.541599, 33.736465, 38.455502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338623, 34.037128, 38.286972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080988, -0.445187, -0.891768,
		-0.857871, -0.486643, 0.165032,
		-0.507443, 0.751657, -0.421325,
		39.186390, 34.262627, 38.160576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872826, 33.575100, 38.140163>,  <39.541599, 33.736465, 38.455502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872826, 33.575100, 38.140163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037018, 33.894356, 37.963760>,  <39.135532, 34.085907, 37.857918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037018, 33.894356, 37.963760>,  <38.872826, 33.575100, 38.140163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037018, 33.894356, 37.963760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010366, -0.479515, -0.877473,
		-0.911812, 0.364754, -0.188557,
		0.410477, 0.798135, -0.441008,
		39.160160, 34.133797, 37.831459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489349, 33.806629, 37.459545>,  <38.872826, 33.575100, 38.140163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489349, 33.806629, 37.459545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885876, 33.857483, 37.473022>,  <39.123791, 33.887997, 37.481110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885876, 33.857483, 37.473022>,  <38.489349, 33.806629, 37.459545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885876, 33.857483, 37.473022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107530, -0.635900, -0.764244,
		-0.075735, 0.761228, -0.644047,
		0.991313, 0.127134, 0.033695,
		39.183270, 33.895622, 37.483131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769936, 34.120438, 36.846745>,  <38.489349, 33.806629, 37.459545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769936, 34.120438, 36.846745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069920, 33.914818, 37.013264>,  <39.249912, 33.791447, 37.113174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069920, 33.914818, 37.013264>,  <38.769936, 34.120438, 36.846745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069920, 33.914818, 37.013264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150159, -0.480614, -0.863981,
		0.644210, 0.710465, -0.283254,
		0.749964, -0.514052, 0.416299,
		39.294910, 33.760601, 37.138153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263577, 34.444714, 37.223763>,  <38.769936, 34.120438, 36.846745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263577, 34.444714, 37.223763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567139, 34.672173, 37.350700>,  <38.749275, 34.808647, 37.426865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567139, 34.672173, 37.350700>,  <38.263577, 34.444714, 37.223763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567139, 34.672173, 37.350700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155128, 0.315430, -0.936183,
		-0.632455, 0.759703, 0.151169,
		0.758905, 0.568643, 0.317346,
		38.794811, 34.842766, 37.445904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191193, 35.170517, 37.024124>,  <38.263577, 34.444714, 37.223763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191193, 35.170517, 37.024124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580109, 35.100643, 37.086273>,  <38.813457, 35.058720, 37.123562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.580109, 35.100643, 37.086273>,  <38.191193, 35.170517, 37.024124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580109, 35.100643, 37.086273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185488, 0.171875, -0.967498,
		0.142301, 0.969508, 0.199513,
		0.972288, -0.174683, 0.155375,
		38.871796, 35.048237, 37.132885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560932, 35.749386, 36.752785>,  <38.191193, 35.170517, 37.024124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560932, 35.749386, 36.752785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805847, 35.433430, 36.766525>,  <38.952797, 35.243858, 36.774769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805847, 35.433430, 36.766525>,  <38.560932, 35.749386, 36.752785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805847, 35.433430, 36.766525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334420, 0.219370, -0.916537,
		0.716424, 0.572675, 0.398472,
		0.612291, -0.789886, 0.034352,
		38.989532, 35.196465, 36.776833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233177, 35.923897, 36.794792>,  <38.560932, 35.749386, 36.752785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233177, 35.923897, 36.794792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137791, 35.602020, 36.577312>,  <39.080559, 35.408894, 36.446823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137791, 35.602020, 36.577312>,  <39.233177, 35.923897, 36.794792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137791, 35.602020, 36.577312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312046, 0.466677, -0.827551,
		0.919653, -0.367003, 0.139813,
		-0.238466, -0.804687, -0.543703,
		39.066250, 35.360615, 36.414200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823765, 35.797321, 36.461868>,  <39.233177, 35.923897, 36.794792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823765, 35.797321, 36.461868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525997, 35.660748, 36.232338>,  <39.347336, 35.578804, 36.094620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525997, 35.660748, 36.232338>,  <39.823765, 35.797321, 36.461868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525997, 35.660748, 36.232338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417366, 0.432879, -0.799013,
		0.521204, -0.834290, -0.179738,
		-0.744413, -0.341432, -0.573823,
		39.302673, 35.558319, 36.060192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139606, 35.287777, 35.885727>,  <39.823765, 35.797321, 36.461868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139606, 35.287777, 35.885727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788998, 35.439213, 35.766811>,  <39.578632, 35.530075, 35.695461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788998, 35.439213, 35.766811>,  <40.139606, 35.287777, 35.885727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788998, 35.439213, 35.766811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360710, 0.107641, -0.926446,
		-0.318741, -0.919285, -0.230910,
		-0.876523, 0.378588, -0.297286,
		39.526039, 35.552788, 35.677624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942078, 34.854595, 35.315006>,  <40.139606, 35.287777, 35.885727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942078, 34.854595, 35.315006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740055, 35.194035, 35.252018>,  <39.618839, 35.397697, 35.214226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740055, 35.194035, 35.252018>,  <39.942078, 34.854595, 35.315006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740055, 35.194035, 35.252018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401059, 0.069193, -0.913435,
		-0.764243, -0.524494, -0.375285,
		-0.505058, 0.848598, -0.157473,
		39.588539, 35.448612, 35.204777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815102, 34.882107, 34.542206>,  <39.942078, 34.854595, 35.315006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815102, 34.882107, 34.542206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711369, 35.255432, 34.641541>,  <39.649128, 35.479427, 34.701141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.711369, 35.255432, 34.641541>,  <39.815102, 34.882107, 34.542206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711369, 35.255432, 34.641541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113588, 0.284823, -0.951826,
		-0.959086, -0.218627, -0.179876,
		-0.259328, 0.933316, 0.248336,
		39.633572, 35.535427, 34.716042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441357, 35.197468, 34.018795>,  <39.815102, 34.882107, 34.542206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441357, 35.197468, 34.018795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519611, 35.544922, 34.200874>,  <39.566563, 35.753395, 34.310120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.519611, 35.544922, 34.200874>,  <39.441357, 35.197468, 34.018795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519611, 35.544922, 34.200874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224235, 0.412247, -0.883047,
		-0.954696, 0.274827, -0.114127,
		0.195636, 0.868633, 0.455196,
		39.578300, 35.805511, 34.337433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899693, 34.614849, 33.784451>,  <39.441357, 35.197468, 34.018795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899693, 34.614849, 33.784451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749321, 34.302254, 33.585270>,  <38.659096, 34.114697, 33.465763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749321, 34.302254, 33.585270>,  <38.899693, 34.614849, 33.784451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749321, 34.302254, 33.585270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731583, 0.079512, -0.677100,
		0.568736, -0.618837, 0.541830,
		-0.375933, -0.781485, -0.497952,
		38.636539, 34.067810, 33.435883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378288, 34.033100, 33.489948>,  <38.899693, 34.614849, 33.784451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378288, 34.033100, 33.489948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075481, 34.030521, 33.228603>,  <38.893799, 34.028973, 33.071796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075481, 34.030521, 33.228603>,  <39.378288, 34.033100, 33.489948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075481, 34.030521, 33.228603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610684, 0.348611, -0.711010,
		0.232354, -0.937245, -0.259966,
		-0.757017, -0.006449, -0.653362,
		38.848377, 34.028587, 33.032593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927681, 33.640743, 33.834042>,  <39.378288, 34.033100, 33.489948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927681, 33.640743, 33.834042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213291, 33.379772, 33.732452>,  <40.384659, 33.223190, 33.671497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213291, 33.379772, 33.732452>,  <39.927681, 33.640743, 33.834042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213291, 33.379772, 33.732452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670995, 0.741249, -0.017735,
		0.199831, -0.157755, 0.967048,
		0.714026, -0.652429, -0.253977,
		40.427498, 33.184044, 33.656258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481174, 34.055729, 33.738308>,  <39.927681, 33.640743, 33.834042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481174, 34.055729, 33.738308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658585, 33.706337, 33.657990>,  <40.765030, 33.496700, 33.609798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658585, 33.706337, 33.657990>,  <40.481174, 34.055729, 33.738308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658585, 33.706337, 33.657990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841971, 0.482856, -0.240696,
		0.307199, -0.062311, 0.949603,
		0.443523, -0.873480, -0.200798,
		40.791641, 33.444294, 33.597752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933941, 33.764130, 34.320095>,  <40.481174, 34.055729, 33.738308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933941, 33.764130, 34.320095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015377, 33.735947, 33.929489>,  <41.064240, 33.719036, 33.695126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015377, 33.735947, 33.929489>,  <40.933941, 33.764130, 34.320095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015377, 33.735947, 33.929489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723545, 0.682761, 0.101583,
		0.659571, -0.727236, 0.189985,
		0.203589, -0.070462, -0.976518,
		41.076454, 33.714809, 33.636536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688522, 33.615993, 34.270973>,  <40.933941, 33.764130, 34.320095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688522, 33.615993, 34.270973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554508, 33.801285, 33.942787>,  <41.474098, 33.912460, 33.745876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554508, 33.801285, 33.942787>,  <41.688522, 33.615993, 34.270973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554508, 33.801285, 33.942787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765535, 0.641482, 0.049569,
		0.549279, -0.611490, -0.569537,
		-0.335037, 0.463228, -0.820469,
		41.453999, 33.940254, 33.696648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171383, 33.539547, 33.708435>,  <41.688522, 33.615993, 34.270973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171383, 33.539547, 33.708435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.948936, 33.869286, 33.750740>,  <41.815468, 34.067131, 33.776123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.948936, 33.869286, 33.750740>,  <42.171383, 33.539547, 33.708435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948936, 33.869286, 33.750740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831087, 0.552456, 0.063929,
		-0.005732, 0.123453, -0.992334,
		-0.556113, 0.824349, 0.105767,
		41.782101, 34.116589, 33.782471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397942, 34.085144, 33.296177>,  <42.171383, 33.539547, 33.708435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397942, 34.085144, 33.296177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205822, 34.222961, 33.618816>,  <42.090549, 34.305653, 33.812401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.205822, 34.222961, 33.618816>,  <42.397942, 34.085144, 33.296177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205822, 34.222961, 33.618816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810841, 0.525066, 0.258541,
		-0.334439, 0.778201, -0.531559,
		-0.480300, 0.344543, 0.806599,
		42.061733, 34.326324, 33.860798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411613, 34.847767, 33.315079>,  <42.397942, 34.085144, 33.296177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411613, 34.847767, 33.315079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454952, 34.658924, 33.665020>,  <42.480957, 34.545620, 33.874985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.454952, 34.658924, 33.665020>,  <42.411613, 34.847767, 33.315079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.454952, 34.658924, 33.665020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845140, 0.507128, 0.168994,
		-0.523448, 0.721066, 0.453944,
		0.108352, -0.472106, 0.874858,
		42.487457, 34.517292, 33.927479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582680, 35.357197, 33.704399>,  <42.411613, 34.847767, 33.315079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582680, 35.357197, 33.704399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690823, 34.997070, 33.840836>,  <42.755707, 34.780994, 33.922695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690823, 34.997070, 33.840836>,  <42.582680, 35.357197, 33.704399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690823, 34.997070, 33.840836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901476, 0.361108, 0.238625,
		-0.338007, 0.242968, 0.909240,
		0.270355, -0.900315, 0.341087,
		42.771931, 34.726974, 33.943161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887177, 35.473381, 34.302547>,  <42.582680, 35.357197, 33.704399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887177, 35.473381, 34.302547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036545, 35.133640, 34.153336>,  <43.126167, 34.929794, 34.063808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036545, 35.133640, 34.153336>,  <42.887177, 35.473381, 34.302547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036545, 35.133640, 34.153336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902680, 0.240001, 0.357166,
		-0.213832, -0.470104, 0.856316,
		0.373422, -0.849354, -0.373034,
		43.148571, 34.878834, 34.041424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408905, 35.161076, 34.810493>,  <42.887177, 35.473381, 34.302547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.408905, 35.161076, 34.810493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457970, 35.069122, 34.424309>,  <43.487408, 35.013950, 34.192600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457970, 35.069122, 34.424309>,  <43.408905, 35.161076, 34.810493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457970, 35.069122, 34.424309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970913, 0.229354, 0.068740,
		0.205630, -0.945807, 0.251325,
		0.122658, -0.229880, -0.965459,
		43.494766, 35.000156, 34.134670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966122, 34.633217, 34.885239>,  <43.408905, 35.161076, 34.810493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966122, 34.633217, 34.885239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967243, 34.794312, 34.519115>,  <43.967918, 34.890968, 34.299442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967243, 34.794312, 34.519115>,  <43.966122, 34.633217, 34.885239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967243, 34.794312, 34.519115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996434, 0.076060, 0.036522,
		0.084327, -0.912150, -0.401088,
		0.002807, 0.402738, -0.915311,
		43.968086, 34.915134, 34.244522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489361, 34.300755, 34.480755>,  <43.966122, 34.633217, 34.885239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489361, 34.300755, 34.480755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502434, 34.669041, 34.325214>,  <44.510277, 34.890015, 34.231888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502434, 34.669041, 34.325214>,  <44.489361, 34.300755, 34.480755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502434, 34.669041, 34.325214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984252, -0.097274, -0.147603,
		-0.173727, -0.377908, -0.909398,
		0.032680, 0.920719, -0.388856,
		44.512238, 34.945255, 34.208557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855885, 34.274181, 33.787033>,  <44.489361, 34.300755, 34.480755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855885, 34.274181, 33.787033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.901115, 34.604614, 34.007870>,  <44.928253, 34.802876, 34.140369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.901115, 34.604614, 34.007870>,  <44.855885, 34.274181, 33.787033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.901115, 34.604614, 34.007870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992726, -0.117049, -0.028185,
		0.041339, 0.551261, -0.833308,
		0.113075, 0.826082, 0.552090,
		44.935040, 34.852440, 34.173496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430347, 34.669800, 33.497944>,  <44.855885, 34.274181, 33.787033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430347, 34.669800, 33.497944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.389885, 34.787285, 33.878155>,  <45.365608, 34.857777, 34.106281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.389885, 34.787285, 33.878155>,  <45.430347, 34.669800, 33.497944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389885, 34.787285, 33.878155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979132, -0.139885, 0.147420,
		0.176264, 0.945603, -0.273432,
		-0.101152, 0.293711, 0.950527,
		45.359539, 34.875397, 34.163315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.807156, 35.232464, 33.607162>,  <45.430347, 34.669800, 33.497944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.807156, 35.232464, 33.607162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763138, 34.997322, 33.927742>,  <45.736729, 34.856236, 34.120090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763138, 34.997322, 33.927742>,  <45.807156, 35.232464, 33.607162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.763138, 34.997322, 33.927742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963995, -0.259521, -0.057993,
		0.242084, 0.766209, 0.595247,
		-0.110044, -0.587854, 0.801448,
		45.730125, 34.820965, 34.168175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.288044, 35.242783, 34.180893>,  <45.807156, 35.232464, 33.607162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.288044, 35.242783, 34.180893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.156048, 34.865822, 34.202774>,  <46.076851, 34.639645, 34.215904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.156048, 34.865822, 34.202774>,  <46.288044, 35.242783, 34.180893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.156048, 34.865822, 34.202774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935768, -0.334199, -0.112473,
		0.124276, 0.014073, 0.992148,
		-0.329992, -0.942398, 0.054702,
		46.057049, 34.583103, 34.219185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.659840, 34.921192, 34.711708>,  <46.288044, 35.242783, 34.180893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.659840, 34.921192, 34.711708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.514103, 34.647991, 34.458485>,  <46.426662, 34.484070, 34.306549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.514103, 34.647991, 34.458485>,  <46.659840, 34.921192, 34.711708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.514103, 34.647991, 34.458485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930878, -0.286743, -0.226373,
		-0.026912, -0.671777, 0.740265,
		-0.364337, -0.683004, -0.633059,
		46.404800, 34.443089, 34.268566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.982147, 34.144501, 34.790691>,  <46.659840, 34.921192, 34.711708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.982147, 34.144501, 34.790691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868450, 34.253780, 34.423092>,  <46.800232, 34.319347, 34.202530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.868450, 34.253780, 34.423092>,  <46.982147, 34.144501, 34.790691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.868450, 34.253780, 34.423092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934008, -0.137454, -0.329750,
		-0.216408, -0.952087, -0.216098,
		-0.284247, 0.273198, -0.919003,
		46.783176, 34.335739, 34.147392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.491562, 34.742867, 34.799801>,  <46.982147, 34.144501, 34.790691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.491562, 34.742867, 34.799801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.645191, 35.042686, 35.015453>,  <47.737370, 35.222576, 35.144844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.645191, 35.042686, 35.015453>,  <47.491562, 34.742867, 34.799801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.645191, 35.042686, 35.015453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860428, 0.078772, 0.503447,
		0.334887, -0.657249, 0.675184,
		0.384076, 0.749545, 0.539136,
		47.760414, 35.267551, 35.177193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.186710, 34.197887, 24.550121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808273, 34.077637, 24.501907>,  <35.581211, 34.005486, 24.472979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808273, 34.077637, 24.501907>,  <36.186710, 34.197887, 24.550121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808273, 34.077637, 24.501907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036216, -0.271631, 0.961720,
		-0.321858, 0.914244, 0.246101,
		-0.946095, -0.300625, -0.120536,
		35.524445, 33.987450, 24.465746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799847, 34.642452, 24.976213>,  <36.186710, 34.197887, 24.550121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799847, 34.642452, 24.976213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561840, 34.325504, 24.922384>,  <35.419037, 34.135338, 24.890087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561840, 34.325504, 24.922384>,  <35.799847, 34.642452, 24.976213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561840, 34.325504, 24.922384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126117, -0.073313, 0.989303,
		-0.793757, 0.605623, -0.056308,
		-0.595016, -0.792367, -0.134572,
		35.383335, 34.087795, 24.882013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238060, 34.735374, 25.519207>,  <35.799847, 34.642452, 24.976213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238060, 34.735374, 25.519207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.250648, 34.351166, 25.408644>,  <35.258202, 34.120640, 25.342306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.250648, 34.351166, 25.408644>,  <35.238060, 34.735374, 25.519207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250648, 34.351166, 25.408644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150599, -0.277943, 0.948719,
		-0.988094, 0.011771, -0.153401,
		0.031469, -0.960526, -0.276406,
		35.260090, 34.063007, 25.325722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712917, 34.426682, 25.880056>,  <35.238060, 34.735374, 25.519207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712917, 34.426682, 25.880056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.956505, 34.127769, 25.773676>,  <35.102657, 33.948421, 25.709848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.956505, 34.127769, 25.773676>,  <34.712917, 34.426682, 25.880056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956505, 34.127769, 25.773676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207971, -0.473988, 0.855619,
		-0.765442, -0.465738, -0.444058,
		0.608972, -0.747278, -0.265950,
		35.139198, 33.903587, 25.693892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433605, 33.831261, 26.154202>,  <34.712917, 34.426682, 25.880056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433605, 33.831261, 26.154202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.815216, 33.723408, 26.101854>,  <35.044182, 33.658695, 26.070446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.815216, 33.723408, 26.101854>,  <34.433605, 33.831261, 26.154202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815216, 33.723408, 26.101854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004105, -0.448360, 0.893844,
		-0.299680, -0.852217, -0.428856,
		0.954031, -0.269628, -0.130867,
		35.101425, 33.642521, 26.062593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484467, 33.248360, 26.569792>,  <34.433605, 33.831261, 26.154202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484467, 33.248360, 26.569792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868294, 33.336327, 26.499525>,  <35.098591, 33.389107, 26.457365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868294, 33.336327, 26.499525>,  <34.484467, 33.248360, 26.569792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868294, 33.336327, 26.499525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239670, -0.311179, 0.919633,
		0.147577, -0.924556, -0.351306,
		0.959573, 0.219914, -0.175666,
		35.156166, 33.402302, 26.446825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880154, 32.578049, 26.708395>,  <34.484467, 33.248360, 26.569792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880154, 32.578049, 26.708395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.120258, 32.896652, 26.737404>,  <35.264320, 33.087814, 26.754808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.120258, 32.896652, 26.737404>,  <34.880154, 32.578049, 26.708395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120258, 32.896652, 26.737404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213283, -0.246802, 0.945304,
		0.770840, -0.551964, -0.318028,
		0.600263, 0.796508, 0.072521,
		35.300339, 33.135605, 26.759161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546478, 32.362949, 26.963181>,  <34.880154, 32.578049, 26.708395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546478, 32.362949, 26.963181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.521263, 32.750797, 27.057722>,  <35.506134, 32.983505, 27.114447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.521263, 32.750797, 27.057722>,  <35.546478, 32.362949, 26.963181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521263, 32.750797, 27.057722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261842, -0.212460, 0.941435,
		0.963050, 0.121231, -0.240495,
		-0.063036, 0.969621, 0.236353,
		35.502354, 33.041683, 27.128628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872353, 32.388557, 27.598616>,  <35.546478, 32.362949, 26.963181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872353, 32.388557, 27.598616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.736938, 32.764786, 27.609383>,  <35.655689, 32.990520, 27.615843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.736938, 32.764786, 27.609383>,  <35.872353, 32.388557, 27.598616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736938, 32.764786, 27.609383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198361, 0.043372, 0.979169,
		0.919808, 0.336824, -0.201255,
		-0.338536, 0.940568, 0.026919,
		35.635376, 33.046955, 27.617458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362305, 32.873276, 28.014366>,  <35.872353, 32.388557, 27.598616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362305, 32.873276, 28.014366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.995102, 33.030251, 28.037195>,  <35.774780, 33.124435, 28.050894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.995102, 33.030251, 28.037195>,  <36.362305, 32.873276, 28.014366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995102, 33.030251, 28.037195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074306, 0.028846, 0.996818,
		0.389544, 0.919325, -0.055641,
		-0.918005, 0.392439, 0.057075,
		35.719700, 33.147984, 28.054317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425144, 33.486691, 28.409121>,  <36.362305, 32.873276, 28.014366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425144, 33.486691, 28.409121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.038715, 33.385162, 28.428221>,  <35.806858, 33.324245, 28.439682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.038715, 33.385162, 28.428221>,  <36.425144, 33.486691, 28.409121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038715, 33.385162, 28.428221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029073, 0.076843, 0.996619,
		-0.256633, 0.964194, -0.066856,
		-0.966071, -0.253822, 0.047752,
		35.748894, 33.309017, 28.442547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080738, 34.073334, 28.702530>,  <36.425144, 33.486691, 28.409121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080738, 34.073334, 28.702530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.898792, 33.733257, 28.808565>,  <35.789623, 33.529213, 28.872187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.898792, 33.733257, 28.808565>,  <36.080738, 34.073334, 28.702530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898792, 33.733257, 28.808565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041601, 0.317624, 0.947304,
		-0.889586, 0.419871, -0.179846,
		-0.454869, -0.850190, 0.265086,
		35.762333, 33.478199, 28.888092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692368, 34.315449, 29.210510>,  <36.080738, 34.073334, 28.702530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692368, 34.315449, 29.210510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.622311, 33.923450, 29.248322>,  <35.580276, 33.688251, 29.271009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.622311, 33.923450, 29.248322>,  <35.692368, 34.315449, 29.210510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622311, 33.923450, 29.248322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068330, 0.107882, 0.991813,
		-0.982169, 0.167251, -0.085858,
		-0.175144, -0.979994, 0.094530,
		35.569767, 33.629452, 29.276680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184326, 34.281326, 29.729597>,  <35.692368, 34.315449, 29.210510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184326, 34.281326, 29.729597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.341045, 33.913422, 29.720303>,  <35.435078, 33.692680, 29.714725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.341045, 33.913422, 29.720303>,  <35.184326, 34.281326, 29.729597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341045, 33.913422, 29.720303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023759, -0.035360, 0.999092,
		-0.919746, -0.390886, -0.035707,
		0.391794, -0.919760, -0.023235,
		35.458584, 33.637493, 29.713331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809269, 33.933353, 30.284477>,  <35.184326, 34.281326, 29.729597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809269, 33.933353, 30.284477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149315, 33.731842, 30.223133>,  <35.353344, 33.610935, 30.186327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149315, 33.731842, 30.223133>,  <34.809269, 33.933353, 30.284477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149315, 33.731842, 30.223133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162202, -0.026565, 0.986400,
		-0.500996, -0.863427, 0.059130,
		0.850114, -0.503774, -0.153359,
		35.404350, 33.580711, 30.177126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752743, 33.284611, 30.673586>,  <34.809269, 33.933353, 30.284477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752743, 33.284611, 30.673586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.139488, 33.357944, 30.602530>,  <35.371536, 33.401943, 30.559896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.139488, 33.357944, 30.602530>,  <34.752743, 33.284611, 30.673586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139488, 33.357944, 30.602530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219762, -0.243689, 0.944627,
		0.129892, -0.952368, -0.275905,
		0.966867, 0.183333, -0.177641,
		35.429550, 33.412945, 30.549236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183323, 32.787819, 31.103615>,  <34.752743, 33.284611, 30.673586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183323, 32.787819, 31.103615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.454571, 33.066959, 31.011391>,  <35.617321, 33.234444, 30.956057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.454571, 33.066959, 31.011391>,  <35.183323, 32.787819, 31.103615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454571, 33.066959, 31.011391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318399, 0.003791, 0.947949,
		0.662402, -0.716233, -0.219624,
		0.678120, 0.697851, -0.230559,
		35.658009, 33.276314, 30.942223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839611, 32.460091, 31.325314>,  <35.183323, 32.787819, 31.103615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839611, 32.460091, 31.325314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853161, 32.859810, 31.331633>,  <35.861290, 33.099644, 31.335424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853161, 32.859810, 31.331633>,  <35.839611, 32.460091, 31.325314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853161, 32.859810, 31.331633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313477, -0.025635, 0.949250,
		0.948991, -0.027205, -0.314126,
		0.033877, 0.999301, 0.015799,
		35.863323, 33.159599, 31.336372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432636, 32.577579, 31.799139>,  <35.839611, 32.460091, 31.325314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432636, 32.577579, 31.799139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227806, 32.920906, 31.786045>,  <36.104908, 33.126904, 31.778189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.227806, 32.920906, 31.786045>,  <36.432636, 32.577579, 31.799139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227806, 32.920906, 31.786045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223842, 0.170145, 0.959659,
		0.829261, 0.484091, -0.279255,
		-0.512075, 0.858316, -0.032735,
		36.074184, 33.178402, 31.776224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912060, 33.039951, 32.083057>,  <36.432636, 32.577579, 31.799139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912060, 33.039951, 32.083057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.538685, 33.172745, 32.137447>,  <36.314659, 33.252419, 32.170082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.538685, 33.172745, 32.137447>,  <36.912060, 33.039951, 32.083057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538685, 33.172745, 32.137447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228252, 0.257157, 0.939027,
		0.276771, 0.907557, -0.315814,
		-0.933434, 0.331980, 0.135978,
		36.258656, 33.272339, 32.178242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020489, 33.696358, 32.451344>,  <36.912060, 33.039951, 32.083057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020489, 33.696358, 32.451344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.645004, 33.572105, 32.511112>,  <36.419712, 33.497555, 32.546974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.645004, 33.572105, 32.511112>,  <37.020489, 33.696358, 32.451344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645004, 33.572105, 32.511112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068626, 0.256386, 0.964135,
		-0.337798, 0.915301, -0.219355,
		-0.938713, -0.310630, 0.149420,
		36.363392, 33.478916, 32.555939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030041, 34.306927, 32.997643>,  <37.020489, 33.696358, 32.451344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030041, 34.306927, 32.997643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.416958, 34.408394, 32.997425>,  <37.649109, 34.469273, 32.997295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.416958, 34.408394, 32.997425>,  <37.030041, 34.306927, 32.997643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416958, 34.408394, 32.997425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039036, 0.146743, -0.988404,
		-0.250647, 0.956096, 0.151846,
		0.967291, 0.253668, -0.000541,
		37.707146, 34.484493, 32.997261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052429, 35.035652, 32.806622>,  <37.030041, 34.306927, 32.997643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052429, 35.035652, 32.806622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.399170, 34.853001, 32.726559>,  <37.607212, 34.743408, 32.678520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.399170, 34.853001, 32.726559>,  <37.052429, 35.035652, 32.806622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399170, 34.853001, 32.726559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025531, 0.441591, -0.896853,
		0.497918, 0.772325, 0.394450,
		0.866848, -0.456630, -0.200158,
		37.659225, 34.716011, 32.666512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437824, 35.556988, 32.544464>,  <37.052429, 35.035652, 32.806622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437824, 35.556988, 32.544464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.594662, 35.213638, 32.412125>,  <37.688763, 35.007629, 32.332722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.594662, 35.213638, 32.412125>,  <37.437824, 35.556988, 32.544464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594662, 35.213638, 32.412125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104931, 0.399035, -0.910912,
		0.913923, 0.322444, 0.246527,
		0.392091, -0.858371, -0.330853,
		37.712288, 34.956127, 32.312870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918777, 35.908897, 32.123932>,  <37.437824, 35.556988, 32.544464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918777, 35.908897, 32.123932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.889042, 35.529148, 32.001846>,  <37.871201, 35.301296, 31.928595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.889042, 35.529148, 32.001846>,  <37.918777, 35.908897, 32.123932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889042, 35.529148, 32.001846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260858, 0.276891, -0.924816,
		0.962511, -0.148369, 0.227069,
		-0.074340, -0.949378, -0.305214,
		37.866741, 35.244335, 31.910282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443882, 35.870174, 31.641895>,  <37.918777, 35.908897, 32.123932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443882, 35.870174, 31.641895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.208527, 35.557442, 31.559402>,  <38.067314, 35.369801, 31.509907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.208527, 35.557442, 31.559402>,  <38.443882, 35.870174, 31.641895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208527, 35.557442, 31.559402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039969, 0.226620, -0.973163,
		0.807590, -0.580841, -0.102091,
		-0.588388, -0.781836, -0.206231,
		38.032009, 35.322891, 31.497534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743752, 35.520367, 30.954174>,  <38.443882, 35.870174, 31.641895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743752, 35.520367, 30.954174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.367508, 35.389141, 30.989126>,  <38.141762, 35.310406, 31.010098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.367508, 35.389141, 30.989126>,  <38.743752, 35.520367, 30.954174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367508, 35.389141, 30.989126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203978, 0.340343, -0.917910,
		0.271394, -0.881215, -0.387047,
		-0.940605, -0.328064, 0.087382,
		38.085327, 35.290722, 31.015341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633568, 35.090195, 30.408157>,  <38.743752, 35.520367, 30.954174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633568, 35.090195, 30.408157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282806, 35.239716, 30.529028>,  <38.072350, 35.329430, 30.601549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282806, 35.239716, 30.529028>,  <38.633568, 35.090195, 30.408157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282806, 35.239716, 30.529028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157449, 0.370592, -0.915353,
		-0.454145, -0.850255, -0.266118,
		-0.876905, 0.373803, 0.302174,
		38.019733, 35.351856, 30.619680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116196, 34.961075, 29.870581>,  <38.633568, 35.090195, 30.408157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116196, 34.961075, 29.870581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940353, 35.256355, 30.075251>,  <37.834850, 35.433521, 30.198053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940353, 35.256355, 30.075251>,  <38.116196, 34.961075, 29.870581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940353, 35.256355, 30.075251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192686, 0.478903, -0.856460,
		-0.877282, -0.475094, -0.068286,
		-0.439601, 0.738199, 0.511677,
		37.808472, 35.477814, 30.228754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618839, 35.093502, 29.476906>,  <38.116196, 34.961075, 29.870581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618839, 35.093502, 29.476906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.616524, 35.415184, 29.714634>,  <37.615135, 35.608192, 29.857271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.616524, 35.415184, 29.714634>,  <37.618839, 35.093502, 29.476906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616524, 35.415184, 29.714634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391220, 0.545135, -0.741468,
		-0.920279, -0.236802, 0.311467,
		-0.005790, 0.804209, 0.594318,
		37.614788, 35.656448, 29.892929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051987, 35.339394, 29.530035>,  <37.618839, 35.093502, 29.476906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051987, 35.339394, 29.530035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.256439, 35.672092, 29.616699>,  <37.379108, 35.871712, 29.668697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.256439, 35.672092, 29.616699>,  <37.051987, 35.339394, 29.530035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256439, 35.672092, 29.616699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317330, 0.416882, -0.851770,
		-0.798780, 0.366612, 0.477019,
		0.511129, 0.831748, 0.216660,
		37.409779, 35.921616, 29.681698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598267, 35.919937, 29.432056>,  <37.051987, 35.339394, 29.530035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598267, 35.919937, 29.432056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.966331, 36.069176, 29.384544>,  <37.187168, 36.158718, 29.356037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.966331, 36.069176, 29.384544>,  <36.598267, 35.919937, 29.432056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966331, 36.069176, 29.384544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204735, 0.199885, -0.958191,
		-0.333754, 0.906005, 0.260312,
		0.920159, 0.373095, -0.118779,
		37.242378, 36.181103, 29.348911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479828, 36.626469, 29.174671>,  <36.598267, 35.919937, 29.432056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479828, 36.626469, 29.174671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.864223, 36.550903, 29.093863>,  <37.094860, 36.505566, 29.045378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.864223, 36.550903, 29.093863>,  <36.479828, 36.626469, 29.174671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864223, 36.550903, 29.093863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129141, 0.339444, -0.931719,
		0.244589, 0.921461, 0.301806,
		0.960988, -0.188913, -0.202022,
		37.152519, 36.494228, 29.033257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664982, 37.207611, 28.727642>,  <36.479828, 36.626469, 29.174671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664982, 37.207611, 28.727642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.939571, 36.921970, 28.672766>,  <37.104324, 36.750587, 28.639839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.939571, 36.921970, 28.672766>,  <36.664982, 37.207611, 28.727642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939571, 36.921970, 28.672766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071842, 0.121141, -0.990032,
		0.723599, 0.689485, 0.031857,
		0.686472, -0.714097, -0.137192,
		37.145512, 36.707741, 28.631609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212093, 37.484959, 28.187750>,  <36.664982, 37.207611, 28.727642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212093, 37.484959, 28.187750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.232414, 37.087070, 28.223402>,  <37.244606, 36.848335, 28.244793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.232414, 37.087070, 28.223402>,  <37.212093, 37.484959, 28.187750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232414, 37.087070, 28.223402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074115, -0.092755, -0.992927,
		0.995955, 0.043836, -0.078436,
		0.050801, -0.994723, 0.089131,
		37.247654, 36.788654, 28.250141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626961, 37.310791, 27.562342>,  <37.212093, 37.484959, 28.187750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626961, 37.310791, 27.562342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.463436, 36.966694, 27.684233>,  <37.365322, 36.760235, 27.757368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.463436, 36.966694, 27.684233>,  <37.626961, 37.310791, 27.562342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463436, 36.966694, 27.684233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093263, -0.292776, -0.951622,
		0.907839, -0.417457, 0.039463,
		-0.408815, -0.860239, 0.304727,
		37.340790, 36.708622, 27.775650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972023, 36.734570, 27.137455>,  <37.626961, 37.310791, 27.562342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972023, 36.734570, 27.137455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.645206, 36.554638, 27.281734>,  <37.449116, 36.446678, 27.368301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.645206, 36.554638, 27.281734>,  <37.972023, 36.734570, 27.137455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645206, 36.554638, 27.281734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050158, -0.567759, -0.821666,
		0.574398, -0.689424, 0.441318,
		-0.817038, -0.449827, 0.360699,
		37.400093, 36.419689, 27.389944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120113, 36.025784, 27.187950>,  <37.972023, 36.734570, 27.137455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120113, 36.025784, 27.187950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.723423, 36.067551, 27.158060>,  <37.485409, 36.092613, 27.140127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.723423, 36.067551, 27.158060>,  <38.120113, 36.025784, 27.187950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723423, 36.067551, 27.158060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012094, -0.655321, -0.755254,
		-0.127832, -0.748099, 0.651159,
		-0.991722, 0.104421, -0.074723,
		37.425907, 36.098877, 27.135643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920734, 35.408829, 27.224888>,  <38.120113, 36.025784, 27.187950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920734, 35.408829, 27.224888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620171, 35.596615, 27.039419>,  <37.439831, 35.709286, 26.928139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.620171, 35.596615, 27.039419>,  <37.920734, 35.408829, 27.224888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620171, 35.596615, 27.039419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131500, -0.582066, -0.802438,
		-0.646603, -0.663931, 0.375634,
		-0.751407, 0.469463, -0.463672,
		37.394749, 35.737453, 26.900318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767937, 34.944141, 26.802147>,  <37.920734, 35.408829, 27.224888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767937, 34.944141, 26.802147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.590549, 35.260281, 26.633060>,  <37.484116, 35.449963, 26.531609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.590549, 35.260281, 26.633060>,  <37.767937, 34.944141, 26.802147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590549, 35.260281, 26.633060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017066, -0.464095, -0.885621,
		-0.896127, -0.399960, 0.192324,
		-0.443470, 0.790346, -0.422714,
		37.457508, 35.497383, 26.506247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.163441, 34.789253, 26.189152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.276814, 35.163578, 26.105318>,  <37.344837, 35.388172, 26.055017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.276814, 35.163578, 26.105318>,  <37.163441, 34.789253, 26.189152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276814, 35.163578, 26.105318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197815, -0.270899, -0.942063,
		-0.938369, 0.225551, -0.261899,
		0.283431, 0.935810, -0.209586,
		37.361843, 35.444321, 26.042442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683319, 34.990009, 25.628082>,  <37.163441, 34.789253, 26.189152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683319, 34.990009, 25.628082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995052, 35.238121, 25.592548>,  <37.182091, 35.386990, 25.571228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995052, 35.238121, 25.592548>,  <36.683319, 34.990009, 25.628082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995052, 35.238121, 25.592548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102143, -0.265629, -0.958649,
		-0.618230, 0.738032, -0.270371,
		0.779332, 0.620282, -0.088836,
		37.228851, 35.424206, 25.565897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483295, 35.422310, 25.106840>,  <36.683319, 34.990009, 25.628082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483295, 35.422310, 25.106840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.881618, 35.407997, 25.140518>,  <37.120613, 35.399410, 25.160725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.881618, 35.407997, 25.140518>,  <36.483295, 35.422310, 25.106840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881618, 35.407997, 25.140518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071656, -0.267065, -0.961011,
		0.056869, 0.963014, -0.263381,
		0.995807, -0.035779, 0.084193,
		37.180359, 35.397263, 25.165775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779648, 35.799175, 24.520153>,  <36.483295, 35.422310, 25.106840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779648, 35.799175, 24.520153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.096149, 35.589561, 24.646202>,  <37.286053, 35.463795, 24.721832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.096149, 35.589561, 24.646202>,  <36.779648, 35.799175, 24.520153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096149, 35.589561, 24.646202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267235, -0.167177, -0.949019,
		0.549999, 0.835129, 0.007760,
		0.791256, -0.524033, 0.315124,
		37.333527, 35.432350, 24.740740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356140, 36.089470, 24.232351>,  <36.779648, 35.799175, 24.520153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356140, 36.089470, 24.232351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.446205, 35.710518, 24.323364>,  <37.500244, 35.483147, 24.377972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.446205, 35.710518, 24.323364>,  <37.356140, 36.089470, 24.232351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446205, 35.710518, 24.323364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229319, -0.175441, -0.957410,
		0.946950, 0.267751, 0.177750,
		0.225163, -0.947381, 0.227534,
		37.513756, 35.426304, 24.391624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966763, 36.031448, 23.815887>,  <37.356140, 36.089470, 24.232351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966763, 36.031448, 23.815887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.880562, 35.655739, 23.922714>,  <37.828842, 35.430313, 23.986811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.880562, 35.655739, 23.922714>,  <37.966763, 36.031448, 23.815887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880562, 35.655739, 23.922714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241816, -0.316303, -0.917321,
		0.946090, -0.133101, 0.295295,
		-0.215499, -0.939275, 0.267065,
		37.815910, 35.373955, 24.002834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416969, 35.681313, 23.507635>,  <37.966763, 36.031448, 23.815887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416969, 35.681313, 23.507635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.124271, 35.414551, 23.563906>,  <37.948654, 35.254494, 23.597668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.124271, 35.414551, 23.563906>,  <38.416969, 35.681313, 23.507635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124271, 35.414551, 23.563906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068604, -0.277416, -0.958297,
		0.678118, -0.691578, 0.248750,
		-0.731744, -0.666904, 0.140676,
		37.904747, 35.214481, 23.606108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648670, 35.056553, 23.269999>,  <38.416969, 35.681313, 23.507635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648670, 35.056553, 23.269999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.250465, 35.018833, 23.273333>,  <38.011543, 34.996201, 23.275333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.250465, 35.018833, 23.273333>,  <38.648670, 35.056553, 23.269999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250465, 35.018833, 23.273333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012797, -0.221285, -0.975125,
		0.093802, -0.970639, 0.221498,
		-0.995508, -0.094303, 0.008336,
		37.951813, 34.990543, 23.275833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397476, 34.463802, 22.897230>,  <38.648670, 35.056553, 23.269999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397476, 34.463802, 22.897230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.047905, 34.657021, 22.875610>,  <37.838161, 34.772953, 22.862638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.047905, 34.657021, 22.875610>,  <38.397476, 34.463802, 22.897230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047905, 34.657021, 22.875610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026839, -0.063075, -0.997648,
		-0.485321, -0.873319, 0.042158,
		-0.873924, 0.483048, -0.054050,
		37.785728, 34.801933, 22.859396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888176, 34.025410, 22.380196>,  <38.397476, 34.463802, 22.897230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888176, 34.025410, 22.380196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.765629, 34.405602, 22.401098>,  <37.692101, 34.633717, 22.413639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.765629, 34.405602, 22.401098>,  <37.888176, 34.025410, 22.380196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765629, 34.405602, 22.401098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191661, -0.007820, -0.981430,
		-0.932418, -0.310697, 0.184565,
		-0.306370, 0.950477, 0.052257,
		37.673717, 34.690746, 22.416775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448944, 34.068588, 21.816420>,  <37.888176, 34.025410, 22.380196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448944, 34.068588, 21.816420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463528, 34.458080, 21.906332>,  <37.472279, 34.691776, 21.960279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463528, 34.458080, 21.906332>,  <37.448944, 34.068588, 21.816420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463528, 34.458080, 21.906332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079017, 0.227037, -0.970675,
		-0.996206, 0.017633, 0.085219,
		0.036463, 0.973727, 0.224782,
		37.474468, 34.750198, 21.973766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881176, 34.390736, 21.453196>,  <37.448944, 34.068588, 21.816420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881176, 34.390736, 21.453196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.152439, 34.676880, 21.520567>,  <37.315197, 34.848568, 21.560989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.152439, 34.676880, 21.520567>,  <36.881176, 34.390736, 21.453196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152439, 34.676880, 21.520567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060337, 0.174211, -0.982858,
		-0.732438, 0.676692, 0.074979,
		0.678154, 0.715359, 0.168428,
		37.355885, 34.891487, 21.571095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668915, 35.027084, 21.150599>,  <36.881176, 34.390736, 21.453196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668915, 35.027084, 21.150599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.066433, 35.055313, 21.184965>,  <37.304943, 35.072250, 21.205585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.066433, 35.055313, 21.184965>,  <36.668915, 35.027084, 21.150599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066433, 35.055313, 21.184965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066250, 0.244750, -0.967320,
		-0.089292, 0.967015, 0.238558,
		0.993800, 0.070570, 0.085919,
		37.364574, 35.076485, 21.210741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797050, 35.772186, 20.848026>,  <36.668915, 35.027084, 21.150599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797050, 35.772186, 20.848026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.142910, 35.572514, 20.825401>,  <37.350426, 35.452709, 20.811827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.142910, 35.572514, 20.825401>,  <36.797050, 35.772186, 20.848026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142910, 35.572514, 20.825401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151119, 0.365809, -0.918339,
		0.479112, 0.785492, 0.391732,
		0.864647, -0.499185, -0.056561,
		37.402306, 35.422756, 20.808434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342442, 36.288486, 20.661516>,  <36.797050, 35.772186, 20.848026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342442, 36.288486, 20.661516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.464100, 35.922394, 20.555805>,  <37.537094, 35.702736, 20.492378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.464100, 35.922394, 20.555805>,  <37.342442, 36.288486, 20.661516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464100, 35.922394, 20.555805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205821, 0.334000, -0.919827,
		0.930126, 0.225366, 0.289959,
		0.304144, -0.915235, -0.264277,
		37.555344, 35.647823, 20.476522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859852, 36.412567, 20.234724>,  <37.342442, 36.288486, 20.661516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859852, 36.412567, 20.234724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.796692, 36.029263, 20.139389>,  <37.758797, 35.799282, 20.082188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.796692, 36.029263, 20.139389>,  <37.859852, 36.412567, 20.234724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796692, 36.029263, 20.139389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428811, 0.150877, -0.890706,
		0.889487, -0.242848, 0.387088,
		-0.157904, -0.958259, -0.238339,
		37.749321, 35.741783, 20.067888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377079, 36.318172, 19.755766>,  <37.859852, 36.412567, 20.234724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377079, 36.318172, 19.755766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079464, 36.054771, 19.710543>,  <37.900894, 35.896729, 19.683409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.079464, 36.054771, 19.710543>,  <38.377079, 36.318172, 19.755766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079464, 36.054771, 19.710543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041809, 0.122992, -0.991527,
		0.666832, -0.742456, -0.063978,
		-0.744034, -0.658507, -0.113056,
		37.856255, 35.857220, 19.676626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610615, 35.943924, 19.131058>,  <38.377079, 36.318172, 19.755766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610615, 35.943924, 19.131058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.216103, 35.889645, 19.168673>,  <37.979397, 35.857075, 19.191240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.216103, 35.889645, 19.168673>,  <38.610615, 35.943924, 19.131058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216103, 35.889645, 19.168673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119456, 0.193385, -0.973824,
		0.113962, -0.971693, -0.206942,
		-0.986278, -0.135699, 0.094036,
		37.920219, 35.848934, 19.196882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463276, 35.512653, 18.580742>,  <38.610615, 35.943924, 19.131058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463276, 35.512653, 18.580742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.108906, 35.653980, 18.700937>,  <37.896282, 35.738777, 18.773054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.108906, 35.653980, 18.700937>,  <38.463276, 35.512653, 18.580742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108906, 35.653980, 18.700937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283695, 0.099757, -0.953711,
		-0.366941, -0.930169, 0.011857,
		-0.885930, 0.353319, 0.300489,
		37.843128, 35.759975, 18.791084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973553, 35.202892, 18.101816>,  <38.463276, 35.512653, 18.580742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973553, 35.202892, 18.101816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.795334, 35.525688, 18.256868>,  <37.688400, 35.719364, 18.349899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.795334, 35.525688, 18.256868>,  <37.973553, 35.202892, 18.101816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795334, 35.525688, 18.256868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290257, 0.279384, -0.915257,
		-0.846897, -0.520306, 0.109753,
		-0.445551, 0.806985, 0.387632,
		37.661667, 35.767784, 18.373158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264389, 35.297710, 17.932529>,  <37.973553, 35.202892, 18.101816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264389, 35.297710, 17.932529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.383572, 35.675404, 17.988585>,  <37.455082, 35.902020, 18.022219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.383572, 35.675404, 17.988585>,  <37.264389, 35.297710, 17.932529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383572, 35.675404, 17.988585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491914, 0.277692, -0.825171,
		-0.818073, 0.176926, 0.547223,
		0.297954, 0.944237, 0.140140,
		37.472958, 35.958675, 18.030626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709373, 35.661922, 17.594938>,  <37.264389, 35.297710, 17.932529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709373, 35.661922, 17.594938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.971748, 35.959965, 17.643213>,  <37.129173, 36.138790, 17.672178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.971748, 35.959965, 17.643213>,  <36.709373, 35.661922, 17.594938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971748, 35.959965, 17.643213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262420, 0.375026, -0.889096,
		-0.707733, 0.551517, 0.441523,
		0.655934, 0.745107, 0.120689,
		37.168530, 36.183498, 17.679420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451248, 36.236732, 17.248468>,  <36.709373, 35.661922, 17.594938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451248, 36.236732, 17.248468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.850048, 36.267548, 17.251348>,  <37.089329, 36.286037, 17.253077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.850048, 36.267548, 17.251348>,  <36.451248, 36.236732, 17.248468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850048, 36.267548, 17.251348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035637, 0.539841, -0.841013,
		-0.068673, 0.838235, 0.540968,
		0.997003, 0.077033, 0.007200,
		37.149147, 36.290657, 17.253510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961632, 35.853210, 16.945368>,  <36.451248, 36.236732, 17.248468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961632, 35.853210, 16.945368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623600, 35.999031, 16.788940>,  <35.420780, 36.086525, 16.695084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623600, 35.999031, 16.788940>,  <35.961632, 35.853210, 16.945368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623600, 35.999031, 16.788940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299355, 0.283398, 0.911083,
		0.442968, 0.887009, -0.130363,
		-0.845083, 0.364556, -0.391067,
		35.370075, 36.108398, 16.671621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784908, 36.589008, 17.131414>,  <35.961632, 35.853210, 16.945368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784908, 36.589008, 17.131414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.493294, 36.319786, 17.081608>,  <35.318325, 36.158253, 17.051723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.493294, 36.319786, 17.081608>,  <35.784908, 36.589008, 17.131414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493294, 36.319786, 17.081608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315191, 0.168627, 0.933927,
		-0.607585, 0.720114, -0.335075,
		-0.729037, -0.673053, -0.124519,
		35.274582, 36.117870, 17.044252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316208, 36.882076, 17.590614>,  <35.784908, 36.589008, 17.131414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316208, 36.882076, 17.590614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.159565, 36.531593, 17.478252>,  <35.065578, 36.321304, 17.410835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.159565, 36.531593, 17.478252>,  <35.316208, 36.882076, 17.590614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159565, 36.531593, 17.478252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405042, -0.109963, 0.907661,
		-0.826189, 0.469221, -0.311839,
		-0.391603, -0.876207, -0.280904,
		35.042084, 36.268730, 17.393982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602417, 36.830658, 17.744846>,  <35.316208, 36.882076, 17.590614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602417, 36.830658, 17.744846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.706978, 36.445049, 17.725561>,  <34.769714, 36.213684, 17.713989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.706978, 36.445049, 17.725561>,  <34.602417, 36.830658, 17.744846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706978, 36.445049, 17.725561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199526, -0.102839, 0.974481,
		-0.944383, -0.245110, -0.219230,
		0.261401, -0.964026, -0.048214,
		34.785397, 36.155842, 17.711098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168053, 36.582031, 18.115128>,  <34.602417, 36.830658, 17.744846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168053, 36.582031, 18.115128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.439461, 36.290283, 18.080173>,  <34.602306, 36.115234, 18.059200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.439461, 36.290283, 18.080173>,  <34.168053, 36.582031, 18.115128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439461, 36.290283, 18.080173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173814, -0.274989, 0.945605,
		-0.713725, -0.626420, -0.313359,
		0.678516, -0.729369, -0.087387,
		34.643017, 36.071472, 18.053957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843048, 36.039871, 18.395128>,  <34.168053, 36.582031, 18.115128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843048, 36.039871, 18.395128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.238712, 35.993027, 18.430548>,  <34.476112, 35.964920, 18.451799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.238712, 35.993027, 18.430548>,  <33.843048, 36.039871, 18.395128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238712, 35.993027, 18.430548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122865, -0.330117, 0.935910,
		-0.080376, -0.936647, -0.340929,
		0.989164, -0.117113, 0.088547,
		34.535461, 35.957893, 18.457111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955399, 35.434120, 18.863991>,  <33.843048, 36.039871, 18.395128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955399, 35.434120, 18.863991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.331596, 35.569679, 18.873899>,  <34.557316, 35.651016, 18.879845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.331596, 35.569679, 18.873899>,  <33.955399, 35.434120, 18.863991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331596, 35.569679, 18.873899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119604, -0.398390, 0.909385,
		0.318058, -0.852310, -0.415218,
		0.940497, 0.338899, 0.024771,
		34.613747, 35.671349, 18.881330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481785, 34.861290, 19.021635>,  <33.955399, 35.434120, 18.863991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481785, 34.861290, 19.021635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.647408, 35.212536, 19.117533>,  <34.746780, 35.423283, 19.175072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.647408, 35.212536, 19.117533>,  <34.481785, 34.861290, 19.021635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647408, 35.212536, 19.117533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289613, -0.376784, 0.879863,
		0.862949, -0.294881, -0.410322,
		0.414057, 0.878111, 0.239744,
		34.771626, 35.475967, 19.189455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170086, 34.762619, 19.237194>,  <34.481785, 34.861290, 19.021635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170086, 34.762619, 19.237194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.061226, 35.103302, 19.416313>,  <34.995911, 35.307713, 19.523785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.061226, 35.103302, 19.416313>,  <35.170086, 34.762619, 19.237194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061226, 35.103302, 19.416313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223519, -0.396678, 0.890329,
		0.935934, 0.342396, -0.082417,
		-0.272152, 0.851711, 0.447797,
		34.979580, 35.358814, 19.550652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654358, 34.866093, 19.813795>,  <35.170086, 34.762619, 19.237194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654358, 34.866093, 19.813795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.381874, 35.145763, 19.900600>,  <35.218384, 35.313568, 19.952682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.381874, 35.145763, 19.900600>,  <35.654358, 34.866093, 19.813795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381874, 35.145763, 19.900600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173029, -0.134263, 0.975723,
		0.711343, 0.702225, -0.029516,
		-0.681214, 0.699180, 0.217012,
		35.177509, 35.355518, 19.965704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960449, 35.364399, 20.213272>,  <35.654358, 34.866093, 19.813795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960449, 35.364399, 20.213272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.570297, 35.369011, 20.301361>,  <35.336205, 35.371780, 20.354216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.570297, 35.369011, 20.301361>,  <35.960449, 35.364399, 20.213272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570297, 35.369011, 20.301361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219789, -0.030709, 0.975064,
		0.018008, 0.999462, 0.027419,
		-0.975381, 0.011533, 0.220224,
		35.277683, 35.372471, 20.367428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926395, 35.839672, 20.710682>,  <35.960449, 35.364399, 20.213272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926395, 35.839672, 20.710682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.594814, 35.618492, 20.744328>,  <35.395866, 35.485783, 20.764515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.594814, 35.618492, 20.744328>,  <35.926395, 35.839672, 20.710682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594814, 35.618492, 20.744328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247779, -0.228230, 0.941550,
		-0.501435, 0.801346, 0.326203,
		-0.828957, -0.552952, 0.084114,
		35.346127, 35.452606, 20.769562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897915, 35.799969, 21.355104>,  <35.926395, 35.839672, 20.710682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897915, 35.799969, 21.355104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.597252, 35.550564, 21.269081>,  <35.416855, 35.400921, 21.217466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.597252, 35.550564, 21.269081>,  <35.897915, 35.799969, 21.355104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597252, 35.550564, 21.269081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046860, -0.274755, 0.960371,
		-0.657892, 0.731944, 0.177303,
		-0.751653, -0.623513, -0.215058,
		35.371758, 35.363510, 21.204563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419250, 35.955292, 21.818949>,  <35.897915, 35.799969, 21.355104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419250, 35.955292, 21.818949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.337234, 35.584579, 21.693073>,  <35.288025, 35.362152, 21.617548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.337234, 35.584579, 21.693073>,  <35.419250, 35.955292, 21.818949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337234, 35.584579, 21.693073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163300, -0.284620, 0.944629,
		-0.965035, 0.245074, -0.092986,
		-0.205038, -0.926785, -0.314689,
		35.275723, 35.306545, 21.598667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944508, 35.794739, 22.246595>,  <35.419250, 35.955292, 21.818949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944508, 35.794739, 22.246595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.050755, 35.437855, 22.100498>,  <35.114502, 35.223724, 22.012840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.050755, 35.437855, 22.100498>,  <34.944508, 35.794739, 22.246595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050755, 35.437855, 22.100498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193099, -0.420409, 0.886549,
		-0.944543, -0.164954, -0.283953,
		0.265616, -0.892215, -0.365242,
		35.130440, 35.170189, 21.990925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474880, 35.298222, 22.517786>,  <34.944508, 35.794739, 22.246595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474880, 35.298222, 22.517786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.760372, 35.052536, 22.383129>,  <34.931667, 34.905125, 22.302336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.760372, 35.052536, 22.383129>,  <34.474880, 35.298222, 22.517786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760372, 35.052536, 22.383129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168667, -0.617200, 0.768515,
		-0.679813, -0.491729, -0.544111,
		0.713726, -0.614220, -0.336643,
		34.974491, 34.868271, 22.282137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248280, 34.555393, 22.484451>,  <34.474880, 35.298222, 22.517786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248280, 34.555393, 22.484451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.641647, 34.591389, 22.547438>,  <34.877666, 34.612988, 22.585230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.641647, 34.591389, 22.547438>,  <34.248280, 34.555393, 22.484451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641647, 34.591389, 22.547438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100844, -0.450325, 0.887151,
		0.150745, -0.888318, -0.433782,
		0.983416, 0.089989, 0.157465,
		34.936672, 34.618385, 22.594677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606441, 33.922157, 22.538189>,  <34.248280, 34.555393, 22.484451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606441, 33.922157, 22.538189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859116, 34.177341, 22.714365>,  <35.010719, 34.330452, 22.820070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859116, 34.177341, 22.714365>,  <34.606441, 33.922157, 22.538189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859116, 34.177341, 22.714365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032906, -0.545567, 0.837421,
		0.774530, -0.543476, -0.323632,
		0.631681, 0.637957, 0.440442,
		35.048618, 34.368729, 22.846498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062813, 33.465748, 22.856394>,  <34.606441, 33.922157, 22.538189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062813, 33.465748, 22.856394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.109715, 33.820980, 23.034184>,  <35.137856, 34.034119, 23.140858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.109715, 33.820980, 23.034184>,  <35.062813, 33.465748, 22.856394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109715, 33.820980, 23.034184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166373, -0.458803, 0.872823,
		0.979067, -0.028390, -0.201548,
		0.117250, 0.888084, 0.444476,
		35.144890, 34.087406, 23.167526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678368, 33.434357, 23.249599>,  <35.062813, 33.465748, 22.856394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678368, 33.434357, 23.249599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.477318, 33.726112, 23.435226>,  <35.356689, 33.901165, 23.546602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.477318, 33.726112, 23.435226>,  <35.678368, 33.434357, 23.249599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477318, 33.726112, 23.435226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281050, -0.369776, 0.885594,
		0.817545, 0.575547, -0.019137,
		-0.502624, 0.729392, 0.464066,
		35.326530, 33.944931, 23.574446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104439, 33.650715, 23.784534>,  <35.678368, 33.434357, 23.249599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104439, 33.650715, 23.784534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.736599, 33.777218, 23.877760>,  <35.515896, 33.853119, 23.933695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.736599, 33.777218, 23.877760>,  <36.104439, 33.650715, 23.784534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736599, 33.777218, 23.877760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081837, -0.426031, 0.901000,
		0.384237, 0.847633, 0.365897,
		-0.919600, 0.316253, 0.233065,
		35.460720, 33.872093, 23.947680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.083492, 35.780941, 28.492792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.826260, 36.085613, 28.524521>,  <37.671921, 36.268417, 28.543558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.826260, 36.085613, 28.524521>,  <38.083492, 35.780941, 28.492792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826260, 36.085613, 28.524521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273287, 0.131498, 0.952902,
		0.715377, 0.634469, -0.292721,
		-0.643079, 0.761681, 0.079321,
		37.633335, 36.314117, 28.548317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445904, 36.321926, 28.811098>,  <38.083492, 35.780941, 28.492792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445904, 36.321926, 28.811098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.053459, 36.367771, 28.873436>,  <37.817993, 36.395279, 28.910839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.053459, 36.367771, 28.873436>,  <38.445904, 36.321926, 28.811098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053459, 36.367771, 28.873436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160538, 0.032859, 0.986483,
		0.107938, 0.992867, -0.050637,
		-0.981110, 0.114609, 0.155846,
		37.759125, 36.402153, 28.920189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373989, 36.803844, 29.392563>,  <38.445904, 36.321926, 28.811098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373989, 36.803844, 29.392563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.021637, 36.615082, 29.377872>,  <37.810226, 36.501823, 29.369059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.021637, 36.615082, 29.377872>,  <38.373989, 36.803844, 29.392563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021637, 36.615082, 29.377872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031630, -0.018729, 0.999324,
		-0.472276, 0.881449, 0.001572,
		-0.880883, -0.471907, -0.036726,
		37.757374, 36.473511, 29.366856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996857, 37.026657, 29.957750>,  <38.373989, 36.803844, 29.392563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996857, 37.026657, 29.957750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.792473, 36.693207, 29.873863>,  <37.669842, 36.493137, 29.823530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.792473, 36.693207, 29.873863>,  <37.996857, 37.026657, 29.957750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792473, 36.693207, 29.873863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020469, -0.255702, 0.966539,
		-0.859359, 0.489573, 0.147718,
		-0.510963, -0.833628, -0.209718,
		37.639183, 36.443119, 29.810947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536568, 36.742783, 30.594776>,  <37.996857, 37.026657, 29.957750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536568, 36.742783, 30.594776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.557491, 36.410072, 30.373722>,  <37.570045, 36.210445, 30.241089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.557491, 36.410072, 30.373722>,  <37.536568, 36.742783, 30.594776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557491, 36.410072, 30.373722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194519, -0.534308, 0.822604,
		-0.979503, -0.150531, 0.133846,
		0.052312, -0.831779, -0.552637,
		37.573185, 36.160538, 30.207932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165768, 36.323265, 30.966169>,  <37.536568, 36.742783, 30.594776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165768, 36.323265, 30.966169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.371918, 36.067207, 30.738274>,  <37.495609, 35.913574, 30.601536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.371918, 36.067207, 30.738274>,  <37.165768, 36.323265, 30.966169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371918, 36.067207, 30.738274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006686, -0.661809, 0.749642,
		-0.856938, -0.390157, -0.336801,
		0.515376, -0.640145, -0.569738,
		37.526531, 35.875164, 30.567352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833378, 35.752747, 31.053192>,  <37.165768, 36.323265, 30.966169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833378, 35.752747, 31.053192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.190437, 35.637318, 30.914686>,  <37.404675, 35.568062, 30.831583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.190437, 35.637318, 30.914686>,  <36.833378, 35.752747, 31.053192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190437, 35.637318, 30.914686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034195, -0.722635, 0.690384,
		-0.449449, -0.628112, -0.635193,
		0.892651, -0.288572, -0.346266,
		37.458233, 35.550747, 30.810806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838589, 35.061176, 31.045269>,  <36.833378, 35.752747, 31.053192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838589, 35.061176, 31.045269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.229828, 35.141926, 31.065544>,  <37.464573, 35.190376, 31.077709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.229828, 35.141926, 31.065544>,  <36.838589, 35.061176, 31.045269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229828, 35.141926, 31.065544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109638, -0.706690, 0.698977,
		0.176928, -0.678111, -0.713345,
		0.978098, 0.201878, 0.050686,
		37.523258, 35.202488, 31.080750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211941, 34.323498, 31.218895>,  <36.838589, 35.061176, 31.045269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211941, 34.323498, 31.218895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.477940, 34.611862, 31.296932>,  <37.637539, 34.784882, 31.343754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.477940, 34.611862, 31.296932>,  <37.211941, 34.323498, 31.218895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477940, 34.611862, 31.296932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272215, -0.477223, 0.835558,
		0.695467, -0.502539, -0.513596,
		0.665000, 0.720911, 0.195094,
		37.677441, 34.828136, 31.355461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816826, 34.035103, 31.486719>,  <37.211941, 34.323498, 31.218895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816826, 34.035103, 31.486719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.827713, 34.402920, 31.643536>,  <37.834244, 34.623611, 31.737625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.827713, 34.402920, 31.643536>,  <37.816826, 34.035103, 31.486719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827713, 34.402920, 31.643536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387667, -0.371201, 0.843756,
		0.921397, 0.129016, -0.366581,
		0.027218, 0.919546, 0.392039,
		37.835880, 34.678783, 31.761147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261414, 33.892662, 31.935575>,  <37.816826, 34.035103, 31.486719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261414, 33.892662, 31.935575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.115959, 34.246506, 32.052357>,  <38.028687, 34.458813, 32.122425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.115959, 34.246506, 32.052357>,  <38.261414, 33.892662, 31.935575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115959, 34.246506, 32.052357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323728, -0.173874, 0.930037,
		0.873483, 0.432705, -0.223147,
		-0.363632, 0.884610, 0.291954,
		38.006870, 34.511890, 32.139942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787060, 34.169949, 32.312996>,  <38.261414, 33.892662, 31.935575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787060, 34.169949, 32.312996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.435539, 34.325394, 32.423763>,  <38.224628, 34.418659, 32.490223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.435539, 34.325394, 32.423763>,  <38.787060, 34.169949, 32.312996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435539, 34.325394, 32.423763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174923, -0.277574, 0.944645,
		0.443968, 0.878597, 0.175955,
		-0.878803, 0.388614, 0.276921,
		38.171898, 34.441978, 32.506840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972790, 34.763973, 32.861012>,  <38.787060, 34.169949, 32.312996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972790, 34.763973, 32.861012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.596195, 34.632164, 32.889339>,  <38.370239, 34.553078, 32.906334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.596195, 34.632164, 32.889339>,  <38.972790, 34.763973, 32.861012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596195, 34.632164, 32.889339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163326, -0.262256, 0.951077,
		-0.294827, 0.906994, 0.300730,
		-0.941489, -0.329520, 0.070815,
		38.313747, 34.533310, 32.910583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685516, 35.125519, 33.352837>,  <38.972790, 34.763973, 32.861012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685516, 35.125519, 33.352837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.485592, 34.779301, 33.340019>,  <38.365639, 34.571571, 33.332329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.485592, 34.779301, 33.340019>,  <38.685516, 35.125519, 33.352837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485592, 34.779301, 33.340019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291484, -0.202921, 0.934805,
		-0.815615, 0.457886, 0.353713,
		-0.499810, -0.865542, -0.032039,
		38.335648, 34.519638, 33.330406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101460, 35.730537, 33.551739>,  <38.685516, 35.125519, 33.352837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101460, 35.730537, 33.551739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.386734, 35.925205, 33.753540>,  <39.557899, 36.042004, 33.874622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.386734, 35.925205, 33.753540>,  <39.101460, 35.730537, 33.551739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386734, 35.925205, 33.753540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289998, 0.450396, -0.844420,
		-0.638179, 0.748531, 0.180082,
		0.713183, 0.486667, 0.504505,
		39.600689, 36.071205, 33.904892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910706, 36.455421, 33.607479>,  <39.101460, 35.730537, 33.551739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910706, 36.455421, 33.607479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307831, 36.415279, 33.633572>,  <39.546104, 36.391193, 33.649227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307831, 36.415279, 33.633572>,  <38.910706, 36.455421, 33.607479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307831, 36.415279, 33.633572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102131, 0.426149, -0.898870,
		0.062406, 0.899070, 0.433334,
		0.992812, -0.100351, 0.065229,
		39.605675, 36.385174, 33.653141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167381, 37.098324, 33.411125>,  <38.910706, 36.455421, 33.607479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167381, 37.098324, 33.411125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.485188, 36.858185, 33.374615>,  <39.675869, 36.714100, 33.352711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.485188, 36.858185, 33.374615>,  <39.167381, 37.098324, 33.411125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485188, 36.858185, 33.374615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167036, 0.360569, -0.917654,
		0.583824, 0.713841, 0.386757,
		0.794511, -0.600351, -0.091272,
		39.723541, 36.678078, 33.347233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627254, 37.491215, 32.989845>,  <39.167381, 37.098324, 33.411125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627254, 37.491215, 32.989845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.794701, 37.128815, 32.964748>,  <39.895168, 36.911377, 32.949692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.794701, 37.128815, 32.964748>,  <39.627254, 37.491215, 32.989845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794701, 37.128815, 32.964748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349133, 0.224319, -0.909828,
		0.838374, 0.358961, 0.410216,
		0.418612, -0.905996, -0.062738,
		39.920284, 36.857018, 32.945927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364677, 37.584957, 32.703556>,  <39.627254, 37.491215, 32.989845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364677, 37.584957, 32.703556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.242062, 37.210205, 32.636276>,  <40.168491, 36.985355, 32.595909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.242062, 37.210205, 32.636276>,  <40.364677, 37.584957, 32.703556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242062, 37.210205, 32.636276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325630, 0.062831, -0.943407,
		0.894428, -0.343959, 0.285816,
		-0.306535, -0.936880, -0.168201,
		40.150101, 36.929142, 32.585815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778366, 37.301228, 32.276947>,  <40.364677, 37.584957, 32.703556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778366, 37.301228, 32.276947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.510048, 37.011559, 32.212940>,  <40.349056, 36.837757, 32.174538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.510048, 37.011559, 32.212940>,  <40.778366, 37.301228, 32.276947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510048, 37.011559, 32.212940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232477, -0.000435, -0.972602,
		0.704262, -0.689619, 0.168645,
		-0.670798, -0.724173, -0.160014,
		40.308807, 36.794308, 32.164936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077908, 36.847672, 31.899012>,  <40.778366, 37.301228, 32.276947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077908, 36.847672, 31.899012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.687439, 36.792641, 31.831877>,  <40.453159, 36.759621, 31.791595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.687439, 36.792641, 31.831877>,  <41.077908, 36.847672, 31.899012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687439, 36.792641, 31.831877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160734, 0.061282, -0.985093,
		0.145817, -0.988593, -0.037708,
		-0.976167, -0.137582, -0.167836,
		40.394588, 36.751366, 31.781527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914391, 36.172581, 31.464518>,  <41.077908, 36.847672, 31.899012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914391, 36.172581, 31.464518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.605526, 36.420887, 31.410227>,  <40.420208, 36.569870, 31.377653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.605526, 36.420887, 31.410227>,  <40.914391, 36.172581, 31.464518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605526, 36.420887, 31.410227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116787, -0.071317, -0.990593,
		-0.624607, -0.780745, -0.017430,
		-0.772157, 0.620767, -0.135726,
		40.373878, 36.607117, 31.369509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566090, 35.940098, 30.801613>,  <40.914391, 36.172581, 31.464518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566090, 35.940098, 30.801613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.430908, 36.316002, 30.822151>,  <40.349800, 36.541546, 30.834475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.430908, 36.316002, 30.822151>,  <40.566090, 35.940098, 30.801613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430908, 36.316002, 30.822151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136951, 0.004871, -0.990566,
		-0.931145, -0.341800, 0.127055,
		-0.337956, 0.939760, 0.051345,
		40.329521, 36.597931, 30.837555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017509, 36.007198, 30.364532>,  <40.566090, 35.940098, 30.801613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017509, 36.007198, 30.364532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.094940, 36.395664, 30.420189>,  <40.141399, 36.628746, 30.453583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.094940, 36.395664, 30.420189>,  <40.017509, 36.007198, 30.364532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094940, 36.395664, 30.420189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236355, 0.183810, -0.954123,
		-0.952189, 0.151810, 0.265122,
		0.193577, 0.971168, 0.139141,
		40.153015, 36.687016, 30.461931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522804, 36.259502, 30.072697>,  <40.017509, 36.007198, 30.364532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522804, 36.259502, 30.072697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.779720, 36.562214, 30.121262>,  <39.933872, 36.743843, 30.150400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.779720, 36.562214, 30.121262>,  <39.522804, 36.259502, 30.072697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779720, 36.562214, 30.121262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309283, 0.400844, -0.862362,
		-0.701287, 0.516338, 0.491520,
		0.642293, 0.756782, 0.121412,
		39.972408, 36.789249, 30.157686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059155, 36.887043, 29.798187>,  <39.522804, 36.259502, 30.072697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059155, 36.887043, 29.798187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.449924, 36.972458, 29.800049>,  <39.684387, 37.023708, 29.801167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.449924, 36.972458, 29.800049>,  <39.059155, 36.887043, 29.798187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449924, 36.972458, 29.800049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045691, 0.230218, -0.972066,
		-0.208648, 0.949421, 0.234662,
		0.976923, 0.213542, 0.004655,
		39.743000, 37.036522, 29.801445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199844, 37.648273, 29.426537>,  <39.059155, 36.887043, 29.798187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199844, 37.648273, 29.426537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.540558, 37.438728, 29.428751>,  <39.744987, 37.313000, 29.430079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.540558, 37.438728, 29.428751>,  <39.199844, 37.648273, 29.426537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540558, 37.438728, 29.428751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110392, 0.169145, -0.979389,
		0.512131, 0.834839, 0.201906,
		0.851784, -0.523864, 0.005535,
		39.796093, 37.281570, 29.430412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581413, 38.048977, 29.055603>,  <39.199844, 37.648273, 29.426537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581413, 38.048977, 29.055603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.745934, 37.684551, 29.044292>,  <39.844646, 37.465897, 29.037506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.745934, 37.684551, 29.044292>,  <39.581413, 38.048977, 29.055603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745934, 37.684551, 29.044292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281323, 0.156388, -0.946784,
		0.867001, 0.381456, 0.320625,
		0.411298, -0.911062, -0.028277,
		39.869324, 37.411232, 29.035809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608116, 38.762039, 29.027664>,  <39.581413, 38.048977, 29.055603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608116, 38.762039, 29.027664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.264347, 38.965118, 29.003563>,  <39.058086, 39.086967, 28.989103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.264347, 38.965118, 29.003563>,  <39.608116, 38.762039, 29.027664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264347, 38.965118, 29.003563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063765, 0.010489, 0.997910,
		0.507272, 0.861470, 0.023359,
		-0.859424, 0.507701, -0.060252,
		39.006519, 39.117428, 28.985487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644291, 39.364319, 29.546721>,  <39.608116, 38.762039, 29.027664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644291, 39.364319, 29.546721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.258732, 39.275597, 29.487789>,  <39.027397, 39.222363, 29.452431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.258732, 39.275597, 29.487789>,  <39.644291, 39.364319, 29.546721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258732, 39.275597, 29.487789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165049, 0.063490, 0.984240,
		-0.208953, 0.973022, -0.097806,
		-0.963897, -0.221803, -0.147330,
		38.969563, 39.209057, 29.443590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296009, 39.793129, 30.058622>,  <39.644291, 39.364319, 29.546721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296009, 39.793129, 30.058622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.012909, 39.546932, 29.919912>,  <38.843048, 39.399212, 29.836685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.012909, 39.546932, 29.919912>,  <39.296009, 39.793129, 30.058622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012909, 39.546932, 29.919912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402540, -0.052037, 0.913922,
		-0.580559, 0.786422, -0.210932,
		-0.707752, -0.615494, -0.346777,
		38.800583, 39.362286, 29.815880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680393, 40.077271, 30.176226>,  <39.296009, 39.793129, 30.058622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680393, 40.077271, 30.176226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.649887, 39.678490, 30.169771>,  <38.631584, 39.439220, 30.165899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.649887, 39.678490, 30.169771>,  <38.680393, 40.077271, 30.176226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649887, 39.678490, 30.169771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381163, 0.014198, 0.924399,
		-0.921356, 0.076654, -0.381086,
		-0.076270, -0.996957, -0.016137,
		38.627007, 39.379402, 30.164930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036762, 39.928482, 30.498051>,  <38.680393, 40.077271, 30.176226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036762, 39.928482, 30.498051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.235569, 39.582386, 30.524401>,  <38.354851, 39.374729, 30.540211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.235569, 39.582386, 30.524401>,  <38.036762, 39.928482, 30.498051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235569, 39.582386, 30.524401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519858, -0.236114, 0.820973,
		-0.694785, -0.442279, -0.567154,
		0.497012, -0.865240, 0.065874,
		38.384674, 39.322815, 30.544163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507370, 39.358471, 30.588009>,  <38.036762, 39.928482, 30.498051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507370, 39.358471, 30.588009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853527, 39.248661, 30.755692>,  <38.061222, 39.182777, 30.856300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853527, 39.248661, 30.755692>,  <37.507370, 39.358471, 30.588009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853527, 39.248661, 30.755692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480213, -0.215363, 0.850302,
		-0.143144, -0.937154, -0.318203,
		0.865393, -0.274521, 0.419206,
		38.113144, 39.166306, 30.881453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349796, 38.728710, 30.971325>,  <37.507370, 39.358471, 30.588009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349796, 38.728710, 30.971325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.687702, 38.864120, 31.137108>,  <37.890446, 38.945366, 31.236578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.687702, 38.864120, 31.137108>,  <37.349796, 38.728710, 30.971325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687702, 38.864120, 31.137108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358499, -0.217010, 0.907957,
		0.397311, -0.915590, -0.061959,
		0.844762, 0.338528, 0.414458,
		37.941132, 38.965679, 31.261446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522133, 38.195202, 31.496523>,  <37.349796, 38.728710, 30.971325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522133, 38.195202, 31.496523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.758205, 38.503017, 31.594091>,  <37.899849, 38.687706, 31.652634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.758205, 38.503017, 31.594091>,  <37.522133, 38.195202, 31.496523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758205, 38.503017, 31.594091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135312, -0.203583, 0.969662,
		0.795852, -0.605279, -0.016022,
		0.590178, 0.769540, 0.243923,
		37.935257, 38.733879, 31.667269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757797, 37.947407, 32.075718>,  <37.522133, 38.195202, 31.496523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757797, 37.947407, 32.075718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.869019, 38.331364, 32.090157>,  <37.935749, 38.561737, 32.098820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.869019, 38.331364, 32.090157>,  <37.757797, 37.947407, 32.075718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869019, 38.331364, 32.090157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185301, 0.016730, 0.982539,
		0.942524, -0.279883, 0.182520,
		0.278050, 0.959888, 0.036095,
		37.952435, 38.619331, 32.100986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048737, 37.945770, 32.637180>,  <37.757797, 37.947407, 32.075718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.048737, 37.945770, 32.637180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.965717, 38.332314, 32.576412>,  <37.915905, 38.564240, 32.539951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.965717, 38.332314, 32.576412>,  <38.048737, 37.945770, 32.637180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965717, 38.332314, 32.576412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152680, 0.121403, 0.980790,
		0.966237, 0.226755, 0.122347,
		-0.207546, 0.966356, -0.151925,
		37.903454, 38.622219, 32.530834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400787, 38.307522, 33.205788>,  <38.048737, 37.945770, 32.637180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400787, 38.307522, 33.205788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.101574, 38.540123, 33.077858>,  <37.922047, 38.679684, 33.001099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.101574, 38.540123, 33.077858>,  <38.400787, 38.307522, 33.205788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101574, 38.540123, 33.077858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307182, 0.123806, 0.943563,
		0.588285, 0.804066, 0.086016,
		-0.748038, 0.581506, -0.319828,
		37.877163, 38.714577, 32.981911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613472, 38.914150, 33.489140>,  <38.400787, 38.307522, 33.205788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613472, 38.914150, 33.489140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.222038, 38.893738, 33.409370>,  <37.987179, 38.881489, 33.361511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.222038, 38.893738, 33.409370>,  <38.613472, 38.914150, 33.489140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222038, 38.893738, 33.409370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201501, 0.039471, 0.978693,
		-0.042073, 0.997917, -0.048908,
		-0.978584, -0.051031, -0.199421,
		37.928463, 38.878429, 33.349545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.831295, 40.227978, 25.144913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582809, 39.932621, 25.249884>,  <38.433716, 39.755405, 25.312866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582809, 39.932621, 25.249884>,  <38.831295, 40.227978, 25.144913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582809, 39.932621, 25.249884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169227, 0.200575, 0.964952,
		-0.765149, 0.643853, 0.000355,
		-0.621216, -0.738393, 0.262427,
		38.396446, 39.711102, 25.328611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685207, 40.399307, 25.852613>,  <38.831295, 40.227978, 25.144913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685207, 40.399307, 25.852613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490524, 40.049881, 25.852022>,  <38.373714, 39.840225, 25.851667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490524, 40.049881, 25.852022>,  <38.685207, 40.399307, 25.852613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490524, 40.049881, 25.852022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109655, -0.062775, 0.991985,
		-0.866655, 0.482645, 0.126344,
		-0.486708, -0.873563, -0.001480,
		38.344513, 39.787811, 25.851578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164272, 40.472248, 26.337574>,  <38.685207, 40.399307, 25.852613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164272, 40.472248, 26.337574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212151, 40.076931, 26.299751>,  <38.240879, 39.839741, 26.277058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212151, 40.076931, 26.299751>,  <38.164272, 40.472248, 26.337574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212151, 40.076931, 26.299751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093774, -0.083561, 0.992080,
		-0.988372, -0.127616, 0.082674,
		0.119697, -0.988297, -0.094557,
		38.248058, 39.780441, 26.271383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723434, 40.218292, 26.842884>,  <38.164272, 40.472248, 26.337574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723434, 40.218292, 26.842884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978985, 39.922913, 26.756598>,  <38.132317, 39.745686, 26.704824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978985, 39.922913, 26.756598>,  <37.723434, 40.218292, 26.842884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978985, 39.922913, 26.756598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094008, -0.203366, 0.974579,
		-0.763544, -0.642915, -0.060505,
		0.638876, -0.738446, -0.215718,
		38.170647, 39.701378, 26.691881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416180, 39.606522, 27.159893>,  <37.723434, 40.218292, 26.842884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416180, 39.606522, 27.159893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808674, 39.545952, 27.112144>,  <38.044170, 39.509609, 27.083496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808674, 39.545952, 27.112144>,  <37.416180, 39.606522, 27.159893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808674, 39.545952, 27.112144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072619, -0.283273, 0.956286,
		-0.178622, -0.947009, -0.266961,
		0.981234, -0.151427, -0.119369,
		38.103043, 39.500523, 27.076334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652370, 38.960220, 27.493858>,  <37.416180, 39.606522, 27.159893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652370, 38.960220, 27.493858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001831, 39.150955, 27.455164>,  <38.211506, 39.265396, 27.431948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001831, 39.150955, 27.455164>,  <37.652370, 38.960220, 27.493858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001831, 39.150955, 27.455164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247416, -0.264200, 0.932193,
		0.418948, -0.838346, -0.348796,
		0.873652, 0.476838, -0.096735,
		38.263927, 39.294006, 27.426144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148586, 38.509766, 27.806494>,  <37.652370, 38.960220, 27.493858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148586, 38.509766, 27.806494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329437, 38.866226, 27.821632>,  <38.437950, 39.080101, 27.830715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329437, 38.866226, 27.821632>,  <38.148586, 38.509766, 27.806494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329437, 38.866226, 27.821632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420098, -0.250188, 0.872309,
		0.786826, -0.378499, -0.487487,
		0.452132, 0.891148, 0.037848,
		38.465076, 39.133572, 27.832987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861820, 38.316784, 28.068003>,  <38.148586, 38.509766, 27.806494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861820, 38.316784, 28.068003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808945, 38.711281, 28.107706>,  <38.777218, 38.947979, 28.131529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808945, 38.711281, 28.107706>,  <38.861820, 38.316784, 28.068003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808945, 38.711281, 28.107706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356268, -0.046173, 0.933242,
		0.924986, 0.158727, -0.345263,
		-0.132189, 0.986242, 0.099259,
		38.769287, 39.007153, 28.137484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424335, 38.518391, 28.389822>,  <38.861820, 38.316784, 28.068003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424335, 38.518391, 28.389822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166790, 38.814857, 28.465832>,  <39.012260, 38.992737, 28.511436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166790, 38.814857, 28.465832>,  <39.424335, 38.518391, 28.389822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166790, 38.814857, 28.465832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064316, -0.195046, 0.978683,
		0.762430, 0.642362, 0.077915,
		-0.643866, 0.741166, 0.190023,
		38.973629, 39.037209, 28.522839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081429, 38.189480, 28.544720>,  <39.424335, 38.518391, 28.389822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081429, 38.189480, 28.544720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071659, 37.792301, 28.591135>,  <40.065796, 37.553993, 28.618984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071659, 37.792301, 28.591135>,  <40.081429, 38.189480, 28.544720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071659, 37.792301, 28.591135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190032, -0.118568, -0.974592,
		0.981474, -0.001755, 0.191587,
		-0.024426, -0.992944, 0.116038,
		40.064331, 37.494419, 28.625946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742851, 37.864357, 28.388639>,  <40.081429, 38.189480, 28.544720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742851, 37.864357, 28.388639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428566, 37.627911, 28.315725>,  <40.239994, 37.486042, 28.271976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428566, 37.627911, 28.315725>,  <40.742851, 37.864357, 28.388639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428566, 37.627911, 28.315725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248890, -0.032321, -0.967992,
		0.566305, -0.805938, 0.172518,
		-0.785717, -0.591117, -0.182286,
		40.192852, 37.450577, 28.261040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083000, 37.470592, 27.853073>,  <40.742851, 37.864357, 28.388639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083000, 37.470592, 27.853073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698856, 37.359180, 27.857666>,  <40.468369, 37.292336, 27.860422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698856, 37.359180, 27.857666>,  <41.083000, 37.470592, 27.853073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698856, 37.359180, 27.857666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021819, 0.034037, -0.999182,
		0.277910, -0.959825, -0.038765,
		-0.960359, -0.278529, 0.011483,
		40.410748, 37.275623, 27.861111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097801, 36.858101, 27.397552>,  <41.083000, 37.470592, 27.853073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097801, 36.858101, 27.397552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733143, 37.017273, 27.438637>,  <40.514347, 37.112778, 27.463287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733143, 37.017273, 27.438637>,  <41.097801, 36.858101, 27.397552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.733143, 37.017273, 27.438637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096176, 0.036403, -0.994698,
		-0.399563, -0.916692, 0.005085,
		-0.911646, 0.397934, 0.102709,
		40.459648, 37.136654, 27.469450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681538, 36.575020, 26.896032>,  <41.097801, 36.858101, 27.397552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681538, 36.575020, 26.896032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448376, 36.888206, 26.982920>,  <40.308479, 37.076118, 27.035051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448376, 36.888206, 26.982920>,  <40.681538, 36.575020, 26.896032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448376, 36.888206, 26.982920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197611, 0.122701, -0.972571,
		-0.788147, -0.609838, 0.083201,
		-0.582902, 0.782970, 0.217217,
		40.273506, 37.123096, 27.048084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090290, 36.471703, 26.583477>,  <40.681538, 36.575020, 26.896032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090290, 36.471703, 26.583477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122185, 36.865868, 26.643618>,  <40.141319, 37.102367, 26.679701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122185, 36.865868, 26.643618>,  <40.090290, 36.471703, 26.583477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122185, 36.865868, 26.643618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323182, 0.168239, -0.931262,
		-0.942972, 0.025663, 0.331882,
		0.079734, 0.985412, 0.150351,
		40.146107, 37.161491, 26.688723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465828, 36.727482, 26.373526>,  <40.090290, 36.471703, 26.583477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465828, 36.727482, 26.373526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658188, 37.077980, 26.361275>,  <39.773602, 37.288277, 26.353924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658188, 37.077980, 26.361275>,  <39.465828, 36.727482, 26.373526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658188, 37.077980, 26.361275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462710, 0.223963, -0.857753,
		-0.744739, 0.426663, 0.513149,
		0.480898, 0.876241, -0.030628,
		39.802456, 37.340851, 26.352087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005943, 37.220802, 26.238466>,  <39.465828, 36.727482, 26.373526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005943, 37.220802, 26.238466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344040, 37.400158, 26.122185>,  <39.546898, 37.507771, 26.052416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344040, 37.400158, 26.122185>,  <39.005943, 37.220802, 26.238466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344040, 37.400158, 26.122185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374859, 0.109812, -0.920555,
		-0.380848, 0.887065, 0.260902,
		0.845243, 0.448393, -0.290702,
		39.597614, 37.534676, 26.034975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881313, 37.887772, 25.911715>,  <39.005943, 37.220802, 26.238466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881313, 37.887772, 25.911715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243931, 37.783413, 25.778978>,  <39.461502, 37.720798, 25.699337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243931, 37.783413, 25.778978>,  <38.881313, 37.887772, 25.911715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243931, 37.783413, 25.778978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294435, 0.172495, -0.939976,
		0.302478, 0.949831, 0.079556,
		0.906540, -0.260898, -0.331839,
		39.515892, 37.705143, 25.679426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101986, 38.433201, 25.436220>,  <38.881313, 37.887772, 25.911715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101986, 38.433201, 25.436220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351685, 38.143219, 25.319773>,  <39.501503, 37.969231, 25.249905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351685, 38.143219, 25.319773>,  <39.101986, 38.433201, 25.436220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351685, 38.143219, 25.319773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386432, 0.037318, -0.921563,
		0.678957, 0.687783, -0.256851,
		0.624250, -0.724957, -0.291118,
		39.538960, 37.925732, 25.232437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544376, 38.718666, 24.868515>,  <39.101986, 38.433201, 25.436220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544376, 38.718666, 24.868515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612980, 38.324711, 24.858896>,  <39.654140, 38.088337, 24.853125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612980, 38.324711, 24.858896>,  <39.544376, 38.718666, 24.868515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612980, 38.324711, 24.858896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155516, 0.051168, -0.986507,
		0.972831, 0.165454, 0.161941,
		0.171508, -0.984889, -0.024047,
		39.664433, 38.029243, 24.851683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124420, 38.571548, 24.393583>,  <39.544376, 38.718666, 24.868515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124420, 38.571548, 24.393583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887691, 38.251015, 24.428484>,  <39.745655, 38.058693, 24.449425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887691, 38.251015, 24.428484>,  <40.124420, 38.571548, 24.393583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887691, 38.251015, 24.428484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140484, -0.209125, -0.967745,
		0.793733, -0.560474, 0.236339,
		-0.591820, -0.801334, 0.087252,
		39.710144, 38.010616, 24.454660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505302, 38.040096, 24.113436>,  <40.124420, 38.571548, 24.393583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505302, 38.040096, 24.113436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121464, 37.928162, 24.101635>,  <39.891163, 37.861000, 24.094555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121464, 37.928162, 24.101635>,  <40.505302, 38.040096, 24.113436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121464, 37.928162, 24.101635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109461, -0.274643, -0.955295,
		0.259229, -0.919924, 0.294178,
		-0.959593, -0.279841, -0.029500,
		39.833588, 37.844208, 24.092785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430157, 37.523670, 23.582800>,  <40.505302, 38.040096, 24.113436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430157, 37.523670, 23.582800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040119, 37.601589, 23.625204>,  <39.806095, 37.648342, 23.650646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040119, 37.601589, 23.625204>,  <40.430157, 37.523670, 23.582800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040119, 37.601589, 23.625204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120620, -0.064693, -0.990589,
		-0.186112, -0.978706, 0.086579,
		-0.975096, 0.194804, 0.106011,
		39.747589, 37.660030, 23.657007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.027100, 35.102859, 23.616035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.368610, 35.295601, 23.694914>,  <32.573517, 35.411247, 23.742241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.368610, 35.295601, 23.694914>,  <32.027100, 35.102859, 23.616035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368610, 35.295601, 23.694914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089156, -0.237848, 0.967202,
		0.512956, -0.843352, -0.160108,
		0.853773, 0.481857, 0.197196,
		32.624741, 35.440159, 23.754072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390236, 34.632454, 24.035545>,  <32.027100, 35.102859, 23.616035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390236, 34.632454, 24.035545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.572094, 34.982365, 24.102552>,  <32.681210, 35.192310, 24.142757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.572094, 34.982365, 24.102552>,  <32.390236, 34.632454, 24.035545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572094, 34.982365, 24.102552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071039, -0.223096, 0.972205,
		0.887834, -0.430110, -0.163574,
		0.454647, 0.874776, 0.167518,
		32.708488, 35.244797, 24.152807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996990, 34.401657, 24.427338>,  <32.390236, 34.632454, 24.035545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996990, 34.401657, 24.427338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.979965, 34.795910, 24.492729>,  <32.969749, 35.032459, 24.531963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.979965, 34.795910, 24.492729>,  <32.996990, 34.401657, 24.427338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979965, 34.795910, 24.492729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248958, -0.148002, 0.957139,
		0.967579, 0.081434, -0.239081,
		-0.042559, 0.985629, 0.163478,
		32.967197, 35.091599, 24.541773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670059, 34.622265, 24.631670>,  <32.996990, 34.401657, 24.427338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670059, 34.622265, 24.631670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.439972, 34.931232, 24.739368>,  <33.301922, 35.116615, 24.803988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.439972, 34.931232, 24.739368>,  <33.670059, 34.622265, 24.631670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439972, 34.931232, 24.739368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378796, -0.040206, 0.924606,
		0.725012, 0.633835, -0.269463,
		-0.575214, 0.772422, 0.269244,
		33.267406, 35.162960, 24.820141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192940, 35.112610, 24.868702>,  <33.670059, 34.622265, 24.631670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192940, 35.112610, 24.868702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.824848, 35.162113, 25.017227>,  <33.603992, 35.191814, 25.106342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.824848, 35.162113, 25.017227>,  <34.192940, 35.112610, 24.868702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824848, 35.162113, 25.017227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355815, -0.130675, 0.925375,
		0.163043, 0.983671, 0.076216,
		-0.920224, 0.123757, 0.371311,
		33.548782, 35.199242, 25.128620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171101, 35.482677, 25.526907>,  <34.192940, 35.112610, 24.868702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171101, 35.482677, 25.526907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.802959, 35.329288, 25.557623>,  <33.582073, 35.237255, 25.576054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.802959, 35.329288, 25.557623>,  <34.171101, 35.482677, 25.526907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802959, 35.329288, 25.557623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102412, -0.046812, 0.993640,
		-0.377441, 0.922364, 0.082356,
		-0.920353, -0.383474, 0.076792,
		33.526852, 35.214245, 25.580660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948032, 35.794159, 26.147152>,  <34.171101, 35.482677, 25.526907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948032, 35.794159, 26.147152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.650925, 35.537724, 26.069893>,  <33.472660, 35.383862, 26.023539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.650925, 35.537724, 26.069893>,  <33.948032, 35.794159, 26.147152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650925, 35.537724, 26.069893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091150, -0.188967, 0.977744,
		-0.663315, 0.743842, 0.081924,
		-0.742768, -0.641085, -0.193146,
		33.428093, 35.345398, 26.011950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242157, 36.040352, 26.501860>,  <33.948032, 35.794159, 26.147152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242157, 36.040352, 26.501860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.279617, 35.646069, 26.445850>,  <33.302094, 35.409500, 26.412245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.279617, 35.646069, 26.445850>,  <33.242157, 36.040352, 26.501860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279617, 35.646069, 26.445850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203684, -0.156637, 0.966425,
		-0.974547, -0.061989, -0.215443,
		0.093654, -0.985709, -0.140024,
		33.307713, 35.350357, 26.403843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644119, 35.662888, 26.856155>,  <33.242157, 36.040352, 26.501860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644119, 35.662888, 26.856155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.937183, 35.396179, 26.801567>,  <33.113022, 35.236153, 26.768814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.937183, 35.396179, 26.801567>,  <32.644119, 35.662888, 26.856155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937183, 35.396179, 26.801567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058897, -0.261879, 0.963302,
		-0.678041, -0.697735, -0.231139,
		0.732660, -0.666772, -0.136470,
		33.156982, 35.196148, 26.760626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402328, 35.098728, 27.181927>,  <32.644119, 35.662888, 26.856155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402328, 35.098728, 27.181927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.794140, 35.020691, 27.162102>,  <33.029228, 34.973869, 27.150208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.794140, 35.020691, 27.162102>,  <32.402328, 35.098728, 27.181927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794140, 35.020691, 27.162102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001870, -0.255021, 0.966934,
		-0.201282, -0.947049, -0.250166,
		0.979531, -0.195094, -0.049560,
		33.087997, 34.962162, 27.147234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487640, 34.414227, 27.460520>,  <32.402328, 35.098728, 27.181927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487640, 34.414227, 27.460520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.836845, 34.606472, 27.493668>,  <33.046368, 34.721817, 27.513557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.836845, 34.606472, 27.493668>,  <32.487640, 34.414227, 27.460520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836845, 34.606472, 27.493668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039639, -0.239282, 0.970140,
		0.486089, -0.843657, -0.227947,
		0.873010, 0.480610, 0.082871,
		33.098747, 34.750656, 27.518528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674465, 34.091240, 27.997824>,  <32.487640, 34.414227, 27.460520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674465, 34.091240, 27.997824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.978607, 34.350170, 27.976568>,  <33.161095, 34.505527, 27.963814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.978607, 34.350170, 27.976568>,  <32.674465, 34.091240, 27.997824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978607, 34.350170, 27.976568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326578, -0.310312, 0.892779,
		0.561430, -0.696185, -0.447351,
		0.760357, 0.647328, -0.053140,
		33.206715, 34.544369, 27.960627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224693, 33.690166, 28.101065>,  <32.674465, 34.091240, 27.997824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224693, 33.690166, 28.101065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.322075, 34.068157, 28.188477>,  <33.380505, 34.294952, 28.240925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.322075, 34.068157, 28.188477>,  <33.224693, 33.690166, 28.101065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322075, 34.068157, 28.188477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295029, -0.286784, 0.911434,
		0.923951, -0.157422, -0.348614,
		0.243457, 0.944972, 0.218531,
		33.395111, 34.351650, 28.254036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783646, 33.649635, 28.451962>,  <33.224693, 33.690166, 28.101065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783646, 33.649635, 28.451962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.672539, 34.019119, 28.557491>,  <33.605877, 34.240810, 28.620810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.672539, 34.019119, 28.557491>,  <33.783646, 33.649635, 28.451962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672539, 34.019119, 28.557491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276320, -0.186199, 0.942856,
		0.920051, 0.334791, -0.203521,
		-0.277764, 0.923713, 0.263822,
		33.589211, 34.296234, 28.636639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531429, 33.623768, 28.026209>,  <33.783646, 33.649635, 28.451962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531429, 33.623768, 28.026209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.903065, 33.476776, 28.042999>,  <35.126045, 33.388580, 28.053074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.903065, 33.476776, 28.042999>,  <34.531429, 33.623768, 28.026209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903065, 33.476776, 28.042999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183801, 0.360236, -0.914575,
		0.320963, 0.857433, 0.402232,
		0.929086, -0.367475, 0.041974,
		35.181789, 33.366535, 28.055592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014820, 34.156330, 27.868551>,  <34.531429, 33.623768, 28.026209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014820, 34.156330, 27.868551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.210011, 33.823433, 27.763294>,  <35.327126, 33.623695, 27.700140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.210011, 33.823433, 27.763294>,  <35.014820, 34.156330, 27.868551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210011, 33.823433, 27.763294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070300, 0.337968, -0.938528,
		0.870022, 0.439480, 0.223427,
		0.487976, -0.832247, -0.263144,
		35.356403, 33.573757, 27.684351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644592, 34.307316, 27.354980>,  <35.014820, 34.156330, 27.868551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644592, 34.307316, 27.354980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.602280, 33.912209, 27.309139>,  <35.576893, 33.675144, 27.281635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.602280, 33.912209, 27.309139>,  <35.644592, 34.307316, 27.354980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602280, 33.912209, 27.309139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168651, 0.095757, -0.981014,
		0.979984, -0.123097, 0.156458,
		-0.105778, -0.987764, -0.114601,
		35.570545, 33.615879, 27.274759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124802, 34.133907, 26.825249>,  <35.644592, 34.307316, 27.354980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124802, 34.133907, 26.825249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.865345, 33.830475, 26.800528>,  <35.709671, 33.648415, 26.785696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.865345, 33.830475, 26.800528>,  <36.124802, 34.133907, 26.825249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865345, 33.830475, 26.800528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122249, 0.183987, -0.975297,
		0.751214, -0.625060, -0.212077,
		-0.648639, -0.758583, -0.061801,
		35.670753, 33.602901, 26.781988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437492, 33.651596, 26.319958>,  <36.124802, 34.133907, 26.825249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437492, 33.651596, 26.319958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.054367, 33.543766, 26.359797>,  <35.824490, 33.479069, 26.383699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.054367, 33.543766, 26.359797>,  <36.437492, 33.651596, 26.319958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054367, 33.543766, 26.359797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147017, 0.161836, -0.975805,
		0.246934, -0.949283, -0.194641,
		-0.957815, -0.269575, 0.099598,
		35.767021, 33.462894, 26.389675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308109, 33.209366, 25.781603>,  <36.437492, 33.651596, 26.319958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308109, 33.209366, 25.781603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.944538, 33.344246, 25.879704>,  <35.726395, 33.425175, 25.938564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.944538, 33.344246, 25.879704>,  <36.308109, 33.209366, 25.781603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944538, 33.344246, 25.879704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184114, 0.203168, -0.961678,
		-0.374109, -0.919248, -0.122580,
		-0.908925, 0.337204, 0.245254,
		35.671860, 33.445408, 25.953279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866379, 32.877033, 25.333242>,  <36.308109, 33.209366, 25.781603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866379, 32.877033, 25.333242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.631596, 33.183388, 25.438240>,  <35.490726, 33.367199, 25.501238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.631596, 33.183388, 25.438240>,  <35.866379, 32.877033, 25.333242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631596, 33.183388, 25.438240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155760, 0.211339, -0.964922,
		-0.794492, -0.607255, -0.004753,
		-0.586959, 0.765883, 0.262493,
		35.455509, 33.413151, 25.516989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169983, 32.805389, 24.959339>,  <35.866379, 32.877033, 25.333242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169983, 32.805389, 24.959339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.219280, 33.189419, 25.059788>,  <35.248859, 33.419838, 25.120056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.219280, 33.189419, 25.059788>,  <35.169983, 32.805389, 24.959339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219280, 33.189419, 25.059788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302278, 0.277345, -0.911980,
		-0.945219, 0.036491, 0.324392,
		0.123247, 0.960077, 0.251121,
		35.256256, 33.477444, 25.135124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548080, 33.111305, 24.738239>,  <35.169983, 32.805389, 24.959339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548080, 33.111305, 24.738239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.823765, 33.397827, 24.781870>,  <34.989178, 33.569740, 24.808048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.823765, 33.397827, 24.781870>,  <34.548080, 33.111305, 24.738239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823765, 33.397827, 24.781870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301222, 0.420181, -0.855987,
		-0.658976, 0.557101, 0.505360,
		0.689214, 0.716300, 0.109078,
		35.030529, 33.612717, 24.814594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284668, 33.718273, 24.403519>,  <34.548080, 33.111305, 24.738239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284668, 33.718273, 24.403519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.671139, 33.820183, 24.419519>,  <34.903019, 33.881329, 24.429119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.671139, 33.820183, 24.419519>,  <34.284668, 33.718273, 24.403519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671139, 33.820183, 24.419519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110090, 0.547702, -0.829399,
		-0.233220, 0.796938, 0.557223,
		0.966172, 0.254777, 0.040000,
		34.960991, 33.896614, 24.431520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364330, 34.458565, 24.346500>,  <34.284668, 33.718273, 24.403519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364330, 34.458565, 24.346500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.702347, 34.285427, 24.220934>,  <34.905159, 34.181545, 24.145594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.702347, 34.285427, 24.220934>,  <34.364330, 34.458565, 24.346500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702347, 34.285427, 24.220934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093300, 0.458721, -0.883668,
		0.526496, 0.776026, 0.347255,
		0.845043, -0.432849, -0.313918,
		34.955860, 34.155571, 24.126759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781143, 35.041641, 24.031147>,  <34.364330, 34.458565, 24.346500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781143, 35.041641, 24.031147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.938835, 34.700283, 23.894735>,  <35.033451, 34.495468, 23.812887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.938835, 34.700283, 23.894735>,  <34.781143, 35.041641, 24.031147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938835, 34.700283, 23.894735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111482, 0.412750, -0.903996,
		0.912226, 0.318361, 0.257856,
		0.394227, -0.853395, -0.341030,
		35.057102, 34.444263, 23.792427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409470, 35.211990, 23.697598>,  <34.781143, 35.041641, 24.031147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409470, 35.211990, 23.697598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.308628, 34.856987, 23.543316>,  <35.248123, 34.643986, 23.450747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.308628, 34.856987, 23.543316>,  <35.409470, 35.211990, 23.697598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308628, 34.856987, 23.543316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054844, 0.384832, -0.921356,
		0.966145, -0.253431, -0.048343,
		-0.252104, -0.887512, -0.385703,
		35.232998, 34.590733, 23.427605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946747, 35.173935, 23.223721>,  <35.409470, 35.211990, 23.697598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946747, 35.173935, 23.223721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.656528, 34.915241, 23.129637>,  <35.482399, 34.760025, 23.073187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.656528, 34.915241, 23.129637>,  <35.946747, 35.173935, 23.223721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656528, 34.915241, 23.129637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141967, 0.193775, -0.970720,
		0.673372, -0.737693, -0.048778,
		-0.725545, -0.646731, -0.235211,
		35.438866, 34.721222, 23.059074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669445, 34.951576, 23.339214>,  <35.946747, 35.173935, 23.223721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669445, 34.951576, 23.339214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.069073, 34.950535, 23.321987>,  <37.308849, 34.949909, 23.311651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.069073, 34.950535, 23.321987>,  <36.669445, 34.951576, 23.339214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069073, 34.950535, 23.321987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041649, -0.202624, 0.978370,
		-0.011274, -0.979253, -0.202327,
		0.999069, -0.002603, -0.043070,
		37.368793, 34.949753, 23.309067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884106, 34.359295, 23.785238>,  <36.669445, 34.951576, 23.339214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884106, 34.359295, 23.785238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.196857, 34.601772, 23.727003>,  <37.384510, 34.747257, 23.692062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.196857, 34.601772, 23.727003>,  <36.884106, 34.359295, 23.785238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196857, 34.601772, 23.727003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161238, 0.028955, 0.986491,
		0.602220, -0.794790, -0.075102,
		0.781878, 0.606194, -0.145587,
		37.431419, 34.783630, 23.683327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414356, 34.118210, 24.199167>,  <36.884106, 34.359295, 23.785238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414356, 34.118210, 24.199167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.509842, 34.498634, 24.120678>,  <37.567131, 34.726887, 24.073584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.509842, 34.498634, 24.120678>,  <37.414356, 34.118210, 24.199167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509842, 34.498634, 24.120678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227730, 0.141606, 0.963373,
		0.944011, -0.274653, -0.182782,
		0.238710, 0.951059, -0.196224,
		37.581455, 34.783951, 24.061811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003120, 34.267059, 24.662741>,  <37.414356, 34.118210, 24.199167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003120, 34.267059, 24.662741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.845104, 34.624138, 24.575994>,  <37.750294, 34.838387, 24.523947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.845104, 34.624138, 24.575994>,  <38.003120, 34.267059, 24.662741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845104, 34.624138, 24.575994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055770, 0.212328, 0.975606,
		0.916968, 0.397501, -0.034093,
		-0.395043, 0.892698, -0.216866,
		37.726593, 34.891949, 24.510935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429214, 34.788780, 24.978209>,  <38.003120, 34.267059, 24.662741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429214, 34.788780, 24.978209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072510, 34.964706, 24.935633>,  <37.858486, 35.070263, 24.910088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072510, 34.964706, 24.935633>,  <38.429214, 34.788780, 24.978209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072510, 34.964706, 24.935633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096789, 0.415166, 0.904582,
		0.442041, 0.796366, -0.412797,
		-0.891757, 0.439817, -0.106441,
		37.804981, 35.096653, 24.903700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579941, 35.429123, 25.427202>,  <38.429214, 34.788780, 24.978209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579941, 35.429123, 25.427202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.193367, 35.441399, 25.325178>,  <37.961422, 35.448765, 25.263964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.193367, 35.441399, 25.325178>,  <38.579941, 35.429123, 25.427202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193367, 35.441399, 25.325178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202094, 0.522138, 0.828571,
		0.158608, 0.852308, -0.498412,
		-0.966438, 0.030692, -0.255061,
		37.903435, 35.450607, 25.248659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262012, 36.200333, 25.511606>,  <38.579941, 35.429123, 25.427202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262012, 36.200333, 25.511606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957016, 35.942078, 25.528364>,  <37.774017, 35.787125, 25.538420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957016, 35.942078, 25.528364>,  <38.262012, 36.200333, 25.511606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957016, 35.942078, 25.528364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374715, 0.493466, 0.784907,
		-0.527441, 0.582787, -0.618195,
		-0.762492, -0.645639, 0.041895,
		37.728268, 35.748386, 25.540932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666935, 36.618443, 25.676989>,  <38.262012, 36.200333, 25.511606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666935, 36.618443, 25.676989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.559074, 36.256046, 25.807512>,  <37.494358, 36.038609, 25.885826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.559074, 36.256046, 25.807512>,  <37.666935, 36.618443, 25.676989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559074, 36.256046, 25.807512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398357, 0.413455, 0.818759,
		-0.876699, 0.090790, -0.472394,
		-0.269649, -0.905987, 0.326309,
		37.478180, 35.984249, 25.905405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943920, 36.612717, 25.926252>,  <37.666935, 36.618443, 25.676989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943920, 36.612717, 25.926252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.097488, 36.286549, 26.099550>,  <37.189629, 36.090847, 26.203529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.097488, 36.286549, 26.099550>,  <36.943920, 36.612717, 25.926252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097488, 36.286549, 26.099550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512180, 0.202345, 0.834702,
		-0.768295, -0.542359, -0.339955,
		0.383920, -0.815416, 0.433247,
		37.212666, 36.041924, 26.229525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411831, 36.467690, 26.424799>,  <36.943920, 36.612717, 25.926252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411831, 36.467690, 26.424799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.708675, 36.231232, 26.551176>,  <36.886784, 36.089359, 26.627003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.708675, 36.231232, 26.551176>,  <36.411831, 36.467690, 26.424799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708675, 36.231232, 26.551176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295739, 0.134225, 0.945792,
		-0.601504, -0.795321, -0.075213,
		0.742113, -0.591141, 0.315944,
		36.931309, 36.053890, 26.645960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115326, 36.095261, 27.046757>,  <36.411831, 36.467690, 26.424799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115326, 36.095261, 27.046757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.514782, 36.100842, 27.066830>,  <36.754456, 36.104191, 27.078875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.514782, 36.100842, 27.066830>,  <36.115326, 36.095261, 27.046757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514782, 36.100842, 27.066830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052044, 0.228578, 0.972134,
		0.002088, -0.973426, 0.228993,
		0.998643, 0.013947, 0.050184,
		36.814373, 36.105026, 27.081884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308880, 35.874310, 27.762087>,  <36.115326, 36.095261, 27.046757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308880, 35.874310, 27.762087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.648304, 36.054409, 27.650925>,  <36.851959, 36.162468, 27.584227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.648304, 36.054409, 27.650925>,  <36.308880, 35.874310, 27.762087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648304, 36.054409, 27.650925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215999, 0.184695, 0.958766,
		0.483007, -0.873594, 0.059472,
		0.848557, 0.450245, -0.277905,
		36.902870, 36.189484, 27.567553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820400, 35.540089, 28.095306>,  <36.308880, 35.874310, 27.762087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820400, 35.540089, 28.095306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.978325, 35.898613, 28.014563>,  <37.073078, 36.113728, 27.966116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.978325, 35.898613, 28.014563>,  <36.820400, 35.540089, 28.095306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978325, 35.898613, 28.014563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260377, 0.101543, 0.960153,
		0.881095, -0.431638, -0.193289,
		0.394811, 0.896313, -0.201858,
		37.096767, 36.167507, 27.954006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451111, 35.552673, 28.287214>,  <36.820400, 35.540089, 28.095306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451111, 35.552673, 28.287214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.385384, 35.946255, 28.259388>,  <37.345947, 36.182404, 28.242691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.385384, 35.946255, 28.259388>,  <37.451111, 35.552673, 28.287214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385384, 35.946255, 28.259388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386193, 0.129070, 0.913343,
		0.907664, 0.123216, -0.401204,
		-0.164322, 0.983951, -0.069567,
		37.336086, 36.241440, 28.238518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.019096, 37.021210, 23.141363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.755112, 37.316246, 23.198503>,  <39.596722, 37.493267, 23.232788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.755112, 37.316246, 23.198503>,  <40.019096, 37.021210, 23.141363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755112, 37.316246, 23.198503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342853, -0.126493, -0.930834,
		-0.668504, -0.663295, 0.336366,
		-0.659966, 0.737590, 0.142852,
		39.557121, 37.537521, 23.241360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460392, 36.861671, 22.811356>,  <40.019096, 37.021210, 23.141363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460392, 36.861671, 22.811356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.435810, 37.260086, 22.837105>,  <39.421062, 37.499134, 22.852554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.435810, 37.260086, 22.837105>,  <39.460392, 36.861671, 22.811356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435810, 37.260086, 22.837105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214604, 0.049800, -0.975431,
		-0.974766, -0.073757, 0.210692,
		-0.061452, 0.996032, 0.064372,
		39.417374, 37.558895, 22.856417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879890, 36.925709, 22.446171>,  <39.460392, 36.861671, 22.811356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879890, 36.925709, 22.446171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.076538, 37.273979, 22.452278>,  <39.194527, 37.482941, 22.455942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.076538, 37.273979, 22.452278>,  <38.879890, 36.925709, 22.446171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076538, 37.273979, 22.452278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180870, 0.119246, -0.976251,
		-0.851820, 0.477181, 0.216103,
		0.491618, 0.870677, 0.015269,
		39.224022, 37.535183, 22.456860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375214, 37.329311, 22.120564>,  <38.879890, 36.925709, 22.446171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375214, 37.329311, 22.120564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.726055, 37.520569, 22.102385>,  <38.936562, 37.635323, 22.091478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.726055, 37.520569, 22.102385>,  <38.375214, 37.329311, 22.120564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726055, 37.520569, 22.102385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131480, 0.148022, -0.980205,
		-0.461949, 0.865720, 0.192697,
		0.877107, 0.478141, -0.045446,
		38.989185, 37.664013, 22.088751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222794, 38.028561, 21.793386>,  <38.375214, 37.329311, 22.120564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222794, 38.028561, 21.793386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.614319, 37.965611, 21.740988>,  <38.849236, 37.927841, 21.709549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.614319, 37.965611, 21.740988>,  <38.222794, 38.028561, 21.793386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614319, 37.965611, 21.740988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088233, 0.253144, -0.963396,
		0.184773, 0.954543, 0.233895,
		0.978812, -0.157372, -0.130997,
		38.907963, 37.918400, 21.701689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446232, 38.562141, 21.278547>,  <38.222794, 38.028561, 21.793386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446232, 38.562141, 21.278547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.756241, 38.309460, 21.271660>,  <38.942245, 38.157852, 21.267527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.756241, 38.309460, 21.271660>,  <38.446232, 38.562141, 21.278547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756241, 38.309460, 21.271660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268562, 0.353911, -0.895891,
		0.572030, 0.689710, 0.443939,
		0.775020, -0.631702, -0.017218,
		38.988747, 38.119949, 21.266495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137249, 38.984924, 21.072939>,  <38.446232, 38.562141, 21.278547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137249, 38.984924, 21.072939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.157310, 38.595818, 20.982424>,  <39.169346, 38.362354, 20.928114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.157310, 38.595818, 20.982424>,  <39.137249, 38.984924, 21.072939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157310, 38.595818, 20.982424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016166, 0.225752, -0.974051,
		0.998611, 0.052512, -0.004403,
		0.050155, -0.972768, -0.226287,
		39.172356, 38.303986, 20.914537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582443, 38.957539, 20.613495>,  <39.137249, 38.984924, 21.072939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582443, 38.957539, 20.613495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.419827, 38.595299, 20.565142>,  <39.322258, 38.377953, 20.536131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.419827, 38.595299, 20.565142>,  <39.582443, 38.957539, 20.613495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419827, 38.595299, 20.565142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196005, 0.042779, -0.979669,
		0.892362, -0.421965, 0.160111,
		-0.406537, -0.905602, -0.120882,
		39.297867, 38.323620, 20.528877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956173, 38.770561, 20.037683>,  <39.582443, 38.957539, 20.613495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956173, 38.770561, 20.037683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.656605, 38.505524, 20.041447>,  <39.476864, 38.346500, 20.043705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.656605, 38.505524, 20.041447>,  <39.956173, 38.770561, 20.037683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656605, 38.505524, 20.041447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026642, -0.044294, -0.998663,
		0.662126, -0.747667, 0.050826,
		-0.748919, -0.662595, 0.009409,
		39.431931, 38.306744, 20.044270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181396, 38.130573, 19.556101>,  <39.956173, 38.770561, 20.037683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181396, 38.130573, 19.556101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.783478, 38.103455, 19.586521>,  <39.544727, 38.087181, 19.604774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.783478, 38.103455, 19.586521>,  <40.181396, 38.130573, 19.556101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783478, 38.103455, 19.586521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083287, 0.111186, -0.990303,
		0.058686, -0.991484, -0.116254,
		-0.994796, -0.067799, 0.076053,
		39.485039, 38.083115, 19.609337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968006, 37.578026, 19.018499>,  <40.181396, 38.130573, 19.556101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968006, 37.578026, 19.018499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.650768, 37.812954, 19.083063>,  <39.460426, 37.953911, 19.121801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.650768, 37.812954, 19.083063>,  <39.968006, 37.578026, 19.018499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650768, 37.812954, 19.083063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275316, -0.109288, -0.955122,
		-0.543326, -0.801939, 0.248375,
		-0.793094, 0.587324, 0.161408,
		39.412842, 37.989151, 19.131485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495216, 37.352180, 18.597075>,  <39.968006, 37.578026, 19.018499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495216, 37.352180, 18.597075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.329922, 37.707176, 18.678661>,  <39.230747, 37.920174, 18.727613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.329922, 37.707176, 18.678661>,  <39.495216, 37.352180, 18.597075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329922, 37.707176, 18.678661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440801, 0.001045, -0.897604,
		-0.796827, -0.460829, 0.390774,
		-0.413234, 0.887488, 0.203966,
		39.205952, 37.973423, 18.739851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722775, 37.362164, 18.491549>,  <39.495216, 37.352180, 18.597075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722775, 37.362164, 18.491549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.892883, 37.717560, 18.422581>,  <38.994949, 37.930798, 18.381201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.892883, 37.717560, 18.422581>,  <38.722775, 37.362164, 18.491549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892883, 37.717560, 18.422581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366932, -0.004890, -0.930235,
		-0.827348, 0.458869, 0.323936,
		0.425272, 0.888490, -0.172420,
		39.020466, 37.984108, 18.370855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279636, 37.944626, 18.008892>,  <38.722775, 37.362164, 18.491549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279636, 37.944626, 18.008892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.666389, 38.045891, 17.995993>,  <38.898441, 38.106647, 17.988253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.666389, 38.045891, 17.995993>,  <38.279636, 37.944626, 18.008892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666389, 38.045891, 17.995993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054975, 0.083209, -0.995015,
		-0.249214, 0.963839, 0.094371,
		0.966887, 0.253160, -0.032251,
		38.956455, 38.121838, 17.986317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947460, 37.199524, 17.897356>,  <38.279636, 37.944626, 18.008892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947460, 37.199524, 17.897356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.687981, 36.900539, 17.840092>,  <37.532291, 36.721149, 17.805733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.687981, 36.900539, 17.840092>,  <37.947460, 37.199524, 17.897356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687981, 36.900539, 17.840092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289960, -0.416667, 0.861575,
		-0.703642, 0.517393, 0.487025,
		-0.648700, -0.747458, -0.143161,
		37.493370, 36.676304, 17.797144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628593, 37.100780, 18.493816>,  <37.947460, 37.199524, 17.897356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628593, 37.100780, 18.493816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.588615, 36.741936, 18.321680>,  <37.564629, 36.526627, 18.218399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.588615, 36.741936, 18.321680>,  <37.628593, 37.100780, 18.493816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588615, 36.741936, 18.321680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107764, -0.439722, 0.891645,
		-0.989140, 0.042738, 0.140624,
		-0.099943, -0.897116, -0.430341,
		37.558632, 36.472801, 18.192577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059834, 36.802578, 18.851223>,  <37.628593, 37.100780, 18.493816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059834, 36.802578, 18.851223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.276062, 36.501835, 18.700228>,  <37.405800, 36.321388, 18.609631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.276062, 36.501835, 18.700228>,  <37.059834, 36.802578, 18.851223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276062, 36.501835, 18.700228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070972, -0.487851, 0.870037,
		-0.838299, -0.443527, -0.317079,
		0.540572, -0.751855, -0.377487,
		37.438232, 36.276279, 18.586983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705872, 36.275208, 19.142637>,  <37.059834, 36.802578, 18.851223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705872, 36.275208, 19.142637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.058754, 36.120087, 19.035809>,  <37.270481, 36.027016, 18.971712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.058754, 36.120087, 19.035809>,  <36.705872, 36.275208, 19.142637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058754, 36.120087, 19.035809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056954, -0.475137, 0.878066,
		-0.467391, -0.789853, -0.397087,
		0.882215, -0.387784, -0.267060,
		37.323414, 36.003746, 18.955688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660851, 35.478035, 19.262955>,  <36.705872, 36.275208, 19.142637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660851, 35.478035, 19.262955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.042778, 35.596691, 19.270134>,  <37.271935, 35.667885, 19.274441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.042778, 35.596691, 19.270134>,  <36.660851, 35.478035, 19.262955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042778, 35.596691, 19.270134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199587, -0.684826, 0.700841,
		0.220188, -0.665595, -0.713092,
		0.954821, 0.296641, 0.017947,
		37.329224, 35.685684, 19.275518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038742, 34.903145, 19.223284>,  <36.660851, 35.478035, 19.262955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038742, 34.903145, 19.223284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.243843, 35.192055, 19.408932>,  <37.366905, 35.365398, 19.520321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.243843, 35.192055, 19.408932>,  <37.038742, 34.903145, 19.223284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243843, 35.192055, 19.408932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141826, -0.604428, 0.783933,
		0.846740, -0.336141, -0.412361,
		0.512755, 0.722271, 0.464120,
		37.397671, 35.408737, 19.548168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471199, 34.568443, 19.716511>,  <37.038742, 34.903145, 19.223284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471199, 34.568443, 19.716511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.592342, 34.929001, 19.840302>,  <37.665028, 35.145336, 19.914576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.592342, 34.929001, 19.840302>,  <37.471199, 34.568443, 19.716511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592342, 34.929001, 19.840302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176462, -0.372149, 0.911245,
		0.936558, -0.221363, -0.271767,
		0.302854, 0.901390, 0.309477,
		37.683197, 35.199417, 19.933144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988697, 34.467113, 20.138788>,  <37.471199, 34.568443, 19.716511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988697, 34.467113, 20.138788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.866596, 34.831516, 20.249699>,  <37.793335, 35.050159, 20.316244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.866596, 34.831516, 20.249699>,  <37.988697, 34.467113, 20.138788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866596, 34.831516, 20.249699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104747, -0.257283, 0.960642,
		0.946493, 0.322281, -0.016890,
		-0.305251, 0.911011, 0.277275,
		37.775021, 35.104820, 20.332882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484997, 34.728851, 20.671820>,  <37.988697, 34.467113, 20.138788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484997, 34.728851, 20.671820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.161850, 34.955002, 20.738390>,  <37.967960, 35.090691, 20.778332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.161850, 34.955002, 20.738390>,  <38.484997, 34.728851, 20.671820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161850, 34.955002, 20.738390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094548, -0.154399, 0.983474,
		0.581725, 0.810256, 0.071280,
		-0.807872, 0.565372, 0.166426,
		37.919487, 35.124615, 20.788319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647617, 35.233318, 21.289696>,  <38.484997, 34.728851, 20.671820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647617, 35.233318, 21.289696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.254974, 35.162041, 21.262299>,  <38.019386, 35.119274, 21.245861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.254974, 35.162041, 21.262299>,  <38.647617, 35.233318, 21.289696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254974, 35.162041, 21.262299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071535, 0.010692, 0.997381,
		-0.176993, 0.983938, -0.023243,
		-0.981609, -0.178192, -0.068494,
		37.960491, 35.108582, 21.241751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339405, 35.704662, 21.701921>,  <38.647617, 35.233318, 21.289696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339405, 35.704662, 21.701921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.029621, 35.453594, 21.670307>,  <37.843750, 35.302956, 21.651339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.029621, 35.453594, 21.670307>,  <38.339405, 35.704662, 21.701921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029621, 35.453594, 21.670307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178845, 0.097392, 0.979045,
		-0.606818, 0.772365, -0.187681,
		-0.774459, -0.627668, -0.079034,
		37.797283, 35.265293, 21.646597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831577, 35.917061, 22.295269>,  <38.339405, 35.704662, 21.701921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831577, 35.917061, 22.295269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.701675, 35.554443, 22.187407>,  <37.623734, 35.336872, 22.122690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.701675, 35.554443, 22.187407>,  <37.831577, 35.917061, 22.295269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701675, 35.554443, 22.187407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162823, -0.227263, 0.960125,
		-0.931676, 0.355714, -0.073801,
		-0.324758, -0.906542, -0.269654,
		37.604248, 35.282482, 22.106510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118824, 35.893841, 22.488348>,  <37.831577, 35.917061, 22.295269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118824, 35.893841, 22.488348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.291519, 35.534019, 22.461824>,  <37.395138, 35.318127, 22.445910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.291519, 35.534019, 22.461824>,  <37.118824, 35.893841, 22.488348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291519, 35.534019, 22.461824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136021, -0.137604, 0.981103,
		-0.891682, -0.414564, -0.181768,
		0.431742, -0.899557, -0.066310,
		37.421043, 35.264153, 22.441931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652481, 35.377430, 22.771427>,  <37.118824, 35.893841, 22.488348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652481, 35.377430, 22.771427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.018101, 35.218937, 22.806103>,  <37.237473, 35.123840, 22.826908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.018101, 35.218937, 22.806103>,  <36.652481, 35.377430, 22.771427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018101, 35.218937, 22.806103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089923, 0.010443, 0.995894,
		-0.395515, -0.918089, -0.026085,
		0.914047, -0.396236, 0.086687,
		37.292316, 35.100067, 22.832109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235222, 34.753883, 22.597969>,  <36.652481, 35.377430, 22.771427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235222, 34.753883, 22.597969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.843304, 34.674236, 22.605520>,  <35.608154, 34.626450, 22.610052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.843304, 34.674236, 22.605520>,  <36.235222, 34.753883, 22.597969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843304, 34.674236, 22.605520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059367, 0.199382, -0.978122,
		0.190967, -0.959485, -0.207174,
		-0.979800, -0.199088, 0.018886,
		35.549366, 34.614502, 22.611185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092781, 34.308144, 22.048086>,  <36.235222, 34.753883, 22.597969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092781, 34.308144, 22.048086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.752277, 34.498692, 22.136112>,  <35.547974, 34.613022, 22.188929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.752277, 34.498692, 22.136112>,  <36.092781, 34.308144, 22.048086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752277, 34.498692, 22.136112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100700, 0.263281, -0.959449,
		-0.514994, -0.838900, -0.176150,
		-0.851258, 0.476372, 0.220066,
		35.496899, 34.641602, 22.202131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638168, 34.082844, 21.575026>,  <36.092781, 34.308144, 22.048086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638168, 34.082844, 21.575026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.453655, 34.408012, 21.717226>,  <35.342945, 34.603111, 21.802546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.453655, 34.408012, 21.717226>,  <35.638168, 34.082844, 21.575026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453655, 34.408012, 21.717226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361792, 0.193512, -0.911954,
		-0.810137, -0.549288, 0.204843,
		-0.461286, 0.812918, 0.355499,
		35.315269, 34.651886, 21.823875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967129, 34.072029, 21.326944>,  <35.638168, 34.082844, 21.575026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967129, 34.072029, 21.326944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.032528, 34.456276, 21.416817>,  <35.071766, 34.686825, 21.470741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.032528, 34.456276, 21.416817>,  <34.967129, 34.072029, 21.326944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032528, 34.456276, 21.416817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255494, 0.261205, -0.930857,
		-0.952886, 0.094785, 0.288138,
		0.163494, 0.960618, 0.224682,
		35.081577, 34.744461, 21.484221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563198, 34.441349, 20.868032>,  <34.967129, 34.072029, 21.326944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563198, 34.441349, 20.868032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.771858, 34.752460, 21.008284>,  <34.897057, 34.939125, 21.092434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.771858, 34.752460, 21.008284>,  <34.563198, 34.441349, 20.868032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771858, 34.752460, 21.008284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111405, 0.469559, -0.875844,
		-0.845852, 0.417826, 0.331596,
		0.521654, 0.777776, 0.350629,
		34.928356, 34.985794, 21.113472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113312, 35.013088, 20.827244>,  <34.563198, 34.441349, 20.868032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113312, 35.013088, 20.827244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.493279, 35.136250, 20.805876>,  <34.721260, 35.210148, 20.793055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.493279, 35.136250, 20.805876>,  <34.113312, 35.013088, 20.827244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493279, 35.136250, 20.805876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205429, 0.486440, -0.849220,
		-0.235491, 0.817663, 0.525330,
		0.949917, 0.307902, -0.053420,
		34.778255, 35.228619, 20.789850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030781, 35.615650, 20.538452>,  <34.113312, 35.013088, 20.827244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030781, 35.615650, 20.538452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.415623, 35.517460, 20.490973>,  <34.646530, 35.458546, 20.462484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.415623, 35.517460, 20.490973>,  <34.030781, 35.615650, 20.538452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415623, 35.517460, 20.490973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013306, 0.392546, -0.919636,
		0.272342, 0.886369, 0.374406,
		0.962108, -0.245474, -0.118701,
		34.704254, 35.443817, 20.455362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888462, 36.224197, 20.882179>,  <34.030781, 35.615650, 20.538452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888462, 36.224197, 20.882179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.606888, 36.481770, 21.002064>,  <33.437943, 36.636314, 21.073996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.606888, 36.481770, 21.002064>,  <33.888462, 36.224197, 20.882179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606888, 36.481770, 21.002064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104064, -0.323915, 0.940345,
		0.702601, 0.693130, 0.161005,
		-0.703934, 0.643932, 0.299713,
		33.395706, 36.674950, 21.091978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113598, 36.654922, 21.476007>,  <33.888462, 36.224197, 20.882179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113598, 36.654922, 21.476007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.716534, 36.624138, 21.513323>,  <33.478294, 36.605667, 21.535711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.716534, 36.624138, 21.513323>,  <34.113598, 36.654922, 21.476007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716534, 36.624138, 21.513323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106620, -0.192863, 0.975416,
		-0.057080, 0.978203, 0.199654,
		-0.992660, -0.076964, 0.093288,
		33.418736, 36.601048, 21.541309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009521, 36.812283, 22.192677>,  <34.113598, 36.654922, 21.476007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009521, 36.812283, 22.192677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.674393, 36.642570, 22.055248>,  <33.473316, 36.540745, 21.972792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.674393, 36.642570, 22.055248>,  <34.009521, 36.812283, 22.192677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674393, 36.642570, 22.055248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159771, -0.411213, 0.897428,
		-0.522039, 0.806779, 0.276737,
		-0.837824, -0.424278, -0.343569,
		33.423046, 36.515285, 21.952177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660580, 36.770199, 22.852972>,  <34.009521, 36.812283, 22.192677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660580, 36.770199, 22.852972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.405937, 36.551746, 22.635174>,  <33.253151, 36.420677, 22.504494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.405937, 36.551746, 22.635174>,  <33.660580, 36.770199, 22.852972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405937, 36.551746, 22.635174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319293, -0.456039, 0.830710,
		-0.701987, 0.702689, 0.115942,
		-0.636605, -0.546128, -0.544498,
		33.214954, 36.387909, 22.471825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960861, 36.827381, 23.133812>,  <33.660580, 36.770199, 22.852972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960861, 36.827381, 23.133812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.010471, 36.476429, 22.948420>,  <33.040237, 36.265858, 22.837185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.010471, 36.476429, 22.948420>,  <32.960861, 36.827381, 23.133812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010471, 36.476429, 22.948420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147250, -0.478189, 0.865825,
		-0.981293, -0.039137, -0.188503,
		0.124025, -0.877384, -0.463480,
		33.047680, 36.213215, 22.809376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298935, 36.435978, 23.216824>,  <32.960861, 36.827381, 23.133812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298935, 36.435978, 23.216824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.602276, 36.179314, 23.170910>,  <32.784279, 36.025314, 23.143362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.602276, 36.179314, 23.170910>,  <32.298935, 36.435978, 23.216824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602276, 36.179314, 23.170910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228325, -0.426414, 0.875237,
		-0.610551, -0.637528, -0.469878,
		0.758350, -0.641662, -0.114784,
		32.829781, 35.986816, 23.136475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042049, 35.787060, 23.371992>,  <32.298935, 36.435978, 23.216824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042049, 35.787060, 23.371992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.437397, 35.736423, 23.405720>,  <32.674606, 35.706039, 23.425957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.437397, 35.736423, 23.405720>,  <32.042049, 35.787060, 23.371992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437397, 35.736423, 23.405720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130734, -0.423701, 0.896318,
		-0.077741, -0.896912, -0.435321,
		0.988364, -0.126592, 0.084318,
		32.733906, 35.698444, 23.431015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.422680, 41.279930, 18.705595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.665703, 40.962227, 18.703274>,  <37.811516, 40.771606, 18.701881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.665703, 40.962227, 18.703274>,  <37.422680, 41.279930, 18.705595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665703, 40.962227, 18.703274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462773, -0.359908, 0.810128,
		-0.645539, -0.489511, -0.586224,
		0.607553, -0.794258, -0.005802,
		37.847969, 40.723949, 18.701532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090031, 40.645325, 18.677891>,  <37.422680, 41.279930, 18.705595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090031, 40.645325, 18.677891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.432323, 40.569443, 18.870447>,  <37.637699, 40.523914, 18.985981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.432323, 40.569443, 18.870447>,  <37.090031, 40.645325, 18.677891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432323, 40.569443, 18.870447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516870, -0.270450, 0.812221,
		-0.023890, -0.943858, -0.329486,
		0.855731, -0.189705, 0.481391,
		37.689041, 40.512531, 19.014864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821831, 40.256554, 19.318922>,  <37.090031, 40.645325, 18.677891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821831, 40.256554, 19.318922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.213699, 40.291771, 19.391016>,  <37.448822, 40.312901, 19.434273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.213699, 40.291771, 19.391016>,  <36.821831, 40.256554, 19.318922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213699, 40.291771, 19.391016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138220, -0.354878, 0.924639,
		0.145367, -0.930758, -0.335496,
		0.979675, 0.088040, 0.180237,
		37.507603, 40.318184, 19.445087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140411, 39.501671, 19.561152>,  <36.821831, 40.256554, 19.318922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140411, 39.501671, 19.561152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.329151, 39.825470, 19.700905>,  <37.442394, 40.019749, 19.784758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.329151, 39.825470, 19.700905>,  <37.140411, 39.501671, 19.561152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329151, 39.825470, 19.700905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091166, -0.438942, 0.893878,
		0.876955, -0.389920, -0.280912,
		0.471845, 0.809501, 0.349385,
		37.470703, 40.068321, 19.805721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669632, 39.281483, 20.039465>,  <37.140411, 39.501671, 19.561152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669632, 39.281483, 20.039465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.604309, 39.666534, 20.125891>,  <37.565117, 39.897564, 20.177746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.604309, 39.666534, 20.125891>,  <37.669632, 39.281483, 20.039465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604309, 39.666534, 20.125891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212360, -0.179574, 0.960550,
		0.963449, 0.202748, -0.175097,
		-0.163307, 0.962625, 0.216066,
		37.555317, 39.955322, 20.190710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276245, 39.507870, 20.567179>,  <37.669632, 39.281483, 20.039465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276245, 39.507870, 20.567179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.945164, 39.731800, 20.582697>,  <37.746517, 39.866158, 20.592007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.945164, 39.731800, 20.582697>,  <38.276245, 39.507870, 20.567179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945164, 39.731800, 20.582697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095162, 0.071894, 0.992862,
		0.553042, 0.825484, -0.112781,
		-0.827701, 0.559827, 0.038794,
		37.696854, 39.899750, 20.594336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461845, 39.941471, 21.055731>,  <38.276245, 39.507870, 20.567179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461845, 39.941471, 21.055731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.065601, 39.988579, 21.027956>,  <37.827854, 40.016846, 21.011292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.065601, 39.988579, 21.027956>,  <38.461845, 39.941471, 21.055731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065601, 39.988579, 21.027956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069087, 0.007040, 0.997586,
		0.117976, 0.993016, 0.001163,
		-0.990610, 0.117772, -0.069436,
		37.768417, 40.023911, 21.007126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341133, 40.441010, 21.616684>,  <38.461845, 39.941471, 21.055731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341133, 40.441010, 21.616684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.986370, 40.280510, 21.525124>,  <37.773514, 40.184208, 21.470188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.986370, 40.280510, 21.525124>,  <38.341133, 40.441010, 21.616684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986370, 40.280510, 21.525124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240686, -0.021557, 0.970364,
		-0.394296, 0.915714, -0.077457,
		-0.886905, -0.401253, -0.228900,
		37.720299, 40.160133, 21.456453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813198, 40.819588, 21.893597>,  <38.341133, 40.441010, 21.616684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813198, 40.819588, 21.893597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.645058, 40.461937, 21.831833>,  <37.544174, 40.247345, 21.794775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.645058, 40.461937, 21.831833>,  <37.813198, 40.819588, 21.893597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645058, 40.461937, 21.831833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213648, -0.067855, 0.974551,
		-0.881852, 0.442639, -0.162506,
		-0.420348, -0.894129, -0.154407,
		37.518955, 40.193699, 21.785511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329742, 40.794140, 22.499208>,  <37.813198, 40.819588, 21.893597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329742, 40.794140, 22.499208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.337887, 40.412773, 22.378817>,  <37.342773, 40.183952, 22.306581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.337887, 40.412773, 22.378817>,  <37.329742, 40.794140, 22.499208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337887, 40.412773, 22.378817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124615, -0.301116, 0.945410,
		-0.991996, 0.018259, -0.124940,
		0.020359, -0.953413, -0.300982,
		37.343994, 40.126751, 22.288523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795292, 40.382790, 22.813330>,  <37.329742, 40.794140, 22.499208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795292, 40.382790, 22.813330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.060211, 40.104145, 22.702988>,  <37.219162, 39.936958, 22.636782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.060211, 40.104145, 22.702988>,  <36.795292, 40.382790, 22.813330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060211, 40.104145, 22.702988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139211, -0.247356, 0.958872,
		-0.736197, -0.673458, -0.066846,
		0.662295, -0.696613, -0.275856,
		37.258900, 39.895161, 22.620232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564011, 39.692860, 23.055021>,  <36.795292, 40.382790, 22.813330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564011, 39.692860, 23.055021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.963684, 39.688847, 23.039385>,  <37.203487, 39.686440, 23.030003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.963684, 39.688847, 23.039385>,  <36.564011, 39.692860, 23.055021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963684, 39.688847, 23.039385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037792, -0.107127, 0.993527,
		-0.014157, -0.994195, -0.106661,
		0.999185, -0.010034, -0.039089,
		37.263439, 39.685837, 23.027658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152863, 39.139698, 23.394079>,  <36.564011, 39.692860, 23.055021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152863, 39.139698, 23.394079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.787586, 39.179333, 23.552198>,  <35.568420, 39.203114, 23.647070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.787586, 39.179333, 23.552198>,  <36.152863, 39.139698, 23.394079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787586, 39.179333, 23.552198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375235, 0.173983, -0.910455,
		-0.158992, -0.979751, -0.121697,
		-0.913192, 0.099090, 0.395299,
		35.513630, 39.209061, 23.670788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807083, 38.732170, 23.005062>,  <36.152863, 39.139698, 23.394079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807083, 38.732170, 23.005062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.516266, 38.951412, 23.170465>,  <35.341774, 39.082958, 23.269707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.516266, 38.951412, 23.170465>,  <35.807083, 38.732170, 23.005062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516266, 38.951412, 23.170465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360424, 0.207926, -0.909319,
		-0.584382, -0.810152, 0.046379,
		-0.727044, 0.548106, 0.413506,
		35.298153, 39.115845, 23.294518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133575, 38.464878, 22.718716>,  <35.807083, 38.732170, 23.005062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133575, 38.464878, 22.718716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.084854, 38.840164, 22.848282>,  <35.055622, 39.065334, 22.926022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.084854, 38.840164, 22.848282>,  <35.133575, 38.464878, 22.718716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084854, 38.840164, 22.848282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357202, 0.263043, -0.896223,
		-0.926051, -0.224870, 0.303090,
		-0.121808, 0.938212, 0.323915,
		35.048313, 39.121628, 22.945456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541645, 38.717258, 22.366833>,  <35.133575, 38.464878, 22.718716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541645, 38.717258, 22.366833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.703522, 39.055931, 22.505018>,  <34.800648, 39.259136, 22.587931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.703522, 39.055931, 22.505018>,  <34.541645, 38.717258, 22.366833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703522, 39.055931, 22.505018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432730, 0.510123, -0.743316,
		-0.805585, 0.151323, 0.572830,
		0.404694, 0.846685, 0.345466,
		34.824928, 39.309937, 22.608658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899727, 39.132935, 22.452524>,  <34.541645, 38.717258, 22.366833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899727, 39.132935, 22.452524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.227844, 39.360077, 22.425236>,  <34.424717, 39.496361, 22.408863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.227844, 39.360077, 22.425236>,  <33.899727, 39.132935, 22.452524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227844, 39.360077, 22.425236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371472, 0.438275, -0.818488,
		-0.434883, 0.696745, 0.570458,
		0.820296, 0.567856, -0.068223,
		34.473934, 39.530434, 22.404768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656143, 39.793728, 22.288803>,  <33.899727, 39.132935, 22.452524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656143, 39.793728, 22.288803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.043964, 39.791710, 22.190865>,  <34.276657, 39.790501, 22.132101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.043964, 39.791710, 22.190865>,  <33.656143, 39.793728, 22.288803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043964, 39.791710, 22.190865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206967, 0.517582, -0.830225,
		0.130917, 0.855619, 0.500777,
		0.969549, -0.005046, -0.244845,
		34.334827, 39.790195, 22.117411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763699, 40.478489, 22.089472>,  <33.656143, 39.793728, 22.288803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763699, 40.478489, 22.089472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.041317, 40.234966, 21.935768>,  <34.207890, 40.088852, 21.843546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.041317, 40.234966, 21.935768>,  <33.763699, 40.478489, 22.089472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041317, 40.234966, 21.935768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242226, 0.305151, -0.920983,
		0.677957, 0.732282, 0.064321,
		0.694046, -0.608807, -0.384257,
		34.249531, 40.052322, 21.820492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075787, 40.918129, 21.582964>,  <33.763699, 40.478489, 22.089472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075787, 40.918129, 21.582964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.161633, 40.533443, 21.514797>,  <34.213139, 40.302631, 21.473898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.161633, 40.533443, 21.514797>,  <34.075787, 40.918129, 21.582964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161633, 40.533443, 21.514797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096212, 0.194449, -0.976183,
		0.971949, 0.193104, 0.134259,
		0.214612, -0.961718, -0.170415,
		34.226017, 40.244926, 21.463673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727505, 40.935040, 21.155819>,  <34.075787, 40.918129, 21.582964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727505, 40.935040, 21.155819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.545807, 40.587513, 21.077003>,  <34.436787, 40.378998, 21.029715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.545807, 40.587513, 21.077003>,  <34.727505, 40.935040, 21.155819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545807, 40.587513, 21.077003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034302, 0.203955, -0.978379,
		0.890216, -0.451183, -0.062844,
		-0.454246, -0.868813, -0.197040,
		34.409534, 40.326870, 21.017891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064022, 40.655098, 20.680319>,  <34.727505, 40.935040, 21.155819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064022, 40.655098, 20.680319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.725788, 40.445995, 20.637016>,  <34.522846, 40.320534, 20.611034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.725788, 40.445995, 20.637016>,  <35.064022, 40.655098, 20.680319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725788, 40.445995, 20.637016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030600, 0.154988, -0.987442,
		0.532966, -0.838277, -0.115059,
		-0.845583, -0.522752, -0.108255,
		34.472115, 40.289169, 20.604540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136951, 40.233231, 20.113440>,  <35.064022, 40.655098, 20.680319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136951, 40.233231, 20.113440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.738064, 40.210594, 20.132851>,  <34.498734, 40.197014, 20.144497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.738064, 40.210594, 20.132851>,  <35.136951, 40.233231, 20.113440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738064, 40.210594, 20.132851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055035, 0.119765, -0.991276,
		0.050280, -0.991188, -0.122546,
		-0.997218, -0.056586, 0.048528,
		34.438900, 40.193619, 20.147409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979290, 39.823978, 19.600475>,  <35.136951, 40.233231, 20.113440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979290, 39.823978, 19.600475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.631588, 40.011127, 19.664345>,  <34.422966, 40.123417, 19.702667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.631588, 40.011127, 19.664345>,  <34.979290, 39.823978, 19.600475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631588, 40.011127, 19.664345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154739, 0.049262, -0.986726,
		-0.469524, -0.882424, 0.029576,
		-0.869254, 0.467868, 0.159675,
		34.370811, 40.151489, 19.712248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466908, 39.450542, 19.144148>,  <34.979290, 39.823978, 19.600475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466908, 39.450542, 19.144148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.342091, 39.821850, 19.225084>,  <34.267200, 40.044636, 19.273645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.342091, 39.821850, 19.225084>,  <34.466908, 39.450542, 19.144148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342091, 39.821850, 19.225084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132504, 0.168372, -0.976777,
		-0.940781, -0.331611, 0.070459,
		-0.312046, 0.928270, 0.202341,
		34.248478, 40.100330, 19.285786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985321, 39.033085, 18.822836>,  <34.466908, 39.450542, 19.144148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985321, 39.033085, 18.822836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.689629, 38.798409, 18.690575>,  <33.512211, 38.657604, 18.611217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.689629, 38.798409, 18.690575>,  <33.985321, 39.033085, 18.822836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689629, 38.798409, 18.690575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251727, -0.214676, 0.943688,
		-0.624634, 0.780840, 0.011010,
		-0.739233, -0.586689, -0.330652,
		33.467857, 38.622402, 18.591379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339451, 39.184650, 19.231161>,  <33.985321, 39.033085, 18.822836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339451, 39.184650, 19.231161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.334850, 38.813812, 19.081297>,  <33.332088, 38.591309, 18.991379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.334850, 38.813812, 19.081297>,  <33.339451, 39.184650, 19.231161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334850, 38.813812, 19.081297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393170, -0.340312, 0.854169,
		-0.919394, 0.157130, -0.360590,
		-0.011503, -0.927091, -0.374660,
		33.331398, 38.535686, 18.968899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798820, 38.918228, 19.533674>,  <33.339451, 39.184650, 19.231161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798820, 38.918228, 19.533674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.969563, 38.582962, 19.397861>,  <33.072006, 38.381802, 19.316374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.969563, 38.582962, 19.397861>,  <32.798820, 38.918228, 19.533674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969563, 38.582962, 19.397861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227023, -0.462748, 0.856928,
		-0.875362, -0.288699, -0.387806,
		0.426851, -0.838163, -0.339531,
		33.097618, 38.331512, 19.296001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376610, 38.250996, 19.676191>,  <32.798820, 38.918228, 19.533674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376610, 38.250996, 19.676191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.742413, 38.098480, 19.622091>,  <32.961895, 38.006969, 19.589630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.742413, 38.098480, 19.622091>,  <32.376610, 38.250996, 19.676191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742413, 38.098480, 19.622091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193685, -0.706138, 0.681069,
		-0.355190, -0.596648, -0.719619,
		0.914508, -0.381288, -0.135251,
		33.016766, 37.984093, 19.581516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299324, 37.603043, 19.479092>,  <32.376610, 38.250996, 19.676191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299324, 37.603043, 19.479092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.660789, 37.628860, 19.648436>,  <32.877666, 37.644352, 19.750042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.660789, 37.628860, 19.648436>,  <32.299324, 37.603043, 19.479092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660789, 37.628860, 19.648436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251167, -0.720822, 0.646011,
		0.346863, -0.690108, -0.635167,
		0.903660, 0.064544, 0.423359,
		32.931889, 37.648224, 19.775444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422829, 37.011772, 19.684052>,  <32.299324, 37.603043, 19.479092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422829, 37.011772, 19.684052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.692150, 37.214886, 19.899017>,  <32.853741, 37.336754, 20.027998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.692150, 37.214886, 19.899017>,  <32.422829, 37.011772, 19.684052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692150, 37.214886, 19.899017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077055, -0.674709, 0.734051,
		0.735342, -0.535648, -0.415155,
		0.673302, 0.507789, 0.537416,
		32.894142, 37.367222, 20.060242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886864, 36.536453, 19.971504>,  <32.422829, 37.011772, 19.684052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886864, 36.536453, 19.971504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.952778, 36.850151, 20.210773>,  <32.992325, 37.038368, 20.354336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.952778, 36.850151, 20.210773>,  <32.886864, 36.536453, 19.971504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952778, 36.850151, 20.210773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207965, -0.620455, 0.756165,
		0.964157, -0.000202, -0.265334,
		0.164781, 0.784242, 0.598174,
		33.002213, 37.085423, 20.390226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456730, 36.299641, 20.320511>,  <32.886864, 36.536453, 19.971504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456730, 36.299641, 20.320511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.289486, 36.585796, 20.544443>,  <33.189140, 36.757488, 20.678802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.289486, 36.585796, 20.544443>,  <33.456730, 36.299641, 20.320511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289486, 36.585796, 20.544443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171101, -0.543233, 0.821962,
		0.892139, 0.439455, 0.104726,
		-0.418106, 0.715386, 0.559831,
		33.164055, 36.800411, 20.712393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309364, 36.293789, 20.234570>,  <33.456730, 36.299641, 20.320511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309364, 36.293789, 20.234570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.582615, 36.011242, 20.160400>,  <34.746563, 35.841713, 20.115900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.582615, 36.011242, 20.160400>,  <34.309364, 36.293789, 20.234570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582615, 36.011242, 20.160400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038784, 0.218448, -0.975078,
		0.729272, 0.673290, 0.121831,
		0.683124, -0.706372, -0.185421,
		34.787552, 35.799332, 20.104774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880363, 36.604065, 19.883572>,  <34.309364, 36.293789, 20.234570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880363, 36.604065, 19.883572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.885395, 36.216900, 19.783182>,  <34.888416, 35.984600, 19.722948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.885395, 36.216900, 19.783182>,  <34.880363, 36.604065, 19.883572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885395, 36.216900, 19.783182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139225, 0.250243, -0.958121,
		0.990181, -0.022886, 0.137906,
		0.012583, -0.967913, -0.250972,
		34.889172, 35.926525, 19.707891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405666, 36.602940, 19.412399>,  <34.880363, 36.604065, 19.883572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405666, 36.602940, 19.412399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.229584, 36.247402, 19.361523>,  <35.123936, 36.034081, 19.330997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.229584, 36.247402, 19.361523>,  <35.405666, 36.602940, 19.412399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229584, 36.247402, 19.361523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049883, 0.117227, -0.991851,
		0.896511, -0.442962, -0.007266,
		-0.440204, -0.888843, -0.127192,
		35.097523, 35.980751, 19.323364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716408, 36.339741, 18.877611>,  <35.405666, 36.602940, 19.412399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716408, 36.339741, 18.877611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.385174, 36.115501, 18.878647>,  <35.186432, 35.980957, 18.879269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.385174, 36.115501, 18.878647>,  <35.716408, 36.339741, 18.877611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385174, 36.115501, 18.878647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045416, -0.071687, -0.996393,
		0.558761, -0.824979, 0.084823,
		-0.828084, -0.560598, 0.002589,
		35.136749, 35.947323, 18.879423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867157, 35.749462, 18.511061>,  <35.716408, 36.339741, 18.877611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867157, 35.749462, 18.511061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.469337, 35.786022, 18.490982>,  <35.230644, 35.807957, 18.478935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.469337, 35.786022, 18.490982>,  <35.867157, 35.749462, 18.511061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469337, 35.786022, 18.490982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034658, -0.164277, -0.985805,
		-0.098351, -0.982170, 0.160213,
		-0.994548, 0.091402, -0.050197,
		35.170975, 35.813442, 18.475924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588737, 35.208260, 18.130610>,  <35.867157, 35.749462, 18.511061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588737, 35.208260, 18.130610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.284103, 35.466648, 18.109810>,  <35.101322, 35.621681, 18.097330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.284103, 35.466648, 18.109810>,  <35.588737, 35.208260, 18.130610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284103, 35.466648, 18.109810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030557, -0.115945, -0.992785,
		-0.647339, -0.754506, 0.108042,
		-0.761590, 0.645970, -0.052000,
		35.055626, 35.660439, 18.094210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038078, 34.892487, 17.769670>,  <35.588737, 35.208260, 18.130610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038078, 34.892487, 17.769670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.973606, 35.284428, 17.722509>,  <34.934921, 35.519592, 17.694212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.973606, 35.284428, 17.722509>,  <35.038078, 34.892487, 17.769670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973606, 35.284428, 17.722509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015521, -0.116934, -0.993018,
		-0.986803, -0.161884, 0.003638,
		-0.161179, 0.979857, -0.117903,
		34.925251, 35.578384, 17.687138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500710, 34.950321, 17.248545>,  <35.038078, 34.892487, 17.769670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500710, 34.950321, 17.248545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.663914, 35.312836, 17.292665>,  <34.761837, 35.530346, 17.319138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.663914, 35.312836, 17.292665>,  <34.500710, 34.950321, 17.248545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663914, 35.312836, 17.292665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077306, 0.154676, -0.984936,
		-0.909697, 0.393340, 0.133171,
		0.408013, 0.906288, 0.110301,
		34.786316, 35.584721, 17.325756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263939, 35.311474, 16.706804>,  <34.500710, 34.950321, 17.248545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263939, 35.311474, 16.706804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.573933, 35.538258, 16.818483>,  <34.759930, 35.674328, 16.885490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.573933, 35.538258, 16.818483>,  <34.263939, 35.311474, 16.706804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573933, 35.538258, 16.818483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183950, 0.220284, -0.957934,
		-0.604614, 0.793744, 0.066425,
		0.774987, 0.566961, 0.279196,
		34.806427, 35.708347, 16.902243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.407928, 32.759689, 33.216690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.674412, 33.042896, 33.122978>,  <35.834301, 33.212818, 33.066750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.674412, 33.042896, 33.122978>,  <35.407928, 32.759689, 33.216690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674412, 33.042896, 33.122978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258896, -0.075044, -0.962986,
		-0.699388, 0.702201, 0.133307,
		0.666205, 0.708013, -0.234282,
		35.874275, 33.255299, 33.052692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078297, 33.239811, 32.692314>,  <35.407928, 32.759689, 33.216690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078297, 33.239811, 32.692314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466469, 33.325668, 32.648151>,  <35.699371, 33.377182, 32.621655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466469, 33.325668, 32.648151>,  <35.078297, 33.239811, 32.692314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466469, 33.325668, 32.648151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104608, -0.038218, -0.993779,
		-0.217528, 0.975945, -0.014634,
		0.970432, 0.214643, -0.110405,
		35.757599, 33.390060, 32.615028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100193, 33.774242, 32.162228>,  <35.078297, 33.239811, 32.692314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100193, 33.774242, 32.162228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.481476, 33.653328, 32.163704>,  <35.710247, 33.580780, 32.164589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.481476, 33.653328, 32.163704>,  <35.100193, 33.774242, 32.162228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481476, 33.653328, 32.163704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029732, 0.081600, -0.996222,
		0.300840, 0.949719, 0.086769,
		0.953211, -0.302283, 0.003689,
		35.767441, 33.562645, 32.164810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425961, 34.304028, 31.791187>,  <35.100193, 33.774242, 32.162228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425961, 34.304028, 31.791187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638367, 33.965839, 31.768574>,  <35.765812, 33.762924, 31.755005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.638367, 33.965839, 31.768574>,  <35.425961, 34.304028, 31.791187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638367, 33.965839, 31.768574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079574, 0.016669, -0.996689,
		0.843617, 0.533757, -0.058426,
		0.531016, -0.845473, -0.056535,
		35.797672, 33.712196, 31.751614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949234, 34.463699, 31.337982>,  <35.425961, 34.304028, 31.791187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949234, 34.463699, 31.337982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.923748, 34.064621, 31.328672>,  <35.908455, 33.825172, 31.323086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.923748, 34.064621, 31.328672>,  <35.949234, 34.463699, 31.337982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923748, 34.064621, 31.328672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073944, 0.027977, -0.996870,
		0.995225, -0.061794, -0.075556,
		-0.063715, -0.997697, -0.023274,
		35.904633, 33.765312, 31.321690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406662, 34.258114, 30.685484>,  <35.949234, 34.463699, 31.337982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406662, 34.258114, 30.685484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196648, 33.924675, 30.754128>,  <36.070641, 33.724609, 30.795313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196648, 33.924675, 30.754128>,  <36.406662, 34.258114, 30.685484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196648, 33.924675, 30.754128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125312, -0.123721, -0.984373,
		0.841804, -0.538335, -0.039502,
		-0.525036, -0.833600, 0.171609,
		36.039139, 33.674595, 30.805611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620010, 33.743145, 30.174322>,  <36.406662, 34.258114, 30.685484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620010, 33.743145, 30.174322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.264690, 33.626404, 30.316166>,  <36.051498, 33.556358, 30.401272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.264690, 33.626404, 30.316166>,  <36.620010, 33.743145, 30.174322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264690, 33.626404, 30.316166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254550, -0.329803, -0.909084,
		0.382275, -0.897802, 0.218670,
		-0.888296, -0.291858, 0.354611,
		35.998203, 33.538845, 30.422550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585232, 33.017754, 30.010284>,  <36.620010, 33.743145, 30.174322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585232, 33.017754, 30.010284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.220165, 33.171455, 30.065975>,  <36.001125, 33.263676, 30.099390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.220165, 33.171455, 30.065975>,  <36.585232, 33.017754, 30.010284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220165, 33.171455, 30.065975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302539, -0.406155, -0.862269,
		-0.274784, -0.829088, 0.486937,
		-0.912669, 0.384255, 0.139227,
		35.946365, 33.286732, 30.107742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106094, 32.516754, 29.695778>,  <36.585232, 33.017754, 30.010284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106094, 32.516754, 29.695778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.902470, 32.860065, 29.721729>,  <35.780293, 33.066051, 29.737301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.902470, 32.860065, 29.721729>,  <36.106094, 32.516754, 29.695778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902470, 32.860065, 29.721729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265651, -0.084972, -0.960317,
		-0.818708, -0.506098, 0.271259,
		-0.509064, 0.858280, 0.064879,
		35.749752, 33.117550, 29.741194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493359, 32.340855, 29.469578>,  <36.106094, 32.516754, 29.695778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493359, 32.340855, 29.469578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.519375, 32.737461, 29.424561>,  <35.534985, 32.975426, 29.397551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.519375, 32.737461, 29.424561>,  <35.493359, 32.340855, 29.469578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519375, 32.737461, 29.424561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189621, -0.098446, -0.976910,
		-0.979701, 0.084877, 0.181609,
		0.065038, 0.991516, -0.112542,
		35.538887, 33.034916, 29.390799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848278, 32.579872, 29.088278>,  <35.493359, 32.340855, 29.469578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848278, 32.579872, 29.088278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171997, 32.809200, 29.037144>,  <35.366230, 32.946796, 29.006462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.171997, 32.809200, 29.037144>,  <34.848278, 32.579872, 29.088278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171997, 32.809200, 29.037144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151824, -0.006073, -0.988389,
		-0.567435, 0.819312, 0.082128,
		0.809300, 0.573316, -0.127837,
		35.414787, 32.981194, 28.998793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545094, 33.084526, 28.601046>,  <34.848278, 32.579872, 29.088278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545094, 33.084526, 28.601046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940090, 33.103840, 28.541014>,  <35.177090, 33.115429, 28.504995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940090, 33.103840, 28.541014>,  <34.545094, 33.084526, 28.601046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940090, 33.103840, 28.541014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156161, 0.168790, -0.973203,
		-0.021655, 0.984469, 0.174219,
		0.987494, 0.048281, -0.150080,
		35.236340, 33.118324, 28.495989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106110, 33.644951, 29.123972>,  <34.545094, 33.084526, 28.601046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106110, 33.644951, 29.123972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862297, 33.962055, 29.124887>,  <33.716007, 34.152317, 29.125437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.862297, 33.962055, 29.124887>,  <34.106110, 33.644951, 29.123972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862297, 33.962055, 29.124887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046065, 0.032536, 0.998408,
		0.791421, 0.608669, -0.056350,
		-0.609533, 0.792757, 0.002289,
		33.679436, 34.199883, 29.125574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430141, 34.237514, 29.524960>,  <34.106110, 33.644951, 29.123972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430141, 34.237514, 29.524960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.035759, 34.301758, 29.543268>,  <33.799129, 34.340305, 29.554255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.035759, 34.301758, 29.543268>,  <34.430141, 34.237514, 29.524960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035759, 34.301758, 29.543268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061016, 0.091296, 0.993953,
		0.155458, 0.982787, -0.099814,
		-0.985956, 0.160608, 0.045773,
		33.739971, 34.349941, 29.556999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309990, 34.860981, 29.923298>,  <34.430141, 34.237514, 29.524960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309990, 34.860981, 29.923298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966618, 34.656120, 29.934584>,  <33.760593, 34.533203, 29.941355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966618, 34.656120, 29.934584>,  <34.309990, 34.860981, 29.923298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966618, 34.656120, 29.934584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019279, 0.022754, 0.999555,
		-0.512562, 0.858596, -0.009659,
		-0.858434, -0.512148, 0.028216,
		33.709087, 34.502476, 29.943048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876633, 35.300652, 30.244524>,  <34.309990, 34.860981, 29.923298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876633, 35.300652, 30.244524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.704407, 34.944294, 30.302395>,  <33.601070, 34.730480, 30.337116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.704407, 34.944294, 30.302395>,  <33.876633, 35.300652, 30.244524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704407, 34.944294, 30.302395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249333, 0.271462, 0.929592,
		-0.867438, 0.364174, -0.339010,
		-0.430562, -0.890890, 0.144676,
		33.575237, 34.677029, 30.345798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245388, 35.487381, 30.604414>,  <33.876633, 35.300652, 30.244524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245388, 35.487381, 30.604414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.353477, 35.111683, 30.689079>,  <33.418331, 34.886265, 30.739878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.353477, 35.111683, 30.689079>,  <33.245388, 35.487381, 30.604414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353477, 35.111683, 30.689079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078336, 0.197662, 0.977135,
		-0.959606, -0.280625, -0.020163,
		0.270223, -0.939244, 0.211661,
		33.434544, 34.829910, 30.752577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740654, 35.350349, 31.031294>,  <33.245388, 35.487381, 30.604414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740654, 35.350349, 31.031294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036358, 35.086998, 31.087908>,  <33.213779, 34.928986, 31.121876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036358, 35.086998, 31.087908>,  <32.740654, 35.350349, 31.031294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036358, 35.086998, 31.087908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115236, 0.083399, 0.989831,
		-0.663490, -0.748050, -0.014216,
		0.739258, -0.658381, 0.141536,
		33.258137, 34.889484, 31.130369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458672, 34.753483, 31.440733>,  <32.740654, 35.350349, 31.031294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458672, 34.753483, 31.440733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.852745, 34.748173, 31.509121>,  <33.089191, 34.744987, 31.550154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.852745, 34.748173, 31.509121>,  <32.458672, 34.753483, 31.440733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852745, 34.748173, 31.509121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165332, 0.191111, 0.967544,
		-0.045518, -0.981479, 0.186086,
		0.985187, -0.013275, 0.170969,
		33.148300, 34.744190, 31.560411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561127, 34.495140, 32.064533>,  <32.458672, 34.753483, 31.440733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561127, 34.495140, 32.064533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.916149, 34.673698, 32.018959>,  <33.129162, 34.780834, 31.991615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.916149, 34.673698, 32.018959>,  <32.561127, 34.495140, 32.064533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916149, 34.673698, 32.018959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055302, 0.348742, 0.935586,
		0.457375, -0.824081, 0.334213,
		0.887553, 0.446397, -0.113932,
		33.182415, 34.807617, 31.984779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945175, 34.230919, 32.627216>,  <32.561127, 34.495140, 32.064533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945175, 34.230919, 32.627216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.080818, 34.586868, 32.505150>,  <33.162205, 34.800438, 32.431911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.080818, 34.586868, 32.505150>,  <32.945175, 34.230919, 32.627216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080818, 34.586868, 32.505150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061954, 0.344805, 0.936627,
		0.938704, -0.298714, 0.172059,
		0.339111, 0.889876, -0.305164,
		33.182552, 34.853832, 32.413601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423607, 34.488914, 33.171398>,  <32.945175, 34.230919, 32.627216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423607, 34.488914, 33.171398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379642, 34.819302, 32.950237>,  <33.353264, 35.017532, 32.817539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379642, 34.819302, 32.950237>,  <33.423607, 34.488914, 33.171398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379642, 34.819302, 32.950237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051582, 0.550785, 0.833051,
		0.992601, 0.120085, -0.017935,
		-0.109916, 0.825963, -0.552905,
		33.346668, 35.067089, 32.784367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835384, 34.928421, 33.477734>,  <33.423607, 34.488914, 33.171398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835384, 34.928421, 33.477734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.598213, 35.173145, 33.268307>,  <33.455910, 35.319981, 33.142651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.598213, 35.173145, 33.268307>,  <33.835384, 34.928421, 33.477734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598213, 35.173145, 33.268307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063726, 0.612501, 0.787897,
		0.802728, 0.500534, -0.324183,
		-0.592931, 0.611808, -0.523568,
		33.420334, 35.356689, 33.111237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082920, 35.629639, 33.691475>,  <33.835384, 34.928421, 33.477734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082920, 35.629639, 33.691475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.707726, 35.665401, 33.557499>,  <33.482609, 35.686859, 33.477112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.707726, 35.665401, 33.557499>,  <34.082920, 35.629639, 33.691475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707726, 35.665401, 33.557499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145169, 0.776079, 0.613700,
		0.314813, 0.624266, -0.714972,
		-0.937987, 0.089409, -0.334944,
		33.426331, 35.692223, 33.457016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013618, 36.340187, 33.537682>,  <34.082920, 35.629639, 33.691475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013618, 36.340187, 33.537682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.637775, 36.203869, 33.550323>,  <33.412270, 36.122078, 33.557907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.637775, 36.203869, 33.550323>,  <34.013618, 36.340187, 33.537682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637775, 36.203869, 33.550323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253928, 0.756043, 0.603257,
		-0.229480, 0.558799, -0.796920,
		-0.939606, -0.340796, 0.031603,
		33.355892, 36.101631, 33.559803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594501, 36.867287, 33.448578>,  <34.013618, 36.340187, 33.537682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594501, 36.867287, 33.448578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.368706, 36.595852, 33.636566>,  <33.233227, 36.432991, 33.749359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.368706, 36.595852, 33.636566>,  <33.594501, 36.867287, 33.448578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368706, 36.595852, 33.636566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244815, 0.681378, 0.689775,
		-0.788301, 0.274312, -0.550758,
		-0.564488, -0.678584, 0.469975,
		33.199360, 36.392277, 33.777557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850063, 36.855629, 34.173618>,  <33.594501, 36.867287, 33.448578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850063, 36.855629, 34.173618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685020, 37.083450, 34.457973>,  <33.585995, 37.220142, 34.628586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.685020, 37.083450, 34.457973>,  <33.850063, 36.855629, 34.173618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685020, 37.083450, 34.457973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910902, 0.260634, 0.319886,
		-0.003090, 0.779538, -0.626347,
		-0.412611, 0.569552, 0.710889,
		33.561237, 37.254314, 34.671242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138462, 37.511932, 34.120358>,  <33.850063, 36.855629, 34.173618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138462, 37.511932, 34.120358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.034748, 37.462360, 34.503487>,  <33.972519, 37.432617, 34.733364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.034748, 37.462360, 34.503487>,  <34.138462, 37.511932, 34.120358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034748, 37.462360, 34.503487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905131, 0.314783, 0.285745,
		-0.336916, 0.941039, 0.030552,
		-0.259280, -0.123926, 0.957818,
		33.956963, 37.425182, 34.790833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387409, 38.274544, 34.155331>,  <34.138462, 37.511932, 34.120358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387409, 38.274544, 34.155331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754440, 38.268013, 33.996445>,  <34.974659, 38.264095, 33.901112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754440, 38.268013, 33.996445>,  <34.387409, 38.274544, 34.155331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754440, 38.268013, 33.996445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339802, 0.486394, -0.804957,
		0.206348, 0.873587, 0.440756,
		0.917581, -0.016331, -0.397213,
		35.029716, 38.263115, 33.877281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652596, 39.065926, 33.880623>,  <34.387409, 38.274544, 34.155331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652596, 39.065926, 33.880623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.854542, 38.773346, 33.697281>,  <34.975708, 38.597797, 33.587276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.854542, 38.773346, 33.697281>,  <34.652596, 39.065926, 33.880623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854542, 38.773346, 33.697281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167581, 0.437842, -0.883296,
		0.846776, 0.522756, 0.098474,
		0.504864, -0.731451, -0.458357,
		35.006001, 38.553909, 33.559772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877914, 39.442108, 33.428467>,  <34.652596, 39.065926, 33.880623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877914, 39.442108, 33.428467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957272, 39.083931, 33.269054>,  <35.004887, 38.869026, 33.173409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957272, 39.083931, 33.269054>,  <34.877914, 39.442108, 33.428467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957272, 39.083931, 33.269054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096335, 0.386827, -0.917107,
		0.975376, 0.220342, -0.009517,
		0.198396, -0.895441, -0.398529,
		35.016788, 38.815300, 33.149494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415104, 39.601646, 32.889153>,  <34.877914, 39.442108, 33.428467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415104, 39.601646, 32.889153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.266544, 39.244175, 32.788433>,  <35.177410, 39.029694, 32.728001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.266544, 39.244175, 32.788433>,  <35.415104, 39.601646, 32.889153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266544, 39.244175, 32.788433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096395, 0.306846, -0.946865,
		0.923456, -0.327393, -0.200108,
		-0.371400, -0.893677, -0.251800,
		35.155125, 38.976070, 32.712894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857014, 39.288162, 32.369133>,  <35.415104, 39.601646, 32.889153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857014, 39.288162, 32.369133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.512524, 39.086697, 32.341949>,  <35.305828, 38.965816, 32.325642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.512524, 39.086697, 32.341949>,  <35.857014, 39.288162, 32.369133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512524, 39.086697, 32.341949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033942, 0.190417, -0.981116,
		0.507091, -0.842654, -0.181087,
		-0.861224, -0.503662, -0.067957,
		35.254158, 38.935596, 32.321564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914799, 38.742619, 31.926453>,  <35.857014, 39.288162, 32.369133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914799, 38.742619, 31.926453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520943, 38.812447, 31.926771>,  <35.284630, 38.854343, 31.926962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520943, 38.812447, 31.926771>,  <35.914799, 38.742619, 31.926453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520943, 38.812447, 31.926771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002331, -0.008602, -0.999960,
		-0.174556, -0.984607, 0.008877,
		-0.984644, 0.174570, 0.000794,
		35.225548, 38.864819, 31.927010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796192, 38.467312, 31.319307>,  <35.914799, 38.742619, 31.926453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796192, 38.467312, 31.319307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476063, 38.682781, 31.424623>,  <35.283985, 38.812061, 31.487814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.476063, 38.682781, 31.424623>,  <35.796192, 38.467312, 31.319307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476063, 38.682781, 31.424623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225006, 0.137204, -0.964649,
		-0.555752, -0.831270, 0.011397,
		-0.800320, 0.538670, 0.263292,
		35.235966, 38.844383, 31.503611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349056, 38.126041, 31.019243>,  <35.796192, 38.467312, 31.319307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349056, 38.126041, 31.019243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197094, 38.491295, 31.078379>,  <35.105915, 38.710445, 31.113861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197094, 38.491295, 31.078379>,  <35.349056, 38.126041, 31.019243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197094, 38.491295, 31.078379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334839, 0.013234, -0.942182,
		-0.862296, -0.407444, 0.300726,
		-0.379907, 0.913134, 0.147840,
		35.083122, 38.765236, 31.122730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639145, 38.105568, 30.745449>,  <35.349056, 38.126041, 31.019243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639145, 38.105568, 30.745449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739315, 38.492641, 30.757275>,  <34.799416, 38.724888, 30.764370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.739315, 38.492641, 30.757275>,  <34.639145, 38.105568, 30.745449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739315, 38.492641, 30.757275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305927, 0.108066, -0.945902,
		-0.918530, 0.227830, 0.323103,
		0.250422, 0.967685, 0.029563,
		34.814442, 38.782948, 30.766144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094131, 38.451691, 30.562605>,  <34.639145, 38.105568, 30.745449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094131, 38.451691, 30.562605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.387241, 38.717121, 30.502327>,  <34.563107, 38.876381, 30.466160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.387241, 38.717121, 30.502327>,  <34.094131, 38.451691, 30.562605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387241, 38.717121, 30.502327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240649, 0.045567, -0.969542,
		-0.636500, 0.746718, 0.193080,
		0.732772, 0.663578, -0.150694,
		34.607075, 38.916195, 30.457119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959129, 38.742538, 29.925364>,  <34.094131, 38.451691, 30.562605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959129, 38.742538, 29.925364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315929, 38.917847, 29.969641>,  <34.530010, 39.023033, 29.996208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315929, 38.917847, 29.969641>,  <33.959129, 38.742538, 29.925364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315929, 38.917847, 29.969641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110935, 0.025148, -0.993510,
		-0.438213, 0.898490, -0.026188,
		0.892000, 0.438274, 0.110694,
		34.583530, 39.049328, 30.002850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914017, 39.411049, 29.500919>,  <33.959129, 38.742538, 29.925364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914017, 39.411049, 29.500919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.286808, 39.271839, 29.541494>,  <34.510483, 39.188313, 29.565840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.286808, 39.271839, 29.541494>,  <33.914017, 39.411049, 29.500919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286808, 39.271839, 29.541494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153540, 0.125489, -0.980142,
		0.328386, 0.929048, 0.170390,
		0.931980, -0.348027, 0.101437,
		34.566402, 39.167431, 29.571926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275028, 39.890121, 29.199602>,  <33.914017, 39.411049, 29.500919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275028, 39.890121, 29.199602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.512722, 39.568485, 29.206768>,  <34.655338, 39.375504, 29.211067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.512722, 39.568485, 29.206768>,  <34.275028, 39.890121, 29.199602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512722, 39.568485, 29.206768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168019, 0.102321, -0.980459,
		0.786547, 0.585632, 0.195905,
		0.594234, -0.804093, 0.017917,
		34.690990, 39.327259, 29.212143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803177, 40.003506, 28.824049>,  <34.275028, 39.890121, 29.199602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803177, 40.003506, 28.824049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.810711, 39.603725, 28.834908>,  <34.815231, 39.363857, 28.841423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.810711, 39.603725, 28.834908>,  <34.803177, 40.003506, 28.824049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810711, 39.603725, 28.834908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365161, -0.018399, -0.930763,
		0.930754, 0.027449, 0.364615,
		0.018840, -0.999454, 0.027148,
		34.816364, 39.303890, 28.843052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509060, 39.790733, 28.582174>,  <34.803177, 40.003506, 28.824049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509060, 39.790733, 28.582174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.251804, 39.493252, 28.509207>,  <35.097450, 39.314762, 28.465427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.251804, 39.493252, 28.509207>,  <35.509060, 39.790733, 28.582174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251804, 39.493252, 28.509207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479106, -0.204972, -0.853489,
		0.597355, -0.636306, 0.488140,
		-0.643136, -0.743707, -0.182417,
		35.058865, 39.270142, 28.454481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845299, 39.364182, 28.126038>,  <35.509060, 39.790733, 28.582174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845299, 39.364182, 28.126038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494572, 39.172874, 28.106207>,  <35.284138, 39.058090, 28.094309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494572, 39.172874, 28.106207>,  <35.845299, 39.364182, 28.126038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494572, 39.172874, 28.106207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247615, -0.360745, -0.899194,
		0.412171, -0.800701, 0.434733,
		-0.876813, -0.478268, -0.049577,
		35.231529, 39.029392, 28.091333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979912, 38.714699, 27.712999>,  <35.845299, 39.364182, 28.126038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979912, 38.714699, 27.712999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.584412, 38.773376, 27.701324>,  <35.347111, 38.808582, 27.694321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.584412, 38.773376, 27.701324>,  <35.979912, 38.714699, 27.712999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584412, 38.773376, 27.701324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002789, -0.213182, -0.977009,
		-0.149537, -0.965938, 0.211193,
		-0.988752, 0.146688, -0.029184,
		35.287785, 38.817383, 27.692570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790749, 38.211361, 27.254827>,  <35.979912, 38.714699, 27.712999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790749, 38.211361, 27.254827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.488731, 38.473431, 27.244537>,  <35.307522, 38.630672, 27.238363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.488731, 38.473431, 27.244537>,  <35.790749, 38.211361, 27.254827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488731, 38.473431, 27.244537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043969, -0.089743, -0.994994,
		-0.654202, -0.750130, 0.096566,
		-0.755041, 0.655173, -0.025728,
		35.262218, 38.669983, 27.236818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262154, 37.831688, 26.871267>,  <35.790749, 38.211361, 27.254827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262154, 37.831688, 26.871267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.217018, 38.228970, 26.859844>,  <35.189938, 38.467339, 26.852989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.217018, 38.228970, 26.859844>,  <35.262154, 37.831688, 26.871267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217018, 38.228970, 26.859844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094052, -0.039290, -0.994792,
		-0.989152, -0.109565, 0.097846,
		-0.112839, 0.993203, -0.028559,
		35.183167, 38.526932, 26.851276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906662, 37.946442, 26.281298>,  <35.262154, 37.831688, 26.871267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906662, 37.946442, 26.281298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.021492, 38.322468, 26.354902>,  <35.090389, 38.548084, 26.399065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.021492, 38.322468, 26.354902>,  <34.906662, 37.946442, 26.281298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021492, 38.322468, 26.354902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077293, 0.168738, -0.982626,
		-0.954785, 0.296309, -0.024221,
		0.287073, 0.940068, 0.184011,
		35.107613, 38.604488, 26.410105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432926, 38.519028, 25.967638>,  <34.906662, 37.946442, 26.281298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432926, 38.519028, 25.967638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788719, 38.689884, 26.032587>,  <35.002197, 38.792397, 26.071556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788719, 38.689884, 26.032587>,  <34.432926, 38.519028, 25.967638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788719, 38.689884, 26.032587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008824, 0.371314, -0.928465,
		-0.456877, 0.824424, 0.334048,
		0.889486, 0.427142, 0.162371,
		35.055565, 38.818027, 26.081299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421986, 39.191891, 25.627605>,  <34.432926, 38.519028, 25.967638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421986, 39.191891, 25.627605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814091, 39.137810, 25.685295>,  <35.049355, 39.105362, 25.719908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814091, 39.137810, 25.685295>,  <34.421986, 39.191891, 25.627605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814091, 39.137810, 25.685295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178558, 0.292474, -0.939455,
		0.084837, 0.946667, 0.310844,
		0.980265, -0.135204, 0.144223,
		35.108170, 39.097248, 25.728561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746918, 39.808456, 25.443333>,  <34.421986, 39.191891, 25.627605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746918, 39.808456, 25.443333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.011189, 39.510437, 25.406654>,  <35.169750, 39.331623, 25.384647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.011189, 39.510437, 25.406654>,  <34.746918, 39.808456, 25.443333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011189, 39.510437, 25.406654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160988, 0.259933, -0.952112,
		0.733206, 0.614275, 0.291675,
		0.660675, -0.745051, -0.091693,
		35.209393, 39.286922, 25.379147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344059, 40.086285, 24.963293>,  <34.746918, 39.808456, 25.443333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344059, 40.086285, 24.963293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.383675, 39.688992, 24.939007>,  <35.407444, 39.450615, 24.924435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.383675, 39.688992, 24.939007>,  <35.344059, 40.086285, 24.963293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383675, 39.688992, 24.939007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049519, 0.065858, -0.996599,
		0.993851, 0.095695, 0.055706,
		0.099038, -0.993230, -0.060714,
		35.413387, 39.391022, 24.920792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697487, 40.093845, 24.404709>,  <35.344059, 40.086285, 24.963293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697487, 40.093845, 24.404709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.580196, 39.715504, 24.460394>,  <35.509823, 39.488499, 24.493805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.580196, 39.715504, 24.460394>,  <35.697487, 40.093845, 24.404709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580196, 39.715504, 24.460394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015577, -0.140867, -0.989906,
		0.955918, -0.292431, 0.026572,
		-0.293222, -0.945855, 0.139212,
		35.492229, 39.431747, 24.502157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214874, 39.618824, 23.995808>,  <35.697487, 40.093845, 24.404709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214874, 39.618824, 23.995808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.857815, 39.444904, 24.043344>,  <35.643578, 39.340553, 24.071867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.857815, 39.444904, 24.043344>,  <36.214874, 39.618824, 23.995808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857815, 39.444904, 24.043344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113887, -0.037541, -0.992784,
		0.436127, -0.899743, -0.016007,
		-0.892650, -0.434803, 0.118842,
		35.590019, 39.314465, 24.078997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802750, 39.194801, 23.736027>,  <36.214874, 39.618824, 23.995808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802750, 39.194801, 23.736027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.133522, 39.369579, 23.594456>,  <37.331985, 39.474445, 23.509514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.133522, 39.369579, 23.594456>,  <36.802750, 39.194801, 23.736027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133522, 39.369579, 23.594456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451582, -0.141000, 0.881018,
		0.335057, -0.888366, -0.313915,
		0.826929, 0.436950, -0.353927,
		37.381599, 39.500664, 23.488277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199162, 38.717087, 23.874243>,  <36.802750, 39.194801, 23.736027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199162, 38.717087, 23.874243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.374302, 39.075226, 23.841648>,  <37.479385, 39.290108, 23.822090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.374302, 39.075226, 23.841648>,  <37.199162, 38.717087, 23.874243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374302, 39.075226, 23.841648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390664, -0.107841, 0.914195,
		0.809736, -0.432111, -0.396999,
		0.437847, 0.895349, -0.081488,
		37.505657, 39.343830, 23.817202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954323, 38.555073, 24.221321>,  <37.199162, 38.717087, 23.874243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954323, 38.555073, 24.221321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.909462, 38.952549, 24.222261>,  <37.882545, 39.191032, 24.222826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.909462, 38.952549, 24.222261>,  <37.954323, 38.555073, 24.221321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909462, 38.952549, 24.222261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303288, 0.031977, 0.952362,
		0.946276, 0.107518, -0.304960,
		-0.112148, 0.993689, 0.002349,
		37.875816, 39.250656, 24.222967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574711, 38.812160, 24.415899>,  <37.954323, 38.555073, 24.221321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574711, 38.812160, 24.415899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.288288, 39.076775, 24.505022>,  <38.116436, 39.235542, 24.558495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.288288, 39.076775, 24.505022>,  <38.574711, 38.812160, 24.415899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288288, 39.076775, 24.505022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436973, 0.175889, 0.882110,
		0.544356, 0.728997, -0.415018,
		-0.716052, 0.661534, 0.222806,
		38.073471, 39.275234, 24.571863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923866, 39.391823, 24.665285>,  <38.574711, 38.812160, 24.415899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923866, 39.391823, 24.665285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.552940, 39.426971, 24.810812>,  <38.330383, 39.448059, 24.898129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.552940, 39.426971, 24.810812>,  <38.923866, 39.391823, 24.665285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552940, 39.426971, 24.810812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374003, 0.180353, 0.909722,
		0.014320, 0.979669, -0.200107,
		-0.927317, 0.087868, 0.363817,
		38.274746, 39.453331, 24.919956>
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
