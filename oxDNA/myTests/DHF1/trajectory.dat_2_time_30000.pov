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
	<4.471082, 5.808519, 2.852800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.288997, 6.126978, 3.012266>,  <4.179746, 6.318053, 3.107945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.288997, 6.126978, 3.012266>,  <4.471082, 5.808519, 2.852800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.288997, 6.126978, 3.012266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856156, -0.268436, -0.441520,
		-0.244496, -0.542309, 0.803818,
		-0.455213, 0.796143, 0.398669,
		4.152433, 6.365822, 3.131865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.384792, 5.051524, 2.911756>,  <4.471082, 5.808519, 2.852800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.384792, 5.051524, 2.911756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.399638, 4.944226, 3.296810>,  <4.408546, 4.879848, 3.527842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.399638, 4.944226, 3.296810>,  <4.384792, 5.051524, 2.911756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.399638, 4.944226, 3.296810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496682, -0.840842, -0.215156,
		0.867139, -0.470138, -0.164441,
		0.037115, -0.268245, 0.962636,
		4.410773, 4.863753, 3.585600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.641383, 4.266619, 3.009921>,  <4.384792, 5.051524, 2.911756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.641383, 4.266619, 3.009921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.371303, 4.388928, 3.278430>,  <4.209255, 4.462313, 3.439536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.371303, 4.388928, 3.278430>,  <4.641383, 4.266619, 3.009921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.371303, 4.388928, 3.278430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427107, -0.904026, -0.017812,
		0.601402, -0.298732, 0.740996,
		-0.675200, 0.305773, 0.671273,
		4.168743, 4.480660, 3.479812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.538452, 3.733219, 3.501644>,  <4.641383, 4.266619, 3.009921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.538452, 3.733219, 3.501644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.219563, 3.969109, 3.450008>,  <4.028231, 4.110643, 3.419027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.219563, 3.969109, 3.450008>,  <4.538452, 3.733219, 3.501644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.219563, 3.969109, 3.450008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598330, -0.800295, 0.039106,
		-0.080248, 0.108415, 0.990861,
		-0.797221, 0.589724, -0.129090,
		3.980397, 4.146026, 3.411281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.028371, 3.716182, 4.073303>,  <4.538452, 3.733219, 3.501644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.028371, 3.716182, 4.073303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.875514, 3.763680, 3.706727>,  <3.783800, 3.792179, 3.486780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.875514, 3.763680, 3.706727>,  <4.028371, 3.716182, 4.073303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.875514, 3.763680, 3.706727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675153, -0.713018, 0.189142,
		-0.630980, 0.691018, 0.352646,
		-0.382143, 0.118746, -0.916442,
		3.760871, 3.799304, 3.431794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.283606, 3.640011, 4.225888>,  <4.028371, 3.716182, 4.073303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.283606, 3.640011, 4.225888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.335080, 3.571816, 3.835119>,  <3.365964, 3.530900, 3.600658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.335080, 3.571816, 3.835119>,  <3.283606, 3.640011, 4.225888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.335080, 3.571816, 3.835119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468511, -0.878693, 0.091630,
		-0.874035, 0.445906, -0.192950,
		0.128686, -0.170488, -0.976921,
		3.373686, 3.520670, 3.542043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.677536, 3.469026, 3.890796>,  <3.283606, 3.640011, 4.225888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.677536, 3.469026, 3.890796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.950608, 3.306503, 3.647860>,  <3.114452, 3.208990, 3.502098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.950608, 3.306503, 3.647860>,  <2.677536, 3.469026, 3.890796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.950608, 3.306503, 3.647860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530537, -0.847144, -0.029618,
		-0.502471, 0.342437, -0.793889,
		0.682681, -0.406306, -0.607341,
		3.155412, 3.184612, 3.465657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.283082, 3.239548, 3.308495>,  <2.677536, 3.469026, 3.890796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.283082, 3.239548, 3.308495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.625441, 3.033265, 3.323908>,  <2.830856, 2.909495, 3.333156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.625441, 3.033265, 3.323908>,  <2.283082, 3.239548, 3.308495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.625441, 3.033265, 3.323908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482928, -0.823696, -0.297162,
		0.184988, 0.235731, -0.954049,
		0.855897, -0.515708, 0.038533,
		2.882210, 2.878552, 3.335468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.313781, 0.149170, 4.994708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.668293, 0.170916, 5.178687>,  <1.881000, 0.183964, 5.289074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.668293, 0.170916, 5.178687>,  <1.313781, 0.149170, 4.994708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.668293, 0.170916, 5.178687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272460, 0.741868, -0.612697,
		-0.374531, 0.668338, 0.642690,
		0.886280, 0.054366, 0.459948,
		1.934177, 0.187226, 5.316671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.471821, 0.857100, 5.230815>,  <1.313781, 0.149170, 4.994708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.471821, 0.857100, 5.230815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.787028, 0.628083, 5.140283>,  <1.976153, 0.490674, 5.085963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.787028, 0.628083, 5.140283>,  <1.471821, 0.857100, 5.230815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.787028, 0.628083, 5.140283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277432, 0.658423, -0.699650,
		0.549600, 0.488545, 0.677690,
		0.788018, -0.572541, -0.226331,
		2.023433, 0.456321, 5.072383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.133185, 1.180518, 5.278623>,  <1.471821, 0.857100, 5.230815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.133185, 1.180518, 5.278623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.175881, 0.883682, 5.013923>,  <2.201499, 0.705581, 4.855103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.175881, 0.883682, 5.013923>,  <2.133185, 1.180518, 5.278623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.175881, 0.883682, 5.013923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362472, 0.648791, -0.669092,
		0.925862, -0.168446, 0.338239,
		0.106741, -0.742089, -0.661748,
		2.207904, 0.661056, 4.815399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.631428, 1.386861, 4.857341>,  <2.133185, 1.180518, 5.278623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.631428, 1.386861, 4.857341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.500516, 1.068328, 4.653873>,  <2.421969, 0.877208, 4.531793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.500516, 1.068328, 4.653873>,  <2.631428, 1.386861, 4.857341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.500516, 1.068328, 4.653873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321256, 0.412479, -0.852441,
		0.888641, -0.442399, 0.120831,
		-0.327279, -0.796332, -0.508669,
		2.402332, 0.829428, 4.501273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.157056, 0.811889, 4.553311>,  <2.631428, 1.386861, 4.857341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.157056, 0.811889, 4.553311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.827610, 0.841471, 4.328389>,  <2.629942, 0.859221, 4.193435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.827610, 0.841471, 4.328389>,  <3.157056, 0.811889, 4.553311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.827610, 0.841471, 4.328389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566983, 0.131402, -0.813182,
		0.013748, -0.988567, -0.150156,
		-0.823615, 0.073956, -0.562307,
		2.580525, 0.863659, 4.159697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.112565, 0.357297, 3.963459>,  <3.157056, 0.811889, 4.553311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.112565, 0.357297, 3.963459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.899395, 0.680539, 3.863094>,  <2.771493, 0.874485, 3.802875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.899395, 0.680539, 3.863094>,  <3.112565, 0.357297, 3.963459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.899395, 0.680539, 3.863094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553767, 0.108873, -0.825523,
		-0.639792, -0.578888, -0.505524,
		-0.532924, 0.808106, -0.250913,
		2.739518, 0.922971, 3.787820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.917576, 0.307003, 3.244984>,  <3.112565, 0.357297, 3.963459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.917576, 0.307003, 3.244984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.920154, 0.690949, 3.357139>,  <2.921700, 0.921317, 3.424432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.920154, 0.690949, 3.357139>,  <2.917576, 0.307003, 3.244984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.920154, 0.690949, 3.357139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219895, 0.272169, -0.936787,
		-0.975502, 0.067692, -0.209315,
		0.006444, 0.959866, 0.280387,
		2.922087, 0.978909, 3.441255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.315367, 0.688025, 2.980073>,  <2.917576, 0.307003, 3.244984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.315367, 0.688025, 2.980073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.668752, 0.865852, 3.039205>,  <2.880783, 0.972548, 3.074684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.668752, 0.865852, 3.039205>,  <2.315367, 0.688025, 2.980073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.668752, 0.865852, 3.039205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173095, -0.016521, -0.984767,
		-0.435353, 0.895593, -0.091548,
		0.883463, 0.444567, 0.147830,
		2.933790, 0.999222, 3.083554>
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
