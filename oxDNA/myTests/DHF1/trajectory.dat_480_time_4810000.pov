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
	<2.220312, 3.357339, 4.165304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.539293, 3.195793, 4.344620>,  <2.730681, 3.098866, 4.452209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.539293, 3.195793, 4.344620>,  <2.220312, 3.357339, 4.165304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.539293, 3.195793, 4.344620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208706, 0.881726, 0.423086,
		-0.566138, -0.243830, 0.787423,
		0.797452, -0.403865, 0.448290,
		2.778528, 3.074634, 4.479107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.124870, 3.632713, 4.852973>,  <2.220312, 3.357339, 4.165304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.124870, 3.632713, 4.852973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.493856, 3.549862, 4.722649>,  <2.715249, 3.500151, 4.644454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.493856, 3.549862, 4.722649>,  <2.124870, 3.632713, 4.852973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.493856, 3.549862, 4.722649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326412, 0.869095, 0.371658,
		0.206178, -0.449190, 0.869321,
		0.922467, -0.207129, -0.325810,
		2.770597, 3.487723, 4.624906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.488229, 3.777496, 5.388281>,  <2.124870, 3.632713, 4.852973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.488229, 3.777496, 5.388281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.687149, 3.806145, 5.042435>,  <2.806501, 3.823334, 4.834927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.687149, 3.806145, 5.042435>,  <2.488229, 3.777496, 5.388281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.687149, 3.806145, 5.042435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329690, 0.906223, 0.264696,
		0.802494, -0.416689, 0.427052,
		0.497300, 0.071622, -0.864617,
		2.836339, 3.827631, 4.783050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.160832, 4.092005, 5.491089>,  <2.488229, 3.777496, 5.388281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.160832, 4.092005, 5.491089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.080951, 4.152111, 5.103783>,  <3.033022, 4.188175, 4.871399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.080951, 4.152111, 5.103783>,  <3.160832, 4.092005, 5.491089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.080951, 4.152111, 5.103783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230019, 0.967747, 0.102745,
		0.952476, -0.202201, -0.227826,
		-0.199703, 0.150266, -0.968266,
		3.021040, 4.197191, 4.813303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.727475, 4.423656, 5.265520>,  <3.160832, 4.092005, 5.491089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.727475, 4.423656, 5.265520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.416625, 4.504002, 5.026947>,  <3.230114, 4.552208, 4.883803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.416625, 4.504002, 5.026947>,  <3.727475, 4.423656, 5.265520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.416625, 4.504002, 5.026947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302891, 0.950094, -0.074688,
		0.551664, -0.238696, -0.799182,
		-0.777126, 0.200862, -0.596431,
		3.183487, 4.564260, 4.848018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.013750, 4.970373, 4.876169>,  <3.727475, 4.423656, 5.265520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.013750, 4.970373, 4.876169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.618078, 4.977314, 4.817894>,  <3.380675, 4.981479, 4.782929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.618078, 4.977314, 4.817894>,  <4.013750, 4.970373, 4.876169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.618078, 4.977314, 4.817894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005361, 0.996593, 0.082303,
		0.146620, 0.080631, -0.985901,
		-0.989178, 0.017353, -0.145688,
		3.321325, 4.982520, 4.774188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.972264, 5.310248, 4.249126>,  <4.013750, 4.970373, 4.876169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.972264, 5.310248, 4.249126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.626338, 5.343693, 4.447159>,  <3.418783, 5.363760, 4.565979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.626338, 5.343693, 4.447159>,  <3.972264, 5.310248, 4.249126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.626338, 5.343693, 4.447159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064699, 0.996374, -0.055258,
		-0.497906, -0.015757, -0.867088,
		-0.864814, 0.083613, 0.495081,
		3.366894, 5.368777, 4.595683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.502766, 5.698328, 3.840012>,  <3.972264, 5.310248, 4.249126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.502766, 5.698328, 3.840012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.454550, 5.761772, 4.231995>,  <3.425620, 5.799839, 4.467184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.454550, 5.761772, 4.231995>,  <3.502766, 5.698328, 3.840012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.454550, 5.761772, 4.231995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121500, 0.982089, -0.144010,
		-0.985245, 0.101706, -0.137652,
		-0.120540, 0.158610, 0.979956,
		3.418388, 5.809355, 4.525981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.721511, 2.158258, 5.016513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.327526, 2.099560, 4.980042>,  <3.091135, 2.064341, 4.958158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.327526, 2.099560, 4.980042>,  <3.721511, 2.158258, 5.016513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.327526, 2.099560, 4.980042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144779, -0.989072, 0.027859,
		-0.094271, 0.014239, 0.995445,
		-0.984963, -0.146746, -0.091179,
		3.032037, 2.055536, 4.952688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.738977, 1.467581, 4.960522>,  <3.721511, 2.158258, 5.016513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.738977, 1.467581, 4.960522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.346485, 1.544720, 4.960396>,  <3.110990, 1.591003, 4.960320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.346485, 1.544720, 4.960396>,  <3.738977, 1.467581, 4.960522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.346485, 1.544720, 4.960396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192180, -0.977975, -0.081439,
		-0.016015, -0.079850, 0.996678,
		-0.981229, 0.192846, -0.000316,
		3.052116, 1.602574, 4.960301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.378140, 1.053957, 5.509626>,  <3.738977, 1.467581, 4.960522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.378140, 1.053957, 5.509626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.144661, 1.122822, 5.192223>,  <3.004574, 1.164141, 5.001780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.144661, 1.122822, 5.192223>,  <3.378140, 1.053957, 5.509626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.144661, 1.122822, 5.192223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133723, -0.984301, -0.115193,
		-0.800884, 0.038873, 0.597556,
		-0.583697, 0.172163, -0.793510,
		2.969552, 1.174471, 4.954170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.756121, 0.673488, 5.676467>,  <3.378140, 1.053957, 5.509626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.756121, 0.673488, 5.676467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.824162, 0.707596, 5.283775>,  <2.864986, 0.728061, 5.048160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.824162, 0.707596, 5.283775>,  <2.756121, 0.673488, 5.676467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.824162, 0.707596, 5.283775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102854, -0.989271, -0.103747,
		-0.980044, 0.118622, -0.159506,
		0.170102, 0.085271, -0.981730,
		2.875192, 0.733177, 4.989256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.304895, 0.304458, 5.334432>,  <2.756121, 0.673488, 5.676467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.304895, 0.304458, 5.334432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.590298, 0.352493, 5.058319>,  <2.761539, 0.381314, 4.892652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.590298, 0.352493, 5.058319>,  <2.304895, 0.304458, 5.334432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.590298, 0.352493, 5.058319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039689, -0.976693, -0.210938,
		-0.699524, 0.177902, -0.692110,
		0.713506, 0.120087, -0.690282,
		2.804349, 0.388519, 4.851234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.052129, 0.060411, 4.634526>,  <2.304895, 0.304458, 5.334432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.052129, 0.060411, 4.634526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.451576, 0.055130, 4.654877>,  <2.691245, 0.051961, 4.667087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.451576, 0.055130, 4.654877>,  <2.052129, 0.060411, 4.634526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.451576, 0.055130, 4.654877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001073, -0.962623, -0.270843,
		0.052552, 0.270523, -0.961278,
		0.998618, -0.013202, 0.050877,
		2.751162, 0.051169, 4.670140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.237986, -0.237903, 3.969086>,  <2.052129, 0.060411, 4.634526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.237986, -0.237903, 3.969086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.534798, -0.298447, 4.230309>,  <2.712885, -0.334773, 4.387042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.534798, -0.298447, 4.230309>,  <2.237986, -0.237903, 3.969086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.534798, -0.298447, 4.230309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100066, -0.938254, -0.331160,
		0.662857, 0.311080, -0.681066,
		0.742030, -0.151360, 0.653056,
		2.757407, -0.343855, 4.426225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.803552, -0.494055, 3.619830>,  <2.237986, -0.237903, 3.969086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.803552, -0.494055, 3.619830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.866352, -0.615204, 3.995834>,  <2.904032, -0.687893, 4.221437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.866352, -0.615204, 3.995834>,  <2.803552, -0.494055, 3.619830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.866352, -0.615204, 3.995834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073184, -0.945629, -0.316906,
		0.984883, 0.118547, -0.126298,
		0.156999, -0.302873, 0.940010,
		2.913452, -0.706066, 4.277837>
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
