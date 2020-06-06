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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.356675, 14.857187, 15.205006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.144098, 14.856916, 14.866168>,  <4.016551, 14.856754, 14.662866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.144098, 14.856916, 14.866168>,  <4.356675, 14.857187, 15.205006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.144098, 14.856916, 14.866168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249389, 0.955555, -0.157223,
		0.809551, -0.294811, -0.507655,
		-0.531444, -0.000677, -0.847093,
		3.984665, 14.856713, 14.612040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.759269, 15.172245, 14.514572>,  <4.356675, 14.857187, 15.205006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.759269, 15.172245, 14.514572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.363929, 15.227018, 14.488008>,  <4.126724, 15.259882, 14.472069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.363929, 15.227018, 14.488008>,  <4.759269, 15.172245, 14.514572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.363929, 15.227018, 14.488008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150004, 0.950174, -0.273253,
		0.025685, -0.280033, -0.959647,
		-0.988352, 0.136932, -0.066412,
		4.067423, 15.268098, 14.468084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.488060, 15.325726, 13.843612>,  <4.759269, 15.172245, 14.514572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.488060, 15.325726, 13.843612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.277887, 15.490149, 14.141592>,  <4.151783, 15.588802, 14.320380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.277887, 15.490149, 14.141592>,  <4.488060, 15.325726, 13.843612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.277887, 15.490149, 14.141592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217763, 0.911360, -0.349287,
		-0.822496, -0.021304, -0.568372,
		-0.525433, 0.411058, 0.744951,
		4.120257, 15.613466, 14.365077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.937727, 15.945555, 13.616219>,  <4.488060, 15.325726, 13.843612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.937727, 15.945555, 13.616219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.079662, 15.984282, 13.988179>,  <4.164824, 16.007517, 14.211355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.079662, 15.984282, 13.988179>,  <3.937727, 15.945555, 13.616219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.079662, 15.984282, 13.988179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446646, 0.856227, -0.259580,
		-0.821338, 0.507446, 0.260579,
		0.354838, 0.096817, 0.929901,
		4.186114, 16.013327, 14.267150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.862164, 16.630348, 13.857630>,  <3.937727, 15.945555, 13.616219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.862164, 16.630348, 13.857630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.164306, 16.485983, 14.076420>,  <4.345592, 16.399364, 14.207694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.164306, 16.485983, 14.076420>,  <3.862164, 16.630348, 13.857630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.164306, 16.485983, 14.076420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559069, 0.790357, -0.250555,
		-0.341877, 0.495054, 0.798775,
		0.755356, -0.360912, 0.546974,
		4.390913, 16.377708, 14.240512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.113573, 17.270973, 14.190502>,  <3.862164, 16.630348, 13.857630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.113573, 17.270973, 14.190502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.406631, 16.998960, 14.201734>,  <4.582465, 16.835752, 14.208472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.406631, 16.998960, 14.201734>,  <4.113573, 17.270973, 14.190502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.406631, 16.998960, 14.201734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639455, 0.673628, -0.370571,
		0.233086, 0.289451, 0.928380,
		0.732645, -0.680032, 0.028077,
		4.626424, 16.794950, 14.210156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.749457, 17.530956, 14.675158>,  <4.113573, 17.270973, 14.190502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.749457, 17.530956, 14.675158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.831935, 17.277695, 14.376735>,  <4.881422, 17.125738, 14.197680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.831935, 17.277695, 14.376735>,  <4.749457, 17.530956, 14.675158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.831935, 17.277695, 14.376735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582801, 0.691920, -0.426134,
		0.786020, -0.346936, 0.511672,
		0.206195, -0.633152, -0.746058,
		4.893794, 17.087749, 14.152918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.400840, 17.670427, 14.620240>,  <4.749457, 17.530956, 14.675158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.400840, 17.670427, 14.620240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.335143, 17.472694, 14.278794>,  <5.295725, 17.354053, 14.073927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.335143, 17.472694, 14.278794>,  <5.400840, 17.670427, 14.620240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.335143, 17.472694, 14.278794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436831, 0.739436, -0.512262,
		0.884423, -0.457020, 0.094494,
		-0.164241, -0.494334, -0.853615,
		5.285871, 17.324394, 14.022710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.009842, 17.836163, 14.280105>,  <5.400840, 17.670427, 14.620240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.009842, 17.836163, 14.280105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.772972, 17.700937, 13.987518>,  <5.630850, 17.619802, 13.811967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.772972, 17.700937, 13.987518>,  <6.009842, 17.836163, 14.280105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.772972, 17.700937, 13.987518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467755, 0.594938, -0.653647,
		0.656150, -0.729220, -0.194178,
		-0.592177, -0.338062, -0.731465,
		5.595320, 17.599518, 13.768079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.536078, 17.626482, 13.722322>,  <6.009842, 17.836163, 14.280105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.536078, 17.626482, 13.722322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.172626, 17.687490, 13.566821>,  <5.954554, 17.724096, 13.473521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.172626, 17.687490, 13.566821>,  <6.536078, 17.626482, 13.722322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.172626, 17.687490, 13.566821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405570, 0.544138, -0.734457,
		0.099513, -0.825015, -0.556279,
		-0.908631, 0.152522, -0.388750,
		5.900036, 17.733248, 13.450196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.529025, 17.598494, 13.005462>,  <6.536078, 17.626482, 13.722322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.529025, 17.598494, 13.005462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.182090, 17.796097, 13.029740>,  <5.973930, 17.914660, 13.044308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.182090, 17.796097, 13.029740>,  <6.529025, 17.598494, 13.005462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.182090, 17.796097, 13.029740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362817, 0.711008, -0.602355,
		-0.340724, -0.500422, -0.795918,
		-0.867336, 0.494009, 0.060696,
		5.921890, 17.944300, 13.047949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.364922, 17.774263, 12.260141>,  <6.529025, 17.598494, 13.005462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.364922, 17.774263, 12.260141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.183361, 18.014400, 12.523522>,  <6.074424, 18.158484, 12.681551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.183361, 18.014400, 12.523522>,  <6.364922, 17.774263, 12.260141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.183361, 18.014400, 12.523522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370825, 0.799200, -0.473041,
		-0.810223, 0.029456, -0.585382,
		-0.453903, 0.600343, 0.658453,
		6.047190, 18.194504, 12.721058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.010767, 18.121065, 11.770545>,  <6.364922, 17.774263, 12.260141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.010767, 18.121065, 11.770545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.006322, 18.346306, 12.101070>,  <6.003654, 18.481449, 12.299386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.006322, 18.346306, 12.101070>,  <6.010767, 18.121065, 11.770545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.006322, 18.346306, 12.101070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376155, 0.768021, -0.518316,
		-0.926490, 0.305062, -0.220348,
		-0.011114, 0.563100, 0.826314,
		6.002988, 18.515236, 12.348965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.678544, 18.690203, 11.566113>,  <6.010767, 18.121065, 11.770545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.678544, 18.690203, 11.566113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.939741, 18.746597, 11.863764>,  <6.096458, 18.780434, 12.042355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.939741, 18.746597, 11.863764>,  <5.678544, 18.690203, 11.566113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.939741, 18.746597, 11.863764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596317, 0.510011, -0.619915,
		-0.466913, 0.848535, 0.248960,
		0.652992, 0.140987, 0.744127,
		6.135638, 18.788893, 12.087002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.651597, 19.337681, 11.623089>,  <5.678544, 18.690203, 11.566113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.651597, 19.337681, 11.623089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.992318, 19.215715, 11.793483>,  <6.196750, 19.142536, 11.895720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.992318, 19.215715, 11.793483>,  <5.651597, 19.337681, 11.623089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.992318, 19.215715, 11.793483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495813, 0.731761, -0.467650,
		-0.169127, 0.609553, 0.774494,
		0.851802, -0.304911, 0.425985,
		6.247858, 19.124243, 11.921278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.918237, 19.889231, 11.802425>,  <5.651597, 19.337681, 11.623089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.918237, 19.889231, 11.802425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.239659, 19.652157, 11.824427>,  <6.432512, 19.509912, 11.837627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.239659, 19.652157, 11.824427>,  <5.918237, 19.889231, 11.802425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.239659, 19.652157, 11.824427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577330, 0.753559, -0.314387,
		0.144885, 0.284381, 0.947700,
		0.803554, -0.592685, 0.055002,
		6.480725, 19.474352, 11.840927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.477089, 20.289902, 12.163773>,  <5.918237, 19.889231, 11.802425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.477089, 20.289902, 12.163773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.636564, 19.998030, 11.941561>,  <6.732248, 19.822906, 11.808233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.636564, 19.998030, 11.941561>,  <6.477089, 20.289902, 12.163773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.636564, 19.998030, 11.941561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743001, 0.612087, -0.270739,
		0.537586, -0.304819, 0.786185,
		0.398686, -0.729682, -0.555530,
		6.756170, 19.779125, 11.774901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.199312, 20.510609, 12.131148>,  <6.477089, 20.289902, 12.163773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.199312, 20.510609, 12.131148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.167953, 20.221041, 11.856982>,  <7.149137, 20.047300, 11.692482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.167953, 20.221041, 11.856982>,  <7.199312, 20.510609, 12.131148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.167953, 20.221041, 11.856982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647976, 0.485490, -0.586879,
		0.757615, -0.490144, 0.431020,
		-0.078400, -0.723919, -0.685416,
		7.144433, 20.003864, 11.651358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.887754, 20.209551, 12.138478>,  <7.199312, 20.510609, 12.131148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.887754, 20.209551, 12.138478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.744033, 20.099201, 11.781874>,  <7.657800, 20.032991, 11.567911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.744033, 20.099201, 11.781874>,  <7.887754, 20.209551, 12.138478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.744033, 20.099201, 11.781874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883953, 0.205687, -0.419905,
		0.299215, -0.938928, 0.169957,
		-0.359302, -0.275876, -0.891512,
		7.636242, 20.016439, 11.514420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.474004, 19.751059, 11.801907>,  <7.887754, 20.209551, 12.138478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.474004, 19.751059, 11.801907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.235081, 19.847134, 11.495827>,  <8.091726, 19.904779, 11.312179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.235081, 19.847134, 11.495827>,  <8.474004, 19.751059, 11.801907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.235081, 19.847134, 11.495827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801453, 0.143149, -0.580673,
		-0.029933, -0.960113, -0.278004,
		-0.597308, 0.240189, -0.765201,
		8.055888, 19.919189, 11.266267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.697522, 19.401384, 11.214879>,  <8.474004, 19.751059, 11.801907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.697522, 19.401384, 11.214879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.498478, 19.725525, 11.091127>,  <8.379051, 19.920010, 11.016876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.498478, 19.725525, 11.091127>,  <8.697522, 19.401384, 11.214879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.498478, 19.725525, 11.091127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794599, 0.282831, -0.537232,
		-0.347844, -0.513165, -0.784644,
		-0.497610, 0.810351, -0.309380,
		8.349195, 19.968630, 10.998314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.846499, 19.460985, 10.496016>,  <8.697522, 19.401384, 11.214879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.846499, 19.460985, 10.496016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.717781, 19.833185, 10.566011>,  <8.640551, 20.056505, 10.608009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.717781, 19.833185, 10.566011>,  <8.846499, 19.460985, 10.496016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.717781, 19.833185, 10.566011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804204, 0.366163, -0.468167,
		-0.499703, -0.009926, -0.866140,
		-0.321795, 0.930498, 0.174990,
		8.621243, 20.112335, 10.618508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.971549, 19.812000, 9.910064>,  <8.846499, 19.460985, 10.496016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.971549, 19.812000, 9.910064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.938416, 20.114517, 10.169652>,  <8.918537, 20.296026, 10.325405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.938416, 20.114517, 10.169652>,  <8.971549, 19.812000, 9.910064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.938416, 20.114517, 10.169652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606290, 0.555072, -0.569480,
		-0.790918, 0.346294, -0.504509,
		-0.082832, 0.756291, 0.648971,
		8.913567, 20.341404, 10.364344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.670131, 20.384289, 9.557666>,  <8.971549, 19.812000, 9.910064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.670131, 20.384289, 9.557666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.860119, 20.559084, 9.863200>,  <8.974112, 20.663961, 10.046521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.860119, 20.559084, 9.863200>,  <8.670131, 20.384289, 9.557666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.860119, 20.559084, 9.863200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493518, 0.586375, -0.642343,
		-0.728589, 0.682061, 0.062850,
		0.474971, 0.436986, 0.763836,
		9.002610, 20.690180, 10.092351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.681651, 21.155491, 9.393775>,  <8.670131, 20.384289, 9.557666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.681651, 21.155491, 9.393775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.971512, 21.089670, 9.661448>,  <9.145429, 21.050179, 9.822051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.971512, 21.089670, 9.661448>,  <8.681651, 21.155491, 9.393775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.971512, 21.089670, 9.661448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612360, 0.599145, -0.515792,
		-0.316062, 0.783549, 0.534935,
		0.724652, -0.164550, 0.669181,
		9.188908, 21.040304, 9.862202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.029344, 21.810801, 9.553289>,  <8.681651, 21.155491, 9.393775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.029344, 21.810801, 9.553289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.259598, 21.486088, 9.592589>,  <9.397751, 21.291260, 9.616169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.259598, 21.486088, 9.592589>,  <9.029344, 21.810801, 9.553289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.259598, 21.486088, 9.592589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732538, 0.458553, -0.503107,
		0.363361, 0.361578, 0.858621,
		0.575636, -0.811782, 0.098250,
		9.432289, 21.242554, 9.622065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.643313, 22.081572, 9.716018>,  <9.029344, 21.810801, 9.553289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.643313, 22.081572, 9.716018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.729742, 21.726433, 9.553517>,  <9.781599, 21.513350, 9.456017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.729742, 21.726433, 9.553517>,  <9.643313, 22.081572, 9.716018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.729742, 21.726433, 9.553517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876401, 0.359770, -0.320137,
		0.430390, -0.286867, 0.855846,
		0.216071, -0.887847, -0.406251,
		9.794563, 21.460079, 9.431642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.329311, 21.983345, 9.924428>,  <9.643313, 22.081572, 9.716018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.329311, 21.983345, 9.924428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.231828, 21.762012, 9.605823>,  <10.173337, 21.629213, 9.414660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.231828, 21.762012, 9.605823>,  <10.329311, 21.983345, 9.924428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.231828, 21.762012, 9.605823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843510, 0.284385, -0.455649,
		0.478640, -0.782912, 0.397431,
		-0.243710, -0.553329, -0.796512,
		10.158714, 21.596014, 9.366869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.655008, 21.295269, 9.705115>,  <10.329311, 21.983345, 9.924428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.655008, 21.295269, 9.705115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.878391, 21.627010, 9.698204>,  <11.012421, 21.826056, 9.694057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.878391, 21.627010, 9.698204>,  <10.655008, 21.295269, 9.705115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.878391, 21.627010, 9.698204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403364, -0.253293, 0.879284,
		0.724860, -0.498011, -0.475985,
		0.558457, 0.829353, -0.017278,
		11.045928, 21.875816, 9.693021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.401442, 21.182476, 9.839007>,  <10.655008, 21.295269, 9.705115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.401442, 21.182476, 9.839007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.260818, 21.533932, 9.968248>,  <11.176443, 21.744806, 10.045793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.260818, 21.533932, 9.968248>,  <11.401442, 21.182476, 9.839007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.260818, 21.533932, 9.968248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228507, -0.254156, 0.939782,
		0.907849, 0.404221, -0.111424,
		-0.351561, 0.878641, 0.323102,
		11.155350, 21.797523, 10.065179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.653206, 21.350960, 10.497513>,  <11.401442, 21.182476, 9.839007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.653206, 21.350960, 10.497513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.326824, 21.581375, 10.517107>,  <11.130995, 21.719624, 10.528864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.326824, 21.581375, 10.517107>,  <11.653206, 21.350960, 10.497513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.326824, 21.581375, 10.517107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003259, -0.080150, 0.996777,
		0.578108, 0.813484, 0.063521,
		-0.815954, 0.576038, 0.048986,
		11.082038, 21.754187, 10.531803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.757751, 21.689165, 11.106847>,  <11.653206, 21.350960, 10.497513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.757751, 21.689165, 11.106847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.380167, 21.798145, 11.032321>,  <11.153617, 21.863533, 10.987605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.380167, 21.798145, 11.032321>,  <11.757751, 21.689165, 11.106847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.380167, 21.798145, 11.032321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178366, 0.053891, 0.982487,
		0.277719, 0.960660, -0.002275,
		-0.943958, 0.272450, -0.186316,
		11.096979, 21.879881, 10.976426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.210443, 21.031208, 11.224590>,  <11.757751, 21.689165, 11.106847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.210443, 21.031208, 11.224590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.182117, 21.167583, 11.599556>,  <12.165121, 21.249409, 11.824535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.182117, 21.167583, 11.599556>,  <12.210443, 21.031208, 11.224590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.182117, 21.167583, 11.599556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386985, -0.875557, 0.289209,
		0.919363, -0.342285, 0.193941,
		-0.070814, 0.340941, 0.937414,
		12.160872, 21.269865, 11.880780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.508964, 20.502869, 11.460493>,  <12.210443, 21.031208, 11.224590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.508964, 20.502869, 11.460493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.271555, 20.653461, 11.745027>,  <12.129109, 20.743816, 11.915747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.271555, 20.653461, 11.745027>,  <12.508964, 20.502869, 11.460493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.271555, 20.653461, 11.745027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522779, -0.852338, 0.014912,
		0.611910, -0.363019, 0.702697,
		-0.593522, 0.376480, 0.711333,
		12.093498, 20.766405, 11.958426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.330450, 19.929934, 11.931348>,  <12.508964, 20.502869, 11.460493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.330450, 19.929934, 11.931348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.050189, 20.206606, 12.001389>,  <11.882032, 20.372610, 12.043413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.050189, 20.206606, 12.001389>,  <12.330450, 19.929934, 11.931348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.050189, 20.206606, 12.001389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669881, -0.722194, 0.172324,
		0.245651, 0.003443, 0.969352,
		-0.700653, 0.691682, 0.175101,
		11.839993, 20.414110, 12.053919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.955823, 19.747950, 12.572841>,  <12.330450, 19.929934, 11.931348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.955823, 19.747950, 12.572841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.721591, 19.980171, 12.346548>,  <11.581052, 20.119503, 12.210773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.721591, 19.980171, 12.346548>,  <11.955823, 19.747950, 12.572841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.721591, 19.980171, 12.346548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778255, -0.597864, 0.192033,
		-0.226746, 0.552735, 0.801917,
		-0.585581, 0.580553, -0.565732,
		11.545917, 20.154337, 12.176828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.383099, 20.000849, 13.029362>,  <11.955823, 19.747950, 12.572841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.383099, 20.000849, 13.029362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.262853, 20.023363, 12.648528>,  <11.190704, 20.036871, 12.420028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.262853, 20.023363, 12.648528>,  <11.383099, 20.000849, 13.029362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.262853, 20.023363, 12.648528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837202, -0.493756, 0.235154,
		-0.456861, 0.867777, 0.195552,
		-0.300616, 0.056284, -0.952083,
		11.172668, 20.040249, 12.362904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.731133, 20.223612, 13.071520>,  <11.383099, 20.000849, 13.029362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.731133, 20.223612, 13.071520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.757488, 20.056698, 12.708966>,  <10.773301, 19.956551, 12.491434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.757488, 20.056698, 12.708966>,  <10.731133, 20.223612, 13.071520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.757488, 20.056698, 12.708966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895393, -0.425614, 0.130857,
		-0.440375, 0.802949, -0.401676,
		0.065888, -0.417283, -0.906385,
		10.777255, 19.931513, 12.437051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.064853, 20.266085, 12.724508>,  <10.731133, 20.223612, 13.071520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.064853, 20.266085, 12.724508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.245532, 19.968538, 12.527475>,  <10.353939, 19.790010, 12.409256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.245532, 19.968538, 12.527475>,  <10.064853, 20.266085, 12.724508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.245532, 19.968538, 12.527475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856115, -0.516764, -0.004675,
		-0.251071, 0.423818, -0.870254,
		0.451697, -0.743863, -0.492581,
		10.381042, 19.745378, 12.379701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.570059, 20.001320, 12.320580>,  <10.064853, 20.266085, 12.724508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.570059, 20.001320, 12.320580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.829018, 19.699533, 12.277395>,  <9.984393, 19.518461, 12.251484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.829018, 19.699533, 12.277395>,  <9.570059, 20.001320, 12.320580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.829018, 19.699533, 12.277395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759592, -0.650318, -0.010314,
		-0.062428, 0.088685, -0.994102,
		0.647397, -0.754467, -0.107963,
		10.023237, 19.473194, 12.245007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.414276, 19.649254, 11.704089>,  <9.570059, 20.001320, 12.320580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.414276, 19.649254, 11.704089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.614342, 19.408209, 11.952828>,  <9.734381, 19.263582, 12.102072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.614342, 19.408209, 11.952828>,  <9.414276, 19.649254, 11.704089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.614342, 19.408209, 11.952828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806134, -0.586266, 0.080257,
		0.316205, -0.541434, -0.779015,
		0.500164, -0.602612, 0.621848,
		9.764391, 19.227425, 12.139383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.177804, 18.897121, 11.405478>,  <9.414276, 19.649254, 11.704089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.177804, 18.897121, 11.405478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.333799, 18.843090, 11.769821>,  <9.427397, 18.810671, 11.988427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.333799, 18.843090, 11.769821>,  <9.177804, 18.897121, 11.405478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.333799, 18.843090, 11.769821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768041, -0.593386, 0.240842,
		0.507958, -0.793503, -0.335160,
		0.389988, -0.135079, 0.910858,
		9.450796, 18.802567, 12.043078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.118587, 18.235867, 11.587234>,  <9.177804, 18.897121, 11.405478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.118587, 18.235867, 11.587234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.222725, 18.327549, 11.962400>,  <9.285208, 18.382559, 12.187500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.222725, 18.327549, 11.962400>,  <9.118587, 18.235867, 11.587234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.222725, 18.327549, 11.962400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547399, -0.765165, 0.338935,
		0.795346, -0.601654, -0.073741,
		0.260345, 0.229205, 0.937915,
		9.300829, 18.396311, 12.243775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.451652, 17.639952, 11.827312>,  <9.118587, 18.235867, 11.587234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.451652, 17.639952, 11.827312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.308542, 17.855101, 12.132649>,  <9.222677, 17.984190, 12.315851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.308542, 17.855101, 12.132649>,  <9.451652, 17.639952, 11.827312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.308542, 17.855101, 12.132649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559190, -0.778082, 0.286173,
		0.747867, -0.324468, 0.579150,
		-0.357772, 0.537875, 0.763342,
		9.201210, 18.016462, 12.361651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.595352, 17.244883, 12.482662>,  <9.451652, 17.639952, 11.827312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.595352, 17.244883, 12.482662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.304135, 17.499472, 12.584532>,  <9.129405, 17.652225, 12.645654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.304135, 17.499472, 12.584532>,  <9.595352, 17.244883, 12.482662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.304135, 17.499472, 12.584532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558996, -0.766223, 0.316899,
		0.396834, 0.088355, 0.913628,
		-0.728043, 0.636471, 0.254674,
		9.085723, 17.690413, 12.660933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.444296, 17.075809, 13.152140>,  <9.595352, 17.244883, 12.482662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.444296, 17.075809, 13.152140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.111905, 17.243242, 13.005570>,  <8.912471, 17.343702, 12.917628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.111905, 17.243242, 13.005570>,  <9.444296, 17.075809, 13.152140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.111905, 17.243242, 13.005570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536922, -0.775823, 0.331381,
		-0.145571, 0.472111, 0.869437,
		-0.830978, 0.418580, -0.366424,
		8.862612, 17.368816, 12.895643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.078936, 17.186190, 13.696144>,  <9.444296, 17.075809, 13.152140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.078936, 17.186190, 13.696144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.808109, 17.191635, 13.401825>,  <8.645614, 17.194902, 13.225234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.808109, 17.191635, 13.401825>,  <9.078936, 17.186190, 13.696144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.808109, 17.191635, 13.401825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630515, -0.526347, 0.570447,
		-0.379518, 0.850161, 0.364956,
		-0.677065, 0.013615, -0.735797,
		8.604990, 17.195719, 13.181086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.447556, 17.146847, 14.117103>,  <9.078936, 17.186190, 13.696144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.447556, 17.146847, 14.117103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.407382, 17.037096, 13.734557>,  <8.383278, 16.971247, 13.505030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.407382, 17.037096, 13.734557>,  <8.447556, 17.146847, 14.117103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.407382, 17.037096, 13.734557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644031, -0.714747, 0.272691,
		-0.758378, 0.643316, -0.104920,
		-0.100436, -0.274375, -0.956364,
		8.377252, 16.954784, 13.447648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.663056, 17.056858, 14.076875>,  <8.447556, 17.146847, 14.117103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.663056, 17.056858, 14.076875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.832014, 16.895407, 13.752241>,  <7.933388, 16.798536, 13.557461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.832014, 16.895407, 13.752241>,  <7.663056, 17.056858, 14.076875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.832014, 16.895407, 13.752241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593915, -0.799637, 0.088580,
		-0.684725, 0.444596, -0.577483,
		0.422394, -0.403628, -0.811583,
		7.958732, 16.774319, 13.508766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.136004, 16.966246, 13.646690>,  <7.663056, 17.056858, 14.076875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.136004, 16.966246, 13.646690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.433702, 16.710888, 13.568154>,  <7.612322, 16.557673, 13.521032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.433702, 16.710888, 13.568154>,  <7.136004, 16.966246, 13.646690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.433702, 16.710888, 13.568154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581330, -0.763898, 0.280203,
		-0.328864, -0.094401, -0.939647,
		0.744247, -0.638395, -0.196341,
		7.656976, 16.519369, 13.509253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.808874, 16.385641, 13.367935>,  <7.136004, 16.966246, 13.646690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.808874, 16.385641, 13.367935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.166876, 16.240332, 13.471469>,  <7.381678, 16.153145, 13.533589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.166876, 16.240332, 13.471469>,  <6.808874, 16.385641, 13.367935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.166876, 16.240332, 13.471469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438532, -0.822732, 0.361664,
		0.081567, -0.437198, -0.895658,
		0.895006, -0.363275, 0.258834,
		7.435378, 16.131350, 13.549119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.849630, 15.721315, 13.067003>,  <6.808874, 16.385641, 13.367935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.849630, 15.721315, 13.067003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.124584, 15.717721, 13.357499>,  <7.289556, 15.715564, 13.531796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.124584, 15.717721, 13.357499>,  <6.849630, 15.721315, 13.067003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.124584, 15.717721, 13.357499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452170, -0.787799, 0.418229,
		0.568371, -0.615867, -0.545583,
		0.687383, -0.008987, 0.726239,
		7.330799, 15.715025, 13.575371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.982214, 15.054423, 13.244925>,  <6.849630, 15.721315, 13.067003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.982214, 15.054423, 13.244925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.129812, 15.222301, 13.576635>,  <7.218371, 15.323029, 13.775661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.129812, 15.222301, 13.576635>,  <6.982214, 15.054423, 13.244925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.129812, 15.222301, 13.576635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347658, -0.765142, 0.541933,
		0.861960, -0.488276, -0.136423,
		0.368996, 0.419697, 0.829275,
		7.240511, 15.348210, 13.825418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.202878, 14.495200, 13.692321>,  <6.982214, 15.054423, 13.244925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.202878, 14.495200, 13.692321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.161855, 14.792173, 13.957130>,  <7.137241, 14.970357, 14.116016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.161855, 14.792173, 13.957130>,  <7.202878, 14.495200, 13.692321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.161855, 14.792173, 13.957130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339940, -0.651624, 0.678105,
		0.934838, -0.155503, 0.319212,
		-0.102559, 0.742432, 0.662024,
		7.131087, 15.014903, 14.155738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.451111, 14.241185, 14.279705>,  <7.202878, 14.495200, 13.692321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.451111, 14.241185, 14.279705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.214358, 14.536279, 14.409580>,  <7.072306, 14.713335, 14.487506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.214358, 14.536279, 14.409580>,  <7.451111, 14.241185, 14.279705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.214358, 14.536279, 14.409580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303778, -0.577296, 0.757923,
		0.746587, 0.349970, 0.565800,
		-0.591884, 0.737733, 0.324689,
		7.036793, 14.757599, 14.506987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.799392, 14.456211, 14.901974>,  <7.451111, 14.241185, 14.279705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.799392, 14.456211, 14.901974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.421697, 14.586146, 14.923509>,  <7.195080, 14.664107, 14.936430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.421697, 14.586146, 14.923509>,  <7.799392, 14.456211, 14.901974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.421697, 14.586146, 14.923509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124379, -0.503272, 0.855130,
		0.304873, 0.800749, 0.515611,
		-0.944236, 0.324837, 0.053838,
		7.138426, 14.683598, 14.939660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.237750, 14.130936, 15.000550>,  <7.799392, 14.456211, 14.901974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.237750, 14.130936, 15.000550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.964459, 14.404620, 14.898523>,  <6.800486, 14.568830, 14.837307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.964459, 14.404620, 14.898523>,  <7.237750, 14.130936, 15.000550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.964459, 14.404620, 14.898523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525579, -0.218290, 0.822263,
		0.506923, 0.695849, 0.508748,
		-0.683225, 0.684211, -0.255067,
		6.759492, 14.609883, 14.822003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.151145, 14.404212, 15.603461>,  <7.237750, 14.130936, 15.000550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.151145, 14.404212, 15.603461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.824296, 14.444798, 15.376475>,  <6.628187, 14.469149, 15.240284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.824296, 14.444798, 15.376475>,  <7.151145, 14.404212, 15.603461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.824296, 14.444798, 15.376475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576414, -0.156712, 0.801990,
		-0.007557, 0.982419, 0.186538,
		-0.817123, 0.101463, -0.567464,
		6.579159, 14.475236, 15.206236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.639128, 14.425831, 16.140303>,  <7.151145, 14.404212, 15.603461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.639128, 14.425831, 16.140303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.844979, 14.121883, 15.981428>,  <7.968490, 13.939515, 15.886104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.844979, 14.121883, 15.981428>,  <7.639128, 14.425831, 16.140303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.844979, 14.121883, 15.981428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135721, -0.385203, 0.912797,
		-0.846604, -0.523657, -0.095106,
		0.514628, -0.759869, -0.397185,
		7.999368, 13.893923, 15.862272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.457036, 13.812997, 16.576328>,  <7.639128, 14.425831, 16.140303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.457036, 13.812997, 16.576328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.804422, 13.702868, 16.411423>,  <8.012855, 13.636791, 16.312479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.804422, 13.702868, 16.411423>,  <7.457036, 13.812997, 16.576328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.804422, 13.702868, 16.411423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269939, -0.434883, 0.859075,
		-0.415807, -0.857365, -0.303363,
		0.868468, -0.275319, -0.412264,
		8.064962, 13.620272, 16.287743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.439416, 13.083968, 16.569107>,  <7.457036, 13.812997, 16.576328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.439416, 13.083968, 16.569107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.803106, 13.249811, 16.584116>,  <8.021320, 13.349317, 16.593122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.803106, 13.249811, 16.584116>,  <7.439416, 13.083968, 16.569107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.803106, 13.249811, 16.584116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266401, -0.648732, 0.712866,
		0.319903, -0.638160, -0.700296,
		0.909226, 0.414608, 0.037525,
		8.075874, 13.374193, 16.595373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.939630, 12.556038, 16.453918>,  <7.439416, 13.083968, 16.569107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.939630, 12.556038, 16.453918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.090462, 12.865365, 16.657797>,  <8.180961, 13.050961, 16.780123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.090462, 12.865365, 16.657797>,  <7.939630, 12.556038, 16.453918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.090462, 12.865365, 16.657797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345088, -0.628002, 0.697516,
		0.859491, -0.087130, -0.503670,
		0.377080, 0.773319, 0.509694,
		8.203586, 13.097361, 16.810705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.729099, 12.455538, 16.710735>,  <7.939630, 12.556038, 16.453918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.729099, 12.455538, 16.710735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.491982, 12.686249, 16.935564>,  <8.349710, 12.824675, 17.070461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.491982, 12.686249, 16.935564>,  <8.729099, 12.455538, 16.710735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.491982, 12.686249, 16.935564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291692, -0.496765, 0.817398,
		0.750673, 0.648501, 0.126239,
		-0.592794, 0.576776, 0.562071,
		8.314143, 12.859282, 17.104185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.040602, 12.882919, 17.366848>,  <8.729099, 12.455538, 16.710735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.040602, 12.882919, 17.366848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.670569, 12.761448, 17.458067>,  <8.448550, 12.688565, 17.512798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.670569, 12.761448, 17.458067>,  <9.040602, 12.882919, 17.366848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.670569, 12.761448, 17.458067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338348, -0.386328, 0.858063,
		-0.172474, 0.870936, 0.460134,
		-0.925080, -0.303678, 0.228048,
		8.393045, 12.670344, 17.526482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.551461, 13.328900, 16.981911>,  <9.040602, 12.882919, 17.366848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.551461, 13.328900, 16.981911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.947394, 13.272650, 16.990446>,  <10.184955, 13.238899, 16.995567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.947394, 13.272650, 16.990446>,  <9.551461, 13.328900, 16.981911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.947394, 13.272650, 16.990446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044758, 0.450363, 0.891723,
		-0.135010, -0.881701, 0.452078,
		0.989832, -0.140626, 0.021340,
		10.244345, 13.230462, 16.996847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.637536, 13.188099, 17.620869>,  <9.551461, 13.328900, 16.981911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.637536, 13.188099, 17.620869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.961026, 13.358102, 17.458223>,  <10.155120, 13.460103, 17.360636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.961026, 13.358102, 17.458223>,  <9.637536, 13.188099, 17.620869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.961026, 13.358102, 17.458223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102207, 0.579239, 0.808725,
		0.579239, -0.695595, 0.425006,
		-0.808725, -0.425006, 0.406612,
		10.203644, 13.485603, 17.336239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.013990, 13.324875, 18.171030>,  <9.637536, 13.188099, 17.620869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.013990, 13.324875, 18.171030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.222808, 13.552844, 17.917208>,  <10.348099, 13.689626, 17.764915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.222808, 13.552844, 17.917208>,  <10.013990, 13.324875, 18.171030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.222808, 13.552844, 17.917208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188335, 0.648589, 0.737471,
		0.831866, -0.504501, 0.231255,
		0.522044, 0.569923, -0.634554,
		10.379421, 13.723821, 17.726841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.690639, 13.482055, 18.568176>,  <10.013990, 13.324875, 18.171030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.690639, 13.482055, 18.568176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.674172, 13.742626, 18.265141>,  <10.664292, 13.898970, 18.083319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.674172, 13.742626, 18.265141>,  <10.690639, 13.482055, 18.568176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.674172, 13.742626, 18.265141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256746, 0.739670, 0.622069,
		0.965602, -0.168901, -0.197700,
		-0.041165, 0.651430, -0.757591,
		10.661823, 13.938055, 18.037863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.285152, 13.862076, 18.624184>,  <10.690639, 13.482055, 18.568176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.285152, 13.862076, 18.624184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.064841, 14.109470, 18.399998>,  <10.932654, 14.257907, 18.265488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.064841, 14.109470, 18.399998>,  <11.285152, 13.862076, 18.624184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.064841, 14.109470, 18.399998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215348, 0.754059, 0.620499,
		0.806392, 0.221063, -0.548509,
		-0.550778, 0.618486, -0.560462,
		10.899608, 14.295016, 18.231859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.635341, 14.370568, 18.372881>,  <11.285152, 13.862076, 18.624184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.635341, 14.370568, 18.372881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.266222, 14.521122, 18.405825>,  <11.044751, 14.611454, 18.425591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.266222, 14.521122, 18.405825>,  <11.635341, 14.370568, 18.372881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.266222, 14.521122, 18.405825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349543, 0.727914, 0.589882,
		0.162073, 0.573128, -0.803279,
		-0.922796, 0.376384, 0.082358,
		10.989384, 14.634037, 18.430532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.790109, 15.063926, 18.320875>,  <11.635341, 14.370568, 18.372881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.790109, 15.063926, 18.320875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.422008, 15.021799, 18.471628>,  <11.201147, 14.996523, 18.562080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.422008, 15.021799, 18.471628>,  <11.790109, 15.063926, 18.320875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.422008, 15.021799, 18.471628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209180, 0.681566, 0.701221,
		-0.330723, 0.724138, -0.605183,
		-0.920253, -0.105318, 0.376885,
		11.145931, 14.990204, 18.584694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.505127, 15.742434, 18.355745>,  <11.790109, 15.063926, 18.320875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.505127, 15.742434, 18.355745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.341733, 15.498179, 18.627117>,  <11.243696, 15.351627, 18.789940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.341733, 15.498179, 18.627117>,  <11.505127, 15.742434, 18.355745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.341733, 15.498179, 18.627117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044025, 0.729221, 0.682861,
		-0.911703, 0.308806, -0.270993,
		-0.408486, -0.610635, 0.678428,
		11.219188, 15.314989, 18.830645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.134501, 16.256683, 18.846296>,  <11.505127, 15.742434, 18.355745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.134501, 16.256683, 18.846296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.168783, 15.901033, 19.026123>,  <11.189353, 15.687643, 19.134018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.168783, 15.901033, 19.026123>,  <11.134501, 16.256683, 18.846296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.168783, 15.901033, 19.026123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125666, 0.457270, 0.880405,
		-0.988363, -0.018963, 0.150924,
		0.085708, -0.889126, 0.449566,
		11.194495, 15.634295, 19.160994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.808904, 16.361488, 19.381584>,  <11.134501, 16.256683, 18.846296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.808904, 16.361488, 19.381584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.033672, 16.041685, 19.466463>,  <11.168533, 15.849803, 19.517391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.033672, 16.041685, 19.466463>,  <10.808904, 16.361488, 19.381584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.033672, 16.041685, 19.466463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062295, 0.296703, 0.952936,
		-0.824842, -0.522256, 0.216529,
		0.561921, -0.799510, 0.212199,
		11.202249, 15.801832, 19.530123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.570693, 16.068542, 19.970129>,  <10.808904, 16.361488, 19.381584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.570693, 16.068542, 19.970129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.945749, 15.929566, 19.974447>,  <11.170783, 15.846181, 19.977037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.945749, 15.929566, 19.974447>,  <10.570693, 16.068542, 19.970129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.945749, 15.929566, 19.974447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038306, 0.134145, 0.990221,
		-0.345492, -0.928057, 0.139089,
		0.937640, -0.347441, 0.010796,
		11.227041, 15.825335, 19.977686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.662073, 15.722465, 20.589214>,  <10.570693, 16.068542, 19.970129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.662073, 15.722465, 20.589214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.038671, 15.808490, 20.485416>,  <11.264629, 15.860105, 20.423138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.038671, 15.808490, 20.485416>,  <10.662073, 15.722465, 20.589214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.038671, 15.808490, 20.485416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270229, -0.021581, 0.962554,
		0.201410, -0.976361, -0.078435,
		0.941494, 0.215064, -0.259494,
		11.321118, 15.873009, 20.407568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.979578, 15.198509, 20.960058>,  <10.662073, 15.722465, 20.589214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.979578, 15.198509, 20.960058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.247534, 15.480175, 20.865911>,  <11.408307, 15.649175, 20.809423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.247534, 15.480175, 20.865911>,  <10.979578, 15.198509, 20.960058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.247534, 15.480175, 20.865911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243474, 0.091135, 0.965616,
		0.701404, -0.704163, -0.110396,
		0.669890, 0.704166, -0.235368,
		11.448501, 15.691424, 20.795301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.630318, 14.920428, 21.188459>,  <10.979578, 15.198509, 20.960058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.630318, 14.920428, 21.188459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.586525, 15.318021, 21.190048>,  <11.560249, 15.556576, 21.191002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.586525, 15.318021, 21.190048>,  <11.630318, 14.920428, 21.188459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.586525, 15.318021, 21.190048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120441, 0.009299, 0.992677,
		0.986665, 0.109159, -0.120734,
		-0.109483, 0.993981, 0.003972,
		11.553680, 15.616215, 21.191240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.104106, 15.096061, 21.631615>,  <11.630318, 14.920428, 21.188459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.104106, 15.096061, 21.631615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.821635, 15.378372, 21.609028>,  <11.652153, 15.547759, 21.595476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.821635, 15.378372, 21.609028>,  <12.104106, 15.096061, 21.631615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.821635, 15.378372, 21.609028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136718, -0.057677, 0.988930,
		0.694709, 0.706080, 0.137223,
		-0.706178, 0.705779, -0.056466,
		11.609782, 15.590106, 21.592089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.185914, 15.568176, 22.158781>,  <12.104106, 15.096061, 21.631615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.185914, 15.568176, 22.158781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.807142, 15.640602, 22.052542>,  <11.579880, 15.684057, 21.988798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.807142, 15.640602, 22.052542>,  <12.185914, 15.568176, 22.158781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.807142, 15.640602, 22.052542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305644, -0.251309, 0.918382,
		0.099540, 0.950821, 0.293312,
		-0.946929, 0.181064, -0.265597,
		11.523064, 15.694921, 21.972862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.991991, 16.050432, 22.659859>,  <12.185914, 15.568176, 22.158781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.991991, 16.050432, 22.659859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.641438, 15.917239, 22.520674>,  <11.431107, 15.837323, 22.437162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.641438, 15.917239, 22.520674>,  <11.991991, 16.050432, 22.659859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.641438, 15.917239, 22.520674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320451, -0.136191, 0.937424,
		-0.359537, 0.933045, 0.012650,
		-0.876381, -0.332985, -0.347961,
		11.378524, 15.817344, 22.416285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.492334, 16.369984, 23.147572>,  <11.991991, 16.050432, 22.659859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.492334, 16.369984, 23.147572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.302641, 16.076242, 22.953321>,  <11.188825, 15.899998, 22.836771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.302641, 16.076242, 22.953321>,  <11.492334, 16.369984, 23.147572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.302641, 16.076242, 22.953321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604078, -0.129857, 0.786274,
		-0.640463, 0.666232, -0.382023,
		-0.474233, -0.734351, -0.485625,
		11.160371, 15.855937, 22.807634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.793050, 16.503481, 23.381153>,  <11.492334, 16.369984, 23.147572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.793050, 16.503481, 23.381153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.787889, 16.121725, 23.261837>,  <10.784794, 15.892672, 23.190247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.787889, 16.121725, 23.261837>,  <10.793050, 16.503481, 23.381153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.787889, 16.121725, 23.261837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684225, -0.209111, 0.698648,
		-0.729157, 0.213110, -0.650318,
		-0.012900, -0.954388, -0.298290,
		10.784019, 15.835408, 23.172350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.101690, 16.315193, 23.437206>,  <10.793050, 16.503481, 23.381153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.101690, 16.315193, 23.437206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.314182, 15.976334, 23.432631>,  <10.441678, 15.773018, 23.429884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.314182, 15.976334, 23.432631>,  <10.101690, 16.315193, 23.437206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.314182, 15.976334, 23.432631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636354, -0.407888, 0.654737,
		-0.559327, -0.340536, -0.755770,
		0.531231, -0.847150, -0.011441,
		10.473552, 15.722189, 23.429199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.677658, 15.831408, 23.267229>,  <10.101690, 16.315193, 23.437206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.677658, 15.831408, 23.267229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.963961, 15.654209, 23.483173>,  <10.135742, 15.547890, 23.612740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.963961, 15.654209, 23.483173>,  <9.677658, 15.831408, 23.267229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.963961, 15.654209, 23.483173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695058, -0.376914, 0.612234,
		-0.067735, -0.813444, -0.577686,
		0.715755, -0.442995, 0.539860,
		10.178687, 15.521310, 23.645132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.420813, 15.179644, 23.395422>,  <9.677658, 15.831408, 23.267229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.420813, 15.179644, 23.395422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.709449, 15.220895, 23.669260>,  <9.882630, 15.245646, 23.833563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.709449, 15.220895, 23.669260>,  <9.420813, 15.179644, 23.395422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.709449, 15.220895, 23.669260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591835, -0.421188, 0.687264,
		0.359220, -0.901091, -0.242890,
		0.721590, 0.103128, 0.684597,
		9.925926, 15.251833, 23.874640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.321811, 14.643608, 23.917097>,  <9.420813, 15.179644, 23.395422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.321811, 14.643608, 23.917097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.564570, 14.886580, 24.122114>,  <9.710226, 15.032364, 24.245125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.564570, 14.886580, 24.122114>,  <9.321811, 14.643608, 23.917097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.564570, 14.886580, 24.122114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513665, -0.192327, 0.836157,
		0.606484, -0.770738, 0.195293,
		0.606898, 0.607431, 0.512545,
		9.746640, 15.068810, 24.275877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.739497, 14.193356, 24.497347>,  <9.321811, 14.643608, 23.917097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.739497, 14.193356, 24.497347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.713913, 14.569721, 24.630365>,  <9.698563, 14.795541, 24.710176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.713913, 14.569721, 24.630365>,  <9.739497, 14.193356, 24.497347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.713913, 14.569721, 24.630365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228779, -0.338179, 0.912850,
		0.971375, -0.017692, 0.236892,
		-0.063961, 0.940915, 0.332547,
		9.694724, 14.851995, 24.730129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.752723, 14.145137, 25.163040>,  <9.739497, 14.193356, 24.497347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.752723, 14.145137, 25.163040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.645338, 14.530451, 25.164444>,  <9.580907, 14.761639, 25.165287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.645338, 14.530451, 25.164444>,  <9.752723, 14.145137, 25.163040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.645338, 14.530451, 25.164444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361782, -0.104203, 0.926421,
		0.892772, 0.247439, 0.376474,
		-0.268462, 0.963284, 0.003511,
		9.564799, 14.819436, 25.165497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.907723, 14.362543, 25.776588>,  <9.752723, 14.145137, 25.163040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.907723, 14.362543, 25.776588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.636709, 14.625121, 25.643908>,  <9.474101, 14.782668, 25.564299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.636709, 14.625121, 25.643908>,  <9.907723, 14.362543, 25.776588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.636709, 14.625121, 25.643908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430346, 0.011907, 0.902586,
		0.596447, 0.754280, 0.274431,
		-0.677534, 0.656445, -0.331703,
		9.433449, 14.822055, 25.544397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.743810, 14.680821, 26.303844>,  <9.907723, 14.362543, 25.776588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.743810, 14.680821, 26.303844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.448843, 14.817578, 26.070837>,  <9.271863, 14.899632, 25.931032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.448843, 14.817578, 26.070837>,  <9.743810, 14.680821, 26.303844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.448843, 14.817578, 26.070837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571536, 0.143752, 0.807888,
		0.359948, 0.928679, 0.089398,
		-0.737417, 0.341892, -0.582517,
		9.227618, 14.920146, 25.896082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.488392, 15.403687, 26.516422>,  <9.743810, 14.680821, 26.303844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.488392, 15.403687, 26.516422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.194956, 15.212912, 26.322773>,  <9.018894, 15.098447, 26.206583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.194956, 15.212912, 26.322773>,  <9.488392, 15.403687, 26.516422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.194956, 15.212912, 26.322773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590756, 0.095394, 0.801191,
		-0.335936, 0.873745, -0.351734,
		-0.733590, -0.476938, -0.484124,
		8.974879, 15.069830, 26.177536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.956417, 15.898663, 26.528915>,  <9.488392, 15.403687, 26.516422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.956417, 15.898663, 26.528915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.797695, 15.533946, 26.486622>,  <8.702462, 15.315116, 26.461245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.797695, 15.533946, 26.486622>,  <8.956417, 15.898663, 26.528915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.797695, 15.533946, 26.486622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479221, 0.107538, 0.871081,
		-0.782875, 0.396321, -0.479622,
		-0.396805, -0.911792, -0.105736,
		8.678654, 15.260408, 26.454901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.329276, 15.988870, 26.846838>,  <8.956417, 15.898663, 26.528915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.329276, 15.988870, 26.846838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.362595, 15.590329, 26.839378>,  <8.382586, 15.351205, 26.834902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.362595, 15.590329, 26.839378>,  <8.329276, 15.988870, 26.846838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.362595, 15.590329, 26.839378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325800, -0.044915, 0.944371,
		-0.941762, -0.072587, -0.328352,
		0.083297, -0.996350, -0.018651,
		8.387584, 15.291424, 26.833782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.736391, 15.630454, 27.190245>,  <8.329276, 15.988870, 26.846838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.736391, 15.630454, 27.190245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.056645, 15.395442, 27.237213>,  <8.248798, 15.254435, 27.265394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.056645, 15.395442, 27.237213>,  <7.736391, 15.630454, 27.190245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.056645, 15.395442, 27.237213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183834, -0.054362, 0.981453,
		-0.570251, -0.807373, -0.151533,
		0.800636, -0.587532, 0.117423,
		8.296837, 15.219183, 27.272440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.506029, 15.085481, 27.523558>,  <7.736391, 15.630454, 27.190245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.506029, 15.085481, 27.523558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.900346, 15.037035, 27.570103>,  <8.136937, 15.007968, 27.598030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.900346, 15.037035, 27.570103>,  <7.506029, 15.085481, 27.523558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.900346, 15.037035, 27.570103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136394, -0.172983, 0.975435,
		-0.098007, -0.977450, -0.187045,
		0.985795, -0.121111, 0.116365,
		8.196085, 15.000701, 27.605011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.571009, 14.607771, 28.053455>,  <7.506029, 15.085481, 27.523558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.571009, 14.607771, 28.053455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.934676, 14.773632, 28.038090>,  <8.152877, 14.873149, 28.028870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.934676, 14.773632, 28.038090>,  <7.571009, 14.607771, 28.053455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.934676, 14.773632, 28.038090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092368, -0.110850, 0.989536,
		0.406057, -0.903202, -0.139082,
		0.909168, 0.414654, -0.038416,
		8.207427, 14.898028, 28.026566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.954895, 14.463144, 28.634695>,  <7.571009, 14.607771, 28.053455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.954895, 14.463144, 28.634695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.203273, 14.764446, 28.547943>,  <8.352300, 14.945228, 28.495892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.203273, 14.764446, 28.547943>,  <7.954895, 14.463144, 28.634695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.203273, 14.764446, 28.547943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220985, 0.097237, 0.970418,
		0.752060, -0.650502, -0.106079,
		0.620944, 0.753254, -0.216879,
		8.389556, 14.990422, 28.482880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.490657, 14.307636, 28.953209>,  <7.954895, 14.463144, 28.634695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.490657, 14.307636, 28.953209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.510685, 14.702868, 28.894976>,  <8.522702, 14.940006, 28.860035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.510685, 14.702868, 28.894976>,  <8.490657, 14.307636, 28.953209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.510685, 14.702868, 28.894976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274596, 0.126529, 0.953198,
		0.960255, -0.087704, -0.264987,
		0.050071, 0.988078, -0.145583,
		8.525706, 14.999290, 28.851301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.165054, 14.543994, 29.274786>,  <8.490657, 14.307636, 28.953209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.165054, 14.543994, 29.274786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.923297, 14.860691, 29.239342>,  <8.778242, 15.050709, 29.218075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.923297, 14.860691, 29.239342>,  <9.165054, 14.543994, 29.274786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.923297, 14.860691, 29.239342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094935, 0.182005, 0.978704,
		0.791009, 0.583111, -0.185167,
		-0.604394, 0.791742, -0.088610,
		8.741979, 15.098214, 29.212759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.518012, 15.028488, 29.622391>,  <9.165054, 14.543994, 29.274786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.518012, 15.028488, 29.622391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.134919, 15.142599, 29.607615>,  <8.905064, 15.211065, 29.598749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.134919, 15.142599, 29.607615>,  <9.518012, 15.028488, 29.622391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.134919, 15.142599, 29.607615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015988, 0.181011, 0.983351,
		0.287214, 0.941197, -0.177922,
		-0.957733, 0.285276, -0.036941,
		8.847599, 15.228182, 29.596533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.391310, 15.611689, 30.106703>,  <9.518012, 15.028488, 29.622391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.391310, 15.611689, 30.106703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.009511, 15.503597, 30.056246>,  <8.780432, 15.438743, 30.025972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.009511, 15.503597, 30.056246>,  <9.391310, 15.611689, 30.106703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.009511, 15.503597, 30.056246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138155, 0.025823, 0.990074,
		-0.264289, 0.962450, -0.061982,
		-0.954497, -0.270229, -0.126143,
		8.723162, 15.422528, 30.018402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.927513, 16.065374, 30.437765>,  <9.391310, 15.611689, 30.106703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.927513, 16.065374, 30.437765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.716311, 15.726549, 30.413458>,  <8.589590, 15.523253, 30.398872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.716311, 15.726549, 30.413458>,  <8.927513, 16.065374, 30.437765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.716311, 15.726549, 30.413458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168353, 0.034265, 0.985131,
		-0.832388, 0.530384, -0.160698,
		-0.528004, -0.847065, -0.060770,
		8.557910, 15.472429, 30.395227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.382416, 16.323910, 30.740000>,  <8.927513, 16.065374, 30.437765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.382416, 16.323910, 30.740000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.409622, 15.925290, 30.759035>,  <8.425946, 15.686118, 30.770456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.409622, 15.925290, 30.759035>,  <8.382416, 16.323910, 30.740000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.409622, 15.925290, 30.759035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228400, 0.030877, 0.973078,
		-0.971189, -0.077052, -0.225512,
		0.068015, -0.996549, 0.047586,
		8.430027, 15.626326, 30.773312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.782381, 16.120523, 31.047127>,  <8.382416, 16.323910, 30.740000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.782381, 16.120523, 31.047127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.986135, 15.778712, 31.087732>,  <8.108389, 15.573626, 31.112095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.986135, 15.778712, 31.087732>,  <7.782381, 16.120523, 31.047127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.986135, 15.778712, 31.087732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281982, -0.054299, 0.957882,
		-0.813025, -0.516558, -0.268621,
		0.509388, -0.854529, 0.101514,
		8.138952, 15.522354, 31.118187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.248380, 15.918781, 31.477966>,  <7.782381, 16.120523, 31.047127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.248380, 15.918781, 31.477966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.619002, 15.775818, 31.524878>,  <7.841375, 15.690040, 31.553024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.619002, 15.775818, 31.524878>,  <7.248380, 15.918781, 31.477966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.619002, 15.775818, 31.524878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143933, -0.048809, 0.988383,
		-0.347534, -0.932671, -0.096667,
		0.926555, -0.357410, 0.117279,
		7.896969, 15.668595, 31.560061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.212754, 15.334483, 31.914782>,  <7.248380, 15.918781, 31.477966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.212754, 15.334483, 31.914782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.593614, 15.449456, 31.956331>,  <7.822130, 15.518440, 31.981262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.593614, 15.449456, 31.956331>,  <7.212754, 15.334483, 31.914782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.593614, 15.449456, 31.956331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111256, 0.009414, 0.993747,
		0.284659, -0.957754, 0.040942,
		0.952151, 0.287434, 0.103876,
		7.879260, 15.535686, 31.987494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.818409, 15.671370, 32.498318>,  <7.212754, 15.334483, 31.914782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.818409, 15.671370, 32.498318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.145491, 15.637843, 32.726120>,  <7.341741, 15.617727, 32.862801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.145491, 15.637843, 32.726120>,  <6.818409, 15.671370, 32.498318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.145491, 15.637843, 32.726120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543090, -0.440285, 0.714984,
		0.190816, -0.893937, -0.405543,
		0.817706, -0.083816, 0.569502,
		7.390803, 15.612699, 32.896969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.100454, 14.932623, 32.752205>,  <6.818409, 15.671370, 32.498318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.100454, 14.932623, 32.752205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.175157, 15.232762, 33.005848>,  <7.219978, 15.412847, 33.158035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.175157, 15.232762, 33.005848>,  <7.100454, 14.932623, 32.752205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.175157, 15.232762, 33.005848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492378, -0.487053, 0.721348,
		0.850109, -0.446939, 0.278495,
		0.186757, 0.750349, 0.634112,
		7.231184, 15.457867, 33.196083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.403710, 14.360265, 32.727352>,  <7.100454, 14.932623, 32.752205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.403710, 14.360265, 32.727352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.756170, 14.301421, 32.907101>,  <7.967647, 14.266115, 33.014950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.756170, 14.301421, 32.907101>,  <7.403710, 14.360265, 32.727352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.756170, 14.301421, 32.907101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299350, -0.562097, -0.770997,
		0.366009, 0.813883, -0.451255,
		0.881151, -0.147109, 0.449368,
		8.020515, 14.257288, 33.041912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.914363, 14.341506, 32.217220>,  <7.403710, 14.360265, 32.727352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.914363, 14.341506, 32.217220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.099894, 14.189402, 32.537289>,  <8.211212, 14.098139, 32.729328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.099894, 14.189402, 32.537289>,  <7.914363, 14.341506, 32.217220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.099894, 14.189402, 32.537289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514686, -0.619483, -0.592739,
		0.721085, 0.686762, -0.091617,
		0.463826, -0.380262, 0.800167,
		8.239041, 14.075323, 32.777340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.625576, 14.287526, 32.136692>,  <7.914363, 14.341506, 32.217220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.625576, 14.287526, 32.136692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.525778, 14.007586, 32.404411>,  <8.465899, 13.839622, 32.565044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.525778, 14.007586, 32.404411>,  <8.625576, 14.287526, 32.136692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.525778, 14.007586, 32.404411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459421, -0.693968, -0.554384,
		0.852458, 0.169176, 0.494667,
		-0.249494, -0.699849, 0.669301,
		8.450930, 13.797632, 32.605202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.215681, 13.830871, 32.259857>,  <8.625576, 14.287526, 32.136692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.215681, 13.830871, 32.259857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.885591, 13.621823, 32.345528>,  <8.687536, 13.496395, 32.396931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.885591, 13.621823, 32.345528>,  <9.215681, 13.830871, 32.259857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.885591, 13.621823, 32.345528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338140, -0.760893, -0.553808,
		0.452397, -0.384595, 0.804626,
		-0.825226, -0.522617, 0.214179,
		8.638022, 13.465038, 32.409782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.167617, 13.162420, 32.568539>,  <9.215681, 13.830871, 32.259857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.167617, 13.162420, 32.568539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.812416, 13.133357, 32.386913>,  <8.599296, 13.115919, 32.277939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.812416, 13.133357, 32.386913>,  <9.167617, 13.162420, 32.568539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.812416, 13.133357, 32.386913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366889, -0.707211, -0.604355,
		-0.277205, -0.703260, 0.654663,
		-0.888003, -0.072658, -0.454061,
		8.546015, 13.111560, 32.250694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.153109, 12.419451, 32.527748>,  <9.167617, 13.162420, 32.568539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.153109, 12.419451, 32.527748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.955566, 12.660178, 32.276695>,  <8.837041, 12.804615, 32.126064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.955566, 12.660178, 32.276695>,  <9.153109, 12.419451, 32.527748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.955566, 12.660178, 32.276695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120058, -0.667687, -0.734697,
		-0.861217, -0.438186, 0.257487,
		-0.493855, 0.601820, -0.627631,
		8.807410, 12.840724, 32.088406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.773889, 11.951745, 32.084553>,  <9.153109, 12.419451, 32.527748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.773889, 11.951745, 32.084553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.818273, 12.297202, 31.887856>,  <8.844903, 12.504477, 31.769838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.818273, 12.297202, 31.887856>,  <8.773889, 11.951745, 32.084553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.818273, 12.297202, 31.887856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292640, -0.501252, -0.814314,
		-0.949763, -0.053547, -0.308355,
		0.110960, 0.863643, -0.491740,
		8.851561, 12.556295, 31.740334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.441967, 11.910694, 31.400110>,  <8.773889, 11.951745, 32.084553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.441967, 11.910694, 31.400110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.695591, 12.214698, 31.343044>,  <8.847766, 12.397100, 31.308804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.695591, 12.214698, 31.343044>,  <8.441967, 11.910694, 31.400110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.695591, 12.214698, 31.343044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244110, -0.371785, -0.895649,
		-0.733742, 0.533069, -0.421259,
		0.634060, 0.760009, -0.142667,
		8.885809, 12.442700, 31.300243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.452865, 11.966140, 30.691475>,  <8.441967, 11.910694, 31.400110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.452865, 11.966140, 30.691475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.768116, 12.194113, 30.784452>,  <8.957267, 12.330896, 30.840239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.768116, 12.194113, 30.784452>,  <8.452865, 11.966140, 30.691475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.768116, 12.194113, 30.784452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304230, -0.032417, -0.952047,
		-0.535067, 0.821052, -0.198939,
		0.788129, 0.569932, 0.232444,
		9.004555, 12.365092, 30.854185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.458231, 12.307855, 30.105392>,  <8.452865, 11.966140, 30.691475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.458231, 12.307855, 30.105392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.815658, 12.352846, 30.279236>,  <9.030114, 12.379841, 30.383543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.815658, 12.352846, 30.279236>,  <8.458231, 12.307855, 30.105392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.815658, 12.352846, 30.279236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417834, 0.145657, -0.896771,
		-0.164172, 0.982920, 0.083157,
		0.893567, 0.112479, 0.434610,
		9.083728, 12.386590, 30.409618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.743685, 12.824971, 29.766495>,  <8.458231, 12.307855, 30.105392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.743685, 12.824971, 29.766495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.053958, 12.624091, 29.919394>,  <9.240122, 12.503563, 30.011133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.053958, 12.624091, 29.919394>,  <8.743685, 12.824971, 29.766495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.053958, 12.624091, 29.919394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510741, 0.143702, -0.847640,
		0.370755, 0.852728, 0.367961,
		0.775683, -0.502200, 0.382245,
		9.286663, 12.473432, 30.034067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.270553, 13.187286, 29.584332>,  <8.743685, 12.824971, 29.766495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.270553, 13.187286, 29.584332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.434318, 12.834858, 29.679070>,  <9.532577, 12.623401, 29.735912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.434318, 12.834858, 29.679070>,  <9.270553, 13.187286, 29.584332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.434318, 12.834858, 29.679070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724778, 0.156414, -0.670992,
		0.554146, 0.446373, 0.702619,
		0.409413, -0.881071, 0.236845,
		9.557141, 12.570537, 29.750124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.949100, 13.315801, 29.583534>,  <9.270553, 13.187286, 29.584332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.949100, 13.315801, 29.583534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.924738, 12.918884, 29.540363>,  <9.910121, 12.680735, 29.514462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.924738, 12.918884, 29.540363>,  <9.949100, 13.315801, 29.583534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.924738, 12.918884, 29.540363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605441, 0.049239, -0.794365,
		0.793556, -0.113723, 0.597775,
		-0.060904, -0.992292, -0.107927,
		9.906466, 12.621197, 29.507986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.660656, 13.160542, 29.324482>,  <9.949100, 13.315801, 29.583534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.660656, 13.160542, 29.324482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.409104, 12.858491, 29.250410>,  <10.258173, 12.677260, 29.205967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.409104, 12.858491, 29.250410>,  <10.660656, 13.160542, 29.324482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.409104, 12.858491, 29.250410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311600, -0.026575, -0.949842,
		0.712332, -0.655038, 0.252011,
		-0.628879, -0.755129, -0.185179,
		10.220441, 12.631952, 29.194857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.073315, 12.593509, 29.060829>,  <10.660656, 13.160542, 29.324482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.073315, 12.593509, 29.060829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.686234, 12.561282, 28.965279>,  <10.453985, 12.541946, 28.907949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.686234, 12.561282, 28.965279>,  <11.073315, 12.593509, 29.060829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.686234, 12.561282, 28.965279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250705, -0.208208, -0.945408,
		0.026434, -0.974761, 0.221682,
		-0.967703, -0.080568, -0.238874,
		10.395923, 12.537112, 28.893616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.022058, 12.053512, 28.559175>,  <11.073315, 12.593509, 29.060829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.022058, 12.053512, 28.559175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.663560, 12.226979, 28.521923>,  <10.448461, 12.331059, 28.499573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.663560, 12.226979, 28.521923>,  <11.022058, 12.053512, 28.559175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.663560, 12.226979, 28.521923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071807, -0.349049, -0.934349,
		-0.437707, -0.830720, 0.343974,
		-0.896246, 0.433670, -0.093130,
		10.394686, 12.357080, 28.493984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.625843, 11.707547, 28.017094>,  <11.022058, 12.053512, 28.559175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.625843, 11.707547, 28.017094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.441584, 12.062414, 28.027962>,  <10.331028, 12.275334, 28.034483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.441584, 12.062414, 28.027962>,  <10.625843, 11.707547, 28.017094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.441584, 12.062414, 28.027962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102026, -0.022519, -0.994527,
		-0.881699, -0.460900, 0.100888,
		-0.460649, 0.887167, 0.027168,
		10.303389, 12.328564, 28.036112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.210979, 11.612843, 27.549927>,  <10.625843, 11.707547, 28.017094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.210979, 11.612843, 27.549927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.243897, 12.008247, 27.600636>,  <10.263648, 12.245490, 27.631060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.243897, 12.008247, 27.600636>,  <10.210979, 11.612843, 27.549927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.243897, 12.008247, 27.600636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008471, 0.126503, -0.991930,
		-0.996572, 0.082704, 0.002037,
		0.082294, 0.988512, 0.126770,
		10.268586, 12.304801, 27.638666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.746012, 11.802371, 27.109961>,  <10.210979, 11.612843, 27.549927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.746012, 11.802371, 27.109961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.991263, 12.112031, 27.172911>,  <10.138414, 12.297827, 27.210680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.991263, 12.112031, 27.172911>,  <9.746012, 11.802371, 27.109961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.991263, 12.112031, 27.172911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190435, 0.048497, -0.980501,
		-0.766686, 0.631142, -0.117690,
		0.613128, 0.774149, 0.157374,
		10.175201, 12.344275, 27.220123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.545401, 12.280658, 26.627417>,  <9.746012, 11.802371, 27.109961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.545401, 12.280658, 26.627417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.918149, 12.403468, 26.704725>,  <10.141798, 12.477154, 26.751110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.918149, 12.403468, 26.704725>,  <9.545401, 12.280658, 26.627417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.918149, 12.403468, 26.704725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170288, 0.100231, -0.980283,
		-0.320344, 0.946409, 0.041119,
		0.931870, 0.307025, 0.193271,
		10.197710, 12.495576, 26.762707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.683219, 12.912335, 26.138218>,  <9.545401, 12.280658, 26.627417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.683219, 12.912335, 26.138218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.032580, 12.753557, 26.251072>,  <10.242197, 12.658290, 26.318785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.032580, 12.753557, 26.251072>,  <9.683219, 12.912335, 26.138218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.032580, 12.753557, 26.251072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302452, -0.011937, -0.953090,
		0.381693, 0.917764, 0.109631,
		0.873403, -0.396946, 0.282136,
		10.294601, 12.634474, 26.335712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.197822, 13.173141, 25.746571>,  <9.683219, 12.912335, 26.138218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.197822, 13.173141, 25.746571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.395446, 12.850624, 25.876678>,  <10.514020, 12.657114, 25.954742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.395446, 12.850624, 25.876678>,  <10.197822, 13.173141, 25.746571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.395446, 12.850624, 25.876678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379123, -0.136881, -0.915166,
		0.782414, 0.575464, 0.238056,
		0.494060, -0.806291, 0.325269,
		10.543664, 12.608737, 25.974258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.917153, 13.198838, 25.416107>,  <10.197822, 13.173141, 25.746571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.917153, 13.198838, 25.416107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.862122, 12.820122, 25.532492>,  <10.829103, 12.592892, 25.602322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.862122, 12.820122, 25.532492>,  <10.917153, 13.198838, 25.416107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.862122, 12.820122, 25.532492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311606, -0.320211, -0.894632,
		0.940198, -0.032418, 0.339081,
		-0.137580, -0.946791, 0.290960,
		10.820848, 12.536084, 25.619780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.628411, 12.874420, 25.337475>,  <10.917153, 13.198838, 25.416107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.628411, 12.874420, 25.337475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.341834, 12.596618, 25.311037>,  <11.169888, 12.429936, 25.295174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.341834, 12.596618, 25.311037>,  <11.628411, 12.874420, 25.337475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.341834, 12.596618, 25.311037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365550, -0.293018, -0.883467,
		0.594207, -0.657115, 0.463808,
		-0.716443, -0.694507, -0.066095,
		11.126901, 12.388266, 25.291208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.955430, 12.196068, 25.209175>,  <11.628411, 12.874420, 25.337475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.955430, 12.196068, 25.209175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.579691, 12.118746, 25.095856>,  <11.354247, 12.072352, 25.027864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.579691, 12.118746, 25.095856>,  <11.955430, 12.196068, 25.209175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.579691, 12.118746, 25.095856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337578, -0.375273, -0.863256,
		0.060557, -0.906533, 0.417768,
		-0.939348, -0.193306, -0.283301,
		11.297887, 12.060754, 25.010866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.040661, 11.719661, 24.755373>,  <11.955430, 12.196068, 25.209175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.040661, 11.719661, 24.755373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.667078, 11.831379, 24.666180>,  <11.442928, 11.898410, 24.612663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.667078, 11.831379, 24.666180>,  <12.040661, 11.719661, 24.755373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.667078, 11.831379, 24.666180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120041, -0.342522, -0.931809,
		-0.336603, -0.897043, 0.286379,
		-0.933964, 0.279273, -0.222976,
		11.386891, 11.915167, 24.599285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.749967, 11.185673, 24.278170>,  <12.040661, 11.719661, 24.755373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.749967, 11.185673, 24.278170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.517042, 11.506652, 24.226028>,  <11.377288, 11.699239, 24.194744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.517042, 11.506652, 24.226028>,  <11.749967, 11.185673, 24.278170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.517042, 11.506652, 24.226028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040220, -0.131713, -0.990472,
		-0.811971, -0.582005, 0.044424,
		-0.582311, 0.802447, -0.130355,
		11.342349, 11.747386, 24.186922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.344563, 11.020254, 23.818974>,  <11.749967, 11.185673, 24.278170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.344563, 11.020254, 23.818974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.319683, 11.417564, 23.779915>,  <11.304755, 11.655951, 23.756479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.319683, 11.417564, 23.779915>,  <11.344563, 11.020254, 23.818974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.319683, 11.417564, 23.779915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054918, -0.094282, -0.994029,
		-0.996552, -0.067192, -0.048685,
		-0.062201, 0.993275, -0.097647,
		11.301023, 11.715547, 23.750622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.086881, 11.102468, 23.143040>,  <11.344563, 11.020254, 23.818974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.086881, 11.102468, 23.143040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.184744, 11.479342, 23.234625>,  <11.243462, 11.705467, 23.289576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.184744, 11.479342, 23.234625>,  <11.086881, 11.102468, 23.143040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.184744, 11.479342, 23.234625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127786, 0.202746, -0.970858,
		-0.961152, 0.266787, -0.070795,
		0.244659, 0.942188, 0.228962,
		11.258142, 11.761999, 23.303314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.766851, 11.562987, 22.737694>,  <11.086881, 11.102468, 23.143040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.766851, 11.562987, 22.737694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.088684, 11.767449, 22.858601>,  <11.281784, 11.890127, 22.931145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.088684, 11.767449, 22.858601>,  <10.766851, 11.562987, 22.737694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.088684, 11.767449, 22.858601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174325, 0.283278, -0.943061,
		-0.567677, 0.811464, 0.138813,
		0.804582, 0.511156, 0.302269,
		11.330059, 11.920796, 22.949282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.665627, 12.319859, 22.428576>,  <10.766851, 11.562987, 22.737694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.665627, 12.319859, 22.428576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.049685, 12.263414, 22.525078>,  <11.280121, 12.229548, 22.582979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.049685, 12.263414, 22.525078>,  <10.665627, 12.319859, 22.428576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.049685, 12.263414, 22.525078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275125, 0.325143, -0.904759,
		0.049228, 0.935077, 0.351008,
		0.960147, -0.141111, 0.241257,
		11.337729, 12.221081, 22.597454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.888069, 12.963423, 22.261759>,  <10.665627, 12.319859, 22.428576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.888069, 12.963423, 22.261759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.215236, 12.737204, 22.304029>,  <11.411535, 12.601472, 22.329391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.215236, 12.737204, 22.304029>,  <10.888069, 12.963423, 22.261759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.215236, 12.737204, 22.304029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362396, 0.363765, -0.858105,
		0.446858, 0.740156, 0.502482,
		0.817916, -0.565548, 0.105678,
		11.460610, 12.567539, 22.335733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.421920, 13.389693, 22.196320>,  <10.888069, 12.963423, 22.261759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.421920, 13.389693, 22.196320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.534431, 13.026548, 22.071951>,  <11.601936, 12.808661, 21.997330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.534431, 13.026548, 22.071951>,  <11.421920, 13.389693, 22.196320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.534431, 13.026548, 22.071951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397993, 0.405184, -0.823060,
		0.873204, 0.107763, 0.475291,
		0.281276, -0.907862, -0.310920,
		11.618814, 12.754189, 21.978674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.985586, 13.538226, 21.914072>,  <11.421920, 13.389693, 22.196320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.985586, 13.538226, 21.914072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.905575, 13.171566, 21.775658>,  <11.857568, 12.951570, 21.692610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.905575, 13.171566, 21.775658>,  <11.985586, 13.538226, 21.914072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.905575, 13.171566, 21.775658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322852, 0.271784, -0.906587,
		0.925070, -0.293062, 0.241578,
		-0.200029, -0.916651, -0.346035,
		11.845566, 12.896571, 21.671846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.562479, 13.414941, 21.482264>,  <11.985586, 13.538226, 21.914072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.562479, 13.414941, 21.482264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.285852, 13.143763, 21.382561>,  <12.119877, 12.981056, 21.322739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.285852, 13.143763, 21.382561>,  <12.562479, 13.414941, 21.482264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.285852, 13.143763, 21.382561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265393, 0.082455, -0.960608,
		0.671791, -0.730474, 0.122899,
		-0.691565, -0.677945, -0.249255,
		12.078382, 12.940379, 21.307785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.969152, 12.903089, 21.120829>,  <12.562479, 13.414941, 21.482264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.969152, 12.903089, 21.120829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.589914, 12.862399, 21.000317>,  <12.362371, 12.837985, 20.928009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.589914, 12.862399, 21.000317>,  <12.969152, 12.903089, 21.120829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.589914, 12.862399, 21.000317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305006, -0.022943, -0.952074,
		0.089938, -0.994548, 0.052779,
		-0.948094, -0.101726, -0.301279,
		12.305486, 12.831882, 20.909933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.024212, 12.399136, 20.644510>,  <12.969152, 12.903089, 21.120829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.024212, 12.399136, 20.644510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.680709, 12.578629, 20.545578>,  <12.474607, 12.686326, 20.486219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.680709, 12.578629, 20.545578>,  <13.024212, 12.399136, 20.644510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.680709, 12.578629, 20.545578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178416, -0.190615, -0.965315,
		-0.480316, -0.873099, 0.083631,
		-0.858757, 0.448736, -0.247330,
		12.423081, 12.713250, 20.471378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.614268, 11.914814, 20.201395>,  <13.024212, 12.399136, 20.644510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.614268, 11.914814, 20.201395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.440187, 12.264862, 20.116766>,  <12.335739, 12.474891, 20.065989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.440187, 12.264862, 20.116766>,  <12.614268, 11.914814, 20.201395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.440187, 12.264862, 20.116766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049663, -0.211301, -0.976158,
		-0.898962, -0.435333, 0.048497,
		-0.435201, 0.875121, -0.211572,
		12.309627, 12.527398, 20.053295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.192654, 11.681661, 19.700563>,  <12.614268, 11.914814, 20.201395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.192654, 11.681661, 19.700563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.247359, 12.077853, 19.694342>,  <12.280183, 12.315569, 19.690609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.247359, 12.077853, 19.694342>,  <12.192654, 11.681661, 19.700563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.247359, 12.077853, 19.694342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179059, -0.040160, -0.983018,
		-0.974286, 0.131657, -0.182847,
		0.136765, 0.990482, -0.015553,
		12.288388, 12.374998, 19.689676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.731748, 11.947819, 19.233528>,  <12.192654, 11.681661, 19.700563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.731748, 11.947819, 19.233528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.982549, 12.257282, 19.270016>,  <12.133029, 12.442961, 19.291908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.982549, 12.257282, 19.270016>,  <11.731748, 11.947819, 19.233528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.982549, 12.257282, 19.270016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274951, -0.110215, -0.955120,
		-0.728883, 0.623943, -0.281823,
		0.627002, 0.773659, 0.091220,
		12.170650, 12.489380, 19.297382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.558509, 12.424586, 18.744301>,  <11.731748, 11.947819, 19.233528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.558509, 12.424586, 18.744301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.948205, 12.473250, 18.820255>,  <12.182022, 12.502449, 18.865828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.948205, 12.473250, 18.820255>,  <11.558509, 12.424586, 18.744301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.948205, 12.473250, 18.820255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210340, -0.186550, -0.959665,
		-0.081331, 0.974883, -0.207334,
		0.974240, 0.121661, 0.189884,
		12.240477, 12.509748, 18.877220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.786666, 12.878317, 18.292215>,  <11.558509, 12.424586, 18.744301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.786666, 12.878317, 18.292215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.132269, 12.708279, 18.400131>,  <12.339630, 12.606256, 18.464880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.132269, 12.708279, 18.400131>,  <11.786666, 12.878317, 18.292215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.132269, 12.708279, 18.400131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271572, -0.057732, -0.960685,
		0.423959, 0.903305, 0.065563,
		0.864007, -0.425096, 0.269789,
		12.391471, 12.580750, 18.481068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.370353, 13.263462, 17.902937>,  <11.786666, 12.878317, 18.292215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.370353, 13.263462, 17.902937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.502795, 12.897592, 17.995661>,  <12.582261, 12.678069, 18.051296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.502795, 12.897592, 17.995661>,  <12.370353, 13.263462, 17.902937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.502795, 12.897592, 17.995661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264571, -0.145821, -0.953278,
		0.905743, 0.376967, 0.193715,
		0.331107, -0.914676, 0.231811,
		12.602127, 12.623189, 18.065205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.007942, 13.253004, 17.698034>,  <12.370353, 13.263462, 17.902937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.007942, 13.253004, 17.698034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.941232, 12.859143, 17.718616>,  <12.901205, 12.622827, 17.730965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.941232, 12.859143, 17.718616>,  <13.007942, 13.253004, 17.698034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.941232, 12.859143, 17.718616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391527, -0.114029, -0.913074,
		0.904927, -0.132134, 0.404535,
		-0.166777, -0.984651, 0.051454,
		12.891199, 12.563747, 17.734053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.675834, 12.889286, 17.579344>,  <13.007942, 13.253004, 17.698034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.675834, 12.889286, 17.579344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.395206, 12.608850, 17.528309>,  <13.226830, 12.440589, 17.497688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.395206, 12.608850, 17.528309>,  <13.675834, 12.889286, 17.579344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.395206, 12.608850, 17.528309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372691, -0.208382, -0.904256,
		0.607376, -0.681947, 0.407483,
		-0.701567, -0.701088, -0.127589,
		13.184736, 12.398524, 17.490032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.985149, 12.260125, 17.284895>,  <13.675834, 12.889286, 17.579344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.985149, 12.260125, 17.284895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.594301, 12.244768, 17.201220>,  <13.359792, 12.235554, 17.151014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.594301, 12.244768, 17.201220>,  <13.985149, 12.260125, 17.284895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.594301, 12.244768, 17.201220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203742, -0.451156, -0.868877,
		-0.061017, -0.891619, 0.448657,
		-0.977122, -0.038393, -0.209188,
		13.301165, 12.233251, 17.138462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.416134, 12.096417, 17.898994>,  <13.985149, 12.260125, 17.284895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.416134, 12.096417, 17.898994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.776766, 11.923821, 17.886534>,  <14.993145, 11.820264, 17.879057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.776766, 11.923821, 17.886534>,  <14.416134, 12.096417, 17.898994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.776766, 11.923821, 17.886534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085041, -0.247369, 0.965182,
		-0.424174, -0.867539, -0.259717,
		0.901579, -0.431492, -0.031151,
		15.047239, 11.794374, 17.877188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.378397, 11.402653, 18.202051>,  <14.416134, 12.096417, 17.898994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.378397, 11.402653, 18.202051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.764000, 11.500467, 18.243797>,  <14.995361, 11.559156, 18.268845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.764000, 11.500467, 18.243797>,  <14.378397, 11.402653, 18.202051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.764000, 11.500467, 18.243797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049398, -0.220960, 0.974031,
		0.261246, -0.944129, -0.200928,
		0.964008, 0.244536, 0.104363,
		15.053203, 11.573828, 18.275106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.737286, 10.917595, 18.701929>,  <14.378397, 11.402653, 18.202051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.737286, 10.917595, 18.701929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.983494, 11.231288, 18.670647>,  <15.131219, 11.419503, 18.651876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.983494, 11.231288, 18.670647>,  <14.737286, 10.917595, 18.701929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.983494, 11.231288, 18.670647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025308, 0.118847, 0.992590,
		0.787715, -0.608979, 0.092999,
		0.615519, 0.784232, -0.078205,
		15.168150, 11.466558, 18.647184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.109603, 10.777089, 19.267599>,  <14.737286, 10.917595, 18.701929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.109603, 10.777089, 19.267599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.180080, 11.166130, 19.206936>,  <15.222366, 11.399554, 19.170538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.180080, 11.166130, 19.206936>,  <15.109603, 10.777089, 19.267599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.180080, 11.166130, 19.206936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096506, 0.170395, 0.980639,
		0.979614, -0.158146, 0.123884,
		0.176193, 0.972603, -0.151660,
		15.232939, 11.457911, 19.161438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.600518, 10.986449, 19.890673>,  <15.109603, 10.777089, 19.267599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.600518, 10.986449, 19.890673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.406992, 11.308825, 19.754213>,  <15.290876, 11.502252, 19.672338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.406992, 11.308825, 19.754213>,  <15.600518, 10.986449, 19.890673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.406992, 11.308825, 19.754213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221383, 0.264424, 0.938653,
		0.846706, 0.529660, 0.050490,
		-0.483816, 0.805941, -0.341147,
		15.261847, 11.550608, 19.651869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.937339, 11.595036, 20.214911>,  <15.600518, 10.986449, 19.890673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.937339, 11.595036, 20.214911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.570782, 11.714345, 20.108133>,  <15.350847, 11.785931, 20.044067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.570782, 11.714345, 20.108133>,  <15.937339, 11.595036, 20.214911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.570782, 11.714345, 20.108133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171979, 0.308815, 0.935445,
		0.361454, 0.903143, -0.231698,
		-0.916392, 0.298273, -0.266944,
		15.295864, 11.803827, 20.028049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.884680, 12.333358, 20.379118>,  <15.937339, 11.595036, 20.214911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.884680, 12.333358, 20.379118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.520166, 12.170011, 20.357954>,  <15.301458, 12.072002, 20.345255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.520166, 12.170011, 20.357954>,  <15.884680, 12.333358, 20.379118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.520166, 12.170011, 20.357954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159570, 0.231755, 0.959597,
		-0.379608, 0.882907, -0.276357,
		-0.911282, -0.408369, -0.052909,
		15.246781, 12.047500, 20.342081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.495236, 12.786764, 20.703262>,  <15.884680, 12.333358, 20.379118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.495236, 12.786764, 20.703262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.238142, 12.480427, 20.695530>,  <15.083885, 12.296624, 20.690891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.238142, 12.480427, 20.695530>,  <15.495236, 12.786764, 20.703262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.238142, 12.480427, 20.695530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337658, 0.260550, 0.904489,
		-0.687661, 0.587875, -0.426058,
		-0.642736, -0.765844, -0.019331,
		15.045321, 12.250673, 20.689732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.854338, 13.093635, 20.913918>,  <15.495236, 12.786764, 20.703262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.854338, 13.093635, 20.913918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.810178, 12.701652, 20.980242>,  <14.783682, 12.466461, 21.020037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.810178, 12.701652, 20.980242>,  <14.854338, 13.093635, 20.913918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.810178, 12.701652, 20.980242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366474, 0.195212, 0.909719,
		-0.923856, 0.039667, -0.380680,
		-0.110400, -0.979958, 0.165811,
		14.777058, 12.407664, 21.029985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.284137, 13.045788, 21.265726>,  <14.854338, 13.093635, 20.913918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.284137, 13.045788, 21.265726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.456204, 12.697546, 21.361227>,  <14.559444, 12.488601, 21.418528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.456204, 12.697546, 21.361227>,  <14.284137, 13.045788, 21.265726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.456204, 12.697546, 21.361227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297309, 0.113091, 0.948060,
		-0.852386, -0.478808, -0.210191,
		0.430168, -0.870605, 0.238751,
		14.585255, 12.436364, 21.432852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.922822, 12.918451, 21.820568>,  <14.284137, 13.045788, 21.265726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.922822, 12.918451, 21.820568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.233809, 12.667118, 21.831469>,  <14.420401, 12.516318, 21.838009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.233809, 12.667118, 21.831469>,  <13.922822, 12.918451, 21.820568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.233809, 12.667118, 21.831469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010794, 0.056652, 0.998335,
		-0.628832, -0.775878, 0.050827,
		0.777467, -0.628333, 0.027250,
		14.467049, 12.478618, 21.839643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.755011, 12.437026, 22.312296>,  <13.922822, 12.918451, 21.820568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.755011, 12.437026, 22.312296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.152474, 12.460625, 22.274015>,  <14.390953, 12.474784, 22.251047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.152474, 12.460625, 22.274015>,  <13.755011, 12.437026, 22.312296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.152474, 12.460625, 22.274015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095257, 0.010288, 0.995400,
		0.059711, -0.998205, 0.004603,
		0.993660, 0.058998, -0.095700,
		14.450573, 12.478324, 22.245306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.942706, 12.062915, 22.781734>,  <13.755011, 12.437026, 22.312296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.942706, 12.062915, 22.781734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.285736, 12.252370, 22.701500>,  <14.491554, 12.366043, 22.653360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.285736, 12.252370, 22.701500>,  <13.942706, 12.062915, 22.781734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.285736, 12.252370, 22.701500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259726, -0.062146, 0.963681,
		0.443969, -0.878525, -0.176311,
		0.857574, 0.473637, -0.200584,
		14.543009, 12.394461, 22.641325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.464156, 11.689697, 23.058409>,  <13.942706, 12.062915, 22.781734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.464156, 11.689697, 23.058409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.583323, 12.070854, 23.035641>,  <14.654822, 12.299548, 23.021980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.583323, 12.070854, 23.035641>,  <14.464156, 11.689697, 23.058409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.583323, 12.070854, 23.035641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059100, 0.041100, 0.997406,
		0.952761, -0.300508, -0.044072,
		0.297917, 0.952893, -0.056919,
		14.672698, 12.356722, 23.018564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.946427, 11.730865, 23.550793>,  <14.464156, 11.689697, 23.058409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.946427, 11.730865, 23.550793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.846934, 12.113132, 23.487759>,  <14.787239, 12.342492, 23.449938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.846934, 12.113132, 23.487759>,  <14.946427, 11.730865, 23.550793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.846934, 12.113132, 23.487759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190451, 0.207777, 0.959457,
		0.949664, 0.208635, -0.233688,
		-0.248732, 0.955667, -0.157584,
		14.772315, 12.399832, 23.440483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.380283, 12.115132, 24.013565>,  <14.946427, 11.730865, 23.550793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.380283, 12.115132, 24.013565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.078686, 12.356620, 23.910017>,  <14.897727, 12.501513, 23.847887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.078686, 12.356620, 23.910017>,  <15.380283, 12.115132, 24.013565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.078686, 12.356620, 23.910017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093216, 0.291766, 0.951937,
		0.650233, 0.741886, -0.163714,
		-0.753995, 0.603720, -0.258872,
		14.852488, 12.537736, 23.832355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.525586, 12.737794, 24.366039>,  <15.380283, 12.115132, 24.013565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.525586, 12.737794, 24.366039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.139554, 12.741693, 24.261330>,  <14.907935, 12.744034, 24.198503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.139554, 12.741693, 24.261330>,  <15.525586, 12.737794, 24.366039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.139554, 12.741693, 24.261330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253475, 0.217429, 0.942590,
		0.066107, 0.976028, -0.207365,
		-0.965080, 0.009750, -0.261772,
		14.850030, 12.744618, 24.182798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246718, 13.353736, 24.774471>,  <15.525586, 12.737794, 24.366039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.246718, 13.353736, 24.774471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.939355, 13.116876, 24.677391>,  <14.754936, 12.974759, 24.619143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.939355, 13.116876, 24.677391>,  <15.246718, 13.353736, 24.774471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.939355, 13.116876, 24.677391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342149, 0.059642, 0.937751,
		-0.540815, 0.803617, -0.248433,
		-0.768410, -0.592151, -0.242702,
		14.708832, 12.939230, 24.604580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.634589, 13.865609, 24.770027>,  <15.246718, 13.353736, 24.774471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.634589, 13.865609, 24.770027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.508513, 13.492673, 24.840906>,  <14.432868, 13.268911, 24.883432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.508513, 13.492673, 24.840906>,  <14.634589, 13.865609, 24.770027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.508513, 13.492673, 24.840906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429011, 0.306522, 0.849702,
		-0.846526, 0.191798, -0.496597,
		-0.315189, -0.932340, 0.177195,
		14.413957, 13.212971, 24.894064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.966055, 14.080926, 25.003996>,  <14.634589, 13.865609, 24.770027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.966055, 14.080926, 25.003996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.027994, 13.698950, 25.105276>,  <14.065158, 13.469764, 25.166044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.027994, 13.698950, 25.105276>,  <13.966055, 14.080926, 25.003996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.027994, 13.698950, 25.105276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415544, 0.169559, 0.893629,
		-0.896295, -0.243592, -0.370565,
		0.154848, -0.954942, 0.253198,
		14.074449, 13.412467, 25.181236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.369110, 13.836778, 25.297272>,  <13.966055, 14.080926, 25.003996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.369110, 13.836778, 25.297272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.636177, 13.570958, 25.431492>,  <13.796417, 13.411467, 25.512024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.636177, 13.570958, 25.431492>,  <13.369110, 13.836778, 25.297272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.636177, 13.570958, 25.431492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375369, 0.088727, 0.922619,
		-0.642897, -0.741959, -0.190210,
		0.667668, -0.664548, 0.335551,
		13.836477, 13.371593, 25.532158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.038540, 13.254513, 25.622900>,  <13.369110, 13.836778, 25.297272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.038540, 13.254513, 25.622900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.397098, 13.182709, 25.785011>,  <13.612232, 13.139627, 25.882278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.397098, 13.182709, 25.785011>,  <13.038540, 13.254513, 25.622900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.397098, 13.182709, 25.785011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430534, -0.135120, 0.892403,
		-0.105434, -0.974433, -0.198406,
		0.896395, -0.179510, 0.405280,
		13.666017, 13.128856, 25.906595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.054092, 12.639246, 25.919683>,  <13.038540, 13.254513, 25.622900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.054092, 12.639246, 25.919683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.338820, 12.847342, 26.108433>,  <13.509656, 12.972199, 26.221684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.338820, 12.847342, 26.108433>,  <13.054092, 12.639246, 25.919683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.338820, 12.847342, 26.108433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430734, -0.207333, 0.878340,
		0.554783, -0.828470, 0.076502,
		0.711818, 0.520240, 0.471875,
		13.552365, 13.003413, 26.249996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.105871, 12.340435, 26.607393>,  <13.054092, 12.639246, 25.919683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.105871, 12.340435, 26.607393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.286336, 12.696873, 26.627005>,  <13.394615, 12.910735, 26.638771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.286336, 12.696873, 26.627005>,  <13.105871, 12.340435, 26.607393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.286336, 12.696873, 26.627005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416472, 0.161637, 0.894664,
		0.789306, -0.424056, 0.444040,
		0.451162, 0.891095, 0.049026,
		13.421684, 12.964201, 26.641712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.521247, 12.422571, 27.233692>,  <13.105871, 12.340435, 26.607393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.521247, 12.422571, 27.233692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.422331, 12.795383, 27.127737>,  <13.362981, 13.019071, 27.064163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.422331, 12.795383, 27.127737>,  <13.521247, 12.422571, 27.233692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.422331, 12.795383, 27.127737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356804, 0.166575, 0.919208,
		0.900854, 0.321825, 0.291360,
		-0.247291, 0.932031, -0.264888,
		13.348144, 13.074993, 27.048271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.751043, 12.861586, 27.858561>,  <13.521247, 12.422571, 27.233692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.751043, 12.861586, 27.858561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.489686, 13.072519, 27.641306>,  <13.332871, 13.199080, 27.510954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.489686, 13.072519, 27.641306>,  <13.751043, 12.861586, 27.858561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.489686, 13.072519, 27.641306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428759, 0.333508, 0.839606,
		0.623893, 0.781467, 0.008188,
		-0.653393, 0.527335, -0.543134,
		13.293668, 13.230720, 27.478365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.863663, 13.701063, 27.975758>,  <13.751043, 12.861586, 27.858561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.863663, 13.701063, 27.975758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.485155, 13.608870, 27.885025>,  <13.258051, 13.553554, 27.830585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.485155, 13.608870, 27.885025>,  <13.863663, 13.701063, 27.975758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.485155, 13.608870, 27.885025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311149, 0.457813, 0.832822,
		-0.088105, 0.858652, -0.504929,
		-0.946268, -0.230485, -0.226833,
		13.201275, 13.539724, 27.816975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.451467, 14.268501, 28.225409>,  <13.863663, 13.701063, 27.975758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.451467, 14.268501, 28.225409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.197605, 13.964246, 28.170790>,  <13.045288, 13.781693, 28.138018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.197605, 13.964246, 28.170790>,  <13.451467, 14.268501, 28.225409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.197605, 13.964246, 28.170790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566699, 0.337943, 0.751429,
		-0.525421, 0.554278, -0.645530,
		-0.634653, -0.760638, -0.136547,
		13.007209, 13.736054, 28.129826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.868632, 14.572174, 28.353231>,  <13.451467, 14.268501, 28.225409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.868632, 14.572174, 28.353231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.780965, 14.183379, 28.387190>,  <12.728364, 13.950103, 28.407564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.780965, 14.183379, 28.387190>,  <12.868632, 14.572174, 28.353231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.780965, 14.183379, 28.387190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490237, 0.184935, 0.851743,
		-0.843583, 0.145056, -0.517036,
		-0.219169, -0.971987, 0.084896,
		12.715215, 13.891783, 28.412659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.198351, 14.541082, 28.287355>,  <12.868632, 14.572174, 28.353231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.198351, 14.541082, 28.287355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.322649, 14.215668, 28.483965>,  <12.397228, 14.020419, 28.601931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.322649, 14.215668, 28.483965>,  <12.198351, 14.541082, 28.287355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.322649, 14.215668, 28.483965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416738, 0.348155, 0.839712,
		-0.854264, -0.465773, -0.230845,
		0.310746, -0.813538, 0.491522,
		12.415873, 13.971606, 28.631422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.660050, 14.386072, 28.685911>,  <12.198351, 14.541082, 28.287355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.660050, 14.386072, 28.685911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.985127, 14.215753, 28.845022>,  <12.180174, 14.113561, 28.940489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.985127, 14.215753, 28.845022>,  <11.660050, 14.386072, 28.685911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.985127, 14.215753, 28.845022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367810, 0.154598, 0.916960,
		-0.451936, -0.891512, -0.030973,
		0.812692, -0.425799, 0.397776,
		12.228935, 14.088013, 28.964355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.371744, 14.202276, 29.275225>,  <11.660050, 14.386072, 28.685911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.371744, 14.202276, 29.275225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.765999, 14.172178, 29.335701>,  <12.002552, 14.154119, 29.371986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.765999, 14.172178, 29.335701>,  <11.371744, 14.202276, 29.275225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.765999, 14.172178, 29.335701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149025, 0.033630, 0.988261,
		-0.079450, -0.996598, 0.021933,
		0.985637, -0.075248, 0.151190,
		12.061689, 14.149605, 29.381058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.426709, 13.646746, 29.727428>,  <11.371744, 14.202276, 29.275225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.426709, 13.646746, 29.727428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.751163, 13.879460, 29.751381>,  <11.945835, 14.019089, 29.765753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.751163, 13.879460, 29.751381>,  <11.426709, 13.646746, 29.727428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.751163, 13.879460, 29.751381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231095, 0.224767, 0.946612,
		0.537267, -0.781668, 0.316764,
		0.811135, 0.581787, 0.059880,
		11.994503, 14.053996, 29.769344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.653964, 13.574501, 30.468189>,  <11.426709, 13.646746, 29.727428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.653964, 13.574501, 30.468189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.804403, 13.922202, 30.339848>,  <11.894667, 14.130823, 30.262842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.804403, 13.922202, 30.339848>,  <11.653964, 13.574501, 30.468189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.804403, 13.922202, 30.339848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275117, 0.435425, 0.857155,
		0.884794, -0.234102, 0.402909,
		0.376099, 0.869253, -0.320855,
		11.917233, 14.182978, 30.243591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.998434, 13.880552, 31.058481>,  <11.653964, 13.574501, 30.468189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.998434, 13.880552, 31.058481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.938425, 14.179497, 30.799578>,  <11.902420, 14.358864, 30.644236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.938425, 14.179497, 30.799578>,  <11.998434, 13.880552, 31.058481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.938425, 14.179497, 30.799578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369728, 0.564761, 0.737799,
		0.916949, 0.349996, 0.191594,
		-0.150022, 0.747361, -0.647260,
		11.893418, 14.403705, 30.605400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.327260, 14.418089, 31.358587>,  <11.998434, 13.880552, 31.058481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.327260, 14.418089, 31.358587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.055080, 14.584925, 31.117580>,  <11.891773, 14.685026, 30.972977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.055080, 14.584925, 31.117580>,  <12.327260, 14.418089, 31.358587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.055080, 14.584925, 31.117580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321507, 0.568933, 0.756933,
		0.658501, 0.708767, -0.253033,
		-0.680448, 0.417089, -0.602517,
		11.850945, 14.710052, 30.936825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.294680, 15.089026, 31.474178>,  <12.327260, 14.418089, 31.358587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.294680, 15.089026, 31.474178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.942390, 15.080819, 31.284903>,  <11.731017, 15.075894, 31.171337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.942390, 15.080819, 31.284903>,  <12.294680, 15.089026, 31.474178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.942390, 15.080819, 31.284903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415521, 0.512954, 0.751146,
		0.227311, 0.858171, -0.460296,
		-0.880723, -0.020519, -0.473188,
		11.678174, 15.074663, 31.142946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.599680, 15.552226, 31.854923>,  <12.294680, 15.089026, 31.474178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.599680, 15.552226, 31.854923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.520617, 15.932023, 31.757437>,  <12.473180, 16.159901, 31.698944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.520617, 15.932023, 31.757437>,  <12.599680, 15.552226, 31.854923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.520617, 15.932023, 31.757437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800846, 0.013031, -0.598729,
		-0.565312, -0.313522, -0.762972,
		-0.197657, 0.949492, -0.243716,
		12.461320, 16.216871, 31.684322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.999950, 15.396789, 31.324394>,  <12.599680, 15.552226, 31.854923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.999950, 15.396789, 31.324394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.921839, 15.788541, 31.345095>,  <12.874971, 16.023592, 31.357515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.921839, 15.788541, 31.345095>,  <12.999950, 15.396789, 31.324394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.921839, 15.788541, 31.345095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605399, 0.161889, -0.779285,
		-0.771595, -0.120849, -0.624530,
		-0.195280, 0.979381, 0.051751,
		12.863255, 16.082355, 31.360620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.696340, 15.637523, 30.657375>,  <12.999950, 15.396789, 31.324394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.696340, 15.637523, 30.657375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.877793, 15.959397, 30.810579>,  <12.986666, 16.152523, 30.902502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.877793, 15.959397, 30.810579>,  <12.696340, 15.637523, 30.657375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.877793, 15.959397, 30.810579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432422, 0.177044, -0.884119,
		-0.779248, 0.566688, -0.267652,
		0.453633, 0.804687, 0.383009,
		13.013884, 16.200804, 30.925482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.700766, 16.063833, 30.056574>,  <12.696340, 15.637523, 30.657375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.700766, 16.063833, 30.056574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.984048, 16.200439, 30.303738>,  <13.154017, 16.282404, 30.452036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.984048, 16.200439, 30.303738>,  <12.700766, 16.063833, 30.056574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.984048, 16.200439, 30.303738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594188, 0.184356, -0.782913,
		-0.381293, 0.921618, -0.072363,
		0.708206, 0.341517, 0.617908,
		13.196509, 16.302895, 30.489111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.861273, 16.708958, 29.845106>,  <12.700766, 16.063833, 30.056574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.861273, 16.708958, 29.845106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.176205, 16.563610, 30.044334>,  <13.365164, 16.476402, 30.163872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.176205, 16.563610, 30.044334>,  <12.861273, 16.708958, 29.845106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.176205, 16.563610, 30.044334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593827, 0.229730, -0.771098,
		0.165771, 0.902877, 0.396652,
		0.787330, -0.363368, 0.498071,
		13.412404, 16.454599, 30.193756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.383624, 17.147142, 29.647375>,  <12.861273, 16.708958, 29.845106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.383624, 17.147142, 29.647375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.556235, 16.820707, 29.801147>,  <13.659801, 16.624847, 29.893412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.556235, 16.820707, 29.801147>,  <13.383624, 17.147142, 29.647375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.556235, 16.820707, 29.801147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670234, 0.004810, -0.742134,
		0.603797, 0.577909, 0.549045,
		0.431527, -0.816087, 0.384430,
		13.685694, 16.575882, 29.916477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.080561, 17.315834, 29.625984>,  <13.383624, 17.147142, 29.647375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.080561, 17.315834, 29.625984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.081696, 16.920773, 29.688641>,  <14.082376, 16.683737, 29.726234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.081696, 16.920773, 29.688641>,  <14.080561, 17.315834, 29.625984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.081696, 16.920773, 29.688641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783625, -0.095114, -0.613910,
		0.621228, 0.124488, 0.773679,
		0.002837, -0.987652, 0.156640,
		14.082546, 16.624477, 29.735632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.833051, 17.079418, 29.766777>,  <14.080561, 17.315834, 29.625984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.833051, 17.079418, 29.766777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.670525, 16.728428, 29.664841>,  <14.573009, 16.517834, 29.603680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.670525, 16.728428, 29.664841>,  <14.833051, 17.079418, 29.766777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.670525, 16.728428, 29.664841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820740, -0.227898, -0.523878,
		0.401613, -0.422017, 0.812779,
		-0.406316, -0.877476, -0.254839,
		14.548630, 16.465185, 29.588388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.412110, 16.635010, 29.819605>,  <14.833051, 17.079418, 29.766777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.412110, 16.635010, 29.819605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.136709, 16.469799, 29.581152>,  <14.971469, 16.370672, 29.438080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.136709, 16.469799, 29.581152>,  <15.412110, 16.635010, 29.819605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.136709, 16.469799, 29.581152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720227, -0.292974, -0.628840,
		0.085076, -0.862308, 0.499186,
		-0.688502, -0.413027, -0.596132,
		14.930159, 16.345892, 29.402311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.715417, 15.918474, 29.512604>,  <15.412110, 16.635010, 29.819605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.715417, 15.918474, 29.512604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.418011, 15.998545, 29.257381>,  <15.239567, 16.046587, 29.104248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.418011, 15.998545, 29.257381>,  <15.715417, 15.918474, 29.512604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.418011, 15.998545, 29.257381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518437, -0.430117, -0.739068,
		-0.422382, -0.880300, 0.216020,
		-0.743516, 0.200177, -0.638054,
		15.194956, 16.058598, 29.065966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.632632, 15.406445, 29.154085>,  <15.715417, 15.918474, 29.512604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.632632, 15.406445, 29.154085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.490733, 15.692552, 28.913237>,  <15.405594, 15.864216, 28.768728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.490733, 15.692552, 28.913237>,  <15.632632, 15.406445, 29.154085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.490733, 15.692552, 28.913237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435657, -0.443360, -0.783348,
		-0.827259, -0.540208, -0.154330,
		-0.354747, 0.715267, -0.602120,
		15.384309, 15.907132, 28.732601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.486050, 15.012630, 28.589121>,  <15.632632, 15.406445, 29.154085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.486050, 15.012630, 28.589121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.473702, 15.380330, 28.432135>,  <15.466294, 15.600950, 28.337944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.473702, 15.380330, 28.432135>,  <15.486050, 15.012630, 28.589121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.473702, 15.380330, 28.432135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450856, -0.337631, -0.826277,
		-0.892063, -0.202449, -0.404027,
		-0.030867, 0.919249, -0.392464,
		15.464442, 15.656105, 28.314396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.231569, 14.874656, 27.939953>,  <15.486050, 15.012630, 28.589121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.231569, 14.874656, 27.939953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.417294, 15.228076, 27.915438>,  <15.528728, 15.440128, 27.900728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.417294, 15.228076, 27.915438>,  <15.231569, 14.874656, 27.939953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.417294, 15.228076, 27.915438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405788, -0.273733, -0.872013,
		-0.787244, 0.380014, -0.485630,
		0.464310, 0.883549, -0.061290,
		15.556586, 15.493141, 27.897051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.067315, 15.097669, 27.311098>,  <15.231569, 14.874656, 27.939953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.067315, 15.097669, 27.311098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.420235, 15.224897, 27.449881>,  <15.631987, 15.301235, 27.533150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.420235, 15.224897, 27.449881>,  <15.067315, 15.097669, 27.311098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.420235, 15.224897, 27.449881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411365, -0.162830, -0.896808,
		-0.228755, 0.933979, -0.274508,
		0.882298, 0.318072, 0.346958,
		15.684924, 15.320319, 27.553968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.346478, 15.613258, 27.018852>,  <15.067315, 15.097669, 27.311098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.346478, 15.613258, 27.018852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.678625, 15.418428, 27.127111>,  <15.877913, 15.301531, 27.192068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.678625, 15.418428, 27.127111>,  <15.346478, 15.613258, 27.018852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.678625, 15.418428, 27.127111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287989, -0.040676, -0.956770,
		0.477027, 0.872413, 0.106496,
		0.830366, -0.487074, 0.270649,
		15.927735, 15.272306, 27.208305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936103, 15.891461, 26.662657>,  <15.346478, 15.613258, 27.018852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.936103, 15.891461, 26.662657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.999312, 15.507913, 26.756971>,  <16.037239, 15.277783, 26.813560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.999312, 15.507913, 26.756971>,  <15.936103, 15.891461, 26.662657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.999312, 15.507913, 26.756971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435891, -0.146520, -0.887993,
		0.886018, 0.243101, 0.394810,
		0.158025, -0.958871, 0.235785,
		16.046721, 15.220251, 26.827707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.618925, 15.773180, 26.397427>,  <15.936103, 15.891461, 26.662657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.618925, 15.773180, 26.397427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.451523, 15.411970, 26.436203>,  <16.351082, 15.195244, 26.459469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.451523, 15.411970, 26.436203>,  <16.618925, 15.773180, 26.397427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.451523, 15.411970, 26.436203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381711, -0.271742, -0.883432,
		0.824105, -0.332718, 0.458421,
		-0.418506, -0.903025, 0.096942,
		16.325972, 15.141063, 26.465286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120630, 15.222280, 26.096800>,  <16.618925, 15.773180, 26.397427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120630, 15.222280, 26.096800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.768265, 15.033060, 26.090935>,  <16.556845, 14.919528, 26.087416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.768265, 15.033060, 26.090935>,  <17.120630, 15.222280, 26.096800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.768265, 15.033060, 26.090935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250254, -0.439283, -0.862788,
		0.401701, -0.763711, 0.505353,
		-0.880914, -0.473049, -0.014662,
		16.503990, 14.891146, 26.086536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.264542, 14.660843, 25.683746>,  <17.120630, 15.222280, 26.096800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.264542, 14.660843, 25.683746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.866051, 14.627008, 25.691505>,  <16.626957, 14.606708, 25.696161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.866051, 14.627008, 25.691505>,  <17.264542, 14.660843, 25.683746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.866051, 14.627008, 25.691505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019238, -0.433209, -0.901088,
		0.084624, -0.897315, 0.433202,
		-0.996227, -0.084588, 0.019397,
		16.567183, 14.601632, 25.697325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.191635, 13.972014, 25.407972>,  <17.264542, 14.660843, 25.683746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.191635, 13.972014, 25.407972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.848883, 14.175202, 25.372818>,  <16.643232, 14.297115, 25.351727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.848883, 14.175202, 25.372818>,  <17.191635, 13.972014, 25.407972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.848883, 14.175202, 25.372818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142876, -0.397807, -0.906276,
		-0.495325, -0.764011, 0.413450,
		-0.856878, 0.507973, -0.087885,
		16.591820, 14.327594, 25.346453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.693018, 13.473809, 25.144905>,  <17.191635, 13.972014, 25.407972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.693018, 13.473809, 25.144905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.568624, 13.842945, 25.053991>,  <16.493988, 14.064426, 24.999443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.568624, 13.842945, 25.053991>,  <16.693018, 13.473809, 25.144905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.568624, 13.842945, 25.053991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219232, -0.302346, -0.927644,
		-0.924785, -0.238653, 0.296341,
		-0.310983, 0.922839, -0.227285,
		16.475330, 14.119797, 24.985806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.136826, 13.400903, 24.539648>,  <16.693018, 13.473809, 25.144905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.136826, 13.400903, 24.539648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.208492, 13.793174, 24.508223>,  <16.251492, 14.028536, 24.489367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.208492, 13.793174, 24.508223>,  <16.136826, 13.400903, 24.539648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.208492, 13.793174, 24.508223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137779, -0.054059, -0.988986,
		-0.974124, 0.188016, 0.125432,
		0.179165, 0.980677, -0.078565,
		16.262241, 14.087377, 24.484653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.500145, 13.712152, 24.215414>,  <16.136826, 13.400903, 24.539648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.500145, 13.712152, 24.215414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.820552, 13.939981, 24.141701>,  <16.012796, 14.076678, 24.097473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.820552, 13.939981, 24.141701>,  <15.500145, 13.712152, 24.215414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.820552, 13.939981, 24.141701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144731, -0.114446, -0.982830,
		-0.580883, 0.813934, -0.009238,
		0.801017, 0.569573, -0.184281,
		16.060856, 14.110852, 24.086416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.380895, 14.068752, 23.625523>,  <15.500145, 13.712152, 24.215414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.380895, 14.068752, 23.625523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.779755, 14.091419, 23.645449>,  <16.019070, 14.105020, 23.657404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.779755, 14.091419, 23.645449>,  <15.380895, 14.068752, 23.625523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.779755, 14.091419, 23.645449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060155, -0.198612, -0.978231,
		-0.045541, 0.978439, -0.201454,
		0.997150, 0.056668, 0.049813,
		16.078899, 14.108419, 23.660393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.510781, 14.386318, 23.030697>,  <15.380895, 14.068752, 23.625523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.510781, 14.386318, 23.030697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.851973, 14.204270, 23.132910>,  <16.056686, 14.095041, 23.194237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.851973, 14.204270, 23.132910>,  <15.510781, 14.386318, 23.030697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.851973, 14.204270, 23.132910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183258, -0.197266, -0.963070,
		0.488719, 0.868304, -0.084859,
		0.852977, -0.455120, 0.255531,
		16.107866, 14.067735, 23.209570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.091619, 14.619858, 22.530626>,  <15.510781, 14.386318, 23.030697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.091619, 14.619858, 22.530626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.257368, 14.293859, 22.692650>,  <16.356817, 14.098259, 22.789864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.257368, 14.293859, 22.692650>,  <16.091619, 14.619858, 22.530626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.257368, 14.293859, 22.692650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468128, -0.190812, -0.862813,
		0.780482, 0.547146, 0.302456,
		0.414373, -0.814998, 0.405060,
		16.381680, 14.049359, 22.814167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849468, 14.735009, 22.624193>,  <16.091619, 14.619858, 22.530626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.849468, 14.735009, 22.624193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722780, 14.357924, 22.582270>,  <16.646769, 14.131674, 22.557116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722780, 14.357924, 22.582270>,  <16.849468, 14.735009, 22.624193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.722780, 14.357924, 22.582270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527244, -0.083120, -0.845639,
		0.788482, -0.323089, 0.523364,
		-0.316719, -0.942711, -0.104808,
		16.627764, 14.075111, 22.550827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.402411, 14.434714, 22.422480>,  <16.849468, 14.735009, 22.624193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.402411, 14.434714, 22.422480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.122240, 14.164109, 22.331501>,  <16.954138, 14.001746, 22.276915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.122240, 14.164109, 22.331501>,  <17.402411, 14.434714, 22.422480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.122240, 14.164109, 22.331501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467726, -0.194372, -0.862236,
		0.539106, -0.710316, 0.452566,
		-0.700427, -0.676514, -0.227446,
		16.912111, 13.961155, 22.263268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.707283, 13.778677, 22.385084>,  <17.402411, 14.434714, 22.422480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.707283, 13.778677, 22.385084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.393833, 13.717296, 22.144291>,  <17.205763, 13.680467, 21.999815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.393833, 13.717296, 22.144291>,  <17.707283, 13.778677, 22.385084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.393833, 13.717296, 22.144291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617570, -0.297525, -0.728070,
		-0.067379, -0.942301, 0.327917,
		-0.783624, -0.153455, -0.601984,
		17.158747, 13.671260, 21.963696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.869560, 13.213004, 21.868944>,  <17.707283, 13.778677, 22.385084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.869560, 13.213004, 21.868944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.558121, 13.387100, 21.688126>,  <17.371256, 13.491558, 21.579634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.558121, 13.387100, 21.688126>,  <17.869560, 13.213004, 21.868944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.558121, 13.387100, 21.688126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471928, -0.068671, -0.878958,
		-0.413601, -0.897691, -0.151935,
		-0.778600, 0.435241, -0.452048,
		17.324541, 13.517673, 21.552511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.614187, 12.714427, 21.315430>,  <17.869560, 13.213004, 21.868944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.614187, 12.714427, 21.315430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.487566, 13.079308, 21.211365>,  <17.411592, 13.298236, 21.148926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.487566, 13.079308, 21.211365>,  <17.614187, 12.714427, 21.315430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.487566, 13.079308, 21.211365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685878, 0.030653, -0.727070,
		-0.655259, -0.408595, -0.635362,
		-0.316553, 0.912201, -0.260160,
		17.392599, 13.352968, 21.133316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516087, 12.655789, 20.644018>,  <17.614187, 12.714427, 21.315430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.516087, 12.655789, 20.644018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.518810, 13.055106, 20.667234>,  <17.520445, 13.294696, 20.681164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.518810, 13.055106, 20.667234>,  <17.516087, 12.655789, 20.644018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.518810, 13.055106, 20.667234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466614, 0.048162, -0.883149,
		-0.884435, 0.033097, -0.465488,
		0.006811, 0.998291, 0.058040,
		17.520853, 13.354593, 20.684647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.244137, 12.917846, 20.035027>,  <17.516087, 12.655789, 20.644018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.244137, 12.917846, 20.035027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.446476, 13.225363, 20.191525>,  <17.567881, 13.409873, 20.285423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.446476, 13.225363, 20.191525>,  <17.244137, 12.917846, 20.035027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.446476, 13.225363, 20.191525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298147, 0.269783, -0.915601,
		-0.809460, 0.579805, -0.092744,
		0.505849, 0.768794, 0.391245,
		17.598230, 13.456001, 20.308899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.133236, 13.618512, 19.604921>,  <17.244137, 12.917846, 20.035027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.133236, 13.618512, 19.604921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.464365, 13.671779, 19.822905>,  <17.663042, 13.703739, 19.953695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.464365, 13.671779, 19.822905>,  <17.133236, 13.618512, 19.604921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.464365, 13.671779, 19.822905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368729, 0.602946, -0.707456,
		-0.422790, 0.786589, 0.450029,
		0.827821, 0.133167, 0.544958,
		17.712711, 13.711729, 19.986391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.401030, 14.298233, 19.534346>,  <17.133236, 13.618512, 19.604921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.401030, 14.298233, 19.534346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.757584, 14.182283, 19.673716>,  <17.971516, 14.112714, 19.757338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.757584, 14.182283, 19.673716>,  <17.401030, 14.298233, 19.534346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.757584, 14.182283, 19.673716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446897, 0.690296, -0.569012,
		-0.075575, 0.662921, 0.744865,
		0.891387, -0.289875, 0.348426,
		18.025000, 14.095321, 19.778244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.786234, 14.893124, 19.555042>,  <17.401030, 14.298233, 19.534346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.786234, 14.893124, 19.555042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.079952, 14.623224, 19.584776>,  <18.256184, 14.461285, 19.602617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.079952, 14.623224, 19.584776>,  <17.786234, 14.893124, 19.555042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.079952, 14.623224, 19.584776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597214, 0.590064, -0.543286,
		0.322719, 0.443326, 0.836250,
		0.734294, -0.674749, 0.074336,
		18.300240, 14.420799, 19.607077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.447460, 15.192089, 19.730505>,  <17.786234, 14.893124, 19.555042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.447460, 15.192089, 19.730505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.525698, 14.849385, 19.539629>,  <18.572639, 14.643764, 19.425104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.525698, 14.849385, 19.539629>,  <18.447460, 15.192089, 19.730505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.525698, 14.849385, 19.539629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583451, 0.492763, -0.645576,
		0.788244, -0.152146, 0.596257,
		0.195592, -0.856759, -0.477188,
		18.584375, 14.592358, 19.396473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.160442, 15.077659, 19.701651>,  <18.447460, 15.192089, 19.730505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.160442, 15.077659, 19.701651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.052187, 14.859735, 19.384176>,  <18.987234, 14.728980, 19.193691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.052187, 14.859735, 19.384176>,  <19.160442, 15.077659, 19.701651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.052187, 14.859735, 19.384176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746700, 0.401568, -0.530266,
		0.607613, -0.736155, 0.298131,
		-0.270638, -0.544811, -0.793685,
		18.970995, 14.696291, 19.146070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.738358, 14.994761, 19.397425>,  <19.160442, 15.077659, 19.701651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.738358, 14.994761, 19.397425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.482784, 14.924912, 19.097752>,  <19.329441, 14.883003, 18.917948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.482784, 14.924912, 19.097752>,  <19.738358, 14.994761, 19.397425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.482784, 14.924912, 19.097752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705927, 0.253886, -0.661218,
		0.305670, -0.951341, -0.038946,
		-0.638931, -0.174622, -0.749182,
		19.291105, 14.872526, 18.872997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.196308, 14.754767, 18.846603>,  <19.738358, 14.994761, 19.397425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.196308, 14.754767, 18.846603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.855087, 14.831149, 18.652351>,  <19.650354, 14.876978, 18.535801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.855087, 14.831149, 18.652351>,  <20.196308, 14.754767, 18.846603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.855087, 14.831149, 18.652351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520470, 0.378315, -0.765499,
		0.037547, -0.905767, -0.422109,
		-0.853054, 0.190953, -0.485629,
		19.599171, 14.888435, 18.506662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.281668, 14.364879, 18.159599>,  <20.196308, 14.754767, 18.846603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.281668, 14.364879, 18.159599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.033407, 14.676588, 18.124903>,  <19.884451, 14.863614, 18.104084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.033407, 14.676588, 18.124903>,  <20.281668, 14.364879, 18.159599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.033407, 14.676588, 18.124903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423252, 0.239846, -0.873688,
		-0.660038, -0.578969, -0.478691,
		-0.620650, 0.779275, -0.086742,
		19.847212, 14.910371, 18.098881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.856207, 14.425610, 17.443592>,  <20.281668, 14.364879, 18.159599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.856207, 14.425610, 17.443592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.949282, 14.768064, 17.628151>,  <20.005127, 14.973536, 17.738886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.949282, 14.768064, 17.628151>,  <19.856207, 14.425610, 17.443592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.949282, 14.768064, 17.628151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568938, 0.264945, -0.778533,
		-0.788774, 0.443664, -0.425438,
		0.232689, 0.856135, 0.461399,
		20.019089, 15.024904, 17.766571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.721462, 15.091324, 16.943350>,  <19.856207, 14.425610, 17.443592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.721462, 15.091324, 16.943350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.012379, 15.126137, 17.215664>,  <20.186930, 15.147024, 17.379053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.012379, 15.126137, 17.215664>,  <19.721462, 15.091324, 16.943350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.012379, 15.126137, 17.215664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608463, 0.377137, -0.698241,
		-0.317520, 0.922059, 0.221333,
		0.727293, 0.087032, 0.680787,
		20.230566, 15.152246, 17.419901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.198881, 15.136186, 16.284243>,  <19.721462, 15.091324, 16.943350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.198881, 15.136186, 16.284243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.584812, 15.043875, 16.233887>,  <19.816372, 14.988488, 16.203674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.584812, 15.043875, 16.233887>,  <19.198881, 15.136186, 16.284243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.584812, 15.043875, 16.233887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062919, 0.667689, -0.741777,
		0.255239, 0.707767, 0.658726,
		0.964829, -0.230777, -0.125888,
		19.874260, 14.974642, 16.196121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.482208, 15.735401, 16.459419>,  <19.198881, 15.136186, 16.284243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.482208, 15.735401, 16.459419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.660164, 15.501589, 16.188009>,  <19.766937, 15.361301, 16.025164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.660164, 15.501589, 16.188009>,  <19.482208, 15.735401, 16.459419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.660164, 15.501589, 16.188009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020583, 0.764107, -0.644760,
		0.895350, 0.272880, 0.351973,
		0.444887, -0.584531, -0.678527,
		19.793631, 15.326229, 15.984451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.256413, 15.516902, 16.115431>,  <19.482208, 15.735401, 16.459419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.256413, 15.516902, 16.115431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.487442, 15.659048, 16.409403>,  <20.626060, 15.744335, 16.585787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.487442, 15.659048, 16.409403>,  <20.256413, 15.516902, 16.115431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.487442, 15.659048, 16.409403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194058, 0.934240, -0.299229,
		-0.792938, 0.030208, 0.608554,
		0.577574, 0.355365, 0.734932,
		20.660715, 15.765657, 16.629883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.046347, 16.152357, 16.219315>,  <20.256413, 15.516902, 16.115431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.046347, 16.152357, 16.219315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.414524, 16.197351, 16.369051>,  <20.635431, 16.224348, 16.458893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.414524, 16.197351, 16.369051>,  <20.046347, 16.152357, 16.219315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.414524, 16.197351, 16.369051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037715, 0.927670, -0.371492,
		-0.389051, 0.356056, 0.849626,
		0.920444, 0.112486, 0.374339,
		20.690657, 16.231096, 16.481354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.887526, 16.721041, 16.690929>,  <20.046347, 16.152357, 16.219315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.887526, 16.721041, 16.690929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.265858, 16.674538, 16.569677>,  <20.492857, 16.646635, 16.496927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.265858, 16.674538, 16.569677>,  <19.887526, 16.721041, 16.690929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.265858, 16.674538, 16.569677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033196, 0.963423, -0.265922,
		0.322957, 0.241455, 0.915095,
		0.945831, -0.116259, -0.303129,
		20.549606, 16.639660, 16.478739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.281866, 17.233944, 16.968925>,  <19.887526, 16.721041, 16.690929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.281866, 17.233944, 16.968925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.415478, 17.104744, 16.614729>,  <20.495644, 17.027224, 16.402210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.415478, 17.104744, 16.614729>,  <20.281866, 17.233944, 16.968925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.415478, 17.104744, 16.614729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083515, 0.945899, -0.313528,
		0.938856, 0.030775, 0.342931,
		0.334027, -0.322998, -0.885493,
		20.515686, 17.007845, 16.349081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.918034, 17.459579, 16.927704>,  <20.281866, 17.233944, 16.968925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.918034, 17.459579, 16.927704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.827730, 17.410288, 16.541161>,  <20.773548, 17.380713, 16.309235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.827730, 17.410288, 16.541161>,  <20.918034, 17.459579, 16.927704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.827730, 17.410288, 16.541161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433195, 0.875798, -0.212884,
		0.872567, -0.466682, -0.144341,
		-0.225763, -0.123228, -0.966357,
		20.760002, 17.373320, 16.251253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.487125, 17.744287, 16.533028>,  <20.918034, 17.459579, 16.927704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.487125, 17.744287, 16.533028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.164139, 17.765154, 16.297987>,  <20.970346, 17.777674, 16.156963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.164139, 17.765154, 16.297987>,  <21.487125, 17.744287, 16.533028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.164139, 17.765154, 16.297987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275141, 0.914406, -0.296915,
		0.521816, -0.401422, -0.752707,
		-0.807469, 0.052165, -0.587599,
		20.921898, 17.780804, 16.121708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.631470, 18.291086, 16.086193>,  <21.487125, 17.744287, 16.533028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.631470, 18.291086, 16.086193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.245626, 18.270361, 15.982776>,  <21.014120, 18.257927, 15.920725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.245626, 18.270361, 15.982776>,  <21.631470, 18.291086, 16.086193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.245626, 18.270361, 15.982776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095733, 0.844791, -0.526463,
		0.245692, -0.532582, -0.809933,
		-0.964609, -0.051811, -0.258544,
		20.956244, 18.254818, 15.905212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.682531, 18.428219, 15.427913>,  <21.631470, 18.291086, 16.086193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.682531, 18.428219, 15.427913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.292988, 18.464903, 15.511040>,  <21.059261, 18.486914, 15.560916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.292988, 18.464903, 15.511040>,  <21.682531, 18.428219, 15.427913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.292988, 18.464903, 15.511040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054382, 0.794137, -0.605300,
		-0.220549, -0.600779, -0.768390,
		-0.973858, 0.091711, 0.207818,
		21.000830, 18.492416, 15.573385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.332838, 18.522995, 14.796571>,  <21.682531, 18.428219, 15.427913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.332838, 18.522995, 14.796571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.076571, 18.677977, 15.061728>,  <20.922810, 18.770966, 15.220821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.076571, 18.677977, 15.061728>,  <21.332838, 18.522995, 14.796571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.076571, 18.677977, 15.061728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070719, 0.829898, -0.553415,
		-0.764554, -0.401434, -0.504289,
		-0.640668, 0.387453, 0.662891,
		20.884371, 18.794212, 15.260595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.896624, 18.914471, 14.387759>,  <21.332838, 18.522995, 14.796571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.896624, 18.914471, 14.387759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.835840, 19.067867, 14.752142>,  <20.799370, 19.159904, 14.970772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.835840, 19.067867, 14.752142>,  <20.896624, 18.914471, 14.387759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.835840, 19.067867, 14.752142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098485, 0.911199, -0.400021,
		-0.983468, -0.150503, -0.100697,
		-0.151959, 0.383490, 0.910958,
		20.790253, 19.182915, 15.025429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.406542, 19.406317, 14.257529>,  <20.896624, 18.914471, 14.387759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.406542, 19.406317, 14.257529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.573277, 19.479061, 14.613770>,  <20.673317, 19.522707, 14.827516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.573277, 19.479061, 14.613770>,  <20.406542, 19.406317, 14.257529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.573277, 19.479061, 14.613770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124700, 0.959077, -0.254206,
		-0.900387, 0.217021, 0.377102,
		0.416838, 0.181859, 0.890603,
		20.698328, 19.533619, 14.880952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.998837, 19.983582, 14.534593>,  <20.406542, 19.406317, 14.257529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.998837, 19.983582, 14.534593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.351322, 19.972788, 14.723371>,  <20.562813, 19.966311, 14.836637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.351322, 19.972788, 14.723371>,  <19.998837, 19.983582, 14.534593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.351322, 19.972788, 14.723371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119124, 0.978827, -0.166457,
		-0.457461, 0.202904, 0.865771,
		0.881214, -0.026986, 0.471946,
		20.615686, 19.964691, 14.864954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.015638, 20.667669, 14.778728>,  <19.998837, 19.983582, 14.534593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.015638, 20.667669, 14.778728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.389595, 20.529621, 14.811872>,  <20.613970, 20.446793, 14.831758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.389595, 20.529621, 14.811872>,  <20.015638, 20.667669, 14.778728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.389595, 20.529621, 14.811872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351380, 0.932900, -0.078923,
		-0.050063, 0.102900, 0.993431,
		0.934893, -0.345121, 0.082861,
		20.670063, 20.426085, 14.836730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.277599, 21.053432, 15.346250>,  <20.015638, 20.667669, 14.778728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.277599, 21.053432, 15.346250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.528677, 20.903488, 15.073345>,  <20.679323, 20.813522, 14.909602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.528677, 20.903488, 15.073345>,  <20.277599, 21.053432, 15.346250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.528677, 20.903488, 15.073345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332367, 0.921578, -0.200564,
		0.703940, -0.100869, 0.703060,
		0.627694, -0.374859, -0.682262,
		20.716986, 20.791031, 14.868667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.862482, 21.423548, 15.397613>,  <20.277599, 21.053432, 15.346250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.862482, 21.423548, 15.397613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.957573, 21.275854, 15.038246>,  <21.014627, 21.187237, 14.822626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.957573, 21.275854, 15.038246>,  <20.862482, 21.423548, 15.397613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.957573, 21.275854, 15.038246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320230, 0.903013, -0.286391,
		0.917028, -0.219618, 0.332909,
		0.237725, -0.369236, -0.898416,
		21.028891, 21.165083, 14.768722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.593674, 21.572577, 15.316450>,  <20.862482, 21.423548, 15.397613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.593674, 21.572577, 15.316450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.412813, 21.524393, 14.962943>,  <21.304296, 21.495483, 14.750838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.412813, 21.524393, 14.962943>,  <21.593674, 21.572577, 15.316450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.412813, 21.524393, 14.962943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357662, 0.883201, -0.303369,
		0.817090, -0.453260, -0.356258,
		-0.452152, -0.120460, -0.883769,
		21.277166, 21.488255, 14.697812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.088652, 21.802023, 14.822098>,  <21.593674, 21.572577, 15.316450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.088652, 21.802023, 14.822098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.744677, 21.785862, 14.618580>,  <21.538292, 21.776165, 14.496469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.744677, 21.785862, 14.618580>,  <22.088652, 21.802023, 14.822098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.744677, 21.785862, 14.618580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231812, 0.857197, -0.459866,
		0.454717, -0.513402, -0.727772,
		-0.859939, -0.040402, -0.508794,
		21.486694, 21.773741, 14.465941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.272678, 21.917225, 14.142037>,  <22.088652, 21.802023, 14.822098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.272678, 21.917225, 14.142037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.885666, 22.017895, 14.151335>,  <21.653458, 22.078297, 14.156914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.885666, 22.017895, 14.151335>,  <22.272678, 21.917225, 14.142037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.885666, 22.017895, 14.151335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207740, 0.844251, -0.494048,
		-0.143965, -0.473179, -0.869124,
		-0.967532, 0.251677, 0.023244,
		21.595406, 22.093397, 14.158308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.055233, 22.009592, 13.496381>,  <22.272678, 21.917225, 14.142037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.055233, 22.009592, 13.496381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.808393, 22.210453, 13.738713>,  <21.660290, 22.330969, 13.884113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.808393, 22.210453, 13.738713>,  <22.055233, 22.009592, 13.496381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.808393, 22.210453, 13.738713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053768, 0.795021, -0.604194,
		-0.785046, -0.340274, -0.517607,
		-0.617100, 0.502151, 0.605832,
		21.623262, 22.361097, 13.920463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.647289, 22.423201, 13.061771>,  <22.055233, 22.009592, 13.496381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.647289, 22.423201, 13.061771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.595901, 22.594030, 13.419788>,  <21.565069, 22.696529, 13.634599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.595901, 22.594030, 13.419788>,  <21.647289, 22.423201, 13.061771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.595901, 22.594030, 13.419788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162134, 0.899424, -0.405893,
		-0.978370, 0.092971, -0.184793,
		-0.128471, 0.427075, 0.895043,
		21.557360, 22.722153, 13.688301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.249075, 23.138527, 12.937181>,  <21.647289, 22.423201, 13.061771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.249075, 23.138527, 12.937181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.455624, 23.144770, 13.279670>,  <21.579554, 23.148516, 13.485163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.455624, 23.144770, 13.279670>,  <21.249075, 23.138527, 12.937181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.455624, 23.144770, 13.279670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289101, 0.937959, -0.191451,
		-0.806089, 0.346395, 0.479825,
		0.516373, 0.015609, 0.856221,
		21.610537, 23.149452, 13.536536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.978302, 23.661484, 13.277450>,  <21.249075, 23.138527, 12.937181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.978302, 23.661484, 13.277450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.340384, 23.615143, 13.441002>,  <21.557632, 23.587337, 13.539133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.340384, 23.615143, 13.441002>,  <20.978302, 23.661484, 13.277450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.340384, 23.615143, 13.441002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196415, 0.967250, -0.160775,
		-0.376863, 0.225845, 0.898314,
		0.905205, -0.115852, 0.408880,
		21.611944, 23.580387, 13.563666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.120531, 24.275404, 13.675921>,  <20.978302, 23.661484, 13.277450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.120531, 24.275404, 13.675921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.490105, 24.122561, 13.683245>,  <21.711849, 24.030855, 13.687639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.490105, 24.122561, 13.683245>,  <21.120531, 24.275404, 13.675921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.490105, 24.122561, 13.683245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382517, 0.923404, -0.031699,
		-0.004794, 0.036291, 0.999330,
		0.923936, -0.382109, 0.018309,
		21.767286, 24.007927, 13.688738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.529863, 24.487324, 14.385176>,  <21.120531, 24.275404, 13.675921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.529863, 24.487324, 14.385176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.783583, 24.434479, 14.080489>,  <21.935814, 24.402771, 13.897677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.783583, 24.434479, 14.080489>,  <21.529863, 24.487324, 14.385176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.783583, 24.434479, 14.080489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243992, 0.969143, 0.035087,
		0.733577, -0.208108, 0.646959,
		0.634297, -0.132114, -0.761717,
		21.973871, 24.394844, 13.851974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.201849, 24.829195, 14.498662>,  <21.529863, 24.487324, 14.385176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.201849, 24.829195, 14.498662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.136806, 24.811680, 14.104375>,  <22.097780, 24.801170, 13.867803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.136806, 24.811680, 14.104375>,  <22.201849, 24.829195, 14.498662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.136806, 24.811680, 14.104375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339791, 0.935422, -0.097606,
		0.926337, -0.350810, -0.137229,
		-0.162608, -0.043787, -0.985719,
		22.088024, 24.798544, 13.808660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.790554, 25.122435, 14.037882>,  <22.201849, 24.829195, 14.498662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.790554, 25.122435, 14.037882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.434473, 25.145432, 13.857114>,  <22.220823, 25.159229, 13.748653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.434473, 25.145432, 13.857114>,  <22.790554, 25.122435, 14.037882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.434473, 25.145432, 13.857114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008012, 0.993827, 0.110652,
		0.455491, 0.094882, -0.885169,
		-0.890204, 0.057493, -0.451919,
		22.167412, 25.162680, 13.721538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.989408, 24.434874, 14.394876>,  <22.790554, 25.122435, 14.037882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.989408, 24.434874, 14.394876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.092140, 24.550919, 14.763630>,  <23.153780, 24.620546, 14.984882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.092140, 24.550919, 14.763630>,  <22.989408, 24.434874, 14.394876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.092140, 24.550919, 14.763630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827924, -0.558135, -0.055012,
		0.498577, 0.777380, -0.383538,
		0.256832, 0.290113, 0.921885,
		23.169189, 24.637953, 15.040195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.703402, 24.584978, 14.282291>,  <22.989408, 24.434874, 14.394876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.703402, 24.584978, 14.282291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.663427, 24.544836, 14.678260>,  <23.639442, 24.520750, 14.915841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.663427, 24.544836, 14.678260>,  <23.703402, 24.584978, 14.282291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.663427, 24.544836, 14.678260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958804, -0.275596, 0.068856,
		0.265908, 0.956021, 0.123762,
		-0.099936, -0.100354, 0.989920,
		23.633446, 24.514730, 14.975236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.209227, 25.069574, 14.586677>,  <23.703402, 24.584978, 14.282291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.209227, 25.069574, 14.586677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.125832, 24.731125, 14.782885>,  <24.075794, 24.528055, 14.900609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.125832, 24.731125, 14.782885>,  <24.209227, 25.069574, 14.586677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.125832, 24.731125, 14.782885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974063, -0.224738, 0.026346,
		0.087947, 0.483289, 0.871032,
		-0.208487, -0.846123, 0.490519,
		24.063286, 24.477287, 14.930040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.761965, 24.827030, 14.761049>,  <24.209227, 25.069574, 14.586677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.761965, 24.827030, 14.761049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.558123, 24.499233, 14.865917>,  <24.435818, 24.302555, 14.928838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.558123, 24.499233, 14.865917>,  <24.761965, 24.827030, 14.761049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.558123, 24.499233, 14.865917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853524, -0.519957, 0.033801,
		0.108618, 0.240994, 0.964429,
		-0.509607, -0.819492, 0.262171,
		24.405241, 24.253386, 14.944569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.978525, 24.443262, 15.511887>,  <24.761965, 24.827030, 14.761049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.978525, 24.443262, 15.511887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.842632, 24.196537, 15.227879>,  <24.761097, 24.048502, 15.057474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.842632, 24.196537, 15.227879>,  <24.978525, 24.443262, 15.511887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.842632, 24.196537, 15.227879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907102, -0.414339, -0.074084,
		-0.248493, -0.669229, 0.700274,
		-0.339730, -0.616811, -0.710020,
		24.740713, 24.011494, 15.014873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.037447, 23.719009, 15.697079>,  <24.978525, 24.443262, 15.511887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.037447, 23.719009, 15.697079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038994, 23.757927, 15.298980>,  <25.039923, 23.781277, 15.060121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038994, 23.757927, 15.298980>,  <25.037447, 23.719009, 15.697079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.038994, 23.757927, 15.298980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873596, -0.484659, -0.043984,
		-0.486636, -0.869275, -0.086871,
		0.003869, 0.097295, -0.995248,
		25.040154, 23.787115, 15.000405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.174208, 23.016380, 15.436283>,  <25.037447, 23.719009, 15.697079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.174208, 23.016380, 15.436283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301216, 23.282829, 15.166331>,  <25.377420, 23.442699, 15.004360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.301216, 23.282829, 15.166331>,  <25.174208, 23.016380, 15.436283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.301216, 23.282829, 15.166331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717732, -0.633949, -0.288043,
		-0.619711, -0.392924, -0.679388,
		0.317519, 0.666122, -0.674880,
		25.396471, 23.482666, 14.963867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.266045, 22.679152, 14.720577>,  <25.174208, 23.016380, 15.436283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.266045, 22.679152, 14.720577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482967, 23.010639, 14.775896>,  <25.613121, 23.209532, 14.809088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482967, 23.010639, 14.775896>,  <25.266045, 22.679152, 14.720577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.482967, 23.010639, 14.775896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749294, -0.402582, -0.525820,
		-0.380082, 0.388781, -0.839278,
		0.542307, 0.828720, 0.138297,
		25.645660, 23.259254, 14.817386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616680, 22.062706, 14.558095>,  <25.266045, 22.679152, 14.720577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616680, 22.062706, 14.558095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.475073, 21.874218, 14.234954>,  <25.390108, 21.761126, 14.041069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.475073, 21.874218, 14.234954>,  <25.616680, 22.062706, 14.558095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.475073, 21.874218, 14.234954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479969, -0.649822, 0.589373,
		-0.802684, 0.596392, 0.003880,
		-0.354019, -0.471218, -0.807852,
		25.368868, 21.732853, 13.992599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.842239, 22.020361, 14.637615>,  <25.616680, 22.062706, 14.558095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.842239, 22.020361, 14.637615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.967386, 21.742165, 14.378879>,  <25.042475, 21.575247, 14.223637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.967386, 21.742165, 14.378879>,  <24.842239, 22.020361, 14.637615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.967386, 21.742165, 14.378879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355668, -0.717270, 0.599187,
		-0.880690, 0.042594, -0.471775,
		0.312868, -0.695493, -0.646841,
		25.061247, 21.533516, 14.184826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.326693, 21.480350, 14.688308>,  <24.842239, 22.020361, 14.637615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.326693, 21.480350, 14.688308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.636696, 21.300373, 14.510808>,  <24.822699, 21.192387, 14.404308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.636696, 21.300373, 14.510808>,  <24.326693, 21.480350, 14.688308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.636696, 21.300373, 14.510808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214529, -0.847811, 0.484968,
		-0.594423, -0.280658, -0.753587,
		0.775009, -0.449942, -0.443749,
		24.869198, 21.165390, 14.377684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.091640, 20.872057, 14.620027>,  <24.326693, 21.480350, 14.688308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.091640, 20.872057, 14.620027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481123, 20.816982, 14.547431>,  <24.714813, 20.783937, 14.503874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.481123, 20.816982, 14.547431>,  <24.091640, 20.872057, 14.620027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.481123, 20.816982, 14.547431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052122, -0.910197, 0.410883,
		-0.221763, -0.390620, -0.893441,
		0.973707, -0.137687, -0.181488,
		24.773235, 20.775677, 14.492985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.138239, 20.284504, 14.117545>,  <24.091640, 20.872057, 14.620027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.138239, 20.284504, 14.117545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.473143, 20.320007, 14.333367>,  <24.674086, 20.341311, 14.462860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.473143, 20.320007, 14.333367>,  <24.138239, 20.284504, 14.117545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.473143, 20.320007, 14.333367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186114, -0.881564, 0.433827,
		0.514159, -0.463645, -0.721578,
		0.837259, 0.088761, 0.539555,
		24.724319, 20.346636, 14.495234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.538256, 19.771076, 13.937532>,  <24.138239, 20.284504, 14.117545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.538256, 19.771076, 13.937532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.682285, 19.873856, 14.296268>,  <24.768703, 19.935524, 14.511510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.682285, 19.873856, 14.296268>,  <24.538256, 19.771076, 13.937532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.682285, 19.873856, 14.296268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104541, -0.944156, 0.312476,
		0.927048, -0.206272, -0.313105,
		0.360075, 0.256948, 0.896841,
		24.790308, 19.950939, 14.565321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963556, 19.277891, 14.066975>,  <24.538256, 19.771076, 13.937532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.963556, 19.277891, 14.066975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.885216, 19.426367, 14.430041>,  <24.838211, 19.515453, 14.647882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.885216, 19.426367, 14.430041>,  <24.963556, 19.277891, 14.066975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.885216, 19.426367, 14.430041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112041, -0.928001, 0.355331,
		0.974212, -0.032104, 0.223338,
		-0.195851, 0.371191, 0.907667,
		24.826460, 19.537724, 14.702341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348785, 18.945766, 14.521388>,  <24.963556, 19.277891, 14.066975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348785, 18.945766, 14.521388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.066984, 19.086843, 14.767733>,  <24.897903, 19.171490, 14.915539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.066984, 19.086843, 14.767733>,  <25.348785, 18.945766, 14.521388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.066984, 19.086843, 14.767733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037540, -0.885079, 0.463925,
		0.708708, 0.303717, 0.636780,
		-0.704502, 0.352692, 0.615861,
		24.855633, 19.192652, 14.952491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.374521, 18.483799, 15.013425>,  <25.348785, 18.945766, 14.521388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.374521, 18.483799, 15.013425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.035183, 18.656229, 15.136374>,  <24.831579, 18.759687, 15.210144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.035183, 18.656229, 15.136374>,  <25.374521, 18.483799, 15.013425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.035183, 18.656229, 15.136374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193813, -0.793125, 0.577398,
		0.492690, 0.430261, 0.756394,
		-0.848347, 0.431077, 0.307375,
		24.780678, 18.785553, 15.228587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.259626, 18.435385, 15.797876>,  <25.374521, 18.483799, 15.013425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.259626, 18.435385, 15.797876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893896, 18.510199, 15.654195>,  <24.674458, 18.555086, 15.567986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893896, 18.510199, 15.654195>,  <25.259626, 18.435385, 15.797876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.893896, 18.510199, 15.654195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395395, -0.604107, 0.691894,
		-0.087590, 0.774643, 0.626303,
		-0.914325, 0.187033, -0.359204,
		24.619598, 18.566309, 15.546433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.731220, 18.706118, 16.364491>,  <25.259626, 18.435385, 15.797876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.731220, 18.706118, 16.364491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.525101, 18.562340, 16.053295>,  <24.401428, 18.476072, 15.866578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.525101, 18.562340, 16.053295>,  <24.731220, 18.706118, 16.364491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.525101, 18.562340, 16.053295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617744, -0.473433, 0.627896,
		-0.594020, 0.804151, 0.021914,
		-0.515299, -0.359445, -0.777989,
		24.370512, 18.454506, 15.819899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.897148, 18.542585, 16.578560>,  <24.731220, 18.706118, 16.364491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.897148, 18.542585, 16.578560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.945850, 18.353624, 16.229387>,  <23.975073, 18.240248, 16.019884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.945850, 18.353624, 16.229387>,  <23.897148, 18.542585, 16.578560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.945850, 18.353624, 16.229387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672349, -0.686219, 0.277581,
		-0.730152, 0.553117, -0.401173,
		0.121758, -0.472404, -0.872931,
		23.982378, 18.211903, 15.967508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.229471, 18.279322, 16.365488>,  <23.897148, 18.542585, 16.578560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.229471, 18.279322, 16.365488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.467216, 18.062843, 16.127550>,  <23.609863, 17.932957, 15.984787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.467216, 18.062843, 16.127550>,  <23.229471, 18.279322, 16.365488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.467216, 18.062843, 16.127550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669620, -0.742675, 0.006612,
		-0.445355, 0.394390, -0.803813,
		0.594364, -0.541194, -0.594845,
		23.645525, 17.900486, 15.949097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.753216, 17.892799, 16.026188>,  <23.229471, 18.279322, 16.365488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.753216, 17.892799, 16.026188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.104452, 17.710747, 15.967113>,  <23.315193, 17.601515, 15.931667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.104452, 17.710747, 15.967113>,  <22.753216, 17.892799, 16.026188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.104452, 17.710747, 15.967113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455064, -0.889720, 0.036260,
		-0.147905, 0.035368, -0.988369,
		0.878090, -0.455134, -0.147689,
		23.367880, 17.574207, 15.922806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.739355, 17.386797, 15.497283>,  <22.753216, 17.892799, 16.026188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.739355, 17.386797, 15.497283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.042528, 17.269527, 15.730379>,  <23.224432, 17.199165, 15.870237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.042528, 17.269527, 15.730379>,  <22.739355, 17.386797, 15.497283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.042528, 17.269527, 15.730379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431258, -0.895446, 0.110418,
		0.489442, -0.335002, -0.805121,
		0.757933, -0.293172, 0.582741,
		23.269909, 17.181576, 15.905202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.888985, 16.686363, 15.275846>,  <22.739355, 17.386797, 15.497283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.888985, 16.686363, 15.275846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.075129, 16.727581, 15.627487>,  <23.186815, 16.752312, 15.838471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.075129, 16.727581, 15.627487>,  <22.888985, 16.686363, 15.275846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.075129, 16.727581, 15.627487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275042, -0.927197, 0.254277,
		0.841304, -0.360121, -0.403139,
		0.465360, 0.103044, 0.879103,
		23.214737, 16.758493, 15.891218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.196655, 16.075558, 15.296774>,  <22.888985, 16.686363, 15.275846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.196655, 16.075558, 15.296774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.175377, 16.214672, 15.671200>,  <23.162611, 16.298140, 15.895855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.175377, 16.214672, 15.671200>,  <23.196655, 16.075558, 15.296774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.175377, 16.214672, 15.671200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309703, -0.896915, 0.315639,
		0.949344, -0.273111, 0.155421,
		-0.053195, 0.347784, 0.936064,
		23.159418, 16.319008, 15.952019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.671402, 15.648030, 15.742563>,  <23.196655, 16.075558, 15.296774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.671402, 15.648030, 15.742563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.390589, 15.818409, 15.970852>,  <23.222101, 15.920636, 16.107824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.390589, 15.818409, 15.970852>,  <23.671402, 15.648030, 15.742563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.390589, 15.818409, 15.970852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288107, -0.902771, 0.319373,
		0.651266, 0.059781, 0.756491,
		-0.702031, 0.425947, 0.570721,
		23.179979, 15.946193, 16.142069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.768677, 15.347223, 16.359112>,  <23.671402, 15.648030, 15.742563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.768677, 15.347223, 16.359112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.389273, 15.473778, 16.365194>,  <23.161631, 15.549710, 16.368845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.389273, 15.473778, 16.365194>,  <23.768677, 15.347223, 16.359112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.389273, 15.473778, 16.365194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266211, -0.822261, 0.503009,
		0.171650, 0.473060, 0.864148,
		-0.948508, 0.316387, 0.015208,
		23.104721, 15.568694, 16.369757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.374929, 15.551936, 16.175539>,  <23.768677, 15.347223, 16.359112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.374929, 15.551936, 16.175539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609852, 15.228282, 16.167856>,  <24.750805, 15.034089, 16.163246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609852, 15.228282, 16.167856>,  <24.374929, 15.551936, 16.175539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.609852, 15.228282, 16.167856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233035, 0.191780, -0.953370,
		0.775090, 0.555446, 0.301191,
		0.587308, -0.809135, -0.019209,
		24.786045, 14.985541, 16.162094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.916296, 15.739975, 15.781242>,  <24.374929, 15.551936, 16.175539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.916296, 15.739975, 15.781242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881260, 15.342150, 15.758712>,  <24.860239, 15.103455, 15.745193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881260, 15.342150, 15.758712>,  <24.916296, 15.739975, 15.781242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.881260, 15.342150, 15.758712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268800, 0.030849, -0.962702,
		0.959205, -0.099464, 0.264636,
		-0.087590, -0.994563, -0.056327,
		24.854982, 15.043781, 15.741814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481422, 15.613894, 15.300163>,  <24.916296, 15.739975, 15.781242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.481422, 15.613894, 15.300163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.228359, 15.304509, 15.315646>,  <25.076521, 15.118878, 15.324936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.228359, 15.304509, 15.315646>,  <25.481422, 15.613894, 15.300163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.228359, 15.304509, 15.315646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194907, -0.207400, -0.958643,
		0.749503, -0.598950, 0.281967,
		-0.632659, -0.773463, 0.038708,
		25.038561, 15.072471, 15.327258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.997320, 15.224373, 15.577487>,  <25.481422, 15.613894, 15.300163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.997320, 15.224373, 15.577487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028128, 14.986348, 15.257495>,  <26.046612, 14.843534, 15.065499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028128, 14.986348, 15.257495>,  <25.997320, 15.224373, 15.577487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028128, 14.986348, 15.257495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946555, 0.295698, -0.128826,
		0.313212, -0.747304, 0.586034,
		0.077017, -0.595063, -0.799980,
		26.051233, 14.807829, 15.017501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683371, 15.402938, 15.601615>,  <25.997320, 15.224373, 15.577487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683371, 15.402938, 15.601615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578543, 15.240947, 15.251229>,  <26.515646, 15.143752, 15.040998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.578543, 15.240947, 15.251229>,  <26.683371, 15.402938, 15.601615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578543, 15.240947, 15.251229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850435, 0.332131, -0.407982,
		0.456159, -0.851869, 0.257367,
		-0.262068, -0.404978, -0.875964,
		26.499922, 15.119453, 14.988440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197124, 14.873936, 15.306458>,  <26.683371, 15.402938, 15.601615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197124, 14.873936, 15.306458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981373, 15.060307, 15.025893>,  <26.851921, 15.172129, 14.857553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981373, 15.060307, 15.025893>,  <27.197124, 14.873936, 15.306458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981373, 15.060307, 15.025893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820602, 0.477697, -0.313717,
		0.188894, -0.744794, -0.640001,
		-0.539381, 0.465927, -0.701413,
		26.819559, 15.200085, 14.815469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<11.685812, 18.666491, 24.408741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.421136, 18.401272, 24.268723>,  <11.262330, 18.242140, 24.184711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.421136, 18.401272, 24.268723>,  <11.685812, 18.666491, 24.408741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.421136, 18.401272, 24.268723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295828, 0.198116, -0.934471,
		0.688949, -0.721884, 0.065058,
		-0.661691, -0.663049, -0.350045,
		11.222629, 18.202356, 24.163710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.072579, 18.224142, 23.989614>,  <11.685812, 18.666491, 24.408741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.072579, 18.224142, 23.989614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.685807, 18.197699, 23.891085>,  <11.453744, 18.181833, 23.831966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.685807, 18.197699, 23.891085>,  <12.072579, 18.224142, 23.989614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.685807, 18.197699, 23.891085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225055, 0.233217, -0.946024,
		0.119988, -0.970175, -0.210626,
		-0.966930, -0.066109, -0.246326,
		11.395728, 18.177866, 23.817186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.108631, 17.868950, 23.390020>,  <12.072579, 18.224142, 23.989614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.108631, 17.868950, 23.390020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.743949, 18.031912, 23.368803>,  <11.525140, 18.129688, 23.356073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.743949, 18.031912, 23.368803>,  <12.108631, 17.868950, 23.390020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.743949, 18.031912, 23.368803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117761, 0.135448, -0.983761,
		-0.393604, -0.903148, -0.171465,
		-0.911706, 0.407404, -0.053042,
		11.470437, 18.154133, 23.352890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.735015, 17.568113, 22.905451>,  <12.108631, 17.868950, 23.390020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.735015, 17.568113, 22.905451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.544010, 17.919312, 22.918758>,  <11.429407, 18.130030, 22.926743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.544010, 17.919312, 22.918758>,  <11.735015, 17.568113, 22.905451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.544010, 17.919312, 22.918758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103564, 0.093845, -0.990186,
		-0.872500, -0.469380, -0.135741,
		-0.477512, 0.877995, 0.033269,
		11.400757, 18.182711, 22.928740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.183511, 17.480085, 22.410484>,  <11.735015, 17.568113, 22.905451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.183511, 17.480085, 22.410484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.289413, 17.863495, 22.452703>,  <11.352955, 18.093540, 22.478035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.289413, 17.863495, 22.452703>,  <11.183511, 17.480085, 22.410484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.289413, 17.863495, 22.452703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086948, 0.085281, -0.992556,
		-0.960388, 0.271962, -0.060763,
		0.264756, 0.958522, 0.105549,
		11.368840, 18.151051, 22.484367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.886889, 17.822969, 21.842875>,  <11.183511, 17.480085, 22.410484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.886889, 17.822969, 21.842875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.142700, 18.109846, 21.953609>,  <11.296186, 18.281973, 22.020050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.142700, 18.109846, 21.953609>,  <10.886889, 17.822969, 21.842875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.142700, 18.109846, 21.953609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345068, 0.053994, -0.937023,
		-0.686973, 0.694781, -0.212950,
		0.639528, 0.717192, 0.276839,
		11.334558, 18.325005, 22.036661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.847750, 18.389402, 21.315334>,  <10.886889, 17.822969, 21.842875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.847750, 18.389402, 21.315334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.205821, 18.408190, 21.492624>,  <11.420664, 18.419462, 21.598999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.205821, 18.408190, 21.492624>,  <10.847750, 18.389402, 21.315334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.205821, 18.408190, 21.492624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442919, 0.017326, -0.896394,
		-0.049781, 0.998746, -0.005293,
		0.895178, 0.046968, 0.443227,
		11.474375, 18.422279, 21.625593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.299538, 18.856270, 21.003130>,  <10.847750, 18.389402, 21.315334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.299538, 18.856270, 21.003130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.567787, 18.627262, 21.191803>,  <11.728737, 18.489857, 21.305006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.567787, 18.627262, 21.191803>,  <11.299538, 18.856270, 21.003130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.567787, 18.627262, 21.191803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566820, -0.014681, -0.823711,
		0.478516, 0.819759, 0.314671,
		0.670625, -0.572520, 0.471681,
		11.768974, 18.455505, 21.333307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.972405, 19.136480, 20.859013>,  <11.299538, 18.856270, 21.003130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.972405, 19.136480, 20.859013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.031044, 18.750334, 20.945341>,  <12.066227, 18.518646, 20.997139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.031044, 18.750334, 20.945341>,  <11.972405, 19.136480, 20.859013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.031044, 18.750334, 20.945341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371460, -0.148487, -0.916498,
		0.916802, 0.214524, 0.336827,
		0.146597, -0.965366, 0.215821,
		12.075023, 18.460724, 21.010088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.733520, 19.022541, 20.707235>,  <11.972405, 19.136480, 20.859013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.733520, 19.022541, 20.707235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.623154, 18.645538, 20.782658>,  <12.556934, 18.419336, 20.827911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.623154, 18.645538, 20.782658>,  <12.733520, 19.022541, 20.707235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.623154, 18.645538, 20.782658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657862, -0.328198, -0.677867,
		0.700777, -0.062990, 0.710594,
		-0.275915, -0.942506, 0.188555,
		12.540380, 18.362787, 20.839224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.350616, 18.772564, 20.797424>,  <12.733520, 19.022541, 20.707235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.350616, 18.772564, 20.797424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.119202, 18.462372, 20.696289>,  <12.980353, 18.276257, 20.635609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.119202, 18.462372, 20.696289>,  <13.350616, 18.772564, 20.797424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.119202, 18.462372, 20.696289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731627, -0.356339, -0.581158,
		0.360581, -0.521203, 0.773517,
		-0.578536, -0.775480, -0.252837,
		12.945641, 18.229727, 20.620438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.761057, 18.161551, 20.830883>,  <13.350616, 18.772564, 20.797424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.761057, 18.161551, 20.830883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.467351, 18.045038, 20.585604>,  <13.291127, 17.975130, 20.438437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.467351, 18.045038, 20.585604>,  <13.761057, 18.161551, 20.830883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.467351, 18.045038, 20.585604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678702, -0.295314, -0.672423,
		0.014779, -0.909915, 0.414532,
		-0.734265, -0.291282, -0.613197,
		13.247071, 17.957653, 20.401646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.913901, 17.490252, 20.562729>,  <13.761057, 18.161551, 20.830883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.913901, 17.490252, 20.562729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.649965, 17.632809, 20.298126>,  <13.491604, 17.718344, 20.139364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.649965, 17.632809, 20.298126>,  <13.913901, 17.490252, 20.562729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.649965, 17.632809, 20.298126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620516, -0.238034, -0.747194,
		-0.423758, -0.903506, -0.064084,
		-0.659840, 0.356395, -0.661509,
		13.452013, 17.739727, 20.099674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.808575, 17.021767, 20.112442>,  <13.913901, 17.490252, 20.562729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.808575, 17.021767, 20.112442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.676876, 17.320076, 19.880781>,  <13.597857, 17.499062, 19.741785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.676876, 17.320076, 19.880781>,  <13.808575, 17.021767, 20.112442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.676876, 17.320076, 19.880781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538507, -0.355524, -0.763946,
		-0.775634, -0.563404, -0.284550,
		-0.329245, 0.745774, -0.579153,
		13.578102, 17.543808, 19.707035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.631517, 16.711918, 19.545485>,  <13.808575, 17.021767, 20.112442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.631517, 16.711918, 19.545485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.702218, 17.093784, 19.449678>,  <13.744638, 17.322905, 19.392195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.702218, 17.093784, 19.449678>,  <13.631517, 16.711918, 19.545485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.702218, 17.093784, 19.449678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596633, -0.297462, -0.745349,
		-0.782807, -0.011160, -0.622164,
		0.176752, 0.954668, -0.239514,
		13.755243, 17.380184, 19.377825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.354835, 16.708506, 18.912062>,  <13.631517, 16.711918, 19.545485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.354835, 16.708506, 18.912062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.599888, 17.021725, 18.954990>,  <13.746920, 17.209656, 18.980747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.599888, 17.021725, 18.954990>,  <13.354835, 16.708506, 18.912062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.599888, 17.021725, 18.954990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380649, -0.173316, -0.908332,
		-0.692666, 0.597326, -0.404245,
		0.612633, 0.783047, 0.107321,
		13.783678, 17.256639, 18.987186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.495532, 16.879662, 18.222002>,  <13.354835, 16.708506, 18.912062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.495532, 16.879662, 18.222002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.769143, 17.067894, 18.444950>,  <13.933310, 17.180834, 18.578718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.769143, 17.067894, 18.444950>,  <13.495532, 16.879662, 18.222002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.769143, 17.067894, 18.444950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702095, -0.217420, -0.678079,
		-0.197907, 0.855151, -0.479114,
		0.684029, 0.470580, 0.557368,
		13.974352, 17.209068, 18.612160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.853093, 17.262951, 17.764803>,  <13.495532, 16.879662, 18.222002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.853093, 17.262951, 17.764803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.073829, 17.198608, 18.092119>,  <14.206270, 17.160004, 18.288509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.073829, 17.198608, 18.092119>,  <13.853093, 17.262951, 17.764803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.073829, 17.198608, 18.092119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805770, -0.150077, -0.572898,
		0.214960, 0.975501, 0.046793,
		0.551840, -0.160855, 0.818290,
		14.239381, 17.150352, 18.337606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.448124, 17.748865, 17.801529>,  <13.853093, 17.262951, 17.764803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.448124, 17.748865, 17.801529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.558095, 17.446730, 18.039480>,  <14.624078, 17.265448, 18.182251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.558095, 17.446730, 18.039480>,  <14.448124, 17.748865, 17.801529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.558095, 17.446730, 18.039480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865321, -0.075303, -0.495529,
		0.419088, 0.650994, 0.632907,
		0.274927, -0.755338, 0.594878,
		14.640573, 17.220129, 18.217943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.121948, 17.852991, 17.978106>,  <14.448124, 17.748865, 17.801529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.121948, 17.852991, 17.978106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.077532, 17.462875, 18.054501>,  <15.050881, 17.228806, 18.100338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.077532, 17.462875, 18.054501>,  <15.121948, 17.852991, 17.978106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.077532, 17.462875, 18.054501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864649, -0.189552, -0.465243,
		0.489950, 0.113476, 0.864333,
		-0.111042, -0.975291, 0.190988,
		15.044219, 17.170288, 18.111797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.868700, 17.605591, 17.974676>,  <15.121948, 17.852991, 17.978106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.868700, 17.605591, 17.974676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.671270, 17.261621, 17.922646>,  <15.552813, 17.055241, 17.891428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.671270, 17.261621, 17.922646>,  <15.868700, 17.605591, 17.974676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.671270, 17.261621, 17.922646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787820, -0.378719, -0.485707,
		0.368407, -0.342209, 0.864390,
		-0.493574, -0.859921, -0.130076,
		15.523198, 17.003645, 17.883623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.188345, 17.101973, 18.308821>,  <15.868700, 17.605591, 17.974676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.188345, 17.101973, 18.308821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.987350, 16.925087, 18.011646>,  <15.866754, 16.818954, 17.833342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.987350, 16.925087, 18.011646>,  <16.188345, 17.101973, 18.308821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.987350, 16.925087, 18.011646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752147, -0.647337, -0.123406,
		-0.426357, -0.620806, 0.657890,
		-0.502488, -0.442215, -0.742934,
		15.836604, 16.792423, 17.788765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.351816, 16.354185, 18.139101>,  <16.188345, 17.101973, 18.308821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.351816, 16.354185, 18.139101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.741236, 16.442160, 18.163868>,  <16.974888, 16.494946, 18.178728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.741236, 16.442160, 18.163868>,  <16.351816, 16.354185, 18.139101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.741236, 16.442160, 18.163868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016924, -0.200831, 0.979480,
		0.227861, -0.954617, -0.191796,
		0.973547, 0.219939, 0.061917,
		17.033300, 16.508141, 18.182444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.790247, 15.839948, 18.465616>,  <16.351816, 16.354185, 18.139101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.790247, 15.839948, 18.465616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.000284, 16.171041, 18.544743>,  <17.126307, 16.369698, 18.592218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.000284, 16.171041, 18.544743>,  <16.790247, 15.839948, 18.465616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.000284, 16.171041, 18.544743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030159, -0.214195, 0.976325,
		0.850509, -0.518629, -0.087509,
		0.525094, 0.827734, 0.197816,
		17.157812, 16.419361, 18.604088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.329533, 15.679412, 18.944977>,  <16.790247, 15.839948, 18.465616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.329533, 15.679412, 18.944977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.302317, 16.075460, 18.994020>,  <17.285988, 16.313089, 19.023447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.302317, 16.075460, 18.994020>,  <17.329533, 15.679412, 18.944977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.302317, 16.075460, 18.994020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185001, -0.108240, 0.976759,
		0.980380, 0.089141, -0.175809,
		-0.068039, 0.990120, 0.122608,
		17.281904, 16.372496, 19.030804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.955715, 15.822746, 19.389540>,  <17.329533, 15.679412, 18.944977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.955715, 15.822746, 19.389540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.685690, 16.116972, 19.412291>,  <17.523674, 16.293507, 19.425941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.685690, 16.116972, 19.412291>,  <17.955715, 15.822746, 19.389540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.685690, 16.116972, 19.412291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079412, -0.004199, 0.996833,
		0.733473, 0.677443, -0.055578,
		-0.675064, 0.735564, 0.056877,
		17.483171, 16.337641, 19.429354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.223032, 16.161356, 19.961956>,  <17.955715, 15.822746, 19.389540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.223032, 16.161356, 19.961956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.859001, 16.324265, 19.931244>,  <17.640583, 16.422009, 19.912817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.859001, 16.324265, 19.931244>,  <18.223032, 16.161356, 19.961956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.859001, 16.324265, 19.931244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037756, 0.103014, 0.993963,
		0.412721, 0.907480, -0.078374,
		-0.910075, 0.407270, -0.076779,
		17.585979, 16.446445, 19.908211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.220772, 16.846443, 20.290932>,  <18.223032, 16.161356, 19.961956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.220772, 16.846443, 20.290932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.845644, 16.707672, 20.286325>,  <17.620567, 16.624409, 20.283562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.845644, 16.707672, 20.286325>,  <18.220772, 16.846443, 20.290932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.845644, 16.707672, 20.286325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114146, 0.276891, 0.954098,
		-0.327817, 0.896087, -0.299275,
		-0.937820, -0.346930, -0.011515,
		17.564299, 16.603594, 20.282871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.885271, 17.296848, 20.738125>,  <18.220772, 16.846443, 20.290932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.885271, 17.296848, 20.738125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.644737, 16.979477, 20.700459>,  <17.500416, 16.789055, 20.677858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.644737, 16.979477, 20.700459>,  <17.885271, 17.296848, 20.738125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.644737, 16.979477, 20.700459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296375, 0.112056, 0.948475,
		-0.741995, 0.598260, -0.302536,
		-0.601336, -0.793428, -0.094165,
		17.464336, 16.741449, 20.672209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.239960, 17.620827, 20.979408>,  <17.885271, 17.296848, 20.738125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.239960, 17.620827, 20.979408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.221300, 17.221497, 20.993092>,  <17.210104, 16.981899, 21.001303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.221300, 17.221497, 20.993092>,  <17.239960, 17.620827, 20.979408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.221300, 17.221497, 20.993092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543183, 0.054094, 0.837870,
		-0.838318, 0.020504, -0.544796,
		-0.046650, -0.998325, 0.034211,
		17.207306, 16.921999, 21.003355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.605686, 17.461081, 21.192329>,  <17.239960, 17.620827, 20.979408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.605686, 17.461081, 21.192329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.815754, 17.135826, 21.292734>,  <16.941793, 16.940674, 21.352978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.815754, 17.135826, 21.292734>,  <16.605686, 17.461081, 21.192329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.815754, 17.135826, 21.292734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649399, -0.192298, 0.735733,
		-0.549983, -0.549390, -0.629039,
		0.525167, -0.813138, 0.251013,
		16.973305, 16.891886, 21.368038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.125778, 17.019320, 21.219868>,  <16.605686, 17.461081, 21.192329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.125778, 17.019320, 21.219868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.428923, 16.896381, 21.450064>,  <16.610809, 16.822618, 21.588181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.428923, 16.896381, 21.450064>,  <16.125778, 17.019320, 21.219868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.428923, 16.896381, 21.450064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646411, -0.234312, 0.726120,
		-0.088323, -0.922301, -0.376245,
		0.757860, -0.307342, 0.575491,
		16.656281, 16.804178, 21.622711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.837037, 16.417835, 21.578568>,  <16.125778, 17.019320, 21.219868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.837037, 16.417835, 21.578568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.167900, 16.514530, 21.781496>,  <16.366419, 16.572548, 21.903254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.167900, 16.514530, 21.781496>,  <15.837037, 16.417835, 21.578568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.167900, 16.514530, 21.781496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535439, 0.064911, 0.842076,
		0.170633, -0.968168, 0.183129,
		0.827157, 0.241740, 0.507319,
		16.416048, 16.587051, 21.933691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.807052, 15.909720, 22.057793>,  <15.837037, 16.417835, 21.578568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.807052, 15.909720, 22.057793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.022131, 16.221205, 22.187092>,  <16.151178, 16.408094, 22.264671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.022131, 16.221205, 22.187092>,  <15.807052, 15.909720, 22.057793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.022131, 16.221205, 22.187092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464833, -0.046070, 0.884199,
		0.703427, -0.625689, 0.337199,
		0.537699, 0.778711, 0.323248,
		16.183441, 16.454819, 22.284067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.071281, 15.839194, 22.745796>,  <15.807052, 15.909720, 22.057793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.071281, 15.839194, 22.745796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.102026, 16.237427, 22.724215>,  <16.120472, 16.476366, 22.711266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.102026, 16.237427, 22.724215>,  <16.071281, 15.839194, 22.745796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.102026, 16.237427, 22.724215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421549, 0.081491, 0.903136,
		0.903542, -0.046672, 0.425950,
		0.076862, 0.995581, -0.053956,
		16.125084, 16.536100, 22.708027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330734, 16.059582, 23.438501>,  <16.071281, 15.839194, 22.745796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.330734, 16.059582, 23.438501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.166540, 16.367321, 23.242704>,  <16.068024, 16.551966, 23.125225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.166540, 16.367321, 23.242704>,  <16.330734, 16.059582, 23.438501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.166540, 16.367321, 23.242704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544136, 0.224092, 0.808516,
		0.731723, 0.598234, 0.326644,
		-0.410484, 0.769349, -0.489494,
		16.043394, 16.598125, 23.095856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.359112, 16.678621, 23.844193>,  <16.330734, 16.059582, 23.438501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.359112, 16.678621, 23.844193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.065096, 16.745241, 23.581293>,  <15.888686, 16.785213, 23.423553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.065096, 16.745241, 23.581293>,  <16.359112, 16.678621, 23.844193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.065096, 16.745241, 23.581293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647015, 0.117488, 0.753371,
		0.202693, 0.979009, 0.021402,
		-0.735042, 0.166550, -0.657248,
		15.844584, 16.795206, 23.384119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.088388, 17.252878, 24.063061>,  <16.359112, 16.678621, 23.844193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.088388, 17.252878, 24.063061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.788809, 17.119621, 23.833944>,  <15.609060, 17.039667, 23.696474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.788809, 17.119621, 23.833944>,  <16.088388, 17.252878, 24.063061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.788809, 17.119621, 23.833944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657661, 0.479334, 0.581138,
		0.080957, 0.811946, -0.578091,
		-0.748951, -0.333141, -0.572791,
		15.564123, 17.019678, 23.662107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.685902, 17.820274, 23.876867>,  <16.088388, 17.252878, 24.063061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.685902, 17.820274, 23.876867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.433380, 17.511845, 23.843643>,  <15.281867, 17.326786, 23.823708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.433380, 17.511845, 23.843643>,  <15.685902, 17.820274, 23.876867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.433380, 17.511845, 23.843643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761227, 0.595614, 0.256471,
		-0.148285, 0.225140, -0.962977,
		-0.631304, -0.771075, -0.083062,
		15.243989, 17.280521, 23.818726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.085973, 18.251904, 23.660242>,  <15.685902, 17.820274, 23.876867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.085973, 18.251904, 23.660242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.948485, 17.890377, 23.762199>,  <14.865993, 17.673460, 23.823374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.948485, 17.890377, 23.762199>,  <15.085973, 18.251904, 23.660242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.948485, 17.890377, 23.762199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833453, 0.418671, 0.360654,
		-0.432683, -0.088480, -0.897194,
		-0.343718, -0.903817, 0.254895,
		14.845369, 17.619232, 23.838669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<14.067199, 18.093426, 23.531605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.221020, 17.832033, 23.792398>,  <14.313313, 17.675198, 23.948875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.221020, 17.832033, 23.792398>,  <14.067199, 18.093426, 23.531605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.221020, 17.832033, 23.792398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675385, 0.282295, 0.681297,
		-0.629265, -0.702335, -0.332793,
		0.384552, -0.653480, 0.651984,
		14.336386, 17.635990, 23.987993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.462105, 17.814997, 23.837782>,  <14.067199, 18.093426, 23.531605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.462105, 17.814997, 23.837782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.760694, 17.758440, 24.097872>,  <13.939846, 17.724506, 24.253925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.760694, 17.758440, 24.097872>,  <13.462105, 17.814997, 23.837782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.760694, 17.758440, 24.097872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569697, 0.369134, 0.734292,
		-0.343841, -0.918558, 0.194998,
		0.746471, -0.141390, 0.650223,
		13.984634, 17.716022, 24.292938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.099210, 17.547642, 24.358482>,  <13.462105, 17.814997, 23.837782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.099210, 17.547642, 24.358482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.452872, 17.643812, 24.518715>,  <13.665070, 17.701513, 24.614855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.452872, 17.643812, 24.518715>,  <13.099210, 17.547642, 24.358482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.452872, 17.643812, 24.518715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463519, 0.344105, 0.816543,
		0.058474, -0.907628, 0.415683,
		0.884156, 0.240424, 0.400581,
		13.718119, 17.715939, 24.638889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.219820, 17.064331, 24.872564>,  <13.099210, 17.547642, 24.358482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.219820, 17.064331, 24.872564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.423913, 17.400909, 24.943707>,  <13.546369, 17.602856, 24.986393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.423913, 17.400909, 24.943707>,  <13.219820, 17.064331, 24.872564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.423913, 17.400909, 24.943707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520819, 0.137737, 0.842482,
		0.684405, -0.522493, 0.508518,
		0.510232, 0.841445, 0.177857,
		13.576982, 17.653343, 24.997063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.495261, 17.036058, 25.551868>,  <13.219820, 17.064331, 24.872564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.495261, 17.036058, 25.551868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.506139, 17.428818, 25.476885>,  <13.512666, 17.664473, 25.431894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.506139, 17.428818, 25.476885>,  <13.495261, 17.036058, 25.551868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.506139, 17.428818, 25.476885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586604, 0.167518, 0.792360,
		0.809417, 0.088415, 0.580540,
		0.027195, 0.981897, -0.187457,
		13.514297, 17.723387, 25.420649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.547967, 17.359571, 26.190533>,  <13.495261, 17.036058, 25.551868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.547967, 17.359571, 26.190533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.410394, 17.657406, 25.961691>,  <13.327849, 17.836105, 25.824385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.410394, 17.657406, 25.961691>,  <13.547967, 17.359571, 26.190533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.410394, 17.657406, 25.961691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419771, 0.423084, 0.802989,
		0.839942, 0.516328, 0.167042,
		-0.343933, 0.744584, -0.572106,
		13.307214, 17.880781, 25.790060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.705489, 17.983421, 26.581181>,  <13.547967, 17.359571, 26.190533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.705489, 17.983421, 26.581181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.429790, 18.060167, 26.301716>,  <13.264371, 18.106215, 26.134037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.429790, 18.060167, 26.301716>,  <13.705489, 17.983421, 26.581181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.429790, 18.060167, 26.301716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533237, 0.518500, 0.668443,
		0.490506, 0.833274, -0.255066,
		-0.689248, 0.191865, -0.698660,
		13.223016, 18.117727, 26.092117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.582127, 18.765888, 26.557730>,  <13.705489, 17.983421, 26.581181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.582127, 18.765888, 26.557730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.250337, 18.602436, 26.405418>,  <13.051263, 18.504364, 26.314032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.250337, 18.602436, 26.405418>,  <13.582127, 18.765888, 26.557730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.250337, 18.602436, 26.405418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534124, 0.380936, 0.754718,
		-0.163348, 0.829403, -0.534236,
		-0.829475, -0.408630, -0.380779,
		13.001494, 18.479847, 26.291185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.056139, 19.217182, 26.621655>,  <13.582127, 18.765888, 26.557730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.056139, 19.217182, 26.621655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.850163, 18.882084, 26.548964>,  <12.726579, 18.681025, 26.505350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.850163, 18.882084, 26.548964>,  <13.056139, 19.217182, 26.621655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.850163, 18.882084, 26.548964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685971, 0.275565, 0.673429,
		-0.514084, 0.471434, -0.716567,
		-0.514938, -0.837744, -0.181726,
		12.695682, 18.630760, 26.494446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.350525, 19.414808, 26.647110>,  <13.056139, 19.217182, 26.621655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.350525, 19.414808, 26.647110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.319503, 19.021284, 26.711739>,  <12.300890, 18.785170, 26.750517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.319503, 19.021284, 26.711739>,  <12.350525, 19.414808, 26.647110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.319503, 19.021284, 26.711739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505897, 0.178480, 0.843927,
		-0.859100, -0.016288, -0.511548,
		-0.077555, -0.983809, 0.161573,
		12.296236, 18.726141, 26.760210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.652182, 19.264944, 26.840998>,  <12.350525, 19.414808, 26.647110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.652182, 19.264944, 26.840998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.842587, 18.949703, 26.997103>,  <11.956831, 18.760559, 27.090765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.842587, 18.949703, 26.997103>,  <11.652182, 19.264944, 26.840998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.842587, 18.949703, 26.997103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589099, 0.043743, 0.806876,
		-0.652973, -0.613986, -0.443449,
		0.476013, -0.788104, 0.390262,
		11.985392, 18.713272, 27.114182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.209171, 18.989985, 27.206568>,  <11.652182, 19.264944, 26.840998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.209171, 18.989985, 27.206568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.546746, 18.829323, 27.348803>,  <11.749291, 18.732925, 27.434143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.546746, 18.829323, 27.348803>,  <11.209171, 18.989985, 27.206568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.546746, 18.829323, 27.348803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412997, -0.063450, 0.908519,
		-0.342349, -0.913591, -0.219430,
		0.843938, -0.401655, 0.355588,
		11.799928, 18.708826, 27.455479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.014668, 18.354151, 27.497559>,  <11.209171, 18.989985, 27.206568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.014668, 18.354151, 27.497559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.359593, 18.429903, 27.685408>,  <11.566549, 18.475353, 27.798117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.359593, 18.429903, 27.685408>,  <11.014668, 18.354151, 27.497559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.359593, 18.429903, 27.685408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399038, -0.316813, 0.860464,
		0.311737, -0.929390, -0.197624,
		0.862316, 0.189380, 0.469624,
		11.618288, 18.486717, 27.826294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.267278, 17.736750, 27.910446>,  <11.014668, 18.354151, 27.497559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.267278, 17.736750, 27.910446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.459511, 18.053772, 28.060591>,  <11.574851, 18.243986, 28.150677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.459511, 18.053772, 28.060591>,  <11.267278, 17.736750, 27.910446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.459511, 18.053772, 28.060591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182262, -0.328413, 0.926782,
		0.857800, -0.513809, -0.013377,
		0.480582, 0.792556, 0.375360,
		11.603685, 18.291538, 28.173199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.626144, 17.476955, 28.565300>,  <11.267278, 17.736750, 27.910446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.626144, 17.476955, 28.565300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.628649, 17.875814, 28.595392>,  <11.630152, 18.115129, 28.613447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.628649, 17.875814, 28.595392>,  <11.626144, 17.476955, 28.565300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.628649, 17.875814, 28.595392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079743, -0.075488, 0.993953,
		0.996796, -0.000224, -0.079989,
		0.006261, 0.997147, 0.075229,
		11.630527, 18.174959, 28.617960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.103015, 17.567783, 29.156551>,  <11.626144, 17.476955, 28.565300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.103015, 17.567783, 29.156551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.910173, 17.918110, 29.165649>,  <11.794468, 18.128305, 29.171108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.910173, 17.918110, 29.165649>,  <12.103015, 17.567783, 29.156551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.910173, 17.918110, 29.165649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033550, -0.007488, 0.999409,
		0.875471, 0.482583, -0.025773,
		-0.482105, 0.875818, 0.022746,
		11.765542, 18.180855, 29.172474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.498733, 18.001640, 29.695374>,  <12.103015, 17.567783, 29.156551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.498733, 18.001640, 29.695374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.119795, 18.105982, 29.621086>,  <11.892432, 18.168587, 29.576513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.119795, 18.105982, 29.621086>,  <12.498733, 18.001640, 29.695374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.119795, 18.105982, 29.621086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216981, -0.096398, 0.971404,
		0.235492, 0.960553, 0.147922,
		-0.947345, 0.260854, -0.185721,
		11.835591, 18.184238, 29.565371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.338841, 18.480831, 30.308226>,  <12.498733, 18.001640, 29.695374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.338841, 18.480831, 30.308226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.994949, 18.345469, 30.155205>,  <11.788614, 18.264252, 30.063393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.994949, 18.345469, 30.155205>,  <12.338841, 18.480831, 30.308226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.994949, 18.345469, 30.155205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383748, -0.066285, 0.921056,
		-0.337047, 0.938663, -0.072875,
		-0.859731, -0.338405, -0.382551,
		11.737030, 18.243948, 30.040440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.918132, 18.662310, 30.839382>,  <12.338841, 18.480831, 30.308226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.918132, 18.662310, 30.839382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.698157, 18.404722, 30.626638>,  <11.566173, 18.250170, 30.498993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.698157, 18.404722, 30.626638>,  <11.918132, 18.662310, 30.839382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.698157, 18.404722, 30.626638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617478, -0.115316, 0.778090,
		-0.562398, 0.756310, -0.334221,
		-0.549936, -0.643970, -0.531858,
		11.533176, 18.211531, 30.467081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.213799, 18.953266, 30.747662>,  <11.918132, 18.662310, 30.839382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.213799, 18.953266, 30.747662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.196410, 18.556152, 30.702955>,  <11.185977, 18.317884, 30.676130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.196410, 18.556152, 30.702955>,  <11.213799, 18.953266, 30.747662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.196410, 18.556152, 30.702955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758966, -0.039934, 0.649904,
		-0.649678, 0.113080, -0.751753,
		-0.043471, -0.992783, -0.111768,
		11.183369, 18.258318, 30.669424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.532582, 18.928719, 30.655951>,  <11.213799, 18.953266, 30.747662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.532582, 18.928719, 30.655951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.709434, 18.592995, 30.782495>,  <10.815544, 18.391562, 30.858421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.709434, 18.592995, 30.782495>,  <10.532582, 18.928719, 30.655951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.709434, 18.592995, 30.782495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700868, -0.103166, 0.705791,
		-0.559739, -0.533777, -0.633857,
		0.442128, -0.839308, 0.316361,
		10.842072, 18.341202, 30.877403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.957649, 18.710596, 31.211973>,  <10.532582, 18.928719, 30.655951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.957649, 18.710596, 31.211973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.265112, 18.465284, 31.284700>,  <10.449590, 18.318098, 31.328337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.265112, 18.465284, 31.284700>,  <9.957649, 18.710596, 31.211973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.265112, 18.465284, 31.284700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297422, -0.091013, 0.950398,
		-0.566310, -0.784606, -0.252361,
		0.768656, -0.613277, 0.181818,
		10.495709, 18.281301, 31.339245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.552113, 18.868093, 31.832340>,  <9.957649, 18.710596, 31.211973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.552113, 18.868093, 31.832340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.195917, 18.943256, 31.666584>,  <8.982200, 18.988354, 31.567129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.195917, 18.943256, 31.666584>,  <9.552113, 18.868093, 31.832340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.195917, 18.943256, 31.666584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387931, 0.162400, 0.907268,
		0.237777, 0.968668, -0.071721,
		-0.890489, 0.187905, -0.414392,
		8.928770, 18.999628, 31.542267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.929267, 18.960903, 32.219601>,  <9.552113, 18.868093, 31.832340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.929267, 18.960903, 32.219601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.654514, 18.675163, 32.166084>,  <8.489663, 18.503719, 32.133976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.654514, 18.675163, 32.166084>,  <8.929267, 18.960903, 32.219601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.654514, 18.675163, 32.166084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341581, -0.154831, -0.927011,
		0.641496, -0.682446, 0.350358,
		-0.686881, -0.714349, -0.133787,
		8.448450, 18.460859, 32.125950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.193191, 18.311319, 32.095905>,  <8.929267, 18.960903, 32.219601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.193191, 18.311319, 32.095905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.841189, 18.338333, 31.907848>,  <8.629989, 18.354542, 31.795013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.841189, 18.338333, 31.907848>,  <9.193191, 18.311319, 32.095905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.841189, 18.338333, 31.907848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383324, -0.483498, -0.786951,
		-0.280460, -0.872736, 0.399591,
		-0.880002, 0.067536, -0.470143,
		8.577188, 18.358595, 31.766806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.171804, 17.690630, 31.746452>,  <9.193191, 18.311319, 32.095905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.171804, 17.690630, 31.746452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.907974, 17.919741, 31.551767>,  <8.749677, 18.057207, 31.434956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.907974, 17.919741, 31.551767>,  <9.171804, 17.690630, 31.746452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.907974, 17.919741, 31.551767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369436, -0.316880, -0.873558,
		-0.654582, -0.755986, -0.002598,
		-0.659575, 0.572776, -0.486712,
		8.710102, 18.091574, 31.405754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.907532, 17.250038, 31.189369>,  <9.171804, 17.690630, 31.746452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.907532, 17.250038, 31.189369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.802486, 17.621319, 31.083937>,  <8.739459, 17.844088, 31.020678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.802486, 17.621319, 31.083937>,  <8.907532, 17.250038, 31.189369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.802486, 17.621319, 31.083937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244548, -0.200226, -0.948739,
		-0.933397, -0.313611, -0.174407,
		-0.262614, 0.928201, -0.263583,
		8.723702, 17.899778, 31.004862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.657650, 17.035667, 30.577740>,  <8.907532, 17.250038, 31.189369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.657650, 17.035667, 30.577740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.702116, 17.431211, 30.538147>,  <8.728795, 17.668537, 30.514391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.702116, 17.431211, 30.538147>,  <8.657650, 17.035667, 30.577740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.702116, 17.431211, 30.538147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231709, -0.122643, -0.965023,
		-0.966413, 0.084341, -0.242761,
		0.111164, 0.988861, -0.098981,
		8.735465, 17.727869, 30.508453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.073806, 17.263416, 30.137550>,  <8.657650, 17.035667, 30.577740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.073806, 17.263416, 30.137550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.376711, 17.524660, 30.137157>,  <8.558455, 17.681406, 30.136923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.376711, 17.524660, 30.137157>,  <8.073806, 17.263416, 30.137550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.376711, 17.524660, 30.137157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152991, -0.178849, -0.971909,
		-0.634938, 0.735841, -0.235355,
		0.757263, 0.653109, -0.000981,
		8.603889, 17.720592, 30.136864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.878701, 17.717598, 29.659773>,  <8.073806, 17.263416, 30.137550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.878701, 17.717598, 29.659773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.271050, 17.789839, 29.688805>,  <8.506460, 17.833183, 29.706224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.271050, 17.789839, 29.688805>,  <7.878701, 17.717598, 29.659773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.271050, 17.789839, 29.688805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087897, -0.078295, -0.993048,
		-0.173663, 0.980435, -0.092672,
		0.980875, 0.180601, 0.072580,
		8.565313, 17.844019, 29.710579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.993659, 18.140497, 29.012245>,  <7.878701, 17.717598, 29.659773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.993659, 18.140497, 29.012245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.367906, 18.041681, 29.113113>,  <8.592454, 17.982391, 29.173635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.367906, 18.041681, 29.113113>,  <7.993659, 18.140497, 29.012245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.367906, 18.041681, 29.113113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256314, -0.015799, -0.966464,
		0.242740, 0.968876, 0.048538,
		0.935618, -0.247040, 0.252172,
		8.648591, 17.967569, 29.188765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.521537, 18.598646, 28.680616>,  <7.993659, 18.140497, 29.012245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.521537, 18.598646, 28.680616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.712504, 18.253275, 28.745810>,  <8.827085, 18.046053, 28.784925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.712504, 18.253275, 28.745810>,  <8.521537, 18.598646, 28.680616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.712504, 18.253275, 28.745810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355379, 0.020100, -0.934506,
		0.803602, 0.504073, 0.316440,
		0.477419, -0.863427, 0.162985,
		8.855730, 17.994247, 28.794704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.122078, 18.642067, 28.185232>,  <8.521537, 18.598646, 28.680616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.122078, 18.642067, 28.185232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.124243, 18.252939, 28.277832>,  <9.125542, 18.019463, 28.333393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.124243, 18.252939, 28.277832>,  <9.122078, 18.642067, 28.185232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.124243, 18.252939, 28.277832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282433, -0.220592, -0.933580,
		0.959272, 0.070435, 0.273562,
		0.005412, -0.972820, 0.231501,
		9.125866, 17.961094, 28.347282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.837366, 18.466801, 28.096962>,  <9.122078, 18.642067, 28.185232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.837366, 18.466801, 28.096962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.633566, 18.123659, 28.070147>,  <9.511286, 17.917774, 28.054058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.633566, 18.123659, 28.070147>,  <9.837366, 18.466801, 28.096962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.633566, 18.123659, 28.070147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397776, -0.165730, -0.902390,
		0.763010, -0.486434, 0.425674,
		-0.509500, -0.857855, -0.067038,
		9.480716, 17.866302, 28.050035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.341693, 17.976641, 28.015619>,  <9.837366, 18.466801, 28.096962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.341693, 17.976641, 28.015619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.014516, 17.785572, 27.887371>,  <9.818210, 17.670931, 27.810421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.014516, 17.785572, 27.887371>,  <10.341693, 17.976641, 28.015619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.014516, 17.785572, 27.887371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496273, -0.303944, -0.813223,
		0.291004, -0.824285, 0.485665,
		-0.817942, -0.477673, -0.320622,
		9.769134, 17.642271, 27.791185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.560553, 17.276590, 27.699722>,  <10.341693, 17.976641, 28.015619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.560553, 17.276590, 27.699722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.203522, 17.372446, 27.546946>,  <9.989304, 17.429960, 27.455280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.203522, 17.372446, 27.546946>,  <10.560553, 17.276590, 27.699722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.203522, 17.372446, 27.546946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278558, -0.373021, -0.885020,
		-0.354553, -0.896343, 0.266199,
		-0.892579, 0.239635, -0.381939,
		9.935748, 17.444338, 27.432364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.404938, 16.701370, 27.301991>,  <10.560553, 17.276590, 27.699722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.404938, 16.701370, 27.301991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.172685, 16.991568, 27.154194>,  <10.033333, 17.165686, 27.065516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.172685, 16.991568, 27.154194>,  <10.404938, 16.701370, 27.301991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.172685, 16.991568, 27.154194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152389, -0.348967, -0.924662,
		-0.799777, -0.593195, 0.092064,
		-0.580632, 0.725494, -0.369492,
		9.998495, 17.209215, 27.043346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.023291, 16.355228, 26.805065>,  <10.404938, 16.701370, 27.301991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.023291, 16.355228, 26.805065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.030375, 16.743225, 26.708073>,  <10.034626, 16.976025, 26.649878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.030375, 16.743225, 26.708073>,  <10.023291, 16.355228, 26.805065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.030375, 16.743225, 26.708073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445376, -0.224785, -0.866667,
		-0.895169, -0.092646, -0.435993,
		0.017712, 0.969994, -0.242483,
		10.035689, 17.034224, 26.635328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.820458, 16.430218, 26.072262>,  <10.023291, 16.355228, 26.805065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.820458, 16.430218, 26.072262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.012067, 16.775711, 26.134871>,  <10.127032, 16.983007, 26.172436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.012067, 16.775711, 26.134871>,  <9.820458, 16.430218, 26.072262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.012067, 16.775711, 26.134871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228099, 0.049708, -0.972368,
		-0.847650, 0.501488, -0.173205,
		0.479021, 0.863735, 0.156524,
		10.155773, 17.034832, 26.181828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.588883, 16.964857, 25.476255>,  <9.820458, 16.430218, 26.072262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.588883, 16.964857, 25.476255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.899573, 17.158625, 25.637270>,  <10.085987, 17.274885, 25.733879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.899573, 17.158625, 25.637270>,  <9.588883, 16.964857, 25.476255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.899573, 17.158625, 25.637270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410085, 0.096122, -0.906968,
		-0.478046, 0.869539, -0.123993,
		0.776725, 0.484420, 0.402535,
		10.132591, 17.303951, 25.758030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.635106, 17.640345, 25.189379>,  <9.588883, 16.964857, 25.476255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.635106, 17.640345, 25.189379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.005940, 17.572477, 25.323080>,  <10.228441, 17.531757, 25.403301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.005940, 17.572477, 25.323080>,  <9.635106, 17.640345, 25.189379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.005940, 17.572477, 25.323080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359792, 0.152595, -0.920470,
		0.105168, 0.973616, 0.202513,
		0.927086, -0.169667, 0.334251,
		10.284066, 17.521578, 25.423355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.916750, 18.213501, 25.104834>,  <9.635106, 17.640345, 25.189379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.916750, 18.213501, 25.104834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.229918, 17.965454, 25.124815>,  <10.417818, 17.816626, 25.136805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.229918, 17.965454, 25.124815>,  <9.916750, 18.213501, 25.104834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.229918, 17.965454, 25.124815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398035, 0.437583, -0.806281,
		0.478128, 0.651137, 0.589419,
		0.782919, -0.620115, 0.049955,
		10.464793, 17.779419, 25.139801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.392154, 18.613678, 25.041784>,  <9.916750, 18.213501, 25.104834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.392154, 18.613678, 25.041784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.548355, 18.257278, 24.949154>,  <10.642076, 18.043438, 24.893576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.548355, 18.257278, 24.949154>,  <10.392154, 18.613678, 25.041784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.548355, 18.257278, 24.949154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314519, 0.365539, -0.876048,
		0.865208, 0.269265, 0.422980,
		0.390504, -0.890998, -0.231578,
		10.665506, 17.989979, 24.879681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.131213, 18.717043, 24.885155>,  <10.392154, 18.613678, 25.041784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.131213, 18.717043, 24.885155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.041609, 18.374737, 24.698614>,  <10.987846, 18.169353, 24.586689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.041609, 18.374737, 24.698614>,  <11.131213, 18.717043, 24.885155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.041609, 18.374737, 24.698614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287620, 0.399151, -0.870605,
		0.931179, -0.329158, 0.156721,
		-0.224011, -0.855765, -0.466353,
		10.974405, 18.118008, 24.558708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.965611, 27.921961, 12.092845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.937233, 27.812885, 12.476638>,  <20.920206, 27.747440, 12.706914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.937233, 27.812885, 12.476638>,  <20.965611, 27.921961, 12.092845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.937233, 27.812885, 12.476638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996591, -0.059988, 0.056640,
		0.042113, 0.960230, 0.276015,
		-0.070945, -0.272689, 0.959483,
		20.915949, 27.731079, 12.764482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.571812, 27.747078, 12.650955>,  <20.965611, 27.921961, 12.092845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.571812, 27.747078, 12.650955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.810776, 27.709364, 12.969504>,  <21.954155, 27.686735, 13.160634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.810776, 27.709364, 12.969504>,  <21.571812, 27.747078, 12.650955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.810776, 27.709364, 12.969504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236436, -0.969631, 0.062568,
		0.766288, -0.225670, -0.601560,
		0.597411, -0.094285, 0.796373,
		21.990000, 27.681078, 13.208416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.282400, 27.356636, 12.478225>,  <21.571812, 27.747078, 12.650955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.282400, 27.356636, 12.478225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.113737, 27.315598, 12.838597>,  <22.012539, 27.290976, 13.054821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.113737, 27.315598, 12.838597>,  <22.282400, 27.356636, 12.478225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.113737, 27.315598, 12.838597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103888, -0.981570, -0.160399,
		0.900784, -0.161230, 0.403228,
		-0.421658, -0.102595, 0.900932,
		21.987240, 27.284819, 13.108877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.734575, 27.066650, 12.920267>,  <22.282400, 27.356636, 12.478225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.734575, 27.066650, 12.920267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.368649, 26.979134, 13.056057>,  <22.149094, 26.926624, 13.137531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.368649, 26.979134, 13.056057>,  <22.734575, 27.066650, 12.920267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.368649, 26.979134, 13.056057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170642, -0.971231, -0.166107,
		0.366051, -0.094029, 0.925832,
		-0.914816, -0.218790, 0.339475,
		22.094204, 26.913496, 13.157900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.734533, 26.644754, 13.531983>,  <22.734575, 27.066650, 12.920267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.734533, 26.644754, 13.531983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.397400, 26.577574, 13.327466>,  <22.195120, 26.537266, 13.204756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.397400, 26.577574, 13.327466>,  <22.734533, 26.644754, 13.531983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.397400, 26.577574, 13.327466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274650, -0.951258, -0.140268,
		-0.462813, -0.258650, 0.847882,
		-0.842835, -0.167953, -0.511293,
		22.144548, 26.527187, 13.174078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.333084, 26.129591, 13.872762>,  <22.734533, 26.644754, 13.531983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.333084, 26.129591, 13.872762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.207529, 26.137943, 13.493070>,  <22.132196, 26.142956, 13.265254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.207529, 26.137943, 13.493070>,  <22.333084, 26.129591, 13.872762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.207529, 26.137943, 13.493070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110904, -0.992108, -0.058499,
		-0.942961, -0.123635, 0.309093,
		-0.313886, 0.020883, -0.949231,
		22.113363, 26.144209, 13.208301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.750629, 25.775339, 13.806968>,  <22.333084, 26.129591, 13.872762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.750629, 25.775339, 13.806968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.937044, 25.768759, 13.453123>,  <22.048893, 25.764811, 13.240816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.937044, 25.768759, 13.453123>,  <21.750629, 25.775339, 13.806968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.937044, 25.768759, 13.453123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311187, -0.932897, 0.181288,
		-0.828235, -0.359766, -0.429645,
		0.466036, -0.016449, -0.884613,
		22.076855, 25.763824, 13.187739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.557579, 25.080721, 13.420156>,  <21.750629, 25.775339, 13.806968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.557579, 25.080721, 13.420156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.906189, 25.209383, 13.272113>,  <22.115355, 25.286581, 13.183287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.906189, 25.209383, 13.272113>,  <21.557579, 25.080721, 13.420156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.906189, 25.209383, 13.272113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324775, -0.944146, -0.055771,
		-0.367375, -0.071596, -0.927313,
		0.871526, 0.321657, -0.370108,
		22.167646, 25.305880, 13.161080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.750807, 24.668106, 12.736898>,  <21.557579, 25.080721, 13.420156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.750807, 24.668106, 12.736898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.016954, 24.815304, 12.996702>,  <22.176643, 24.903624, 13.152585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.016954, 24.815304, 12.996702>,  <21.750807, 24.668106, 12.736898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.016954, 24.815304, 12.996702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281279, -0.929518, 0.238493,
		0.691496, 0.024008, -0.721982,
		0.665369, 0.367995, 0.649510,
		22.216566, 24.925703, 13.191555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.452778, 24.396858, 12.625057>,  <21.750807, 24.668106, 12.736898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.452778, 24.396858, 12.625057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.434816, 24.493626, 13.012760>,  <22.424040, 24.551685, 13.245381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.434816, 24.493626, 13.012760>,  <22.452778, 24.396858, 12.625057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.434816, 24.493626, 13.012760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068007, -0.967244, 0.244567,
		0.996674, 0.076898, 0.026980,
		-0.044903, 0.241919, 0.969257,
		22.421345, 24.566202, 13.303537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.911301, 23.988367, 13.015723>,  <22.452778, 24.396858, 12.625057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.911301, 23.988367, 13.015723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.617378, 24.114721, 13.255816>,  <22.441025, 24.190533, 13.399873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.617378, 24.114721, 13.255816>,  <22.911301, 23.988367, 13.015723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.617378, 24.114721, 13.255816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129455, -0.933981, 0.333047,
		0.665811, 0.167021, 0.727187,
		-0.734805, 0.315884, 0.600233,
		22.396936, 24.209486, 13.435886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.932114, 23.495964, 13.464830>,  <22.911301, 23.988367, 13.015723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.932114, 23.495964, 13.464830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.580431, 23.663507, 13.555655>,  <22.369421, 23.764032, 13.610149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.580431, 23.663507, 13.555655>,  <22.932114, 23.495964, 13.464830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.580431, 23.663507, 13.555655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292583, -0.850787, 0.436528,
		0.376023, 0.317364, 0.870567,
		-0.879205, 0.418858, 0.227060,
		22.316669, 23.789165, 13.623773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.783703, 23.352346, 14.179235>,  <22.932114, 23.495964, 13.464830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.783703, 23.352346, 14.179235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.438381, 23.425129, 13.990939>,  <22.231188, 23.468798, 13.877962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.438381, 23.425129, 13.990939>,  <22.783703, 23.352346, 14.179235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.438381, 23.425129, 13.990939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424617, -0.766004, 0.482637,
		-0.272770, 0.616547, 0.738557,
		-0.863306, 0.181955, -0.470739,
		22.179390, 23.479715, 13.849717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.223764, 23.274897, 14.694052>,  <22.783703, 23.352346, 14.179235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.223764, 23.274897, 14.694052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.052261, 23.213240, 14.337982>,  <21.949360, 23.176245, 14.124341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.052261, 23.213240, 14.337982>,  <22.223764, 23.274897, 14.694052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.052261, 23.213240, 14.337982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474127, -0.800342, 0.366955,
		-0.769007, 0.579390, 0.270068,
		-0.428756, -0.154144, -0.890173,
		21.923634, 23.166996, 14.070930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.453239, 23.264782, 14.822065>,  <22.223764, 23.274897, 14.694052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.453239, 23.264782, 14.822065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.530476, 23.082529, 14.474476>,  <21.576817, 22.973177, 14.265922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.530476, 23.082529, 14.474476>,  <21.453239, 23.264782, 14.822065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.530476, 23.082529, 14.474476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522167, -0.797528, 0.302143,
		-0.830697, 0.395409, -0.391911,
		0.193089, -0.455633, -0.868974,
		21.588402, 22.945839, 14.213783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.736128, 22.986183, 14.577736>,  <21.453239, 23.264782, 14.822065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.736128, 22.986183, 14.577736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.023764, 22.790493, 14.380325>,  <21.196346, 22.673079, 14.261879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.023764, 22.790493, 14.380325>,  <20.736128, 22.986183, 14.577736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.023764, 22.790493, 14.380325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487641, -0.861221, 0.143198,
		-0.495090, 0.137691, -0.857862,
		0.719092, -0.489224, -0.493525,
		21.239491, 22.643726, 14.232267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.372824, 22.483355, 14.318335>,  <20.736128, 22.986183, 14.577736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.372824, 22.483355, 14.318335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.754484, 22.374422, 14.268642>,  <20.983480, 22.309063, 14.238828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.754484, 22.374422, 14.268642>,  <20.372824, 22.483355, 14.318335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.754484, 22.374422, 14.268642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269266, -0.962186, 0.041170,
		-0.130744, -0.005831, -0.991399,
		0.954150, -0.272333, -0.124229,
		21.040730, 22.292723, 14.231374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.460690, 22.002743, 13.746982>,  <20.372824, 22.483355, 14.318335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.460690, 22.002743, 13.746982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.765162, 21.927773, 13.995328>,  <20.947845, 21.882790, 14.144336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.765162, 21.927773, 13.995328>,  <20.460690, 22.002743, 13.746982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.765162, 21.927773, 13.995328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263841, -0.964020, 0.032453,
		0.592444, -0.188512, -0.783245,
		0.761182, -0.187426, 0.620865,
		20.993517, 21.871544, 14.181587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.688894, 21.297230, 13.524096>,  <20.460690, 22.002743, 13.746982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.688894, 21.297230, 13.524096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.847988, 21.370789, 13.883649>,  <20.943445, 21.414925, 14.099380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.847988, 21.370789, 13.883649>,  <20.688894, 21.297230, 13.524096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.847988, 21.370789, 13.883649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121136, -0.960606, 0.250125,
		0.909469, -0.208371, -0.359789,
		0.397734, 0.183898, 0.898882,
		20.967308, 21.425959, 14.153314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.131165, 20.697153, 13.574442>,  <20.688894, 21.297230, 13.524096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.131165, 20.697153, 13.574442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.132940, 20.848351, 13.944761>,  <21.134007, 20.939070, 14.166953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.132940, 20.848351, 13.944761>,  <21.131165, 20.697153, 13.574442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.132940, 20.848351, 13.944761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007244, -0.925770, 0.378018,
		0.999964, -0.008384, -0.001371,
		0.004438, 0.377994, 0.925798,
		21.134272, 20.961748, 14.222501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.734917, 20.396137, 13.962191>,  <21.131165, 20.697153, 13.574442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.734917, 20.396137, 13.962191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.455938, 20.520103, 14.220654>,  <21.288551, 20.594482, 14.375731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.455938, 20.520103, 14.220654>,  <21.734917, 20.396137, 13.962191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.455938, 20.520103, 14.220654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139584, -0.825637, 0.546662,
		0.702910, 0.471462, 0.532580,
		-0.697448, 0.309914, 0.646157,
		21.246704, 20.613077, 14.414501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.882311, 20.032333, 14.557307>,  <21.734917, 20.396137, 13.962191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.882311, 20.032333, 14.557307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.519419, 20.167927, 14.656923>,  <21.301683, 20.249283, 14.716693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.519419, 20.167927, 14.656923>,  <21.882311, 20.032333, 14.557307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.519419, 20.167927, 14.656923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154230, -0.818905, 0.552818,
		0.391336, 0.463125, 0.795218,
		-0.907231, 0.338984, 0.249039,
		21.247250, 20.269623, 14.731635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.832085, 20.043831, 15.389121>,  <21.882311, 20.032333, 14.557307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.832085, 20.043831, 15.389121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.468590, 20.015720, 15.224558>,  <21.250492, 19.998854, 15.125820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.468590, 20.015720, 15.224558>,  <21.832085, 20.043831, 15.389121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.468590, 20.015720, 15.224558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163351, -0.847203, 0.505534,
		-0.384072, 0.526602, 0.758406,
		-0.908738, -0.070275, -0.411407,
		21.195969, 19.994638, 15.101135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.370281, 19.816269, 15.956912>,  <21.832085, 20.043831, 15.389121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.370281, 19.816269, 15.956912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.149940, 19.742205, 15.631391>,  <21.017736, 19.697765, 15.436078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.149940, 19.742205, 15.631391>,  <21.370281, 19.816269, 15.956912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.149940, 19.742205, 15.631391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311546, -0.858978, 0.406321,
		-0.774274, 0.477360, 0.415484,
		-0.550853, -0.185161, -0.813804,
		20.984684, 19.686657, 15.387249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.834951, 19.504526, 16.268103>,  <21.370281, 19.816269, 15.956912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.834951, 19.504526, 16.268103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.770245, 19.426399, 15.881180>,  <20.731421, 19.379522, 15.649026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.770245, 19.426399, 15.881180>,  <20.834951, 19.504526, 16.268103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.770245, 19.426399, 15.881180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418013, -0.874371, 0.246457,
		-0.893922, 0.444215, 0.059798,
		-0.161765, -0.195317, -0.967307,
		20.721716, 19.367804, 15.590987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.080467, 19.178022, 16.184402>,  <20.834951, 19.504526, 16.268103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.080467, 19.178022, 16.184402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.321259, 19.056541, 15.889000>,  <20.465733, 18.983652, 15.711759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.321259, 19.056541, 15.889000>,  <20.080467, 19.178022, 16.184402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.321259, 19.056541, 15.889000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370512, -0.925497, 0.078587,
		-0.707350, 0.226317, -0.669654,
		0.601977, -0.303703, -0.738504,
		20.501852, 18.965431, 15.667449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.711962, 18.789734, 15.708158>,  <20.080467, 19.178022, 16.184402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.711962, 18.789734, 15.708158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.101997, 18.702906, 15.726431>,  <20.336018, 18.650808, 15.737395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.101997, 18.702906, 15.726431>,  <19.711962, 18.789734, 15.708158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.101997, 18.702906, 15.726431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221743, -0.959396, 0.174324,
		0.005989, -0.180111, -0.983628,
		0.975087, -0.217068, 0.045684,
		20.394524, 18.637785, 15.740136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.715000, 18.169638, 15.477765>,  <19.711962, 18.789734, 15.708158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.715000, 18.169638, 15.477765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.087330, 18.185270, 15.623112>,  <20.310728, 18.194649, 15.710320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.087330, 18.185270, 15.623112>,  <19.715000, 18.169638, 15.477765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.087330, 18.185270, 15.623112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055900, -0.967342, 0.247233,
		0.361161, -0.250443, -0.898243,
		0.930827, 0.039079, 0.363366,
		20.366577, 18.196995, 15.732121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.074202, 17.680656, 15.199065>,  <19.715000, 18.169638, 15.477765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.074202, 17.680656, 15.199065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.324474, 17.735880, 15.506170>,  <20.474638, 17.769014, 15.690434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.324474, 17.735880, 15.506170>,  <20.074202, 17.680656, 15.199065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.324474, 17.735880, 15.506170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053998, -0.989519, 0.133928,
		0.778206, -0.042339, -0.626580,
		0.625683, 0.138058, 0.767763,
		20.512178, 17.777298, 15.736499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.477102, 17.130787, 15.036204>,  <20.074202, 17.680656, 15.199065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.477102, 17.130787, 15.036204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.544277, 17.218548, 15.420633>,  <20.584581, 17.271204, 15.651291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.544277, 17.218548, 15.420633>,  <20.477102, 17.130787, 15.036204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.544277, 17.218548, 15.420633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005140, -0.974710, 0.223413,
		0.985784, -0.042459, -0.162562,
		0.167937, 0.219402, 0.961072,
		20.594658, 17.284369, 15.708955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.213573, 16.946199, 15.323067>,  <20.477102, 17.130787, 15.036204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.213573, 16.946199, 15.323067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.925932, 16.922646, 15.600028>,  <20.753347, 16.908514, 15.766205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.925932, 16.922646, 15.600028>,  <21.213573, 16.946199, 15.323067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.925932, 16.922646, 15.600028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183010, -0.977276, 0.106956,
		0.670370, 0.203629, 0.713540,
		-0.719104, -0.058885, 0.692403,
		20.710201, 16.904980, 15.807749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.459951, 16.852377, 16.060843>,  <21.213573, 16.946199, 15.323067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.459951, 16.852377, 16.060843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.116985, 16.665182, 15.975209>,  <20.911205, 16.552866, 15.923830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.116985, 16.665182, 15.975209>,  <21.459951, 16.852377, 16.060843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.116985, 16.665182, 15.975209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387224, -0.860676, 0.330597,
		-0.338970, 0.200561, 0.919171,
		-0.857413, -0.467987, -0.214081,
		20.859762, 16.524786, 15.910985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.366196, 16.299934, 16.569109>,  <21.459951, 16.852377, 16.060843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.366196, 16.299934, 16.569109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.127405, 16.178400, 16.272110>,  <20.984131, 16.105478, 16.093910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.127405, 16.178400, 16.272110>,  <21.366196, 16.299934, 16.569109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.127405, 16.178400, 16.272110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296587, -0.943524, 0.147641,
		-0.745424, -0.132077, 0.653375,
		-0.596975, -0.303837, -0.742498,
		20.948313, 16.087250, 16.049360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.000961, 16.187056, 16.316736>,  <21.366196, 16.299934, 16.569109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.000961, 16.187056, 16.316736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.342785, 15.984883, 16.364521>,  <22.547878, 15.863581, 16.393192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.342785, 15.984883, 16.364521>,  <22.000961, 16.187056, 16.316736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.342785, 15.984883, 16.364521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497423, 0.862663, 0.091558,
		-0.149334, -0.018818, 0.988608,
		0.854558, -0.505429, 0.119464,
		22.599152, 15.833255, 16.400360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.319750, 16.490458, 16.970856>,  <22.000961, 16.187056, 16.316736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.319750, 16.490458, 16.970856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.582655, 16.319143, 16.722799>,  <22.740398, 16.216354, 16.573965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.582655, 16.319143, 16.722799>,  <22.319750, 16.490458, 16.970856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.582655, 16.319143, 16.722799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492850, 0.866766, -0.076259,
		0.570179, -0.255515, 0.780774,
		0.657263, -0.428286, -0.620143,
		22.779833, 16.190657, 16.536757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.010262, 16.778578, 17.169729>,  <22.319750, 16.490458, 16.970856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.010262, 16.778578, 17.169729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.060261, 16.656328, 16.792164>,  <23.090261, 16.582979, 16.565624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.060261, 16.656328, 16.792164>,  <23.010262, 16.778578, 17.169729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.060261, 16.656328, 16.792164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582360, 0.792846, -0.179591,
		0.803264, -0.527247, 0.277089,
		0.125000, -0.305624, -0.943911,
		23.097761, 16.564642, 16.508991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.820574, 16.699144, 17.031584>,  <23.010262, 16.778578, 17.169729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.820574, 16.699144, 17.031584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.605854, 16.754570, 16.698683>,  <23.477022, 16.787825, 16.498941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.605854, 16.754570, 16.698683>,  <23.820574, 16.699144, 17.031584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.605854, 16.754570, 16.698683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682459, 0.651303, -0.331746,
		0.496080, -0.746060, -0.444184,
		-0.536800, 0.138564, -0.832253,
		23.444815, 16.796139, 16.449007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.313227, 16.800014, 16.510525>,  <23.820574, 16.699144, 17.031584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.313227, 16.800014, 16.510525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.982363, 16.934320, 16.330271>,  <23.783844, 17.014904, 16.222118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.982363, 16.934320, 16.330271>,  <24.313227, 16.800014, 16.510525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.982363, 16.934320, 16.330271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515181, 0.773397, -0.369385,
		0.224492, -0.537698, -0.812702,
		-0.827159, 0.335765, -0.450633,
		23.734215, 17.035049, 16.195080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.496189, 16.920181, 15.795761>,  <24.313227, 16.800014, 16.510525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.496189, 16.920181, 15.795761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.156294, 17.125628, 15.843335>,  <23.952356, 17.248896, 15.871880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.156294, 17.125628, 15.843335>,  <24.496189, 16.920181, 15.795761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.156294, 17.125628, 15.843335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412386, 0.788087, -0.457008,
		-0.328459, -0.339289, -0.881475,
		-0.849737, 0.513616, 0.118936,
		23.901373, 17.279713, 15.879016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.354467, 17.198181, 15.189486>,  <24.496189, 16.920181, 15.795761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.354467, 17.198181, 15.189486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.157080, 17.419985, 15.457519>,  <24.038647, 17.553066, 15.618338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.157080, 17.419985, 15.457519>,  <24.354467, 17.198181, 15.189486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.157080, 17.419985, 15.457519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265886, 0.829711, -0.490800,
		-0.828127, -0.064029, -0.556872,
		-0.493468, 0.554509, 0.670081,
		24.009039, 17.586338, 15.658543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.054844, 17.650341, 14.739469>,  <24.354467, 17.198181, 15.189486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.054844, 17.650341, 14.739469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.051800, 17.789248, 15.114563>,  <24.049974, 17.872591, 15.339620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.051800, 17.789248, 15.114563>,  <24.054844, 17.650341, 14.739469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.051800, 17.789248, 15.114563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330859, 0.885820, -0.325354,
		-0.943649, 0.307783, -0.121636,
		-0.007609, 0.347264, 0.937736,
		24.049517, 17.893427, 15.395884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.639872, 18.202614, 14.764398>,  <24.054844, 17.650341, 14.739469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.639872, 18.202614, 14.764398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.888926, 18.239336, 15.075240>,  <24.038359, 18.261370, 15.261745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.888926, 18.239336, 15.075240>,  <23.639872, 18.202614, 14.764398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.888926, 18.239336, 15.075240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220358, 0.932333, -0.286701,
		-0.750844, 0.349752, 0.560274,
		0.622636, 0.091808, 0.777107,
		24.075716, 18.266878, 15.308372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.446480, 18.802896, 15.161683>,  <23.639872, 18.202614, 14.764398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.446480, 18.802896, 15.161683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.826859, 18.729597, 15.261376>,  <24.055086, 18.685617, 15.321193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.826859, 18.729597, 15.261376>,  <23.446480, 18.802896, 15.161683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.826859, 18.729597, 15.261376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243560, 0.940230, -0.238005,
		-0.190724, 0.287034, 0.938742,
		0.950948, -0.183247, 0.249234,
		24.112143, 18.674623, 15.336146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.631433, 19.378338, 15.542712>,  <23.446480, 18.802896, 15.161683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.631433, 19.378338, 15.542712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.974354, 19.210003, 15.424101>,  <24.180107, 19.109003, 15.352934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.974354, 19.210003, 15.424101>,  <23.631433, 19.378338, 15.542712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.974354, 19.210003, 15.424101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327794, 0.890364, -0.315916,
		0.396967, 0.173635, 0.901259,
		0.857303, -0.420836, -0.296529,
		24.231544, 19.083752, 15.335142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.022318, 19.747412, 15.804291>,  <23.631433, 19.378338, 15.542712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.022318, 19.747412, 15.804291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.285353, 19.578493, 15.554732>,  <24.443174, 19.477142, 15.404998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.285353, 19.578493, 15.554732>,  <24.022318, 19.747412, 15.804291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.285353, 19.578493, 15.554732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346025, 0.904911, -0.247793,
		0.669212, -0.052938, 0.741184,
		0.657588, -0.422295, -0.623895,
		24.482630, 19.451805, 15.367563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.456032, 20.317511, 15.676908>,  <24.022318, 19.747412, 15.804291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.456032, 20.317511, 15.676908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.592840, 20.053684, 15.409178>,  <24.674925, 19.895388, 15.248540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.592840, 20.053684, 15.409178>,  <24.456032, 20.317511, 15.676908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.592840, 20.053684, 15.409178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407238, 0.745954, -0.526982,
		0.846864, -0.092334, 0.523733,
		0.342023, -0.659566, -0.669323,
		24.695448, 19.855814, 15.208381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202341, 20.434462, 15.676435>,  <24.456032, 20.317511, 15.676908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.202341, 20.434462, 15.676435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.040966, 20.283865, 15.342850>,  <24.944141, 20.193508, 15.142698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.040966, 20.283865, 15.342850>,  <25.202341, 20.434462, 15.676435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.040966, 20.283865, 15.342850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321823, 0.794809, -0.514498,
		0.856545, -0.475955, -0.199490,
		-0.403435, -0.376490, -0.833964,
		24.919935, 20.170918, 15.092661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.857067, 20.453205, 15.153226>,  <25.202341, 20.434462, 15.676435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.857067, 20.453205, 15.153226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.512587, 20.435209, 14.950719>,  <25.305899, 20.424412, 14.829214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.512587, 20.435209, 14.950719>,  <25.857067, 20.453205, 15.153226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.512587, 20.435209, 14.950719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318305, 0.728812, -0.606230,
		0.396250, -0.683234, -0.613332,
		-0.861201, -0.044992, -0.506269,
		25.254227, 20.421711, 14.798839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.026987, 20.741760, 14.458261>,  <25.857067, 20.453205, 15.153226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.026987, 20.741760, 14.458261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.627745, 20.721085, 14.471576>,  <25.388199, 20.708679, 14.479565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.627745, 20.721085, 14.471576>,  <26.026987, 20.741760, 14.458261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.627745, 20.721085, 14.471576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059719, 0.686439, -0.724731,
		0.014613, -0.725347, -0.688228,
		-0.998108, -0.051691, 0.033286,
		25.328312, 20.705578, 14.481562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.852028, 20.527603, 13.836347>,  <26.026987, 20.741760, 14.458261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.852028, 20.527603, 13.836347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.549513, 20.728363, 14.004215>,  <25.368004, 20.848820, 14.104937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.549513, 20.728363, 14.004215>,  <25.852028, 20.527603, 13.836347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.549513, 20.728363, 14.004215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043678, 0.601300, -0.797828,
		-0.652778, -0.621719, -0.432835,
		-0.756289, 0.501899, 0.419671,
		25.322626, 20.878933, 14.130116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.406675, 20.701115, 13.262774>,  <25.852028, 20.527603, 13.836347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.406675, 20.701115, 13.262774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.290512, 20.948458, 13.554882>,  <25.220814, 21.096863, 13.730147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.290512, 20.948458, 13.554882>,  <25.406675, 20.701115, 13.262774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290512, 20.948458, 13.554882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026751, 0.768110, -0.639758,
		-0.956528, -0.166257, -0.239609,
		-0.290410, 0.618357, 0.730272,
		25.203388, 21.133965, 13.773964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.752254, 21.148405, 13.037630>,  <25.406675, 20.701115, 13.262774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.752254, 21.148405, 13.037630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.974823, 21.322432, 13.320787>,  <25.108364, 21.426847, 13.490682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.974823, 21.322432, 13.320787>,  <24.752254, 21.148405, 13.037630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.974823, 21.322432, 13.320787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031109, 0.862271, -0.505491,
		-0.830316, 0.259245, 0.493322,
		0.556423, 0.435064, 0.707893,
		25.141750, 21.452951, 13.533155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.915836, 17.467163, 22.580029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.701504, 17.136822, 22.509771>,  <16.572905, 16.938618, 22.467617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.701504, 17.136822, 22.509771>,  <16.915836, 17.467163, 22.580029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.701504, 17.136822, 22.509771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755756, -0.376379, -0.535883,
		0.376452, -0.419888, 0.825820,
		-0.535832, -0.825853, -0.175644,
		16.540754, 16.889067, 22.457079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.497383, 16.931053, 22.635141>,  <16.915836, 17.467163, 22.580029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.497383, 16.931053, 22.635141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.179062, 16.820719, 22.419508>,  <16.988070, 16.754519, 22.290129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.179062, 16.820719, 22.419508>,  <17.497383, 16.931053, 22.635141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.179062, 16.820719, 22.419508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602329, -0.268825, -0.751620,
		0.062406, -0.922848, 0.380076,
		-0.795805, -0.275836, -0.539082,
		16.940321, 16.737968, 22.257784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.681118, 16.318604, 22.195816>,  <17.497383, 16.931053, 22.635141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.681118, 16.318604, 22.195816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.358509, 16.478357, 22.021454>,  <17.164944, 16.574209, 21.916836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.358509, 16.478357, 22.021454>,  <17.681118, 16.318604, 22.195816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.358509, 16.478357, 22.021454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458458, -0.043031, -0.887674,
		-0.373283, -0.915772, -0.148397,
		-0.806521, 0.399388, -0.435906,
		17.116552, 16.598173, 21.890682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.641411, 15.839985, 21.649368>,  <17.681118, 16.318604, 22.195816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.641411, 15.839985, 21.649368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.410805, 16.149273, 21.543716>,  <17.272442, 16.334845, 21.480326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.410805, 16.149273, 21.543716>,  <17.641411, 15.839985, 21.649368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.410805, 16.149273, 21.543716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294663, -0.104760, -0.949842,
		-0.762106, -0.625426, -0.167444,
		-0.576514, 0.773219, -0.264128,
		17.237850, 16.381239, 21.464478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.129740, 15.653163, 21.049280>,  <17.641411, 15.839985, 21.649368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.129740, 15.653163, 21.049280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.133965, 16.052721, 21.030972>,  <17.136499, 16.292456, 21.019987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.133965, 16.052721, 21.030972>,  <17.129740, 15.653163, 21.049280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.133965, 16.052721, 21.030972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070944, -0.046405, -0.996401,
		-0.997424, 0.007277, -0.071355,
		0.010562, 0.998896, -0.045769,
		17.137133, 16.352390, 21.017241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.685730, 15.707020, 20.519106>,  <17.129740, 15.653163, 21.049280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.685730, 15.707020, 20.519106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907820, 16.037111, 20.560526>,  <17.041073, 16.235167, 20.585379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.907820, 16.037111, 20.560526>,  <16.685730, 15.707020, 20.519106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.907820, 16.037111, 20.560526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055469, 0.160969, -0.985399,
		-0.829848, 0.541375, 0.135148,
		0.555225, 0.825229, 0.103551,
		17.074387, 16.284679, 20.591591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.281046, 16.290707, 20.216513>,  <16.685730, 15.707020, 20.519106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.281046, 16.290707, 20.216513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.674978, 16.359995, 20.220612>,  <16.911337, 16.401567, 20.223070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.674978, 16.359995, 20.220612>,  <16.281046, 16.290707, 20.216513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.674978, 16.359995, 20.220612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000848, 0.063852, -0.997959,
		-0.173523, 0.982811, 0.063030,
		0.984830, 0.173222, 0.010246,
		16.970427, 16.411961, 20.223686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.294315, 16.801146, 19.770744>,  <16.281046, 16.290707, 20.216513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.294315, 16.801146, 19.770744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.680967, 16.709124, 19.815821>,  <16.912958, 16.653910, 19.842867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.680967, 16.709124, 19.815821>,  <16.294315, 16.801146, 19.770744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.680967, 16.709124, 19.815821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156841, 0.183659, -0.970397,
		0.202550, 0.955690, 0.213613,
		0.966630, -0.230057, 0.112691,
		16.970957, 16.640106, 19.849628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.617899, 17.359875, 19.371067>,  <16.294315, 16.801146, 19.770744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.617899, 17.359875, 19.371067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.859186, 17.043392, 19.411306>,  <17.003960, 16.853502, 19.435450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.859186, 17.043392, 19.411306>,  <16.617899, 17.359875, 19.371067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.859186, 17.043392, 19.411306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284293, 0.095451, -0.953974,
		0.745186, 0.604056, 0.282512,
		0.603220, -0.791205, 0.100600,
		17.040152, 16.806030, 19.441486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.265209, 17.582872, 19.280264>,  <16.617899, 17.359875, 19.371067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.265209, 17.582872, 19.280264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.231283, 17.197807, 19.177437>,  <17.210928, 16.966768, 19.115740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.231283, 17.197807, 19.177437>,  <17.265209, 17.582872, 19.280264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.231283, 17.197807, 19.177437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282446, 0.224185, -0.932719,
		0.955526, -0.151717, 0.252886,
		-0.084817, -0.962664, -0.257067,
		17.205837, 16.909008, 19.100317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.687990, 17.598499, 18.708107>,  <17.265209, 17.582872, 19.280264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.687990, 17.598499, 18.708107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.542871, 17.226412, 18.685951>,  <17.455799, 17.003159, 18.672657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.542871, 17.226412, 18.685951>,  <17.687990, 17.598499, 18.708107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.542871, 17.226412, 18.685951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011114, 0.055115, -0.998418,
		0.931801, -0.362839, -0.009657,
		-0.362798, -0.930220, -0.055389,
		17.434032, 16.947346, 18.669334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.162550, 17.249563, 18.292423>,  <17.687990, 17.598499, 18.708107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.162550, 17.249563, 18.292423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.797203, 17.089914, 18.260271>,  <17.577995, 16.994125, 18.240980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.797203, 17.089914, 18.260271>,  <18.162550, 17.249563, 18.292423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.797203, 17.089914, 18.260271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002690, 0.191507, -0.981488,
		0.407127, -0.896675, -0.173843,
		-0.913368, -0.399122, -0.080380,
		17.523193, 16.970179, 18.236156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.109509, 16.547689, 17.840530>,  <18.162550, 17.249563, 18.292423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.109509, 16.547689, 17.840530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.760326, 16.742416, 17.852924>,  <17.550817, 16.859253, 17.860361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.760326, 16.742416, 17.852924>,  <18.109509, 16.547689, 17.840530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.760326, 16.742416, 17.852924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021873, 0.102524, -0.994490,
		-0.487312, -0.867466, -0.100147,
		-0.872954, 0.486818, 0.030987,
		17.498440, 16.888462, 17.862221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.586775, 16.354883, 18.434483>,  <18.109509, 16.547689, 17.840530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.586775, 16.354883, 18.434483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.746050, 16.555706, 18.127396>,  <18.841616, 16.676199, 17.943144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.746050, 16.555706, 18.127396>,  <18.586775, 16.354883, 18.434483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.746050, 16.555706, 18.127396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665356, 0.734210, 0.135048,
		0.631466, 0.457030, 0.626398,
		0.398187, 0.502056, -0.767716,
		18.865505, 16.706324, 17.897081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.884377, 15.809994, 17.985527>,  <18.586775, 16.354883, 18.434483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.884377, 15.809994, 17.985527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.143276, 15.505188, 17.993544>,  <19.298616, 15.322305, 17.998354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.143276, 15.505188, 17.993544>,  <18.884377, 15.809994, 17.985527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.143276, 15.505188, 17.993544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594853, -0.488480, 0.638387,
		-0.476658, -0.425132, -0.769455,
		0.647262, -0.762004, 0.020053,
		19.337452, 15.276584, 17.999556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.521246, 15.206827, 17.834700>,  <18.884377, 15.809994, 17.985527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.521246, 15.206827, 17.834700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.847454, 15.094447, 18.037083>,  <19.043179, 15.027020, 18.158512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.847454, 15.094447, 18.037083>,  <18.521246, 15.206827, 17.834700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.847454, 15.094447, 18.037083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551987, -0.640298, 0.534162,
		0.173892, -0.714903, -0.677256,
		0.815520, -0.280950, 0.505959,
		19.092110, 15.010162, 18.188871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.443399, 14.566941, 17.943604>,  <18.521246, 15.206827, 17.834700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.443399, 14.566941, 17.943604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.714344, 14.668979, 18.219606>,  <18.876911, 14.730201, 18.385208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.714344, 14.668979, 18.219606>,  <18.443399, 14.566941, 17.943604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.714344, 14.668979, 18.219606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442041, -0.608604, 0.658940,
		0.588031, -0.751352, -0.299483,
		0.677362, 0.255093, 0.690006,
		18.917553, 14.745506, 18.426609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.545130, 13.902923, 18.217648>,  <18.443399, 14.566941, 17.943604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.545130, 13.902923, 18.217648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.688890, 14.158800, 18.489418>,  <18.775146, 14.312326, 18.652481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.688890, 14.158800, 18.489418>,  <18.545130, 13.902923, 18.217648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.688890, 14.158800, 18.489418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236224, -0.641997, 0.729409,
		0.902789, -0.422649, -0.079625,
		0.359403, 0.639693, 0.679428,
		18.796711, 14.350708, 18.693247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.906284, 13.505337, 18.834351>,  <18.545130, 13.902923, 18.217648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.906284, 13.505337, 18.834351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.822203, 13.842166, 19.033037>,  <18.771753, 14.044264, 19.152248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.822203, 13.842166, 19.033037>,  <18.906284, 13.505337, 18.834351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.822203, 13.842166, 19.033037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470137, -0.532531, 0.703834,
		0.857196, -0.085575, 0.507831,
		-0.210205, 0.842074, 0.496715,
		18.759142, 14.094788, 19.182053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.134247, 13.422277, 19.500721>,  <18.906284, 13.505337, 18.834351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.134247, 13.422277, 19.500721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.882717, 13.731258, 19.536274>,  <18.731800, 13.916647, 19.557606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.882717, 13.731258, 19.536274>,  <19.134247, 13.422277, 19.500721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.882717, 13.731258, 19.536274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465949, -0.465868, 0.752236,
		0.622474, 0.431609, 0.652871,
		-0.628823, 0.772452, 0.088883,
		18.694071, 13.962994, 19.562939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.097082, 13.498795, 20.231743>,  <19.134247, 13.422277, 19.500721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.097082, 13.498795, 20.231743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.771646, 13.674939, 20.079870>,  <18.576385, 13.780625, 19.988747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.771646, 13.674939, 20.079870>,  <19.097082, 13.498795, 20.231743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.771646, 13.674939, 20.079870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561707, -0.426580, 0.708882,
		0.150199, 0.790007, 0.594414,
		-0.813588, 0.440361, -0.379681,
		18.527571, 13.807047, 19.965965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.798258, 13.917986, 20.731533>,  <19.097082, 13.498795, 20.231743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.798258, 13.917986, 20.731533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.476873, 13.833699, 20.508806>,  <18.284042, 13.783127, 20.375170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.476873, 13.833699, 20.508806>,  <18.798258, 13.917986, 20.731533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.476873, 13.833699, 20.508806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559632, -0.051789, 0.827121,
		-0.203126, 0.976174, -0.076314,
		-0.803462, -0.210717, -0.556818,
		18.235834, 13.770484, 20.341761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.337633, 14.436423, 20.797413>,  <18.798258, 13.917986, 20.731533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.337633, 14.436423, 20.797413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.127880, 14.127271, 20.654486>,  <18.002028, 13.941779, 20.568729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.127880, 14.127271, 20.654486>,  <18.337633, 14.436423, 20.797413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.127880, 14.127271, 20.654486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537020, -0.025463, 0.843185,
		-0.660781, 0.634039, -0.401701,
		-0.524383, -0.772882, -0.357317,
		17.970566, 13.895406, 20.547291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.649406, 14.626707, 20.916506>,  <18.337633, 14.436423, 20.797413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.649406, 14.626707, 20.916506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.590546, 14.243999, 20.816158>,  <17.555229, 14.014374, 20.755951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.590546, 14.243999, 20.816158>,  <17.649406, 14.626707, 20.916506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.590546, 14.243999, 20.816158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762837, -0.051670, 0.644523,
		-0.629624, 0.286215, -0.722257,
		-0.147153, -0.956771, -0.250868,
		17.546400, 13.956967, 20.740898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.983746, 14.544233, 20.768751>,  <17.649406, 14.626707, 20.916506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.983746, 14.544233, 20.768751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.113434, 14.184173, 20.885101>,  <17.191246, 13.968136, 20.954910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.113434, 14.184173, 20.885101>,  <16.983746, 14.544233, 20.768751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.113434, 14.184173, 20.885101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673486, -0.003717, 0.739191,
		-0.664303, -0.435560, -0.607445,
		0.324219, -0.900152, 0.290874,
		17.210699, 13.914127, 20.972364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318773, 14.195395, 21.072210>,  <16.983746, 14.544233, 20.768751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318773, 14.195395, 21.072210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.622326, 13.972373, 21.206810>,  <16.804459, 13.838560, 21.287569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.622326, 13.972373, 21.206810>,  <16.318773, 14.195395, 21.072210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.622326, 13.972373, 21.206810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373269, 0.051001, 0.926320,
		-0.533636, -0.828572, -0.169414,
		0.758883, -0.557555, 0.336497,
		16.849991, 13.805107, 21.307758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.056149, 13.495252, 21.399630>,  <16.318773, 14.195395, 21.072210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.056149, 13.495252, 21.399630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.403658, 13.604620, 21.564783>,  <16.612164, 13.670240, 21.663876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.403658, 13.604620, 21.564783>,  <16.056149, 13.495252, 21.399630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.403658, 13.604620, 21.564783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431773, 0.009962, 0.901927,
		0.242493, -0.961843, 0.126711,
		0.868775, 0.273422, 0.412882,
		16.664289, 13.686646, 21.688648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.132179, 12.998632, 21.885332>,  <16.056149, 13.495252, 21.399630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.132179, 12.998632, 21.885332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.337200, 13.322054, 22.000938>,  <16.460213, 13.516107, 22.070301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.337200, 13.322054, 22.000938>,  <16.132179, 12.998632, 21.885332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.337200, 13.322054, 22.000938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365369, -0.099226, 0.925559,
		0.777043, -0.579995, 0.244562,
		0.512553, 0.808554, 0.289015,
		16.490967, 13.564620, 22.087643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.739396, 12.439532, 22.164633>,  <16.132179, 12.998632, 21.885332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.739396, 12.439532, 22.164633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.341187, 12.445876, 22.201904>,  <15.102261, 12.449682, 22.224268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.341187, 12.445876, 22.201904>,  <15.739396, 12.439532, 22.164633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.341187, 12.445876, 22.201904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088430, -0.504380, -0.858942,
		0.033376, -0.863336, 0.503524,
		-0.995523, 0.015858, 0.093179,
		15.042530, 12.450634, 22.229858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.583056, 11.832908, 21.958372>,  <15.739396, 12.439532, 22.164633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.583056, 11.832908, 21.958372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.236286, 12.028274, 21.918592>,  <15.028224, 12.145493, 21.894724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.236286, 12.028274, 21.918592>,  <15.583056, 11.832908, 21.958372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.236286, 12.028274, 21.918592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116815, -0.393056, -0.912064,
		-0.484557, -0.779074, 0.397805,
		-0.866925, 0.488416, -0.099451,
		14.976208, 12.174798, 21.888758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.030181, 11.293282, 21.648638>,  <15.583056, 11.832908, 21.958372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.030181, 11.293282, 21.648638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.879106, 11.656224, 21.574820>,  <14.788461, 11.873990, 21.530529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.879106, 11.656224, 21.574820>,  <15.030181, 11.293282, 21.648638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.879106, 11.656224, 21.574820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275384, -0.300364, -0.913206,
		-0.884033, -0.294087, 0.363315,
		-0.377689, 0.907356, -0.184545,
		14.765799, 11.928431, 21.519457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.437323, 11.183080, 21.327679>,  <15.030181, 11.293282, 21.648638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.437323, 11.183080, 21.327679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.572594, 11.542824, 21.216837>,  <14.653756, 11.758670, 21.150331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.572594, 11.542824, 21.216837>,  <14.437323, 11.183080, 21.327679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.572594, 11.542824, 21.216837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208502, -0.215532, -0.953977,
		-0.917695, 0.380390, 0.114630,
		0.338177, 0.899360, -0.277105,
		14.674047, 11.812632, 21.133705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.200648, 11.221538, 20.640390>,  <14.437323, 11.183080, 21.327679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.200648, 11.221538, 20.640390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.442576, 11.538751, 20.669495>,  <14.587733, 11.729078, 20.686956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.442576, 11.538751, 20.669495>,  <14.200648, 11.221538, 20.640390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.442576, 11.538751, 20.669495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091875, 0.021271, -0.995543,
		-0.791045, 0.608809, -0.059994,
		0.604819, 0.793032, 0.072760,
		14.624022, 11.776660, 20.691322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.976084, 11.625079, 20.131750>,  <14.200648, 11.221538, 20.640390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.976084, 11.625079, 20.131750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.344042, 11.764615, 20.203423>,  <14.564816, 11.848336, 20.246426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.344042, 11.764615, 20.203423>,  <13.976084, 11.625079, 20.131750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.344042, 11.764615, 20.203423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190390, 0.002190, -0.981706,
		-0.342850, 0.937180, -0.064401,
		0.919894, 0.348840, 0.179180,
		14.620010, 11.869267, 20.257177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.065853, 12.130205, 19.569845>,  <13.976084, 11.625079, 20.131750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.065853, 12.130205, 19.569845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.432398, 12.041882, 19.703426>,  <14.652325, 11.988888, 19.783575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.432398, 12.041882, 19.703426>,  <14.065853, 12.130205, 19.569845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.432398, 12.041882, 19.703426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327150, -0.067821, -0.942536,
		0.230768, 0.972956, 0.010089,
		0.916362, -0.220808, 0.333954,
		14.707306, 11.975639, 19.803612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.559241, 12.572897, 19.195414>,  <14.065853, 12.130205, 19.569845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.559241, 12.572897, 19.195414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.772779, 12.261250, 19.326860>,  <14.900903, 12.074263, 19.405727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.772779, 12.261250, 19.326860>,  <14.559241, 12.572897, 19.195414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.772779, 12.261250, 19.326860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526273, 0.001954, -0.850313,
		0.661850, 0.626878, 0.411071,
		0.533846, -0.779115, 0.328616,
		14.932933, 12.027516, 19.425446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.130513, 12.677647, 18.847609>,  <14.559241, 12.572897, 19.195414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.130513, 12.677647, 18.847609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.193507, 12.295637, 18.948111>,  <15.231303, 12.066432, 19.008411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.193507, 12.295637, 18.948111>,  <15.130513, 12.677647, 18.847609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.193507, 12.295637, 18.948111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484668, -0.146931, -0.862269,
		0.860404, 0.257570, 0.439730,
		0.157485, -0.955023, 0.251257,
		15.240752, 12.009130, 19.023487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.926401, 12.458525, 18.841663>,  <15.130513, 12.677647, 18.847609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.926401, 12.458525, 18.841663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.682247, 12.153694, 18.755249>,  <15.535755, 11.970796, 18.703400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.682247, 12.153694, 18.755249>,  <15.926401, 12.458525, 18.841663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.682247, 12.153694, 18.755249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347269, -0.012325, -0.937685,
		0.711924, -0.647370, 0.272168,
		-0.610384, -0.762076, -0.216037,
		15.499132, 11.925072, 18.690437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.239862, 12.029219, 18.289614>,  <15.926401, 12.458525, 18.841663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.239862, 12.029219, 18.289614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.869854, 11.877523, 18.280518>,  <15.647849, 11.786507, 18.275061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.869854, 11.877523, 18.280518>,  <16.239862, 12.029219, 18.289614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.869854, 11.877523, 18.280518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127936, -0.254578, -0.958552,
		0.357730, -0.889589, 0.284008,
		-0.925020, -0.379237, -0.022741,
		15.592348, 11.763752, 18.273695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.339449, 11.397628, 18.047791>,  <16.239862, 12.029219, 18.289614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.339449, 11.397628, 18.047791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.957185, 11.507652, 18.005735>,  <15.727826, 11.573667, 17.980503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.957185, 11.507652, 18.005735>,  <16.339449, 11.397628, 18.047791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.957185, 11.507652, 18.005735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051516, -0.195369, -0.979376,
		-0.289931, -0.941366, 0.172536,
		-0.955660, 0.275063, -0.105139,
		15.670486, 11.590171, 17.974194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<12.532889, 14.029202, 26.839251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.751141, 13.753736, 27.030262>,  <12.882092, 13.588458, 27.144869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.751141, 13.753736, 27.030262>,  <12.532889, 14.029202, 26.839251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.751141, 13.753736, 27.030262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585173, -0.094807, -0.805347,
		0.599885, 0.718858, 0.351257,
		0.545629, -0.688662, 0.477530,
		12.914829, 13.547138, 27.173521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.209523, 14.273648, 26.691553>,  <12.532889, 14.029202, 26.839251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.209523, 14.273648, 26.691553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.250197, 13.890773, 26.799959>,  <13.274602, 13.661047, 26.865004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.250197, 13.890773, 26.799959>,  <13.209523, 14.273648, 26.691553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.250197, 13.890773, 26.799959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722576, -0.116183, -0.681458,
		0.683771, 0.265123, 0.679828,
		0.101685, -0.957189, 0.271015,
		13.280703, 13.603616, 26.881264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.866093, 14.156209, 26.774302>,  <13.209523, 14.273648, 26.691553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.866093, 14.156209, 26.774302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.712415, 13.791694, 26.715042>,  <13.620208, 13.572985, 26.679485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.712415, 13.791694, 26.715042>,  <13.866093, 14.156209, 26.774302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.712415, 13.791694, 26.715042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717355, -0.193632, -0.669259,
		0.581201, -0.363402, 0.728110,
		-0.384195, -0.911288, -0.148150,
		13.597157, 13.518308, 26.670597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.441402, 13.894431, 26.627901>,  <13.866093, 14.156209, 26.774302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.441402, 13.894431, 26.627901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.159719, 13.638334, 26.505148>,  <13.990708, 13.484676, 26.431496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.159719, 13.638334, 26.505148>,  <14.441402, 13.894431, 26.627901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.159719, 13.638334, 26.505148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646553, -0.399699, -0.649776,
		0.293354, -0.655995, 0.695423,
		-0.704210, -0.640243, -0.306883,
		13.948456, 13.446261, 26.413082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.795530, 13.206878, 26.433863>,  <14.441402, 13.894431, 26.627901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.795530, 13.206878, 26.433863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.443660, 13.196633, 26.243910>,  <14.232537, 13.190487, 26.129938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.443660, 13.196633, 26.243910>,  <14.795530, 13.206878, 26.433863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.443660, 13.196633, 26.243910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458152, -0.313416, -0.831785,
		-0.127531, -0.949270, 0.287440,
		-0.879678, -0.025613, -0.474880,
		14.179756, 13.188950, 26.101446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.802775, 12.632370, 25.971289>,  <14.795530, 13.206878, 26.433863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.802775, 12.632370, 25.971289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.490582, 12.849200, 25.846710>,  <14.303266, 12.979299, 25.771963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.490582, 12.849200, 25.846710>,  <14.802775, 12.632370, 25.971289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.490582, 12.849200, 25.846710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186101, -0.274141, -0.943511,
		-0.596834, -0.794356, 0.113082,
		-0.780484, 0.542075, -0.311447,
		14.256436, 13.011823, 25.753277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.297774, 12.200517, 25.627796>,  <14.802775, 12.632370, 25.971289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.297774, 12.200517, 25.627796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.227478, 12.570207, 25.492195>,  <14.185300, 12.792021, 25.410835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.227478, 12.570207, 25.492195>,  <14.297774, 12.200517, 25.627796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.227478, 12.570207, 25.492195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005275, -0.343473, -0.939148,
		-0.984422, -0.166834, 0.055487,
		-0.175741, 0.924225, -0.339002,
		14.174756, 12.847474, 25.390495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.825360, 12.088120, 25.123724>,  <14.297774, 12.200517, 25.627796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.825360, 12.088120, 25.123724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.018875, 12.430037, 25.048594>,  <14.134984, 12.635187, 25.003515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.018875, 12.430037, 25.048594>,  <13.825360, 12.088120, 25.123724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.018875, 12.430037, 25.048594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178435, -0.306443, -0.935015,
		-0.856803, 0.418834, -0.300778,
		0.483788, 0.854793, -0.187827,
		14.164011, 12.686475, 24.992245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.638050, 12.283168, 24.428034>,  <13.825360, 12.088120, 25.123724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.638050, 12.283168, 24.428034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.971734, 12.492554, 24.497404>,  <14.171945, 12.618185, 24.539026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.971734, 12.492554, 24.497404>,  <13.638050, 12.283168, 24.428034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.971734, 12.492554, 24.497404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306809, -0.179259, -0.934738,
		-0.458215, 0.832976, -0.310144,
		0.834211, 0.523466, 0.173425,
		14.221997, 12.649593, 24.549431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.587408, 12.864378, 23.891655>,  <13.638050, 12.283168, 24.428034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.587408, 12.864378, 23.891655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.975123, 12.835374, 23.985653>,  <14.207752, 12.817971, 24.042051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.975123, 12.835374, 23.985653>,  <13.587408, 12.864378, 23.891655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.975123, 12.835374, 23.985653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245476, 0.227480, -0.942335,
		0.014873, 0.971079, 0.238293,
		0.969289, -0.072510, 0.234993,
		14.265910, 12.813621, 24.056150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.883280, 13.388159, 23.503511>,  <13.587408, 12.864378, 23.891655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.883280, 13.388159, 23.503511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.172129, 13.126769, 23.594297>,  <14.345438, 12.969935, 23.648769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.172129, 13.126769, 23.594297>,  <13.883280, 13.388159, 23.503511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.172129, 13.126769, 23.594297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229364, -0.083357, -0.969765,
		0.652634, 0.752346, 0.089690,
		0.722122, -0.653474, 0.226963,
		14.388765, 12.930727, 23.662386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.549117, 13.621253, 23.187204>,  <13.883280, 13.388159, 23.503511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.549117, 13.621253, 23.187204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.575832, 13.227677, 23.253418>,  <14.591862, 12.991531, 23.293146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.575832, 13.227677, 23.253418>,  <14.549117, 13.621253, 23.187204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.575832, 13.227677, 23.253418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232583, -0.145981, -0.961559,
		0.970281, 0.102722, 0.219098,
		0.066789, -0.983940, 0.165534,
		14.595869, 12.932495, 23.303078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.236928, 13.539091, 22.846226>,  <14.549117, 13.621253, 23.187204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.236928, 13.539091, 22.846226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.081462, 13.175587, 22.907011>,  <14.988182, 12.957484, 22.943483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.081462, 13.175587, 22.907011>,  <15.236928, 13.539091, 22.846226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.081462, 13.175587, 22.907011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077352, -0.196532, -0.977442,
		0.918126, -0.368143, 0.146680,
		-0.388665, -0.908761, 0.151965,
		14.964862, 12.902959, 22.952600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.666182, 13.102912, 22.424711>,  <15.236928, 13.539091, 22.846226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.666182, 13.102912, 22.424711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.336176, 12.885719, 22.487349>,  <15.138172, 12.755404, 22.524931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.336176, 12.885719, 22.487349>,  <15.666182, 13.102912, 22.424711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.336176, 12.885719, 22.487349> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004569, -0.283505, -0.958960,
		0.565093, -0.790440, 0.236377,
		-0.825015, -0.542981, 0.156596,
		15.088672, 12.722825, 22.534327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.350533, 12.819850, 22.578993>,  <15.666182, 13.102912, 22.424711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.350533, 12.819850, 22.578993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.420797, 13.213035, 22.557333>,  <16.462955, 13.448945, 22.544338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.420797, 13.213035, 22.557333>,  <16.350533, 12.819850, 22.578993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.420797, 13.213035, 22.557333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153059, 0.027064, 0.987846,
		0.972479, -0.181813, -0.145697,
		0.175660, 0.982961, -0.054148,
		16.473495, 13.507923, 22.541088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817240, 12.895753, 23.125845>,  <16.350533, 12.819850, 22.578993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.817240, 12.895753, 23.125845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.656563, 13.249174, 23.029533>,  <16.560156, 13.461227, 22.971746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.656563, 13.249174, 23.029533>,  <16.817240, 12.895753, 23.125845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.656563, 13.249174, 23.029533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066213, 0.234214, 0.969928,
		0.913377, 0.405557, -0.035579,
		-0.401694, 0.883554, -0.240779,
		16.536055, 13.514240, 22.957300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181076, 13.452919, 23.565058>,  <16.817240, 12.895753, 23.125845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.181076, 13.452919, 23.565058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.828461, 13.612782, 23.464527>,  <16.616892, 13.708700, 23.404209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.828461, 13.612782, 23.464527>,  <17.181076, 13.452919, 23.565058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.828461, 13.612782, 23.464527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079296, 0.399437, 0.913325,
		0.465407, 0.825059, -0.320428,
		-0.881538, 0.399659, -0.251325,
		16.563999, 13.732680, 23.389130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.366724, 14.207958, 23.788273>,  <17.181076, 13.452919, 23.565058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.366724, 14.207958, 23.788273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.970707, 14.175570, 23.742210>,  <16.733097, 14.156137, 23.714573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.970707, 14.175570, 23.742210>,  <17.366724, 14.207958, 23.788273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.970707, 14.175570, 23.742210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140284, 0.635786, 0.759011,
		0.011757, 0.767607, -0.640813,
		-0.990041, -0.080973, -0.115158,
		16.673695, 14.151278, 23.707663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.108225, 14.935382, 23.906979>,  <17.366724, 14.207958, 23.788273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.108225, 14.935382, 23.906979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.786098, 14.703552, 23.956877>,  <16.592823, 14.564455, 23.986816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.786098, 14.703552, 23.956877>,  <17.108225, 14.935382, 23.906979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.786098, 14.703552, 23.956877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227501, 0.496427, 0.837737,
		-0.547458, 0.646263, -0.531633,
		-0.805315, -0.579573, 0.124748,
		16.544504, 14.529680, 23.994301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.635736, 15.302009, 24.306225>,  <17.108225, 14.935382, 23.906979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.635736, 15.302009, 24.306225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.520643, 14.922358, 24.357393>,  <16.451588, 14.694567, 24.388094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.520643, 14.922358, 24.357393>,  <16.635736, 15.302009, 24.306225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.520643, 14.922358, 24.357393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316285, 0.220247, 0.922743,
		-0.903976, 0.225047, -0.363568,
		-0.287735, -0.949129, 0.127919,
		16.434322, 14.637619, 24.395769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.876324, 15.297002, 24.606010>,  <16.635736, 15.302009, 24.306225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.876324, 15.297002, 24.606010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.082844, 14.970918, 24.710979>,  <16.206757, 14.775267, 24.773960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.082844, 14.970918, 24.710979>,  <15.876324, 15.297002, 24.606010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.082844, 14.970918, 24.710979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124311, 0.231838, 0.964779,
		-0.847337, -0.530738, 0.018358,
		0.516300, -0.815211, 0.262421,
		16.237734, 14.726355, 24.789705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.467097, 14.989266, 25.121656>,  <15.876324, 15.297002, 24.606010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.467097, 14.989266, 25.121656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.815151, 14.812082, 25.208054>,  <16.023983, 14.705772, 25.259892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.815151, 14.812082, 25.208054>,  <15.467097, 14.989266, 25.121656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.815151, 14.812082, 25.208054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198781, 0.085577, 0.976301,
		-0.450946, -0.892448, -0.013589,
		0.870134, -0.442960, 0.215992,
		16.076191, 14.679194, 25.272852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.284801, 14.589547, 25.596506>,  <15.467097, 14.989266, 25.121656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.284801, 14.589547, 25.596506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.683833, 14.579795, 25.622551>,  <15.923252, 14.573943, 25.638178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.683833, 14.579795, 25.622551>,  <15.284801, 14.589547, 25.596506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.683833, 14.579795, 25.622551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061941, 0.113714, 0.991581,
		-0.031580, -0.993214, 0.111928,
		0.997580, -0.024381, 0.065112,
		15.983108, 14.572480, 25.642084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.396706, 14.174477, 26.124420>,  <15.284801, 14.589547, 25.596506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.396706, 14.174477, 26.124420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.736123, 14.386125, 26.123402>,  <15.939774, 14.513113, 26.122789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.736123, 14.386125, 26.123402>,  <15.396706, 14.174477, 26.124420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.736123, 14.386125, 26.123402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045757, 0.078175, 0.995889,
		0.527145, -0.844938, 0.090546,
		0.848543, 0.529121, -0.002548,
		15.990686, 14.544861, 26.122637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.878323, 13.941581, 26.664286>,  <15.396706, 14.174477, 26.124420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.878323, 13.941581, 26.664286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.031507, 14.298431, 26.568411>,  <16.123419, 14.512542, 26.510885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.031507, 14.298431, 26.568411>,  <15.878323, 13.941581, 26.664286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.031507, 14.298431, 26.568411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002930, 0.260639, 0.965432,
		0.923759, -0.369022, 0.102429,
		0.382963, 0.892126, -0.239686,
		16.146397, 14.566070, 26.496506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.344883, 14.020323, 27.184380>,  <15.878323, 13.941581, 26.664286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.344883, 14.020323, 27.184380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.227736, 14.383954, 27.065853>,  <16.157448, 14.602133, 26.994738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.227736, 14.383954, 27.065853>,  <16.344883, 14.020323, 27.184380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.227736, 14.383954, 27.065853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018873, 0.304349, 0.952374,
		0.955967, 0.284511, -0.071976,
		-0.292866, 0.909079, -0.296318,
		16.139875, 14.656678, 26.976957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.693068, 14.365206, 27.579657>,  <16.344883, 14.020323, 27.184380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.693068, 14.365206, 27.579657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.373386, 14.580836, 27.473320>,  <16.181578, 14.710215, 27.409519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.373386, 14.580836, 27.473320>,  <16.693068, 14.365206, 27.579657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.373386, 14.580836, 27.473320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008897, 0.452845, 0.891545,
		0.600996, 0.710160, -0.366711,
		-0.799203, 0.539077, -0.265840,
		16.133625, 14.742559, 27.393568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.233105, 14.321998, 28.106131>,  <16.693068, 14.365206, 27.579657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.233105, 14.321998, 28.106131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.422884, 14.377457, 28.453850>,  <16.536751, 14.410732, 28.662481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.422884, 14.377457, 28.453850>,  <16.233105, 14.321998, 28.106131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.422884, 14.377457, 28.453850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123672, 0.988223, -0.090116,
		-0.871553, -0.064753, 0.486007,
		0.474448, 0.138646, 0.869297,
		16.565218, 14.419050, 28.714640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<8.177241, 15.141240, 25.215981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.494219, 15.036418, 25.436293>,  <8.684405, 14.973524, 25.568480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.494219, 15.036418, 25.436293>,  <8.177241, 15.141240, 25.215981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.494219, 15.036418, 25.436293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605941, 0.234916, -0.760033,
		0.069783, 0.936024, 0.344948,
		0.792443, -0.262056, 0.550782,
		8.731952, 14.957801, 25.601528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.543088, 15.653996, 25.103024>,  <8.177241, 15.141240, 25.215981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.543088, 15.653996, 25.103024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.795218, 15.371296, 25.231520>,  <8.946495, 15.201676, 25.308617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.795218, 15.371296, 25.231520>,  <8.543088, 15.653996, 25.103024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.795218, 15.371296, 25.231520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704139, 0.346214, -0.619940,
		0.326925, 0.616961, 0.715877,
		0.630325, -0.706750, 0.321240,
		8.984315, 15.159271, 25.327892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.167321, 16.015221, 25.180923>,  <8.543088, 15.653996, 25.103024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.167321, 16.015221, 25.180923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.278283, 15.632491, 25.146198>,  <9.344860, 15.402854, 25.125362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.278283, 15.632491, 25.146198>,  <9.167321, 16.015221, 25.180923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.278283, 15.632491, 25.146198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625120, 0.248373, -0.739956,
		0.729569, 0.150998, 0.667030,
		0.277404, -0.956823, -0.086814,
		9.361505, 15.345444, 25.120153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.839909, 16.047129, 25.230549>,  <9.167321, 16.015221, 25.180923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.839909, 16.047129, 25.230549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.750528, 15.704000, 25.045418>,  <9.696900, 15.498122, 24.934340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.750528, 15.704000, 25.045418>,  <9.839909, 16.047129, 25.230549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.750528, 15.704000, 25.045418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653375, 0.220540, -0.724199,
		0.723306, -0.464224, 0.511199,
		-0.223451, -0.857822, -0.462830,
		9.683493, 15.446653, 24.906569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.525002, 15.906080, 24.879379>,  <9.839909, 16.047129, 25.230549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.525002, 15.906080, 24.879379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.299438, 15.619717, 24.714708>,  <10.164099, 15.447899, 24.615906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.299438, 15.619717, 24.714708>,  <10.525002, 15.906080, 24.879379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.299438, 15.619717, 24.714708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641736, -0.066117, -0.764070,
		0.519786, -0.695056, 0.496709,
		-0.563913, -0.715909, -0.411676,
		10.130263, 15.404944, 24.591206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.940781, 15.333764, 24.715912>,  <10.525002, 15.906080, 24.879379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.940781, 15.333764, 24.715912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.639050, 15.320524, 24.453648>,  <10.458011, 15.312580, 24.296289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.639050, 15.320524, 24.453648>,  <10.940781, 15.333764, 24.715912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.639050, 15.320524, 24.453648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650552, 0.096414, -0.753317,
		0.088139, -0.994791, -0.051203,
		-0.754330, -0.033086, -0.655662,
		10.412751, 15.310595, 24.256948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.147032, 14.848041, 24.209311>,  <10.940781, 15.333764, 24.715912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.147032, 14.848041, 24.209311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.846955, 15.048703, 24.037006>,  <10.666909, 15.169101, 23.933624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.846955, 15.048703, 24.037006>,  <11.147032, 14.848041, 24.209311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.846955, 15.048703, 24.037006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550959, 0.114049, -0.826703,
		-0.365593, -0.857516, -0.361951,
		-0.750191, 0.501656, -0.430761,
		10.621898, 15.199200, 23.907778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.109154, 14.581696, 23.433546>,  <11.147032, 14.848041, 24.209311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.109154, 14.581696, 23.433546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.917179, 14.932549, 23.426687>,  <10.801994, 15.143062, 23.422573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.917179, 14.932549, 23.426687>,  <11.109154, 14.581696, 23.433546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.917179, 14.932549, 23.426687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461114, 0.235582, -0.855496,
		-0.746347, -0.418490, -0.517524,
		-0.479936, 0.877136, -0.017146,
		10.773198, 15.195690, 23.421543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.742999, 14.599546, 22.736725>,  <11.109154, 14.581696, 23.433546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.742999, 14.599546, 22.736725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.767546, 14.975618, 22.870768>,  <10.782273, 15.201262, 22.951193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.767546, 14.975618, 22.870768>,  <10.742999, 14.599546, 22.736725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.767546, 14.975618, 22.870768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287430, 0.304871, -0.907985,
		-0.955834, 0.152040, -0.251527,
		0.061367, 0.940179, 0.335107,
		10.785955, 15.257672, 22.971300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.408064, 14.840836, 22.260977>,  <10.742999, 14.599546, 22.736725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.408064, 14.840836, 22.260977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.625247, 15.144512, 22.404547>,  <10.755557, 15.326718, 22.490688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.625247, 15.144512, 22.404547>,  <10.408064, 14.840836, 22.260977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.625247, 15.144512, 22.404547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217598, 0.285621, -0.933312,
		-0.811078, 0.584850, -0.010118,
		0.542958, 0.759191, 0.358923,
		10.788135, 15.372270, 22.512224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.320617, 15.388088, 21.785114>,  <10.408064, 14.840836, 22.260977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.320617, 15.388088, 21.785114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.626236, 15.525971, 22.003254>,  <10.809608, 15.608702, 22.134138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.626236, 15.525971, 22.003254>,  <10.320617, 15.388088, 21.785114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.626236, 15.525971, 22.003254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377497, 0.446621, -0.811188,
		-0.523187, 0.825655, 0.211114,
		0.764049, 0.344708, 0.545349,
		10.855451, 15.629384, 22.166859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.315231, 16.083761, 21.670778>,  <10.320617, 15.388088, 21.785114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.315231, 16.083761, 21.670778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.682404, 15.957871, 21.767405>,  <10.902707, 15.882338, 21.825380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.682404, 15.957871, 21.767405>,  <10.315231, 16.083761, 21.670778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.682404, 15.957871, 21.767405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309997, 0.188965, -0.931769,
		0.247603, 0.930183, 0.271020,
		0.917929, -0.314724, 0.241566,
		10.957783, 15.863454, 21.839874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.765077, 16.556295, 21.431210>,  <10.315231, 16.083761, 21.670778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.765077, 16.556295, 21.431210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.005244, 16.241837, 21.489819>,  <11.149345, 16.053162, 21.524984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.005244, 16.241837, 21.489819>,  <10.765077, 16.556295, 21.431210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.005244, 16.241837, 21.489819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291848, 0.044830, -0.955414,
		0.744528, 0.616411, 0.256352,
		0.600419, -0.786148, 0.146521,
		11.185370, 16.005993, 21.533775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.437160, 16.899523, 21.232903>,  <10.765077, 16.556295, 21.431210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.437160, 16.899523, 21.232903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.457784, 16.500433, 21.215519>,  <11.470159, 16.260979, 21.205090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.457784, 16.500433, 21.215519>,  <11.437160, 16.899523, 21.232903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.457784, 16.500433, 21.215519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370508, 0.059520, -0.926920,
		0.927397, 0.031691, 0.372733,
		0.051561, -0.997724, -0.043457,
		11.473252, 16.201117, 21.202482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.942230, 17.237051, 20.895481>,  <11.437160, 16.899523, 21.232903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.942230, 17.237051, 20.895481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.133497, 17.587776, 20.875267>,  <12.248258, 17.798212, 20.863138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.133497, 17.587776, 20.875267>,  <11.942230, 17.237051, 20.895481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.133497, 17.587776, 20.875267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351608, 0.243842, 0.903833,
		0.804816, -0.414414, 0.424892,
		0.478167, 0.876814, -0.050536,
		12.276947, 17.850821, 20.860106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.319655, 17.280388, 21.584377>,  <11.942230, 17.237051, 20.895481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.319655, 17.280388, 21.584377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.235194, 17.627201, 21.403858>,  <12.184517, 17.835289, 21.295546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.235194, 17.627201, 21.403858>,  <12.319655, 17.280388, 21.584377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.235194, 17.627201, 21.403858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266471, 0.393160, 0.880010,
		0.940429, 0.306076, 0.148021,
		-0.211154, 0.867031, -0.451300,
		12.171848, 17.887310, 21.268469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.721076, 17.837816, 21.892548>,  <12.319655, 17.280388, 21.584377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.721076, 17.837816, 21.892548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.420774, 18.023003, 21.704067>,  <12.240592, 18.134113, 21.590979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.420774, 18.023003, 21.704067>,  <12.721076, 17.837816, 21.892548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.420774, 18.023003, 21.704067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279907, 0.423160, 0.861735,
		0.598345, 0.778845, -0.188103,
		-0.750756, 0.462964, -0.471200,
		12.195547, 18.161892, 21.562708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.514917, 18.392969, 22.322479>,  <12.721076, 17.837816, 21.892548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.514917, 18.392969, 22.322479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.204504, 18.442987, 22.075211>,  <12.018256, 18.472998, 21.926849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.204504, 18.442987, 22.075211>,  <12.514917, 18.392969, 22.322479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.204504, 18.442987, 22.075211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591376, 0.196382, 0.782118,
		0.219198, 0.972521, -0.078451,
		-0.776033, 0.125045, -0.618173,
		11.971694, 18.480501, 21.889759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.247097, 19.052105, 22.555155>,  <12.514917, 18.392969, 22.322479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.247097, 19.052105, 22.555155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.975558, 18.808094, 22.391678>,  <11.812634, 18.661688, 22.293592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.975558, 18.808094, 22.391678>,  <12.247097, 19.052105, 22.555155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.975558, 18.808094, 22.391678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566330, 0.080710, 0.820217,
		-0.467371, 0.788258, -0.400268,
		-0.678848, -0.610029, -0.408692,
		11.771904, 18.625086, 22.269070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.548489, 19.430748, 22.748226>,  <12.247097, 19.052105, 22.555155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.548489, 19.430748, 22.748226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.476855, 19.048006, 22.656702>,  <11.433875, 18.818361, 22.601788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.476855, 19.048006, 22.656702>,  <11.548489, 19.430748, 22.748226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.476855, 19.048006, 22.656702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597781, -0.078890, 0.797768,
		-0.781401, 0.279646, -0.557863,
		-0.179083, -0.956856, -0.228812,
		11.423130, 18.760948, 22.588058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.865315, 19.319189, 22.996168>,  <11.548489, 19.430748, 22.748226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.865315, 19.319189, 22.996168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.034724, 18.957600, 22.972633>,  <11.136370, 18.740646, 22.958513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.034724, 18.957600, 22.972633>,  <10.865315, 19.319189, 22.996168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.034724, 18.957600, 22.972633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358300, -0.226812, 0.905636,
		-0.832015, -0.362477, -0.419954,
		0.423522, -0.903973, -0.058835,
		11.161781, 18.686407, 22.954983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.326087, 18.767035, 23.108955>,  <10.865315, 19.319189, 22.996168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.326087, 18.767035, 23.108955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.677944, 18.599422, 23.198973>,  <10.889058, 18.498856, 23.252983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.677944, 18.599422, 23.198973>,  <10.326087, 18.767035, 23.108955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.677944, 18.599422, 23.198973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392898, -0.373481, 0.840323,
		-0.268068, -0.827604, -0.493165,
		0.879642, -0.419028, 0.225046,
		10.941836, 18.473715, 23.266487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.127718, 18.078213, 23.435373>,  <10.326087, 18.767035, 23.108955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.127718, 18.078213, 23.435373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.510567, 18.106133, 23.547832>,  <10.740276, 18.122885, 23.615309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.510567, 18.106133, 23.547832>,  <10.127718, 18.078213, 23.435373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.510567, 18.106133, 23.547832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230973, -0.401884, 0.886082,
		0.174836, -0.913027, -0.368531,
		0.957123, 0.069799, 0.281149,
		10.797704, 18.127071, 23.632177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.318514, 17.379683, 23.664518>,  <10.127718, 18.078213, 23.435373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.318514, 17.379683, 23.664518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.591951, 17.624733, 23.823208>,  <10.756014, 17.771763, 23.918421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.591951, 17.624733, 23.823208>,  <10.318514, 17.379683, 23.664518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.591951, 17.624733, 23.823208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211989, -0.353468, 0.911110,
		0.698399, -0.706930, -0.111758,
		0.683594, 0.612626, 0.396723,
		10.797029, 17.808521, 23.942225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.775434, 16.986948, 23.960560>,  <10.318514, 17.379683, 23.664518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.775434, 16.986948, 23.960560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.825722, 17.345737, 24.130093>,  <10.855894, 17.561010, 24.231813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.825722, 17.345737, 24.130093>,  <10.775434, 16.986948, 23.960560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.825722, 17.345737, 24.130093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277377, -0.378404, 0.883104,
		0.952501, -0.228583, 0.201227,
		0.125717, 0.896973, 0.423834,
		10.863437, 17.614830, 24.257242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.052850, 16.736414, 24.549133>,  <10.775434, 16.986948, 23.960560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.052850, 16.736414, 24.549133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.956016, 17.112268, 24.645863>,  <10.897915, 17.337782, 24.703899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.956016, 17.112268, 24.645863>,  <11.052850, 16.736414, 24.549133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.956016, 17.112268, 24.645863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278486, -0.306039, 0.910376,
		0.929430, 0.153045, 0.335764,
		-0.242085, 0.939637, 0.241821,
		10.883390, 17.394159, 24.718409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.413421, 16.903248, 25.102341>,  <11.052850, 16.736414, 24.549133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.413421, 16.903248, 25.102341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.114325, 17.166393, 25.138336>,  <10.934867, 17.324282, 25.159933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.114325, 17.166393, 25.138336>,  <11.413421, 16.903248, 25.102341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.114325, 17.166393, 25.138336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014213, -0.119636, 0.992716,
		0.663840, 0.743572, 0.080106,
		-0.747740, 0.657866, 0.089987,
		10.890002, 17.363752, 25.165333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.501303, 17.258114, 25.810900>,  <11.413421, 16.903248, 25.102341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.501303, 17.258114, 25.810900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.135108, 17.372953, 25.698145>,  <10.915391, 17.441856, 25.630493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.135108, 17.372953, 25.698145>,  <11.501303, 17.258114, 25.810900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.135108, 17.372953, 25.698145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319168, -0.091616, 0.943259,
		0.244984, 0.953510, 0.175506,
		-0.915486, 0.287099, -0.281885,
		10.860462, 17.459084, 25.613579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.945082, 17.890863, 25.614319>,  <11.501303, 17.258114, 25.810900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.945082, 17.890863, 25.614319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.246909, 18.053370, 25.820454>,  <12.428006, 18.150873, 25.944136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.246909, 18.053370, 25.820454>,  <11.945082, 17.890863, 25.614319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.246909, 18.053370, 25.820454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553176, 0.028665, -0.832571,
		-0.353017, 0.913305, -0.203106,
		0.754570, 0.406265, 0.515338,
		12.473280, 18.175249, 25.975056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.291075, 18.424475, 25.185183>,  <11.945082, 17.890863, 25.614319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.291075, 18.424475, 25.185183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.546157, 18.289993, 25.462397>,  <12.699206, 18.209305, 25.628725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.546157, 18.289993, 25.462397>,  <12.291075, 18.424475, 25.185183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.546157, 18.289993, 25.462397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752258, 0.078346, -0.654194,
		0.165644, 0.938526, 0.302872,
		0.637706, -0.336201, 0.693036,
		12.737469, 18.189133, 25.670307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.894531, 18.916382, 25.142635>,  <12.291075, 18.424475, 25.185183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.894531, 18.916382, 25.142635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.010501, 18.581009, 25.327230>,  <13.080083, 18.379786, 25.437988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.010501, 18.581009, 25.327230>,  <12.894531, 18.916382, 25.142635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.010501, 18.581009, 25.327230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652358, -0.179693, -0.736301,
		0.700266, 0.514529, 0.494861,
		0.289925, -0.838433, 0.461490,
		13.097479, 18.329479, 25.465677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.672638, 18.925188, 24.974201>,  <12.894531, 18.916382, 25.142635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.672638, 18.925188, 24.974201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.585751, 18.568039, 25.131985>,  <13.533618, 18.353750, 25.226654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.585751, 18.568039, 25.131985>,  <13.672638, 18.925188, 24.974201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.585751, 18.568039, 25.131985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663714, -0.431415, -0.611036,
		0.715751, 0.129079, 0.686323,
		-0.217218, -0.892872, 0.394457,
		13.520585, 18.300177, 25.250322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.347661, 18.664124, 25.218666>,  <13.672638, 18.925188, 24.974201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.347661, 18.664124, 25.218666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.108723, 18.352808, 25.141268>,  <13.965360, 18.166018, 25.094830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.108723, 18.352808, 25.141268>,  <14.347661, 18.664124, 25.218666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.108723, 18.352808, 25.141268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699328, -0.387393, -0.600722,
		0.392578, -0.494155, 0.775689,
		-0.597347, -0.778291, -0.193494,
		13.929519, 18.119320, 25.083220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.826357, 18.136625, 25.169949>,  <14.347661, 18.664124, 25.218666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.826357, 18.136625, 25.169949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.482118, 17.989958, 25.028572>,  <14.275574, 17.901957, 24.943747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.482118, 17.989958, 25.028572>,  <14.826357, 18.136625, 25.169949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.482118, 17.989958, 25.028572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505328, -0.528476, -0.682170,
		0.063345, -0.765680, 0.640095,
		-0.860599, -0.366671, -0.353443,
		14.223938, 17.879957, 24.922539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.989194, 17.471205, 25.060087>,  <14.826357, 18.136625, 25.169949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.989194, 17.471205, 25.060087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.669464, 17.535589, 24.828512>,  <14.477626, 17.574221, 24.689568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.669464, 17.535589, 24.828512>,  <14.989194, 17.471205, 25.060087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.669464, 17.535589, 24.828512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435443, -0.508774, -0.742657,
		-0.414087, -0.845719, 0.336587,
		-0.799326, 0.160960, -0.578939,
		14.429667, 17.583878, 24.654831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.639850, 16.790035, 24.863022>,  <14.989194, 17.471205, 25.060087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.639850, 16.790035, 24.863022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.568063, 17.068573, 24.585058>,  <14.524991, 17.235695, 24.418280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.568063, 17.068573, 24.585058>,  <14.639850, 16.790035, 24.863022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.568063, 17.068573, 24.585058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424763, -0.582289, -0.693193,
		-0.887338, -0.419575, -0.191280,
		-0.179466, 0.696345, -0.694907,
		14.514223, 17.277477, 24.376587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.450780, 16.440615, 24.245733>,  <14.639850, 16.790035, 24.863022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.450780, 16.440615, 24.245733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.555709, 16.798386, 24.100857>,  <14.618667, 17.013048, 24.013931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.555709, 16.798386, 24.100857>,  <14.450780, 16.440615, 24.245733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.555709, 16.798386, 24.100857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640341, -0.442137, -0.628075,
		-0.721907, -0.067168, -0.688722,
		0.262323, 0.894429, -0.362192,
		14.634406, 17.066715, 23.992199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.362514, 16.405201, 23.566574>,  <14.450780, 16.440615, 24.245733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.362514, 16.405201, 23.566574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.644978, 16.679436, 23.637352>,  <14.814455, 16.843977, 23.679819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.644978, 16.679436, 23.637352>,  <14.362514, 16.405201, 23.566574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.644978, 16.679436, 23.637352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508692, -0.317401, -0.800306,
		-0.492518, 0.655152, -0.572889,
		0.706157, 0.685589, 0.176945,
		14.856825, 16.885113, 23.690435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.618697, 16.575806, 22.895550>,  <14.362514, 16.405201, 23.566574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.618697, 16.575806, 22.895550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.904314, 16.720339, 23.135410>,  <15.075684, 16.807058, 23.279327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.904314, 16.720339, 23.135410>,  <14.618697, 16.575806, 22.895550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.904314, 16.720339, 23.135410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658205, -0.054611, -0.750855,
		-0.238560, 0.930837, -0.276824,
		0.714041, 0.361331, 0.599654,
		15.118526, 16.828739, 23.315306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.879307, 17.092739, 22.534025>,  <14.618697, 16.575806, 22.895550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.879307, 17.092739, 22.534025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.168841, 17.025976, 22.801817>,  <15.342562, 16.985918, 22.962492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.168841, 17.025976, 22.801817>,  <14.879307, 17.092739, 22.534025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.168841, 17.025976, 22.801817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676841, -0.016630, -0.735941,
		0.133966, 0.985833, 0.100931,
		0.723836, -0.166906, 0.669480,
		15.385992, 16.975904, 23.002661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.391551, 17.598665, 22.448095>,  <14.879307, 17.092739, 22.534025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.391551, 17.598665, 22.448095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.569870, 17.287251, 22.624798>,  <15.676862, 17.100403, 22.730820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.569870, 17.287251, 22.624798>,  <15.391551, 17.598665, 22.448095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.569870, 17.287251, 22.624798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742357, 0.045798, -0.668437,
		0.500170, 0.625929, 0.598367,
		0.445798, -0.778534, 0.441756,
		15.703609, 17.053690, 22.757324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.108194, 17.708385, 22.371122>,  <15.391551, 17.598665, 22.448095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.108194, 17.708385, 22.371122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.102571, 17.341068, 22.529385>,  <16.099197, 17.120678, 22.624342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.102571, 17.341068, 22.529385>,  <16.108194, 17.708385, 22.371122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.102571, 17.341068, 22.529385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840940, -0.224927, -0.492166,
		0.540945, 0.325806, 0.775389,
		-0.014056, -0.918291, 0.395657,
		16.098354, 17.065580, 22.648081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<9.157962, 18.255392, 7.629511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.332654, 17.939398, 7.801646>,  <9.437469, 17.749802, 7.904927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.332654, 17.939398, 7.801646>,  <9.157962, 18.255392, 7.629511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.332654, 17.939398, 7.801646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897305, 0.348449, -0.270973,
		0.064114, 0.504486, 0.861036,
		0.436730, -0.789985, 0.430337,
		9.463673, 17.702402, 7.930748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.546400, 17.940248, 7.473487>,  <9.157962, 18.255392, 7.629511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.546400, 17.940248, 7.473487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.691007, 18.055716, 7.118866>,  <8.777771, 18.124996, 6.906093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.691007, 18.055716, 7.118866>,  <8.546400, 17.940248, 7.473487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.691007, 18.055716, 7.118866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642197, 0.766441, -0.012317,
		0.675936, 0.573795, 0.462461,
		0.361517, 0.288666, -0.886554,
		8.799461, 18.142315, 6.852900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.426158, 18.712004, 7.428884>,  <8.546400, 17.940248, 7.473487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.426158, 18.712004, 7.428884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.522059, 18.617260, 7.052286>,  <8.579600, 18.560413, 6.826326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.522059, 18.617260, 7.052286>,  <8.426158, 18.712004, 7.428884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.522059, 18.617260, 7.052286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514599, 0.791331, -0.330125,
		0.823229, 0.563642, 0.067837,
		0.239754, -0.236860, -0.941496,
		8.593986, 18.546202, 6.769837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.596231, 19.331902, 7.143415>,  <8.426158, 18.712004, 7.428884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.596231, 19.331902, 7.143415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.457528, 19.094271, 6.853082>,  <8.374307, 18.951693, 6.678883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.457528, 19.094271, 6.853082>,  <8.596231, 19.331902, 7.143415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.457528, 19.094271, 6.853082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648572, 0.710892, -0.272005,
		0.677581, 0.376436, -0.631807,
		-0.346755, -0.594078, -0.725832,
		8.353501, 18.916048, 6.635333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.918447, 19.783241, 7.546074>,  <8.596231, 19.331902, 7.143415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.918447, 19.783241, 7.546074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.925022, 19.653408, 7.924360>,  <8.928967, 19.575508, 8.151331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.925022, 19.653408, 7.924360>,  <8.918447, 19.783241, 7.546074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.925022, 19.653408, 7.924360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578781, 0.774354, 0.255712,
		-0.815317, 0.543158, 0.200591,
		0.016437, -0.324585, 0.945714,
		8.929954, 19.556032, 8.208074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.880246, 20.389860, 8.067773>,  <8.918447, 19.783241, 7.546074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.880246, 20.389860, 8.067773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.084230, 20.079536, 8.216396>,  <9.206621, 19.893341, 8.305571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.084230, 20.079536, 8.216396>,  <8.880246, 20.389860, 8.067773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.084230, 20.079536, 8.216396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763690, 0.607121, 0.219505,
		-0.395876, 0.171817, 0.902087,
		0.509961, -0.775811, 0.371559,
		9.237219, 19.846792, 8.327864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.042110, 20.522190, 8.701298>,  <8.880246, 20.389860, 8.067773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.042110, 20.522190, 8.701298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.310283, 20.277521, 8.533307>,  <9.471186, 20.130720, 8.432512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.310283, 20.277521, 8.533307>,  <9.042110, 20.522190, 8.701298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.310283, 20.277521, 8.533307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735394, 0.623001, 0.266581,
		0.098586, -0.487573, 0.867498,
		0.670431, -0.611671, -0.419977,
		9.511412, 20.094019, 8.407314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.642138, 21.018084, 8.850520>,  <9.042110, 20.522190, 8.701298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.642138, 21.018084, 8.850520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.794625, 20.670843, 8.723354>,  <9.886118, 20.462498, 8.647055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.794625, 20.670843, 8.723354>,  <9.642138, 21.018084, 8.850520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.794625, 20.670843, 8.723354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924332, 0.351673, 0.148107,
		-0.016770, -0.350320, 0.936480,
		0.381220, -0.868103, -0.317914,
		9.908991, 20.410412, 8.627980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.871678, 20.561922, 9.404612>,  <9.642138, 21.018084, 8.850520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.871678, 20.561922, 9.404612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.074184, 20.526581, 9.061476>,  <10.195688, 20.505377, 8.855594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.074184, 20.526581, 9.061476>,  <9.871678, 20.561922, 9.404612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.074184, 20.526581, 9.061476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727909, 0.577188, 0.370138,
		0.462432, -0.811817, 0.356523,
		0.506265, -0.088353, -0.857840,
		10.226064, 20.500074, 8.804124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.355650, 20.600410, 10.008431>,  <9.871678, 20.561922, 9.404612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.355650, 20.600410, 10.008431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.080119, 20.889553, 10.030325>,  <9.914801, 21.063038, 10.043461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.080119, 20.889553, 10.030325>,  <10.355650, 20.600410, 10.008431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.080119, 20.889553, 10.030325> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492219, -0.521805, 0.696735,
		0.532199, 0.452990, 0.715237,
		-0.688828, 0.722856, 0.054734,
		9.873470, 21.106409, 10.046745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.081788, 20.732841, 10.772509>,  <10.355650, 20.600410, 10.008431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.081788, 20.732841, 10.772509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.804683, 20.864019, 10.515594>,  <9.638420, 20.942726, 10.361445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.804683, 20.864019, 10.515594>,  <10.081788, 20.732841, 10.772509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.804683, 20.864019, 10.515594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720767, -0.344473, 0.601526,
		-0.023983, 0.879653, 0.475011,
		-0.692763, 0.327946, -0.642286,
		9.596854, 20.962402, 10.322908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.612812, 21.176813, 11.120235>,  <10.081788, 20.732841, 10.772509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.612812, 21.176813, 11.120235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.421242, 21.031601, 10.800526>,  <9.306299, 20.944473, 10.608700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.421242, 21.031601, 10.800526>,  <9.612812, 21.176813, 11.120235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.421242, 21.031601, 10.800526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726100, -0.347884, 0.593090,
		-0.493365, 0.864399, -0.096986,
		-0.478926, -0.363031, -0.799274,
		9.277564, 20.922691, 10.560743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.891921, 21.337763, 11.181806>,  <9.612812, 21.176813, 11.120235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.891921, 21.337763, 11.181806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.881023, 21.035067, 10.920547>,  <8.874485, 20.853449, 10.763791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.881023, 21.035067, 10.920547>,  <8.891921, 21.337763, 11.181806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.881023, 21.035067, 10.920547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806193, -0.369679, 0.461942,
		-0.591025, 0.539148, -0.600008,
		-0.027245, -0.756741, -0.653147,
		8.872850, 20.808044, 10.724603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.228060, 21.289219, 11.013052>,  <8.891921, 21.337763, 11.181806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.228060, 21.289219, 11.013052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.355422, 20.923885, 10.911514>,  <8.431839, 20.704685, 10.850592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.355422, 20.923885, 10.911514>,  <8.228060, 21.289219, 11.013052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.355422, 20.923885, 10.911514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903025, -0.373699, 0.211884,
		-0.288382, 0.161762, -0.943752,
		0.318405, -0.913335, -0.253843,
		8.450943, 20.649885, 10.835361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.705105, 20.935863, 10.456166>,  <8.228060, 21.289219, 11.013052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.705105, 20.935863, 10.456166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.896418, 20.641432, 10.647761>,  <8.011206, 20.464771, 10.762718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.896418, 20.641432, 10.647761>,  <7.705105, 20.935863, 10.456166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.896418, 20.641432, 10.647761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878086, -0.391809, 0.274683,
		-0.014517, -0.551969, -0.833738,
		0.478283, -0.736081, 0.478988,
		8.039903, 20.420607, 10.791458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.179855, 20.420271, 10.408154>,  <7.705105, 20.935863, 10.456166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.179855, 20.420271, 10.408154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.455063, 20.266243, 10.654194>,  <7.620188, 20.173826, 10.801818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.455063, 20.266243, 10.654194>,  <7.179855, 20.420271, 10.408154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.455063, 20.266243, 10.654194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723290, -0.432773, 0.538107,
		0.058992, -0.815125, -0.576273,
		0.688020, -0.385069, 0.615102,
		7.661469, 20.150723, 10.838724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.049283, 19.657490, 10.436902>,  <7.179855, 20.420271, 10.408154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.049283, 19.657490, 10.436902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.230802, 19.767372, 10.775984>,  <7.339713, 19.833302, 10.979433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.230802, 19.767372, 10.775984>,  <7.049283, 19.657490, 10.436902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.230802, 19.767372, 10.775984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763770, -0.370149, 0.528815,
		0.459046, -0.887427, 0.041841,
		0.453797, 0.274707, 0.847705,
		7.366941, 19.849785, 11.030295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.062232, 19.094505, 10.695147>,  <7.049283, 19.657490, 10.436902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.062232, 19.094505, 10.695147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.092862, 19.367161, 10.986214>,  <7.111240, 19.530754, 11.160854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.092862, 19.367161, 10.986214>,  <7.062232, 19.094505, 10.695147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.092862, 19.367161, 10.986214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597643, -0.552797, 0.580722,
		0.798097, -0.479355, 0.365048,
		0.076574, 0.681641, 0.727669,
		7.115835, 19.571653, 11.204515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.298289, 18.762592, 11.244454>,  <7.062232, 19.094505, 10.695147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.298289, 18.762592, 11.244454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.130382, 19.087820, 11.405805>,  <7.029637, 19.282957, 11.502615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.130382, 19.087820, 11.405805>,  <7.298289, 18.762592, 11.244454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.130382, 19.087820, 11.405805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520770, -0.579750, 0.626648,
		0.743366, 0.052982, 0.666784,
		-0.419769, 0.813070, 0.403375,
		7.004451, 19.331741, 11.526817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.408142, 18.588875, 11.928012>,  <7.298289, 18.762592, 11.244454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.408142, 18.588875, 11.928012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.119740, 18.863272, 11.888878>,  <6.946700, 19.027910, 11.865397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.119740, 18.863272, 11.888878>,  <7.408142, 18.588875, 11.928012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.119740, 18.863272, 11.888878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555727, -0.488109, 0.672991,
		0.413911, 0.539598, 0.733151,
		-0.721002, 0.685991, -0.097836,
		6.903440, 19.069069, 11.859528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.322406, 18.908892, 12.622423>,  <7.408142, 18.588875, 11.928012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.322406, 18.908892, 12.622423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.001267, 18.956888, 12.388829>,  <6.808584, 18.985685, 12.248672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.001267, 18.956888, 12.388829>,  <7.322406, 18.908892, 12.622423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.001267, 18.956888, 12.388829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575794, -0.410047, 0.707335,
		-0.154589, 0.904137, 0.398294,
		-0.802847, 0.119989, -0.583986,
		6.760413, 18.992886, 12.213634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.867362, 19.082083, 13.132480>,  <7.322406, 18.908892, 12.622423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.867362, 19.082083, 13.132480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.625191, 19.017132, 12.820815>,  <6.479889, 18.978161, 12.633816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.625191, 19.017132, 12.820815>,  <6.867362, 19.082083, 13.132480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.625191, 19.017132, 12.820815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640689, -0.481387, 0.598150,
		-0.472204, 0.861337, 0.187412,
		-0.605426, -0.162376, -0.779162,
		6.443563, 18.968418, 12.587067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.148902, 19.182934, 13.462300>,  <6.867362, 19.082083, 13.132480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.148902, 19.182934, 13.462300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.115017, 18.981205, 13.118560>,  <6.094686, 18.860168, 12.912315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.115017, 18.981205, 13.118560>,  <6.148902, 19.182934, 13.462300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.115017, 18.981205, 13.118560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523427, -0.711342, 0.469059,
		-0.847849, 0.489543, -0.203716,
		-0.084712, -0.504322, -0.859350,
		6.089603, 18.829908, 12.860755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.479687, 19.053799, 13.542324>,  <6.148902, 19.182934, 13.462300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.479687, 19.053799, 13.542324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.649676, 18.784225, 13.300592>,  <5.751670, 18.622482, 13.155553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.649676, 18.784225, 13.300592>,  <5.479687, 19.053799, 13.542324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.649676, 18.784225, 13.300592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515470, -0.728969, 0.450440,
		-0.744106, 0.120094, -0.657178,
		0.424967, -0.673930, -0.604335,
		5.777168, 18.582047, 13.119293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.914807, 18.714218, 13.225681>,  <5.479687, 19.053799, 13.542324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.914807, 18.714218, 13.225681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.211170, 18.457237, 13.147386>,  <5.388988, 18.303049, 13.100409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.211170, 18.457237, 13.147386>,  <4.914807, 18.714218, 13.225681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.211170, 18.457237, 13.147386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494653, -0.719144, 0.488006,
		-0.454283, -0.264745, -0.850610,
		0.740908, -0.642450, -0.195738,
		5.433443, 18.264502, 13.088664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.695612, 18.022205, 13.059505>,  <4.914807, 18.714218, 13.225681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.695612, 18.022205, 13.059505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.068909, 17.920338, 13.160856>,  <5.292888, 17.859217, 13.221666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.068909, 17.920338, 13.160856>,  <4.695612, 18.022205, 13.059505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.068909, 17.920338, 13.160856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350108, -0.802814, 0.482612,
		0.080507, -0.539103, -0.838383,
		0.933243, -0.254671, 0.253376,
		5.348882, 17.843937, 13.236869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.954098, 17.459793, 12.684727>,  <4.695612, 18.022205, 13.059505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.954098, 17.459793, 12.684727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.139645, 17.464832, 13.039053>,  <5.250973, 17.467855, 13.251649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.139645, 17.464832, 13.039053>,  <4.954098, 17.459793, 12.684727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.139645, 17.464832, 13.039053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282600, -0.945556, 0.161434,
		0.839621, -0.325215, -0.435053,
		0.463868, 0.012597, 0.885815,
		5.278806, 17.468611, 13.304797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.076349, 16.758587, 12.835823>,  <4.954098, 17.459793, 12.684727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.076349, 16.758587, 12.835823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.130972, 16.936573, 13.189853>,  <5.163746, 17.043365, 13.402270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.130972, 16.936573, 13.189853>,  <5.076349, 16.758587, 12.835823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.130972, 16.936573, 13.189853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233476, -0.853819, 0.465276,
		0.962726, -0.270181, -0.012707,
		0.136558, 0.444966, 0.885074,
		5.171940, 17.070063, 13.455375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.263826, 16.197937, 13.253155>,  <5.076349, 16.758587, 12.835823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.263826, 16.197937, 13.253155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.170570, 16.478996, 13.522058>,  <5.114617, 16.647631, 13.683401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.170570, 16.478996, 13.522058>,  <5.263826, 16.197937, 13.253155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.170570, 16.478996, 13.522058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380963, -0.702047, 0.601663,
		0.894714, -0.115835, 0.431357,
		-0.233139, 0.702647, 0.672260,
		5.100628, 16.689791, 13.723737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.493161, 15.874760, 13.894249>,  <5.263826, 16.197937, 13.253155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.493161, 15.874760, 13.894249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.250628, 16.166018, 14.022100>,  <5.105108, 16.340773, 14.098811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.250628, 16.166018, 14.022100>,  <5.493161, 15.874760, 13.894249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.250628, 16.166018, 14.022100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422702, -0.635575, 0.646040,
		0.673560, 0.256607, 0.693159,
		-0.606334, 0.728146, 0.319630,
		5.068728, 16.384460, 14.117990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.456000, 15.803342, 14.580856>,  <5.493161, 15.874760, 13.894249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.456000, 15.803342, 14.580856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.129216, 16.003794, 14.466704>,  <4.933145, 16.124065, 14.398212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.129216, 16.003794, 14.466704>,  <5.456000, 15.803342, 14.580856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.129216, 16.003794, 14.466704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547542, -0.518691, 0.656626,
		0.181030, 0.692696, 0.698141,
		-0.816961, 0.501130, -0.285381,
		4.884127, 16.154133, 14.381090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.896970, 15.149588, 14.716473>,  <5.456000, 15.803342, 14.580856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.896970, 15.149588, 14.716473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.271330, 15.081274, 14.839711>,  <6.495946, 15.040286, 14.913654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.271330, 15.081274, 14.839711>,  <5.896970, 15.149588, 14.716473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.271330, 15.081274, 14.839711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344403, 0.627370, -0.698421,
		-0.074012, 0.759762, 0.645975,
		0.935900, -0.170784, 0.308097,
		6.552100, 15.030039, 14.932140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.345245, 15.737217, 14.980873>,  <5.896970, 15.149588, 14.716473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.345245, 15.737217, 14.980873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.554892, 15.438522, 14.817076>,  <6.680680, 15.259305, 14.718797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.554892, 15.438522, 14.817076>,  <6.345245, 15.737217, 14.980873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.554892, 15.438522, 14.817076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373296, 0.633608, -0.677636,
		0.765475, 0.202297, 0.610839,
		0.524117, -0.746737, -0.409495,
		6.712127, 15.214501, 14.694227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.817132, 16.093311, 14.734997>,  <6.345245, 15.737217, 14.980873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.817132, 16.093311, 14.734997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.934188, 15.740819, 14.586515>,  <7.004423, 15.529324, 14.497426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.934188, 15.740819, 14.586515>,  <6.817132, 16.093311, 14.734997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.934188, 15.740819, 14.586515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616650, 0.470613, -0.631083,
		0.730824, -0.044221, 0.681133,
		0.292643, -0.881231, -0.371204,
		7.021981, 15.476450, 14.475154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.574848, 15.985265, 14.866130>,  <6.817132, 16.093311, 14.734997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.574848, 15.985265, 14.866130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.450148, 15.778285, 14.547367>,  <7.375329, 15.654098, 14.356110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.450148, 15.778285, 14.547367>,  <7.574848, 15.985265, 14.866130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.450148, 15.778285, 14.547367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642122, 0.503461, -0.578106,
		0.700352, -0.691934, 0.175312,
		-0.311748, -0.517449, -0.796906,
		7.356624, 15.623051, 14.308295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.149493, 15.926653, 14.518351>,  <7.574848, 15.985265, 14.866130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.149493, 15.926653, 14.518351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.889729, 15.837848, 14.227427>,  <7.733871, 15.784565, 14.052874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.889729, 15.837848, 14.227427>,  <8.149493, 15.926653, 14.518351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.889729, 15.837848, 14.227427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532629, 0.549833, -0.643421,
		0.542748, -0.805228, -0.238813,
		-0.649408, -0.222017, -0.727309,
		7.694906, 15.771244, 14.009235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.628059, 15.734933, 13.857124>,  <8.149493, 15.926653, 14.518351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.628059, 15.734933, 13.857124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.256480, 15.850132, 13.764076>,  <8.033533, 15.919251, 13.708247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.256480, 15.850132, 13.764076>,  <8.628059, 15.734933, 13.857124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.256480, 15.850132, 13.764076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370204, 0.726184, -0.579315,
		0.002084, -0.624271, -0.781205,
		-0.928948, 0.287998, -0.232621,
		7.977796, 15.936531, 13.694290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.545689, 15.689503, 13.016515>,  <8.628059, 15.734933, 13.857124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.545689, 15.689503, 13.016515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.307020, 15.968636, 13.175015>,  <8.163819, 16.136116, 13.270116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.307020, 15.968636, 13.175015>,  <8.545689, 15.689503, 13.016515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.307020, 15.968636, 13.175015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413302, 0.690480, -0.593649,
		-0.687871, -0.190441, -0.700404,
		-0.596670, 0.697832, 0.396251,
		8.128019, 16.177986, 13.293891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.579824, 16.140215, 12.526426>,  <8.545689, 15.689503, 13.016515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.579824, 16.140215, 12.526426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.376711, 16.333956, 12.811399>,  <8.254843, 16.450199, 12.982384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.376711, 16.333956, 12.811399>,  <8.579824, 16.140215, 12.526426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.376711, 16.333956, 12.811399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199102, 0.870574, -0.449954,
		-0.838161, -0.086632, -0.538499,
		-0.507784, 0.484350, 0.712433,
		8.224376, 16.479261, 13.025129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.055233, 16.654379, 12.253029>,  <8.579824, 16.140215, 12.526426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.055233, 16.654379, 12.253029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.154561, 16.769894, 12.622881>,  <8.214158, 16.839203, 12.844792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.154561, 16.769894, 12.622881>,  <8.055233, 16.654379, 12.253029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.154561, 16.769894, 12.622881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291402, 0.888043, -0.355619,
		-0.923808, 0.357746, 0.136365,
		0.248320, 0.288787, 0.924629,
		8.229057, 16.856529, 12.900270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.627135, 17.253654, 12.348175>,  <8.055233, 16.654379, 12.253029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.627135, 17.253654, 12.348175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.946281, 17.236803, 12.588720>,  <8.137769, 17.226692, 12.733047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.946281, 17.236803, 12.588720>,  <7.627135, 17.253654, 12.348175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.946281, 17.236803, 12.588720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308337, 0.885716, -0.347038,
		-0.518016, 0.462312, 0.719671,
		0.797864, -0.042130, 0.601363,
		8.185640, 17.224165, 12.769129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.743028, 18.023409, 12.588806>,  <7.627135, 17.253654, 12.348175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.743028, 18.023409, 12.588806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.080294, 17.828276, 12.679222>,  <8.282653, 17.711197, 12.733472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.080294, 17.828276, 12.679222>,  <7.743028, 18.023409, 12.588806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.080294, 17.828276, 12.679222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530346, 0.823716, -0.200562,
		-0.088352, 0.288986, 0.953248,
		0.843165, -0.487831, 0.226039,
		8.333243, 17.681927, 12.747034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.157982, 18.433258, 13.097255>,  <7.743028, 18.023409, 12.588806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.157982, 18.433258, 13.097255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.407750, 18.194990, 12.895154>,  <8.557611, 18.052031, 12.773893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.407750, 18.194990, 12.895154>,  <8.157982, 18.433258, 13.097255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.407750, 18.194990, 12.895154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651027, 0.754312, -0.084723,
		0.431584, -0.276030, 0.858803,
		0.624420, -0.595669, -0.505251,
		8.595076, 18.016289, 12.743579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.776015, 18.594862, 13.417924>,  <8.157982, 18.433258, 13.097255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.776015, 18.594862, 13.417924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.887609, 18.436539, 13.067951>,  <8.954566, 18.341545, 12.857967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.887609, 18.436539, 13.067951>,  <8.776015, 18.594862, 13.417924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.887609, 18.436539, 13.067951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692397, 0.714224, -0.102324,
		0.665398, -0.577253, 0.473313,
		0.278985, -0.395806, -0.874931,
		8.971305, 18.317797, 12.805471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.364262, 18.927233, 13.332886>,  <8.776015, 18.594862, 13.417924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.364262, 18.927233, 13.332886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.367714, 18.715158, 12.993751>,  <9.369785, 18.587914, 12.790269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.367714, 18.715158, 12.993751>,  <9.364262, 18.927233, 13.332886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.367714, 18.715158, 12.993751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744901, 0.569061, -0.348270,
		0.667119, -0.628550, 0.399846,
		0.008632, -0.530184, -0.847839,
		9.370303, 18.556103, 12.739399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.990039, 18.673815, 13.257769>,  <9.364262, 18.927233, 13.332886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.990039, 18.673815, 13.257769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.829845, 18.714739, 12.893538>,  <9.733729, 18.739294, 12.675000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.829845, 18.714739, 12.893538>,  <9.990039, 18.673815, 13.257769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.829845, 18.714739, 12.893538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768810, 0.578196, -0.273168,
		0.498543, -0.809458, -0.310215,
		-0.400483, 0.102311, -0.910574,
		9.709701, 18.745432, 12.620366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.569844, 18.466900, 12.835993>,  <9.990039, 18.673815, 13.257769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.569844, 18.466900, 12.835993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.305227, 18.694323, 12.640398>,  <10.146458, 18.830776, 12.523041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.305227, 18.694323, 12.640398>,  <10.569844, 18.466900, 12.835993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.305227, 18.694323, 12.640398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749111, 0.531088, -0.395952,
		0.034574, -0.628244, -0.777248,
		-0.661542, 0.568555, -0.488987,
		10.106765, 18.864889, 12.493702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.862626, 18.491131, 12.227446>,  <10.569844, 18.466900, 12.835993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.862626, 18.491131, 12.227446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.604178, 18.795523, 12.250912>,  <10.449110, 18.978157, 12.264992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.604178, 18.795523, 12.250912>,  <10.862626, 18.491131, 12.227446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.604178, 18.795523, 12.250912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703106, 0.623360, -0.342148,
		-0.296937, -0.179820, -0.937813,
		-0.646120, 0.760978, 0.058666,
		10.410342, 19.023815, 12.268512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.999447, 18.861374, 11.675098>,  <10.862626, 18.491131, 12.227446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.999447, 18.861374, 11.675098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.807042, 19.135792, 11.893445>,  <10.691599, 19.300442, 12.024453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.807042, 19.135792, 11.893445>,  <10.999447, 18.861374, 11.675098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.807042, 19.135792, 11.893445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678470, 0.685620, -0.263827,
		-0.555254, 0.243450, -0.795252,
		-0.481012, 0.686045, 0.545866,
		10.662739, 19.341606, 12.057205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.762810, 19.398855, 11.210219>,  <10.999447, 18.861374, 11.675098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.762810, 19.398855, 11.210219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.782813, 19.561552, 11.575089>,  <10.794815, 19.659170, 11.794010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.782813, 19.561552, 11.575089>,  <10.762810, 19.398855, 11.210219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.782813, 19.561552, 11.575089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561800, 0.743669, -0.362404,
		-0.825760, 0.530582, -0.191318,
		0.050008, 0.406742, 0.912174,
		10.797815, 19.683575, 11.848741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.770405, 20.128208, 11.035456>,  <10.762810, 19.398855, 11.210219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.770405, 20.128208, 11.035456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.888367, 20.099213, 11.416565>,  <10.959144, 20.081816, 11.645230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.888367, 20.099213, 11.416565>,  <10.770405, 20.128208, 11.035456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.888367, 20.099213, 11.416565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742690, 0.644759, -0.180826,
		-0.601201, 0.760942, 0.243977,
		0.294904, -0.072487, 0.952773,
		10.976838, 20.077467, 11.702397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.961149, 20.869780, 11.261295>,  <10.770405, 20.128208, 11.035456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.961149, 20.869780, 11.261295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.135125, 20.627525, 11.527838>,  <11.239511, 20.482172, 11.687763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.135125, 20.627525, 11.527838>,  <10.961149, 20.869780, 11.261295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.135125, 20.627525, 11.527838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756160, 0.647467, 0.094913,
		-0.488926, 0.462590, 0.739569,
		0.434941, -0.605638, 0.666355,
		11.265608, 20.445833, 11.727744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.107767, 16.679615, 27.779974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.920983, 16.329075, 27.827240>,  <15.808913, 16.118752, 27.855600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.920983, 16.329075, 27.827240>,  <16.107767, 16.679615, 27.779974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.920983, 16.329075, 27.827240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731580, 0.457923, 0.505071,
		-0.496730, 0.149399, -0.854950,
		-0.466959, -0.876348, 0.118167,
		15.780895, 16.066170, 27.862690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.326635, 16.794744, 27.751631>,  <16.107767, 16.679615, 27.779974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.326635, 16.794744, 27.751631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.367827, 16.448744, 27.948067>,  <15.392543, 16.241144, 28.065929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.367827, 16.448744, 27.948067>,  <15.326635, 16.794744, 27.751631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.367827, 16.448744, 27.948067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719338, 0.276224, 0.637379,
		-0.686984, -0.418897, -0.593782,
		0.102980, -0.865000, 0.491091,
		15.398722, 16.189243, 28.095394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.739661, 16.694294, 27.969666>,  <15.326635, 16.794744, 27.751631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.739661, 16.694294, 27.969666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.944029, 16.445091, 28.206587>,  <15.066649, 16.295570, 28.348740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.944029, 16.445091, 28.206587>,  <14.739661, 16.694294, 27.969666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.944029, 16.445091, 28.206587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509821, 0.335164, 0.792305,
		-0.692129, -0.706775, -0.146379,
		0.510920, -0.623005, 0.592305,
		15.097305, 16.258190, 28.384279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.254464, 16.294214, 28.268448>,  <14.739661, 16.694294, 27.969666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.254464, 16.294214, 28.268448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.556989, 16.217505, 28.518637>,  <14.738503, 16.171478, 28.668751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.556989, 16.217505, 28.518637>,  <14.254464, 16.294214, 28.268448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.556989, 16.217505, 28.518637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640957, -0.025725, 0.767146,
		-0.131031, -0.981101, -0.142378,
		0.756310, -0.191778, 0.625473,
		14.783882, 16.159971, 28.706278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.107677, 15.640285, 28.628252>,  <14.254464, 16.294214, 28.268448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.107677, 15.640285, 28.628252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.359138, 15.847311, 28.860432>,  <14.510015, 15.971526, 28.999741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.359138, 15.847311, 28.860432>,  <14.107677, 15.640285, 28.628252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.359138, 15.847311, 28.860432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647527, -0.065006, 0.759265,
		0.430700, -0.853172, 0.294271,
		0.628654, 0.517564, 0.580450,
		14.547735, 16.002581, 29.034567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.183812, 15.258369, 29.268526>,  <14.107677, 15.640285, 28.628252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.183812, 15.258369, 29.268526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.272358, 15.635011, 29.370020>,  <14.325485, 15.860995, 29.430916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.272358, 15.635011, 29.370020>,  <14.183812, 15.258369, 29.268526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.272358, 15.635011, 29.370020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476896, -0.122431, 0.870391,
		0.850628, -0.313680, 0.421945,
		0.221365, 0.941602, 0.253736,
		14.338767, 15.917492, 29.446140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.186660, 15.323155, 29.927721>,  <14.183812, 15.258369, 29.268526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.186660, 15.323155, 29.927721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.156266, 15.714069, 29.848585>,  <14.138030, 15.948618, 29.801104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.156266, 15.714069, 29.848585>,  <14.186660, 15.323155, 29.927721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.156266, 15.714069, 29.848585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473783, 0.139196, 0.869571,
		0.877357, 0.159805, 0.452445,
		-0.075983, 0.977285, -0.197838,
		14.133471, 16.007256, 29.789234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.324021, 15.628540, 30.535826>,  <14.186660, 15.323155, 29.927721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.324021, 15.628540, 30.535826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.159320, 15.929399, 30.330019>,  <14.060499, 16.109915, 30.206535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.159320, 15.929399, 30.330019>,  <14.324021, 15.628540, 30.535826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.159320, 15.929399, 30.330019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479190, 0.301540, 0.824288,
		0.775136, 0.585956, 0.236262,
		-0.411754, 0.752150, -0.514519,
		14.035793, 16.155045, 30.175663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.423759, 16.343019, 30.925272>,  <14.324021, 15.628540, 30.535826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.423759, 16.343019, 30.925272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.091375, 16.314697, 30.704548>,  <13.891945, 16.297703, 30.572113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.091375, 16.314697, 30.704548>,  <14.423759, 16.343019, 30.925272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.091375, 16.314697, 30.704548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539764, 0.342878, 0.768824,
		0.134765, 0.936707, -0.323137,
		-0.830959, -0.070807, -0.551809,
		13.842088, 16.293455, 30.539005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.055390, 16.871456, 31.301300>,  <14.423759, 16.343019, 30.925272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.055390, 16.871456, 31.301300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.805777, 16.667738, 31.064253>,  <13.656009, 16.545507, 30.922024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.805777, 16.667738, 31.064253>,  <14.055390, 16.871456, 31.301300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.805777, 16.667738, 31.064253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718665, 0.076342, 0.691152,
		-0.306760, 0.857198, -0.413654,
		-0.624034, -0.509297, -0.592620,
		13.618567, 16.514948, 30.886467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.536736, 17.230783, 31.433821>,  <14.055390, 16.871456, 31.301300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.536736, 17.230783, 31.433821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.377141, 16.903358, 31.268526>,  <13.281384, 16.706903, 31.169350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.377141, 16.903358, 31.268526>,  <13.536736, 17.230783, 31.433821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.377141, 16.903358, 31.268526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765611, 0.049372, 0.641406,
		-0.504629, 0.572291, -0.646400,
		-0.398986, -0.818563, -0.413238,
		13.257445, 16.657789, 31.144554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.822562, 17.396948, 31.450176>,  <13.536736, 17.230783, 31.433821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.822562, 17.396948, 31.450176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.844633, 16.997677, 31.440409>,  <12.857876, 16.758114, 31.434549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.844633, 16.997677, 31.440409>,  <12.822562, 17.396948, 31.450176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.844633, 16.997677, 31.440409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733000, -0.057100, 0.677827,
		-0.677987, -0.019502, -0.734815,
		0.055177, -0.998178, -0.024418,
		12.861186, 16.698223, 31.433083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.534594, 17.086840, 32.027416>,  <12.822562, 17.396948, 31.450176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.534594, 17.086840, 32.027416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.403709, 16.831680, 31.748554>,  <12.325179, 16.678585, 31.581238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.403709, 16.831680, 31.748554>,  <12.534594, 17.086840, 32.027416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.403709, 16.831680, 31.748554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755337, -0.266744, 0.598593,
		-0.567802, 0.722449, -0.394548,
		-0.327210, -0.637899, -0.697151,
		12.305547, 16.640310, 31.539410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.823143, 17.102373, 31.982244>,  <12.534594, 17.086840, 32.027416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.823143, 17.102373, 31.982244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.985688, 16.748476, 31.890942>,  <12.083215, 16.536139, 31.836159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.985688, 16.748476, 31.890942>,  <11.823143, 17.102373, 31.982244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.985688, 16.748476, 31.890942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514378, -0.427979, 0.743135,
		-0.755173, -0.184570, -0.629006,
		0.406362, -0.884741, -0.228260,
		12.107597, 16.483053, 31.822464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.363285, 17.731098, 31.761770>,  <11.823143, 17.102373, 31.982244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.363285, 17.731098, 31.761770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.035862, 17.773478, 31.535942>,  <10.839408, 17.798904, 31.400446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.035862, 17.773478, 31.535942>,  <11.363285, 17.731098, 31.761770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.035862, 17.773478, 31.535942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559595, -0.074793, -0.825384,
		-0.129678, -0.991554, 0.001931,
		-0.818557, 0.105954, -0.564568,
		10.790295, 17.805262, 31.366571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.434527, 17.182276, 31.223572>,  <11.363285, 17.731098, 31.761770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.434527, 17.182276, 31.223572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.238451, 17.512506, 31.111759>,  <11.120805, 17.710644, 31.044672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.238451, 17.512506, 31.111759>,  <11.434527, 17.182276, 31.223572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.238451, 17.512506, 31.111759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537774, 0.034079, -0.842400,
		-0.685939, -0.563261, -0.460678,
		-0.490191, 0.825576, -0.279531,
		11.091393, 17.760180, 31.027899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.159941, 16.966194, 30.551289>,  <11.434527, 17.182276, 31.223572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.159941, 16.966194, 30.551289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.185392, 17.363468, 30.590353>,  <11.200664, 17.601831, 30.613792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.185392, 17.363468, 30.590353>,  <11.159941, 16.966194, 30.551289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.185392, 17.363468, 30.590353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538017, 0.048282, -0.841550,
		-0.840529, 0.106090, -0.531277,
		0.063629, 0.993184, 0.097661,
		11.204481, 17.661423, 30.619652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.990848, 17.236500, 29.761679>,  <11.159941, 16.966194, 30.551289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.990848, 17.236500, 29.761679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.121904, 17.539227, 29.987911>,  <11.200539, 17.720861, 30.123650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.121904, 17.539227, 29.987911>,  <10.990848, 17.236500, 29.761679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.121904, 17.539227, 29.987911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276156, 0.495768, -0.823378,
		-0.903542, 0.425962, -0.046565,
		0.327643, 0.756816, 0.565579,
		11.220197, 17.766272, 30.157585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.591146, 17.876694, 29.510935>,  <10.990848, 17.236500, 29.761679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.591146, 17.876694, 29.510935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.947057, 17.963226, 29.671680>,  <11.160604, 18.015146, 29.768127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.947057, 17.963226, 29.671680>,  <10.591146, 17.876694, 29.510935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.947057, 17.963226, 29.671680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272673, 0.454110, -0.848194,
		-0.365982, 0.864282, 0.345070,
		0.889779, 0.216333, 0.401863,
		11.213990, 18.028126, 29.792240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.597233, 18.526184, 29.410681>,  <10.591146, 17.876694, 29.510935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.597233, 18.526184, 29.410681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.973137, 18.394369, 29.447029>,  <11.198679, 18.315281, 29.468838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.973137, 18.394369, 29.447029>,  <10.597233, 18.526184, 29.410681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.973137, 18.394369, 29.447029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278495, 0.583938, -0.762533,
		0.198220, 0.741905, 0.640536,
		0.939760, -0.329535, 0.090869,
		11.255065, 18.295509, 29.474289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.976350, 19.197563, 29.195139>,  <10.597233, 18.526184, 29.410681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.976350, 19.197563, 29.195139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.223660, 18.883413, 29.183016>,  <11.372047, 18.694923, 29.175741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.223660, 18.883413, 29.183016>,  <10.976350, 19.197563, 29.195139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.223660, 18.883413, 29.183016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348500, 0.308508, -0.885082,
		0.704472, 0.536664, 0.464447,
		0.618277, -0.785375, -0.030308,
		11.409143, 18.647800, 29.173923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.585121, 19.464586, 28.890331>,  <10.976350, 19.197563, 29.195139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.585121, 19.464586, 28.890331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.603797, 19.071936, 28.816326>,  <11.615003, 18.836346, 28.771923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.603797, 19.071936, 28.816326>,  <11.585121, 19.464586, 28.890331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.603797, 19.071936, 28.816326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340199, 0.189769, -0.921006,
		0.939194, -0.019940, 0.342809,
		0.046690, -0.981626, -0.185014,
		11.617804, 18.777449, 28.760822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.255808, 19.251032, 28.639582>,  <11.585121, 19.464586, 28.890331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.255808, 19.251032, 28.639582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.028984, 18.964111, 28.477633>,  <11.892890, 18.791958, 28.380463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.028984, 18.964111, 28.477633>,  <12.255808, 19.251032, 28.639582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.028984, 18.964111, 28.477633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569476, 0.013708, -0.821893,
		0.595096, -0.696627, 0.400713,
		-0.567060, -0.717302, -0.404871,
		11.858866, 18.748920, 28.356171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.772331, 18.891951, 28.123081>,  <12.255808, 19.251032, 28.639582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.772331, 18.891951, 28.123081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.411367, 18.728453, 28.068554>,  <12.194789, 18.630354, 28.035837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.411367, 18.728453, 28.068554>,  <12.772331, 18.891951, 28.123081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.411367, 18.728453, 28.068554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254737, -0.250948, -0.933881,
		0.347513, -0.877469, 0.330581,
		-0.902410, -0.408746, -0.136316,
		12.140644, 18.605829, 28.027658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.826177, 18.184874, 28.085821>,  <12.772331, 18.891951, 28.123081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.826177, 18.184874, 28.085821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.520886, 18.333277, 27.874222>,  <12.337712, 18.422318, 27.747261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.520886, 18.333277, 27.874222>,  <12.826177, 18.184874, 28.085821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.520886, 18.333277, 27.874222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414389, -0.347107, -0.841308,
		-0.495750, -0.861319, 0.111179,
		-0.763225, 0.371007, -0.528999,
		12.291919, 18.444578, 27.715523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.806568, 17.798815, 27.544552>,  <12.826177, 18.184874, 28.085821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.806568, 17.798815, 27.544552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.549124, 18.077583, 27.418018>,  <12.394657, 18.244844, 27.342098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.549124, 18.077583, 27.418018>,  <12.806568, 17.798815, 27.544552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.549124, 18.077583, 27.418018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201937, -0.244039, -0.948507,
		-0.738232, -0.674349, 0.016332,
		-0.643611, 0.696920, -0.316333,
		12.356041, 18.286659, 27.323118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.467565, 17.440777, 27.023228>,  <12.806568, 17.798815, 27.544552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.467565, 17.440777, 27.023228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.412469, 17.828291, 26.940783>,  <12.379412, 18.060799, 26.891315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.412469, 17.828291, 26.940783>,  <12.467565, 17.440777, 27.023228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.412469, 17.828291, 26.940783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111316, -0.191636, -0.975133,
		-0.984193, -0.157258, -0.081445,
		-0.137740, 0.968786, -0.206112,
		12.371147, 18.118927, 26.878948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.991505, 17.592875, 26.410994>,  <12.467565, 17.440777, 27.023228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.991505, 17.592875, 26.410994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.233370, 17.909897, 26.442577>,  <12.378489, 18.100111, 26.461529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.233370, 17.909897, 26.442577>,  <11.991505, 17.592875, 26.410994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.233370, 17.909897, 26.442577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198302, -0.053787, -0.978664,
		-0.771400, 0.607421, -0.189689,
		0.604663, 0.792558, 0.078962,
		12.414769, 18.147665, 26.466267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.242531, 17.707733, 26.307163>,  <11.991505, 17.592875, 26.410994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.242531, 17.707733, 26.307163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.897985, 17.594995, 26.138111>,  <10.691258, 17.527353, 26.036680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.897985, 17.594995, 26.138111>,  <11.242531, 17.707733, 26.307163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.897985, 17.594995, 26.138111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438756, -0.006523, 0.898582,
		-0.256019, 0.959437, -0.118044,
		-0.861364, -0.281846, -0.422629,
		10.639576, 17.510441, 26.011322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.689354, 18.129745, 26.570591>,  <11.242531, 17.707733, 26.307163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.689354, 18.129745, 26.570591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.513129, 17.793739, 26.443922>,  <10.407394, 17.592136, 26.367920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.513129, 17.793739, 26.443922>,  <10.689354, 18.129745, 26.570591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.513129, 17.793739, 26.443922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592667, 0.007207, 0.805415,
		-0.674278, 0.542518, -0.501023,
		-0.440563, -0.840014, -0.316673,
		10.380960, 17.541735, 26.348921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.985988, 18.303516, 26.348848>,  <10.689354, 18.129745, 26.570591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.985988, 18.303516, 26.348848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.978566, 17.911951, 26.430220>,  <9.974113, 17.677011, 26.479042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.978566, 17.911951, 26.430220>,  <9.985988, 18.303516, 26.348848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.978566, 17.911951, 26.430220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586056, 0.175494, 0.791037,
		-0.810058, -0.104544, -0.576954,
		-0.018553, -0.978914, 0.203429,
		9.973001, 17.618277, 26.491249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.213103, 18.083731, 26.515509>,  <9.985988, 18.303516, 26.348848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.213103, 18.083731, 26.515509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.454432, 17.814941, 26.687300>,  <9.599230, 17.653667, 26.790375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.454432, 17.814941, 26.687300>,  <9.213103, 18.083731, 26.515509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.454432, 17.814941, 26.687300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493781, 0.108127, 0.862838,
		-0.626244, -0.732637, -0.266573,
		0.603323, -0.671975, 0.429476,
		9.635429, 17.613348, 26.816143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.764309, 17.584299, 26.921488>,  <9.213103, 18.083731, 26.515509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.764309, 17.584299, 26.921488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.131473, 17.543522, 27.074875>,  <9.351771, 17.519054, 27.166908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.131473, 17.543522, 27.074875>,  <8.764309, 17.584299, 26.921488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.131473, 17.543522, 27.074875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380856, 0.044748, 0.923551,
		-0.111314, -0.993783, 0.002247,
		0.917910, -0.101948, 0.383469,
		9.406845, 17.512938, 27.189915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.643774, 17.076830, 27.389011>,  <8.764309, 17.584299, 26.921488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.643774, 17.076830, 27.389011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.993669, 17.240126, 27.493454>,  <9.203606, 17.338102, 27.556120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.993669, 17.240126, 27.493454>,  <8.643774, 17.076830, 27.389011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.993669, 17.240126, 27.493454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275728, -0.023804, 0.960941,
		0.398509, -0.912565, 0.091741,
		0.874737, 0.408239, 0.261105,
		9.256090, 17.362597, 27.571785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.897856, 16.713478, 27.952200>,  <8.643774, 17.076830, 27.389011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.897856, 16.713478, 27.952200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.071371, 17.073586, 27.966879>,  <9.175481, 17.289650, 27.975687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.071371, 17.073586, 27.966879>,  <8.897856, 16.713478, 27.952200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.071371, 17.073586, 27.966879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211093, 0.061950, 0.975501,
		0.875938, -0.430908, 0.216913,
		0.433789, 0.900267, 0.036697,
		9.201508, 17.343666, 27.977888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.030424, 16.029543, 28.181688>,  <8.897856, 16.713478, 27.952200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.030424, 16.029543, 28.181688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.860651, 15.682094, 28.283943>,  <8.758787, 15.473624, 28.345297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.860651, 15.682094, 28.283943>,  <9.030424, 16.029543, 28.181688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.860651, 15.682094, 28.283943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036973, -0.298721, -0.953624,
		0.904705, -0.395297, 0.158903,
		-0.424432, -0.868623, 0.255639,
		8.733321, 15.421507, 28.360636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.360933, 15.432337, 27.872875>,  <9.030424, 16.029543, 28.181688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.360933, 15.432337, 27.872875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.001391, 15.268539, 27.935328>,  <8.785666, 15.170260, 27.972799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.001391, 15.268539, 27.935328>,  <9.360933, 15.432337, 27.872875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.001391, 15.268539, 27.935328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021034, -0.396158, -0.917941,
		0.437744, -0.821811, 0.364702,
		-0.898854, -0.409494, 0.156130,
		8.731735, 15.145691, 27.982166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.452177, 14.756834, 27.634056>,  <9.360933, 15.432337, 27.872875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.452177, 14.756834, 27.634056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.057766, 14.823333, 27.638315>,  <8.821119, 14.863233, 27.640871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.057766, 14.823333, 27.638315>,  <9.452177, 14.756834, 27.634056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.057766, 14.823333, 27.638315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029265, -0.109953, -0.993506,
		-0.164003, -0.979934, 0.113282,
		-0.986026, 0.166253, 0.010645,
		8.761958, 14.873207, 27.641508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.065828, 14.202031, 27.375210>,  <9.452177, 14.756834, 27.634056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.065828, 14.202031, 27.375210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.854203, 14.533070, 27.300188>,  <8.727228, 14.731692, 27.255175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.854203, 14.533070, 27.300188>,  <9.065828, 14.202031, 27.375210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.854203, 14.533070, 27.300188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009538, -0.215206, -0.976522,
		-0.848528, -0.518431, 0.105964,
		-0.529064, 0.827596, -0.187553,
		8.695484, 14.781348, 27.243921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.717099, 14.046163, 26.820992>,  <9.065828, 14.202031, 27.375210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.717099, 14.046163, 26.820992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.633929, 14.437318, 26.829947>,  <8.584027, 14.672011, 26.835320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.633929, 14.437318, 26.829947>,  <8.717099, 14.046163, 26.820992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.633929, 14.437318, 26.829947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033993, 0.030098, -0.998969,
		-0.977554, -0.206948, -0.039499,
		-0.207924, 0.977889, 0.022387,
		8.571552, 14.730684, 26.836662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.087798, 14.140848, 26.291447>,  <8.717099, 14.046163, 26.820992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.087798, 14.140848, 26.291447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.301710, 14.474133, 26.347681>,  <8.430058, 14.674105, 26.381422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.301710, 14.474133, 26.347681>,  <8.087798, 14.140848, 26.291447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.301710, 14.474133, 26.347681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219840, 0.023453, -0.975254,
		-0.815892, 0.552454, -0.170632,
		0.534781, 0.833214, 0.140586,
		8.462144, 14.724097, 26.389856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.987850, 14.478859, 25.615841>,  <8.087798, 14.140848, 26.291447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.987850, 14.478859, 25.615841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.304090, 14.632839, 25.806318>,  <8.493835, 14.725227, 25.920605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.304090, 14.632839, 25.806318>,  <7.987850, 14.478859, 25.615841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.304090, 14.632839, 25.806318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441398, 0.180723, -0.878924,
		-0.424401, 0.905071, -0.027036,
		0.790602, 0.384950, 0.476196,
		8.541271, 14.748324, 25.949177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<10.550562, 14.578658, 31.097120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.784319, 14.898620, 31.151730>,  <10.924573, 15.090597, 31.184496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.784319, 14.898620, 31.151730>,  <10.550562, 14.578658, 31.097120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.784319, 14.898620, 31.151730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479715, -0.204853, -0.853176,
		-0.654492, 0.564081, -0.503441,
		0.584392, 0.799905, 0.136523,
		10.959637, 15.138591, 31.192686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.504614, 15.092441, 30.571795>,  <10.550562, 14.578658, 31.097120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.504614, 15.092441, 30.571795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.867864, 15.071521, 30.737963>,  <11.085814, 15.058969, 30.837664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.867864, 15.071521, 30.737963>,  <10.504614, 15.092441, 30.571795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.867864, 15.071521, 30.737963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393487, -0.232499, -0.889445,
		0.143102, 0.971189, -0.190559,
		0.908124, -0.052299, 0.415422,
		11.140301, 15.055831, 30.862589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.993648, 15.177223, 30.043882>,  <10.504614, 15.092441, 30.571795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.993648, 15.177223, 30.043882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.225568, 15.040019, 30.339497>,  <11.364719, 14.957696, 30.516865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.225568, 15.040019, 30.339497>,  <10.993648, 15.177223, 30.043882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.225568, 15.040019, 30.339497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653100, -0.346651, -0.673271,
		0.487127, 0.873027, 0.023032,
		0.579800, -0.343011, 0.739037,
		11.399508, 14.937116, 30.561207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.733918, 15.420337, 29.852661>,  <10.993648, 15.177223, 30.043882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.733918, 15.420337, 29.852661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.771908, 15.094317, 30.081284>,  <11.794702, 14.898705, 30.218456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.771908, 15.094317, 30.081284>,  <11.733918, 15.420337, 29.852661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.771908, 15.094317, 30.081284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530333, -0.444465, -0.721940,
		0.842453, 0.371681, 0.390034,
		0.094975, -0.815048, 0.571556,
		11.800401, 14.849803, 30.252750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.516508, 15.290265, 29.889706>,  <11.733918, 15.420337, 29.852661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.516508, 15.290265, 29.889706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.329664, 14.954124, 29.999702>,  <12.217558, 14.752440, 30.065701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.329664, 14.954124, 29.999702>,  <12.516508, 15.290265, 29.889706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.329664, 14.954124, 29.999702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638074, -0.535666, -0.553103,
		0.612104, -0.082895, 0.786421,
		-0.467109, -0.840351, 0.274990,
		12.189531, 14.702019, 30.082199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.088849, 14.727061, 30.026945>,  <12.516508, 15.290265, 29.889706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.088849, 14.727061, 30.026945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.751122, 14.528973, 29.945084>,  <12.548487, 14.410119, 29.895967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.751122, 14.528973, 29.945084>,  <13.088849, 14.727061, 30.026945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.751122, 14.528973, 29.945084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432113, -0.403403, -0.806563,
		0.316870, -0.769429, 0.554592,
		-0.844317, -0.495222, -0.204654,
		12.497828, 14.380405, 29.883688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.339971, 14.139549, 29.659550>,  <13.088849, 14.727061, 30.026945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.339971, 14.139549, 29.659550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.947017, 14.112420, 29.589899>,  <12.711245, 14.096143, 29.548109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.947017, 14.112420, 29.589899>,  <13.339971, 14.139549, 29.659550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.947017, 14.112420, 29.589899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181495, -0.568166, -0.802650,
		-0.044495, -0.820114, 0.570467,
		-0.982384, -0.067823, -0.174128,
		12.652302, 14.092073, 29.537661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.174074, 13.419388, 29.507799>,  <13.339971, 14.139549, 29.659550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.174074, 13.419388, 29.507799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.890632, 13.645475, 29.338846>,  <12.720567, 13.781128, 29.237474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.890632, 13.645475, 29.338846>,  <13.174074, 13.419388, 29.507799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.890632, 13.645475, 29.338846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106827, -0.505772, -0.856027,
		-0.697472, -0.651707, 0.298011,
		-0.708605, 0.565220, -0.422382,
		12.678050, 13.815041, 29.212132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.877945, 12.874149, 29.172493>,  <13.174074, 13.419388, 29.507799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.877945, 12.874149, 29.172493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.743212, 13.217362, 29.017406>,  <12.662372, 13.423290, 28.924355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.743212, 13.217362, 29.017406>,  <12.877945, 12.874149, 29.172493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.743212, 13.217362, 29.017406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037754, -0.399142, -0.916111,
		-0.940808, -0.323213, 0.102050,
		-0.336832, 0.858032, -0.387718,
		12.642162, 13.474771, 28.901091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.554249, 12.648444, 28.562790>,  <12.877945, 12.874149, 29.172493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.554249, 12.648444, 28.562790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.569269, 13.045982, 28.521103>,  <12.578281, 13.284505, 28.496092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.569269, 13.045982, 28.521103>,  <12.554249, 12.648444, 28.562790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.569269, 13.045982, 28.521103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225831, -0.110032, -0.967933,
		-0.973442, 0.012812, -0.228573,
		0.037552, 0.993846, -0.104216,
		12.580535, 13.344136, 28.489838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.001289, 12.882865, 28.036222>,  <12.554249, 12.648444, 28.562790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.001289, 12.882865, 28.036222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.289823, 13.159826, 28.042635>,  <12.462942, 13.326003, 28.046482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.289823, 13.159826, 28.042635>,  <12.001289, 12.882865, 28.036222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.289823, 13.159826, 28.042635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181522, -0.166664, -0.969161,
		-0.668378, 0.701998, -0.245906,
		0.721333, 0.692403, 0.016033,
		12.506223, 13.367547, 28.047445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.004774, 13.314900, 27.391453>,  <12.001289, 12.882865, 28.036222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.004774, 13.314900, 27.391453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.380321, 13.382062, 27.511679>,  <12.605648, 13.422359, 27.583815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.380321, 13.382062, 27.511679>,  <12.004774, 13.314900, 27.391453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.380321, 13.382062, 27.511679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316834, -0.079777, -0.945120,
		-0.134711, 0.982570, -0.128097,
		0.938866, 0.167904, 0.300565,
		12.661981, 13.432433, 27.601849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.352681, 12.883161, 27.095194>,  <12.004774, 13.314900, 27.391453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.352681, 12.883161, 27.095194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.989204, 12.759389, 26.983101>,  <10.771118, 12.685125, 26.915844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.989204, 12.759389, 26.983101>,  <11.352681, 12.883161, 27.095194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.989204, 12.759389, 26.983101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366047, 0.267822, 0.891225,
		-0.200719, 0.912428, -0.356634,
		-0.908692, -0.309430, -0.280234,
		10.716597, 12.666560, 26.899031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.983978, 13.487000, 27.335543>,  <11.352681, 12.883161, 27.095194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.983978, 13.487000, 27.335543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.764180, 13.153344, 27.316490>,  <10.632301, 12.953151, 27.305058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.764180, 13.153344, 27.316490>,  <10.983978, 13.487000, 27.335543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.764180, 13.153344, 27.316490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327531, 0.162616, 0.930741,
		-0.768620, 0.527040, -0.362563,
		-0.549496, -0.834137, -0.047632,
		10.599331, 12.903103, 27.302200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.459448, 13.602395, 27.820055>,  <10.983978, 13.487000, 27.335543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.459448, 13.602395, 27.820055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.389649, 13.211557, 27.771332>,  <10.347771, 12.977055, 27.742098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.389649, 13.211557, 27.771332>,  <10.459448, 13.602395, 27.820055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.389649, 13.211557, 27.771332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400852, -0.042501, 0.915156,
		-0.899371, 0.208520, -0.384254,
		-0.174497, -0.977094, -0.121810,
		10.337300, 12.918429, 27.734789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.753082, 13.497951, 28.001286>,  <10.459448, 13.602395, 27.820055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.753082, 13.497951, 28.001286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.949407, 13.150112, 28.022860>,  <10.067201, 12.941409, 28.035805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.949407, 13.150112, 28.022860>,  <9.753082, 13.497951, 28.001286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.949407, 13.150112, 28.022860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389850, -0.163829, 0.906188,
		-0.779181, -0.465794, -0.419421,
		0.490810, -0.869596, 0.053937,
		10.096650, 12.889234, 28.039042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.285565, 12.993299, 28.310661>,  <9.753082, 13.497951, 28.001286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.285565, 12.993299, 28.310661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.632639, 12.804341, 28.372585>,  <9.840883, 12.690967, 28.409739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.632639, 12.804341, 28.372585>,  <9.285565, 12.993299, 28.310661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.632639, 12.804341, 28.372585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308138, -0.266722, 0.913187,
		-0.390097, -0.840059, -0.376994,
		0.867684, -0.472398, 0.154807,
		9.892944, 12.662622, 28.419027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.166570, 12.296656, 28.586569>,  <9.285565, 12.993299, 28.310661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.166570, 12.296656, 28.586569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.555590, 12.343449, 28.667028>,  <9.789001, 12.371525, 28.715303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.555590, 12.343449, 28.667028>,  <9.166570, 12.296656, 28.586569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.555590, 12.343449, 28.667028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144530, -0.373777, 0.916188,
		0.182363, -0.920112, -0.346610,
		0.972550, 0.116983, 0.201147,
		9.847355, 12.378543, 28.727373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.431499, 11.674211, 28.783651>,  <9.166570, 12.296656, 28.586569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.431499, 11.674211, 28.783651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.662604, 11.964652, 28.932764>,  <9.801268, 12.138917, 29.022232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.662604, 11.964652, 28.932764>,  <9.431499, 11.674211, 28.783651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.662604, 11.964652, 28.932764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214099, -0.305909, 0.927675,
		0.787625, -0.615787, -0.021285,
		0.577762, 0.726103, 0.372780,
		9.835933, 12.182483, 29.044598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.788197, 11.384479, 29.365250>,  <9.431499, 11.674211, 28.783651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.788197, 11.384479, 29.365250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.843907, 11.776093, 29.424698>,  <9.877334, 12.011063, 29.460367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.843907, 11.776093, 29.424698>,  <9.788197, 11.384479, 29.365250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.843907, 11.776093, 29.424698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254084, -0.109728, 0.960938,
		0.957101, -0.171599, 0.233475,
		0.139277, 0.979037, 0.148621,
		9.885691, 12.069804, 29.469284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.030590, 11.380121, 29.995350>,  <9.788197, 11.384479, 29.365250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.030590, 11.380121, 29.995350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.892608, 11.749945, 29.930609>,  <9.809818, 11.971839, 29.891764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.892608, 11.749945, 29.930609>,  <10.030590, 11.380121, 29.995350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.892608, 11.749945, 29.930609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315386, 0.048240, 0.947736,
		0.884046, 0.377973, 0.274952,
		-0.344955, 0.924559, -0.161853,
		9.789122, 12.027312, 29.882053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.198756, 11.743958, 30.600117>,  <10.030590, 11.380121, 29.995350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.198756, 11.743958, 30.600117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.920105, 11.977207, 30.432941>,  <9.752914, 12.117157, 30.332636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.920105, 11.977207, 30.432941>,  <10.198756, 11.743958, 30.600117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.920105, 11.977207, 30.432941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330746, 0.255917, 0.908358,
		0.636644, 0.771020, 0.014587,
		-0.696629, 0.583125, -0.417939,
		9.711117, 12.152144, 30.307560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.315434, 12.485477, 30.888046>,  <10.198756, 11.743958, 30.600117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.315434, 12.485477, 30.888046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.943544, 12.425467, 30.753521>,  <9.720411, 12.389461, 30.672806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.943544, 12.425467, 30.753521>,  <10.315434, 12.485477, 30.888046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.943544, 12.425467, 30.753521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367999, 0.344180, 0.863780,
		-0.013837, 0.926840, -0.375202,
		-0.929723, -0.150026, -0.336314,
		9.664627, 12.380459, 30.652626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.063342, 13.074367, 31.125956>,  <10.315434, 12.485477, 30.888046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.063342, 13.074367, 31.125956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.731779, 12.870165, 31.034481>,  <9.532842, 12.747643, 30.979597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.731779, 12.870165, 31.034481>,  <10.063342, 13.074367, 31.125956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.731779, 12.870165, 31.034481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439502, 0.341447, 0.830814,
		-0.346050, 0.789176, -0.507396,
		-0.828907, -0.510505, -0.228687,
		9.483107, 12.717013, 30.965876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.459252, 13.607111, 31.205704>,  <10.063342, 13.074367, 31.125956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.459252, 13.607111, 31.205704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.302034, 13.240896, 31.239897>,  <9.207704, 13.021167, 31.260412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.302034, 13.240896, 31.239897>,  <9.459252, 13.607111, 31.205704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.302034, 13.240896, 31.239897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539194, 0.304781, 0.785098,
		-0.744840, 0.262487, -0.613445,
		-0.393044, -0.915537, 0.085482,
		9.184121, 12.966235, 31.265541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.702124, 13.695708, 31.148109>,  <9.459252, 13.607111, 31.205704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.702124, 13.695708, 31.148109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.794251, 13.359644, 31.344511>,  <8.849528, 13.158006, 31.462351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.794251, 13.359644, 31.344511>,  <8.702124, 13.695708, 31.148109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.794251, 13.359644, 31.344511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573173, 0.290630, 0.766164,
		-0.786400, -0.457893, -0.414619,
		0.230320, -0.840160, 0.491003,
		8.863347, 13.107596, 31.491812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.860895, 14.478097, 31.172522>,  <8.702124, 13.695708, 31.148109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.860895, 14.478097, 31.172522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.599737, 14.781018, 31.178471>,  <8.443043, 14.962770, 31.182039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.599737, 14.781018, 31.178471>,  <8.860895, 14.478097, 31.172522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.599737, 14.781018, 31.178471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125263, -0.088590, -0.988161,
		-0.747020, -0.647027, 0.152701,
		-0.652894, 0.757303, 0.014870,
		8.403869, 15.008209, 31.182932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.248730, 14.310431, 30.801802>,  <8.860895, 14.478097, 31.172522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.248730, 14.310431, 30.801802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.297683, 14.706969, 30.782816>,  <8.327054, 14.944893, 30.771425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.297683, 14.706969, 30.782816>,  <8.248730, 14.310431, 30.801802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.297683, 14.706969, 30.782816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019793, -0.045375, -0.998774,
		-0.992286, 0.123171, 0.014069,
		0.122382, 0.991348, -0.047463,
		8.334397, 15.004374, 30.768578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.787189, 14.492111, 30.292713>,  <8.248730, 14.310431, 30.801802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.787189, 14.492111, 30.292713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.050837, 14.790817, 30.328276>,  <8.209024, 14.970041, 30.349613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.050837, 14.790817, 30.328276>,  <7.787189, 14.492111, 30.292713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.050837, 14.790817, 30.328276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013019, 0.106874, -0.994187,
		-0.751927, 0.656444, 0.060720,
		0.659118, 0.746766, 0.088908,
		8.248571, 15.014847, 30.354948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.526522, 15.088397, 29.953371>,  <7.787189, 14.492111, 30.292713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.526522, 15.088397, 29.953371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.915364, 15.180390, 29.971769>,  <8.148670, 15.235586, 29.982809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.915364, 15.180390, 29.971769>,  <7.526522, 15.088397, 29.953371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.915364, 15.180390, 29.971769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011886, 0.147559, -0.988982,
		-0.234238, 0.961942, 0.140710,
		0.972107, 0.229984, 0.045997,
		8.206996, 15.249386, 29.985569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.590938, 15.673992, 29.549625>,  <7.526522, 15.088397, 29.953371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.590938, 15.673992, 29.549625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.955694, 15.510007, 29.557474>,  <8.174548, 15.411616, 29.562183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.955694, 15.510007, 29.557474>,  <7.590938, 15.673992, 29.549625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.955694, 15.510007, 29.557474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026437, 0.010957, -0.999590,
		0.409579, 0.912037, 0.020830,
		0.911891, -0.409962, 0.019624,
		8.229261, 15.387018, 29.563362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.880631, 16.081797, 29.022039>,  <7.590938, 15.673992, 29.549625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.880631, 16.081797, 29.022039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.159561, 15.797462, 29.058796>,  <8.326920, 15.626860, 29.080849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.159561, 15.797462, 29.058796>,  <7.880631, 16.081797, 29.022039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.159561, 15.797462, 29.058796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262584, 0.134067, -0.955550,
		0.666924, 0.690458, 0.280143,
		0.697325, -0.710840, 0.091890,
		8.368759, 15.584209, 29.086363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.516811, 16.265049, 28.610998>,  <7.880631, 16.081797, 29.022039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.516811, 16.265049, 28.610998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.550420, 15.873881, 28.687534>,  <8.570585, 15.639180, 28.733456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.550420, 15.873881, 28.687534>,  <8.516811, 16.265049, 28.610998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.550420, 15.873881, 28.687534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049166, -0.187718, -0.980992,
		0.995250, 0.091832, 0.032307,
		0.084022, -0.977921, 0.191342,
		8.575626, 15.580505, 28.744936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.158372, 16.730560, 28.634068>,  <8.516811, 16.265049, 28.610998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.158372, 16.730560, 28.634068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.162777, 17.122004, 28.551891>,  <9.165420, 17.356869, 28.502586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.162777, 17.122004, 28.551891>,  <9.158372, 16.730560, 28.634068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.162777, 17.122004, 28.551891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197826, 0.203523, 0.958876,
		0.980175, 0.030081, 0.195835,
		0.011013, 0.978608, -0.205439,
		9.166080, 17.415586, 28.490259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.513579, 16.924492, 29.219574>,  <9.158372, 16.730560, 28.634068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.513579, 16.924492, 29.219574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.328492, 17.249872, 29.078609>,  <9.217440, 17.445101, 28.994030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.328492, 17.249872, 29.078609>,  <9.513579, 16.924492, 29.219574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.328492, 17.249872, 29.078609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105345, 0.344258, 0.932946,
		0.880225, 0.468815, -0.073602,
		-0.462717, 0.813449, -0.352412,
		9.189677, 17.493906, 28.972885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.863883, 17.519749, 29.529106>,  <9.513579, 16.924492, 29.219574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.863883, 17.519749, 29.529106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.495389, 17.637112, 29.426937>,  <9.274293, 17.707529, 29.365635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.495389, 17.637112, 29.426937>,  <9.863883, 17.519749, 29.529106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.495389, 17.637112, 29.426937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143563, 0.353823, 0.924229,
		0.361548, 0.888100, -0.283832,
		-0.921234, 0.293406, -0.255423,
		9.219019, 17.725134, 29.350309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.752496, 18.100027, 29.907244>,  <9.863883, 17.519749, 29.529106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.752496, 18.100027, 29.907244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.365407, 18.050802, 29.819271>,  <9.133154, 18.021267, 29.766487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.365407, 18.050802, 29.819271>,  <9.752496, 18.100027, 29.907244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.365407, 18.050802, 29.819271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246819, 0.286387, 0.925777,
		-0.050944, 0.950178, -0.307517,
		-0.967721, -0.123064, -0.219933,
		9.075090, 18.013884, 29.753292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.424650, 18.712267, 30.060595>,  <9.752496, 18.100027, 29.907244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.424650, 18.712267, 30.060595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.174105, 18.401535, 30.086529>,  <9.023777, 18.215096, 30.102089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.174105, 18.401535, 30.086529>,  <9.424650, 18.712267, 30.060595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.174105, 18.401535, 30.086529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243719, 0.274154, 0.930291,
		-0.740452, 0.566899, -0.361048,
		-0.626363, -0.776830, 0.064834,
		8.986196, 18.168486, 30.105980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.949027, 19.000948, 30.391813>,  <9.424650, 18.712267, 30.060595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.949027, 19.000948, 30.391813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.858751, 18.613890, 30.436939>,  <8.804585, 18.381655, 30.464016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.858751, 18.613890, 30.436939>,  <8.949027, 19.000948, 30.391813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.858751, 18.613890, 30.436939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476342, 0.210627, 0.853660,
		-0.849802, 0.138924, -0.508466,
		-0.225690, -0.967645, 0.112816,
		8.791044, 18.323597, 30.470783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.334097, 19.063583, 30.571083>,  <8.949027, 19.000948, 30.391813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.334097, 19.063583, 30.571083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.470345, 18.708712, 30.695591>,  <8.552094, 18.495789, 30.770296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.470345, 18.708712, 30.695591>,  <8.334097, 19.063583, 30.571083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.470345, 18.708712, 30.695591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383671, 0.171087, 0.907483,
		-0.858356, -0.428532, -0.282110,
		0.340620, -0.887181, 0.311268,
		8.572531, 18.442558, 30.788971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.778017, 18.802893, 30.785683>,  <8.334097, 19.063583, 30.571083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.778017, 18.802893, 30.785683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.074381, 18.607521, 30.970070>,  <8.252199, 18.490299, 31.080702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.074381, 18.607521, 30.970070>,  <7.778017, 18.802893, 30.785683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.074381, 18.607521, 30.970070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438931, 0.167339, 0.882801,
		-0.508323, -0.856409, -0.090403,
		0.740910, -0.488428, 0.460966,
		8.296654, 18.460993, 31.108360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.364079, 18.609589, 31.306616>,  <7.778017, 18.802893, 30.785683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.364079, 18.609589, 31.306616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.737198, 18.558647, 31.441473>,  <7.961070, 18.528082, 31.522388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.737198, 18.558647, 31.441473>,  <7.364079, 18.609589, 31.306616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.737198, 18.558647, 31.441473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344410, -0.039472, 0.937989,
		-0.106156, -0.991071, -0.080684,
		0.932798, -0.127362, 0.337145,
		8.017037, 18.520441, 31.542616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.948164, 16.129818, 17.115631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.245668, 16.285789, 17.332804>,  <15.424171, 16.379372, 17.463106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.245668, 16.285789, 17.332804>,  <14.948164, 16.129818, 17.115631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.245668, 16.285789, 17.332804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666414, 0.369289, 0.647702,
		0.052058, -0.843553, 0.534516,
		0.743762, 0.389927, 0.542931,
		15.468797, 16.402767, 17.495684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.829415, 15.931627, 17.766403>,  <14.948164, 16.129818, 17.115631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.829415, 15.931627, 17.766403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.048860, 16.262177, 17.817209>,  <15.180527, 16.460506, 17.847692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.048860, 16.262177, 17.817209>,  <14.829415, 15.931627, 17.766403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.048860, 16.262177, 17.817209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717757, 0.387595, 0.578441,
		0.428778, -0.408504, 0.805775,
		0.548611, 0.826374, 0.127015,
		15.213443, 16.510088, 17.855314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.020053, 15.950048, 18.501263>,  <14.829415, 15.931627, 17.766403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.020053, 15.950048, 18.501263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.017085, 16.322575, 18.355608>,  <15.015305, 16.546091, 18.268215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.017085, 16.322575, 18.355608>,  <15.020053, 15.950048, 18.501263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.017085, 16.322575, 18.355608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711003, 0.251144, 0.656812,
		0.703150, 0.263775, 0.660305,
		-0.007419, 0.931316, -0.364137,
		15.014859, 16.601969, 18.246367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.970161, 16.385496, 19.138655>,  <15.020053, 15.950048, 18.501263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.970161, 16.385496, 19.138655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.867281, 16.630051, 18.839308>,  <14.805552, 16.776783, 18.659700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.867281, 16.630051, 18.839308>,  <14.970161, 16.385496, 19.138655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.867281, 16.630051, 18.839308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624064, 0.486197, 0.611683,
		0.737830, 0.624354, 0.256494,
		-0.257200, 0.611387, -0.748368,
		14.790121, 16.813467, 18.614798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.998047, 17.027451, 19.413351>,  <14.970161, 16.385496, 19.138655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.998047, 17.027451, 19.413351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.773706, 17.081827, 19.086679>,  <14.639102, 17.114452, 18.890676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.773706, 17.081827, 19.086679>,  <14.998047, 17.027451, 19.413351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.773706, 17.081827, 19.086679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587720, 0.629392, 0.508381,
		0.583121, 0.765105, -0.273101,
		-0.560852, 0.135941, -0.816679,
		14.605451, 17.122610, 18.841675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.798174, 17.722397, 19.479815>,  <14.998047, 17.027451, 19.413351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.798174, 17.722397, 19.479815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.547868, 17.564631, 19.210636>,  <14.397684, 17.469971, 19.049129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.547868, 17.564631, 19.210636>,  <14.798174, 17.722397, 19.479815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.547868, 17.564631, 19.210636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683463, 0.693014, 0.229369,
		0.375893, 0.603463, -0.703233,
		-0.625766, -0.394415, -0.672944,
		14.360138, 17.446306, 19.008753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.484619, 18.353552, 19.169369>,  <14.798174, 17.722397, 19.479815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.484619, 18.353552, 19.169369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.249374, 18.045696, 19.069946>,  <14.108228, 17.860983, 19.010294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.249374, 18.045696, 19.069946>,  <14.484619, 18.353552, 19.169369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.249374, 18.045696, 19.069946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805912, 0.531813, 0.260155,
		-0.068040, 0.353314, -0.933027,
		-0.588112, -0.769639, -0.248555,
		14.072941, 17.814804, 18.995380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.825090, 18.631134, 19.077948>,  <14.484619, 18.353552, 19.169369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.825090, 18.631134, 19.077948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.807343, 18.240700, 19.163073>,  <13.796694, 18.006439, 19.214148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.807343, 18.240700, 19.163073>,  <13.825090, 18.631134, 19.077948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.807343, 18.240700, 19.163073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730810, 0.176952, 0.659245,
		-0.681137, -0.126275, -0.721184,
		-0.044369, -0.976085, 0.212811,
		13.794032, 17.947874, 19.226915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.162132, 18.458246, 18.952467>,  <13.825090, 18.631134, 19.077948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.162132, 18.458246, 18.952467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.317255, 18.188011, 19.203285>,  <13.410329, 18.025869, 19.353777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.317255, 18.188011, 19.203285>,  <13.162132, 18.458246, 18.952467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.317255, 18.188011, 19.203285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782620, 0.118043, 0.611206,
		-0.486942, -0.727768, -0.482951,
		0.387807, -0.675589, 0.627045,
		13.433597, 17.985334, 19.391399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.564976, 18.291407, 19.278400>,  <13.162132, 18.458246, 18.952467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.564976, 18.291407, 19.278400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.839363, 18.130489, 19.520924>,  <13.003996, 18.033939, 19.666437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.839363, 18.130489, 19.520924>,  <12.564976, 18.291407, 19.278400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.839363, 18.130489, 19.520924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637507, 0.069393, 0.767313,
		-0.350758, -0.912877, -0.208863,
		0.685969, -0.402293, 0.606306,
		13.045154, 18.009802, 19.702816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.307390, 17.766703, 19.572994>,  <12.564976, 18.291407, 19.278400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.307390, 17.766703, 19.572994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.588821, 17.849237, 19.844995>,  <12.757680, 17.898758, 20.008196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.588821, 17.849237, 19.844995>,  <12.307390, 17.766703, 19.572994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.588821, 17.849237, 19.844995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692976, -0.012678, 0.720849,
		0.157361, -0.978398, 0.134069,
		0.703578, 0.206340, 0.680002,
		12.799894, 17.911139, 20.048996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.181005, 17.275089, 20.187265>,  <12.307390, 17.766703, 19.572994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.181005, 17.275089, 20.187265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.403626, 17.582794, 20.312796>,  <12.537199, 17.767418, 20.388113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.403626, 17.582794, 20.312796>,  <12.181005, 17.275089, 20.187265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.403626, 17.582794, 20.312796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536632, 0.044488, 0.842643,
		0.634252, -0.637383, 0.437570,
		0.556552, 0.769262, 0.313824,
		12.570592, 17.813572, 20.406942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.376433, 16.540264, 20.373058>,  <12.181005, 17.275089, 20.187265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.376433, 16.540264, 20.373058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.117911, 16.268759, 20.512526>,  <11.962798, 16.105856, 20.596207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.117911, 16.268759, 20.512526>,  <12.376433, 16.540264, 20.373058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.117911, 16.268759, 20.512526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153888, -0.331600, -0.930785,
		0.747401, -0.655227, 0.109861,
		-0.646305, -0.678763, 0.348669,
		11.924020, 16.065130, 20.617126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.591938, 15.901807, 19.989338>,  <12.376433, 16.540264, 20.373058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.591938, 15.901807, 19.989338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.215103, 15.882002, 20.122015>,  <11.989002, 15.870119, 20.201622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.215103, 15.882002, 20.122015>,  <12.591938, 15.901807, 19.989338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.215103, 15.882002, 20.122015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315922, -0.200863, -0.927279,
		0.112537, -0.978367, 0.173588,
		-0.942087, -0.049513, 0.331693,
		11.932477, 15.867148, 20.221523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.388638, 15.289143, 19.801517>,  <12.591938, 15.901807, 19.989338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.388638, 15.289143, 19.801517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.048700, 15.491202, 19.861633>,  <11.844737, 15.612438, 19.897703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.048700, 15.491202, 19.861633>,  <12.388638, 15.289143, 19.801517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.048700, 15.491202, 19.861633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370284, -0.369365, -0.852326,
		-0.375084, -0.779969, 0.500959,
		-0.849824, 0.505191, 0.150267,
		11.793747, 15.642747, 19.906721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.926249, 14.759428, 19.666159>,  <12.388638, 15.289143, 19.801517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.926249, 14.759428, 19.666159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.705188, 15.090447, 19.626680>,  <11.572552, 15.289059, 19.602993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.705188, 15.090447, 19.626680>,  <11.926249, 14.759428, 19.666159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.705188, 15.090447, 19.626680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554803, -0.453682, -0.697400,
		-0.621909, -0.330662, 0.709854,
		-0.552651, 0.827548, -0.098697,
		11.539392, 15.338712, 19.597071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.185796, 14.462811, 19.696142>,  <11.926249, 14.759428, 19.666159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.185796, 14.462811, 19.696142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.183903, 14.834261, 19.547749>,  <11.182767, 15.057131, 19.458712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.183903, 14.834261, 19.547749>,  <11.185796, 14.462811, 19.696142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.183903, 14.834261, 19.547749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630621, -0.290692, -0.719594,
		-0.776076, 0.230546, 0.586988,
		-0.004733, 0.928626, -0.370986,
		11.182483, 15.112849, 19.436453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.453810, 14.730369, 19.651178>,  <11.185796, 14.462811, 19.696142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.453810, 14.730369, 19.651178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.700602, 14.904827, 19.389153>,  <10.848677, 15.009502, 19.231937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.700602, 14.904827, 19.389153>,  <10.453810, 14.730369, 19.651178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.700602, 14.904827, 19.389153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559041, -0.342963, -0.754884,
		-0.553903, 0.831958, 0.032222,
		0.616981, 0.436146, -0.655066,
		10.885695, 15.035671, 19.192633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.989447, 14.996746, 19.132647>,  <10.453810, 14.730369, 19.651178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.989447, 14.996746, 19.132647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.348188, 14.988708, 18.955898>,  <10.563434, 14.983886, 18.849850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.348188, 14.988708, 18.955898>,  <9.989447, 14.996746, 19.132647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.348188, 14.988708, 18.955898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417408, -0.369010, -0.830423,
		-0.146367, 0.929208, -0.339336,
		0.896854, -0.020095, -0.441870,
		10.617245, 14.982680, 18.823338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.811811, 15.091096, 18.386484>,  <9.989447, 14.996746, 19.132647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.811811, 15.091096, 18.386484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.186831, 14.953674, 18.364689>,  <10.411843, 14.871222, 18.351612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.186831, 14.953674, 18.364689>,  <9.811811, 15.091096, 18.386484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.186831, 14.953674, 18.364689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228199, -0.489239, -0.841766,
		0.262534, 0.801633, -0.537086,
		0.937551, -0.343554, -0.054490,
		10.468097, 14.850608, 18.348341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.035565, 15.041786, 17.639425>,  <9.811811, 15.091096, 18.386484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.035565, 15.041786, 17.639425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.309479, 14.808125, 17.813707>,  <10.473827, 14.667930, 17.918276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.309479, 14.808125, 17.813707>,  <10.035565, 15.041786, 17.639425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.309479, 14.808125, 17.813707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010031, -0.605381, -0.795873,
		0.728677, 0.540631, -0.420415,
		0.684784, -0.584151, 0.435704,
		10.514915, 14.632880, 17.944418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.591969, 14.886152, 17.074255>,  <10.035565, 15.041786, 17.639425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.591969, 14.886152, 17.074255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.604035, 14.614160, 17.367298>,  <10.611276, 14.450964, 17.543123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.604035, 14.614160, 17.367298>,  <10.591969, 14.886152, 17.074255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.604035, 14.614160, 17.367298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006560, -0.733060, -0.680132,
		0.999523, 0.015712, -0.026576,
		0.030168, -0.679982, 0.732608,
		10.613086, 14.410165, 17.587080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.101065, 14.408407, 16.923302>,  <10.591969, 14.886152, 17.074255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.101065, 14.408407, 16.923302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.864549, 14.197330, 17.167242>,  <10.722639, 14.070684, 17.313606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.864549, 14.197330, 17.167242>,  <11.101065, 14.408407, 16.923302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.864549, 14.197330, 17.167242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116037, -0.804008, -0.583187,
		0.798067, -0.274067, 0.536634,
		-0.591290, -0.527692, 0.609851,
		10.687161, 14.039022, 17.350197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.409161, 13.816422, 16.814093>,  <11.101065, 14.408407, 16.923302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.409161, 13.816422, 16.814093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.058653, 13.721365, 16.981749>,  <10.848349, 13.664330, 17.082342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.058653, 13.721365, 16.981749>,  <11.409161, 13.816422, 16.814093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.058653, 13.721365, 16.981749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039372, -0.831681, -0.553856,
		0.480211, -0.501829, 0.719420,
		-0.876269, -0.237643, 0.419141,
		10.795773, 13.650072, 17.107491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.387239, 13.042015, 17.059370>,  <11.409161, 13.816422, 16.814093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.387239, 13.042015, 17.059370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.049929, 13.215351, 16.932184>,  <10.847543, 13.319353, 16.855873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.049929, 13.215351, 16.932184>,  <11.387239, 13.042015, 17.059370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.049929, 13.215351, 16.932184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118459, -0.726883, -0.676468,
		-0.524264, -0.532784, 0.664296,
		-0.843277, 0.433340, -0.317965,
		10.796946, 13.345353, 16.836794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.603443, 12.413100, 16.795841>,  <11.387239, 13.042015, 17.059370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.603443, 12.413100, 16.795841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.511245, 12.762407, 16.624132>,  <11.455926, 12.971992, 16.521107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.511245, 12.762407, 16.624132>,  <11.603443, 12.413100, 16.795841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.511245, 12.762407, 16.624132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663408, -0.181708, -0.725860,
		-0.711872, -0.452090, -0.537450,
		-0.230495, 0.873268, -0.429272,
		11.442097, 13.024387, 16.495350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.991706, 12.631265, 16.121843>,  <11.603443, 12.413100, 16.795841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.991706, 12.631265, 16.121843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.145154, 12.261989, 16.131260>,  <12.237223, 12.040422, 16.136909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.145154, 12.261989, 16.131260>,  <11.991706, 12.631265, 16.121843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.145154, 12.261989, 16.131260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765177, -0.332026, -0.551600,
		0.517048, 0.193592, -0.833776,
		0.383620, -0.923191, 0.023541,
		12.260241, 11.985031, 16.138323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.363313, 12.621885, 16.795151>,  <11.991706, 12.631265, 16.121843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.363313, 12.621885, 16.795151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.640377, 12.336211, 16.754833>,  <12.806616, 12.164806, 16.730642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.640377, 12.336211, 16.754833>,  <12.363313, 12.621885, 16.795151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.640377, 12.336211, 16.754833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232838, -0.353677, 0.905924,
		-0.682648, -0.604029, -0.411267,
		0.692660, -0.714186, -0.100796,
		12.848175, 12.121956, 16.724594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.174402, 11.927346, 16.866180>,  <12.363313, 12.621885, 16.795151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.174402, 11.927346, 16.866180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.556656, 11.960559, 16.979225>,  <12.786008, 11.980487, 17.047052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.556656, 11.960559, 16.979225>,  <12.174402, 11.927346, 16.866180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.556656, 11.960559, 16.979225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267669, -0.155694, 0.950848,
		0.122952, -0.984309, -0.126562,
		0.955634, 0.083032, 0.282612,
		12.843346, 11.985469, 17.064009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.441133, 11.365527, 17.341938>,  <12.174402, 11.927346, 16.866180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.441133, 11.365527, 17.341938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.687194, 11.675662, 17.399122>,  <12.834830, 11.861743, 17.433434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.687194, 11.675662, 17.399122>,  <12.441133, 11.365527, 17.341938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.687194, 11.675662, 17.399122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267274, 0.034491, 0.963003,
		0.741722, -0.630604, 0.228445,
		0.615153, 0.775338, 0.142961,
		12.871739, 11.908263, 17.442011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.597766, 11.308037, 18.040377>,  <12.441133, 11.365527, 17.341938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.597766, 11.308037, 18.040377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.723163, 11.676939, 17.949898>,  <12.798401, 11.898280, 17.895611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.723163, 11.676939, 17.949898>,  <12.597766, 11.308037, 18.040377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.723163, 11.676939, 17.949898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046383, 0.252794, 0.966408,
		0.948458, -0.292468, 0.122025,
		0.313491, 0.922257, -0.226199,
		12.817210, 11.953616, 17.882038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.196239, 11.453312, 18.449963>,  <12.597766, 11.308037, 18.040377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.196239, 11.453312, 18.449963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.006692, 11.791531, 18.351574>,  <12.892963, 11.994462, 18.292542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.006692, 11.791531, 18.351574>,  <13.196239, 11.453312, 18.449963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.006692, 11.791531, 18.351574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072005, 0.241182, 0.967805,
		0.877647, 0.476323, -0.053405,
		-0.473868, 0.845546, -0.245971,
		12.864532, 12.045195, 18.277782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.409701, 11.938837, 18.955299>,  <13.196239, 11.453312, 18.449963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.409701, 11.938837, 18.955299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.100770, 12.140852, 18.801184>,  <12.915411, 12.262061, 18.708714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.100770, 12.140852, 18.801184>,  <13.409701, 11.938837, 18.955299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.100770, 12.140852, 18.801184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247198, 0.319777, 0.914678,
		0.585153, 0.801674, -0.122128,
		-0.772327, 0.505036, -0.385290,
		12.869072, 12.292363, 18.685596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.458127, 12.608582, 19.258194>,  <13.409701, 11.938837, 18.955299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.458127, 12.608582, 19.258194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.087583, 12.606197, 19.107559>,  <12.865255, 12.604767, 19.017178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.087583, 12.606197, 19.107559>,  <13.458127, 12.608582, 19.258194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.087583, 12.606197, 19.107559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335156, 0.469201, 0.817019,
		0.171826, 0.883071, -0.436648,
		-0.926362, -0.005960, -0.376587,
		12.809674, 12.604409, 18.994583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.210454, 13.332605, 19.374916>,  <13.458127, 12.608582, 19.258194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.210454, 13.332605, 19.374916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.895311, 13.088399, 19.342535>,  <12.706226, 12.941875, 19.323107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.895311, 13.088399, 19.342535>,  <13.210454, 13.332605, 19.374916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.895311, 13.088399, 19.342535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332685, 0.311290, 0.890179,
		-0.518270, 0.728264, -0.448361,
		-0.787856, -0.610516, -0.080950,
		12.658955, 12.905244, 19.318251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.617411, 13.676106, 19.652620>,  <13.210454, 13.332605, 19.374916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.617411, 13.676106, 19.652620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.510442, 13.290706, 19.657478>,  <12.446260, 13.059465, 19.660393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.510442, 13.290706, 19.657478>,  <12.617411, 13.676106, 19.652620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.510442, 13.290706, 19.657478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480486, 0.144266, 0.865055,
		-0.835235, 0.225499, -0.501530,
		-0.267423, -0.963503, 0.012147,
		12.430215, 13.001655, 19.661123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.832074, 13.705577, 19.705433>,  <12.617411, 13.676106, 19.652620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.832074, 13.705577, 19.705433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.991476, 13.366548, 19.845612>,  <12.087117, 13.163130, 19.929720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.991476, 13.366548, 19.845612>,  <11.832074, 13.705577, 19.705433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.991476, 13.366548, 19.845612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538820, 0.092857, 0.837287,
		-0.742204, -0.522492, -0.419685,
		0.398505, -0.847573, 0.350449,
		12.111028, 13.112276, 19.950747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.346193, 13.438464, 20.216879>,  <11.832074, 13.705577, 19.705433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.346193, 13.438464, 20.216879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.657675, 13.205471, 20.310118>,  <11.844563, 13.065675, 20.366060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.657675, 13.205471, 20.310118>,  <11.346193, 13.438464, 20.216879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.657675, 13.205471, 20.310118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384881, -0.150106, 0.910678,
		-0.495466, -0.798863, -0.341075,
		0.778704, -0.582483, 0.233095,
		11.891286, 13.030726, 20.380047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.100234, 12.721613, 20.432156>,  <11.346193, 13.438464, 20.216879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.100234, 12.721613, 20.432156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.460542, 12.740065, 20.604893>,  <11.676726, 12.751136, 20.708534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.460542, 12.740065, 20.604893>,  <11.100234, 12.721613, 20.432156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.460542, 12.740065, 20.604893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384922, -0.375685, 0.843028,
		0.201125, -0.925599, -0.320649,
		0.900768, 0.046129, 0.431844,
		11.730772, 12.753903, 20.734446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.043917, 12.235312, 21.018396>,  <11.100234, 12.721613, 20.432156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.043917, 12.235312, 21.018396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.388373, 12.423854, 21.094566>,  <11.595048, 12.536979, 21.140268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.388373, 12.423854, 21.094566>,  <11.043917, 12.235312, 21.018396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.388373, 12.423854, 21.094566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111218, -0.190825, 0.975303,
		0.496050, -0.861053, -0.111905,
		0.861142, 0.471353, 0.190423,
		11.646716, 12.565260, 21.151693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.541217, 11.661409, 21.276505>,  <11.043917, 12.235312, 21.018396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.541217, 11.661409, 21.276505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.619358, 12.037150, 21.389254>,  <11.666243, 12.262595, 21.456903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.619358, 12.037150, 21.389254>,  <11.541217, 11.661409, 21.276505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.619358, 12.037150, 21.389254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017439, -0.290693, 0.956657,
		0.980578, -0.181971, -0.073169,
		0.195353, 0.939353, 0.281874,
		11.677964, 12.318956, 21.473816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.835320, 11.514958, 21.791605>,  <11.541217, 11.661409, 21.276505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.835320, 11.514958, 21.791605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.798684, 11.910167, 21.841284>,  <11.776703, 12.147292, 21.871092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.798684, 11.910167, 21.841284>,  <11.835320, 11.514958, 21.791605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.798684, 11.910167, 21.841284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012593, -0.123562, 0.992257,
		0.995717, 0.092443, -0.001125,
		-0.091589, 0.988022, 0.124197,
		11.771208, 12.206573, 21.878544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.524046, 11.782567, 22.259737>,  <11.835320, 11.514958, 21.791605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.524046, 11.782567, 22.259737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.207498, 12.024405, 22.295958>,  <12.017569, 12.169507, 22.317690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.207498, 12.024405, 22.295958>,  <12.524046, 11.782567, 22.259737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.207498, 12.024405, 22.295958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007454, -0.157649, 0.987467,
		0.611291, 0.780777, 0.129266,
		-0.791371, 0.604593, 0.090549,
		11.970086, 12.205783, 22.323122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.645321, 12.114486, 22.855032>,  <12.524046, 11.782567, 22.259737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.645321, 12.114486, 22.855032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.253313, 12.137932, 22.779005>,  <12.018108, 12.151999, 22.733389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.253313, 12.137932, 22.779005>,  <12.645321, 12.114486, 22.855032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.253313, 12.137932, 22.779005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198901, -0.288412, 0.936620,
		0.000082, 0.955711, 0.294308,
		-0.980020, 0.058615, -0.190068,
		11.959307, 12.155517, 22.721985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.399272, 12.435978, 23.423847>,  <12.645321, 12.114486, 22.855032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.399272, 12.435978, 23.423847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.066894, 12.281676, 23.263487>,  <11.867466, 12.189095, 23.167271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.066894, 12.281676, 23.263487>,  <12.399272, 12.435978, 23.423847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.066894, 12.281676, 23.263487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380434, -0.131820, 0.915365,
		-0.405953, 0.913135, -0.037219,
		-0.830946, -0.385755, -0.400901,
		11.817610, 12.165950, 23.143217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.831904, 12.827806, 23.633331>,  <12.399272, 12.435978, 23.423847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.831904, 12.827806, 23.633331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.655216, 12.486629, 23.522068>,  <11.549203, 12.281923, 23.455311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.655216, 12.486629, 23.522068>,  <11.831904, 12.827806, 23.633331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.655216, 12.486629, 23.522068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659991, 0.098929, 0.744731,
		-0.607696, 0.512544, -0.606633,
		-0.441721, -0.852943, -0.278156,
		11.522699, 12.230746, 23.438622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.183910, 13.020684, 23.674023>,  <11.831904, 12.827806, 23.633331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.183910, 13.020684, 23.674023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.213712, 12.623205, 23.707521>,  <11.231592, 12.384718, 23.727621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.213712, 12.623205, 23.707521>,  <11.183910, 13.020684, 23.674023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.213712, 12.623205, 23.707521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422035, 0.044668, 0.905478,
		-0.903513, -0.102804, -0.416048,
		0.074503, -0.993698, 0.083745,
		11.236063, 12.325096, 23.732645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.653827, 12.867784, 24.019426>,  <11.183910, 13.020684, 23.674023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.653827, 12.867784, 24.019426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.868325, 12.536272, 24.083385>,  <10.997025, 12.337365, 24.121761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.868325, 12.536272, 24.083385>,  <10.653827, 12.867784, 24.019426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.868325, 12.536272, 24.083385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313380, -0.019592, 0.949426,
		-0.783730, -0.559234, -0.270229,
		0.536246, -0.828778, 0.159898,
		11.029199, 12.287639, 24.131355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.193204, 12.416078, 24.378885>,  <10.653827, 12.867784, 24.019426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.193204, 12.416078, 24.378885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.555883, 12.259474, 24.441647>,  <10.773491, 12.165512, 24.479303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.555883, 12.259474, 24.441647>,  <10.193204, 12.416078, 24.378885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.555883, 12.259474, 24.441647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238987, -0.170348, 0.955964,
		-0.347541, -0.904268, -0.248020,
		0.906698, -0.391510, 0.156905,
		10.827893, 12.142021, 24.488718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.055660, 11.875891, 24.825945>,  <10.193204, 12.416078, 24.378885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.055660, 11.875891, 24.825945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.452632, 11.897913, 24.869858>,  <10.690815, 11.911126, 24.896206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.452632, 11.897913, 24.869858>,  <10.055660, 11.875891, 24.825945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.452632, 11.897913, 24.869858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113016, 0.059493, 0.991811,
		0.048049, -0.996711, 0.065262,
		0.992431, 0.055032, 0.109785,
		10.750360, 11.914430, 24.902792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.370655, 11.356508, 25.281736>,  <10.055660, 11.875891, 24.825945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.370655, 11.356508, 25.281736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.573804, 11.701005, 25.288977>,  <10.695693, 11.907703, 25.293322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.573804, 11.701005, 25.288977>,  <10.370655, 11.356508, 25.281736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.573804, 11.701005, 25.288977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016929, -0.011030, 0.999796,
		0.861267, -0.508074, 0.008979,
		0.507871, 0.861243, 0.018101,
		10.726165, 11.959378, 25.294407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.561652, 11.340631, 25.990604>,  <10.370655, 11.356508, 25.281736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.561652, 11.340631, 25.990604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.670502, 11.707176, 25.873144>,  <10.735811, 11.927103, 25.802668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.670502, 11.707176, 25.873144>,  <10.561652, 11.340631, 25.990604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.670502, 11.707176, 25.873144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004402, 0.303977, 0.952669,
		0.962252, -0.260536, 0.078685,
		0.272123, 0.916362, -0.293649,
		10.752139, 11.982084, 25.785049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.190234, 11.525671, 26.310106>,  <10.561652, 11.340631, 25.990604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.190234, 11.525671, 26.310106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.970221, 11.849407, 26.227711>,  <10.838212, 12.043649, 26.178274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.970221, 11.849407, 26.227711>,  <11.190234, 11.525671, 26.310106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.970221, 11.849407, 26.227711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061572, 0.206679, 0.976469,
		0.832869, 0.549774, -0.063847,
		-0.550034, 0.809340, -0.205988,
		10.805210, 12.092209, 26.165915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.433462, 12.164550, 26.664370>,  <11.190234, 11.525671, 26.310106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.433462, 12.164550, 26.664370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.059491, 12.275007, 26.575235>,  <10.835109, 12.341282, 26.521755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.059491, 12.275007, 26.575235>,  <11.433462, 12.164550, 26.664370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.059491, 12.275007, 26.575235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159663, 0.233450, 0.959171,
		0.316891, 0.932333, -0.174168,
		-0.934927, 0.276144, -0.222837,
		10.779013, 12.357850, 26.508385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
