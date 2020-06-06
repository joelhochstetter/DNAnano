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
	<23.983160, 35.213875, 34.615692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.169184, 35.204132, 34.969669>,  <24.280798, 35.198284, 35.182056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.169184, 35.204132, 34.969669>,  <23.983160, 35.213875, 34.615692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.169184, 35.204132, 34.969669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808958, -0.394344, -0.435981,
		0.359593, 0.918640, -0.163687,
		0.465058, -0.024360, 0.884945,
		24.308701, 35.196823, 35.235153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.633976, 35.659107, 34.681404>,  <23.983160, 35.213875, 34.615692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.633976, 35.659107, 34.681404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605757, 35.322788, 34.896099>,  <24.588825, 35.120998, 35.024918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605757, 35.322788, 34.896099>,  <24.633976, 35.659107, 34.681404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.605757, 35.322788, 34.896099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671420, -0.437963, -0.597816,
		0.737712, 0.318202, 0.595423,
		-0.070547, -0.840795, 0.536738,
		24.584593, 35.070549, 35.057121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.248343, 35.458698, 35.009186>,  <24.633976, 35.659107, 34.681404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.248343, 35.458698, 35.009186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014124, 35.146778, 34.920597>,  <24.873592, 34.959625, 34.867443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.014124, 35.146778, 34.920597>,  <25.248343, 35.458698, 35.009186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.014124, 35.146778, 34.920597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712195, -0.364368, -0.600012,
		0.387191, -0.509067, 0.768722,
		-0.585544, -0.779799, -0.221475,
		24.838461, 34.912838, 34.854153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648508, 34.848808, 35.261105>,  <25.248343, 35.458698, 35.009186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648508, 34.848808, 35.261105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384403, 34.810543, 34.963139>,  <25.225941, 34.787586, 34.784359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384403, 34.810543, 34.963139>,  <25.648508, 34.848808, 35.261105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.384403, 34.810543, 34.963139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747286, -0.182673, -0.638900,
		-0.074959, -0.978509, 0.192098,
		-0.660261, -0.095660, -0.744919,
		25.186325, 34.781845, 34.739662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894066, 34.255543, 35.059353>,  <25.648508, 34.848808, 35.261105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.894066, 34.255543, 35.059353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738380, 34.479519, 34.766785>,  <25.644968, 34.613907, 34.591244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738380, 34.479519, 34.766785>,  <25.894066, 34.255543, 35.059353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738380, 34.479519, 34.766785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746384, -0.273631, -0.606661,
		-0.539836, -0.782041, -0.311432,
		-0.389216, 0.559945, -0.731418,
		25.621616, 34.647503, 34.547359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.394283, 33.865578, 35.370861>,  <25.894066, 34.255543, 35.059353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.394283, 33.865578, 35.370861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774685, 33.903248, 35.253063>,  <27.002926, 33.925850, 35.182384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774685, 33.903248, 35.253063>,  <26.394283, 33.865578, 35.370861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774685, 33.903248, 35.253063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076313, -0.851527, -0.518728,
		-0.299619, 0.515785, -0.802617,
		0.951002, 0.094171, -0.294495,
		27.059986, 33.931499, 35.164715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438957, 33.801918, 34.676537>,  <26.394283, 33.865578, 35.370861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438957, 33.801918, 34.676537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820412, 33.717094, 34.761963>,  <27.049284, 33.666203, 34.813217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820412, 33.717094, 34.761963>,  <26.438957, 33.801918, 34.676537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820412, 33.717094, 34.761963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068546, -0.843994, -0.531954,
		0.293048, 0.492653, -0.819400,
		0.953637, -0.212055, 0.213561,
		27.106503, 33.653477, 34.826031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892818, 33.784477, 34.050110>,  <26.438957, 33.801918, 34.676537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892818, 33.784477, 34.050110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.068520, 33.553944, 34.325760>,  <27.173941, 33.415623, 34.491150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.068520, 33.553944, 34.325760>,  <26.892818, 33.784477, 34.050110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068520, 33.553944, 34.325760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054910, -0.748431, -0.660936,
		0.896685, 0.328157, -0.297102,
		0.439251, -0.576338, 0.689125,
		27.200294, 33.381042, 34.532497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.437996, 33.495228, 33.711643>,  <26.892818, 33.784477, 34.050110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.437996, 33.495228, 33.711643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310013, 33.276669, 34.021244>,  <27.233223, 33.145535, 34.207005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.310013, 33.276669, 34.021244>,  <27.437996, 33.495228, 33.711643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.310013, 33.276669, 34.021244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074423, -0.799927, -0.595465,
		0.944505, -0.248126, 0.215276,
		-0.319955, -0.546398, 0.774001,
		27.214025, 33.112747, 34.253445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908855, 32.897022, 33.743996>,  <27.437996, 33.495228, 33.711643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908855, 32.897022, 33.743996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575758, 32.790230, 33.938007>,  <27.375898, 32.726154, 34.054417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.575758, 32.790230, 33.938007>,  <27.908855, 32.897022, 33.743996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575758, 32.790230, 33.938007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076628, -0.812045, -0.578542,
		0.548328, -0.518945, 0.655769,
		-0.832745, -0.266980, 0.485033,
		27.325933, 32.710136, 34.083519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003635, 32.189777, 33.916691>,  <27.908855, 32.897022, 33.743996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003635, 32.189777, 33.916691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608185, 32.246044, 33.937969>,  <27.370914, 32.279804, 33.950737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608185, 32.246044, 33.937969>,  <28.003635, 32.189777, 33.916691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608185, 32.246044, 33.937969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145971, -0.812388, -0.564551,
		-0.036194, -0.565896, 0.823682,
		-0.988626, 0.140667, 0.053201,
		27.311596, 32.288246, 33.953930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669424, 31.563412, 33.888615>,  <28.003635, 32.189777, 33.916691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669424, 31.563412, 33.888615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362072, 31.791384, 33.772152>,  <27.177662, 31.928167, 33.702274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362072, 31.791384, 33.772152>,  <27.669424, 31.563412, 33.888615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362072, 31.791384, 33.772152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252856, -0.688269, -0.679963,
		-0.587927, -0.448847, 0.672962,
		-0.768379, 0.569931, -0.291158,
		27.131559, 31.962362, 33.684803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103218, 31.023998, 33.818260>,  <27.669424, 31.563412, 33.888615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103218, 31.023998, 33.818260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992220, 31.347578, 33.610954>,  <26.925621, 31.541725, 33.486572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.992220, 31.347578, 33.610954>,  <27.103218, 31.023998, 33.818260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992220, 31.347578, 33.610954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507355, -0.581486, -0.635976,
		-0.815836, 0.086464, 0.571783,
		-0.277495, 0.808949, -0.518265,
		26.908972, 31.590263, 33.455475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340851, 30.927446, 33.795670>,  <27.103218, 31.023998, 33.818260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340851, 30.927446, 33.795670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.468994, 31.173296, 33.507332>,  <26.545879, 31.320807, 33.334332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.468994, 31.173296, 33.507332>,  <26.340851, 30.927446, 33.795670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.468994, 31.173296, 33.507332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573588, -0.479739, -0.663964,
		-0.753903, 0.626170, 0.198853,
		0.320356, 0.614623, -0.720840,
		26.565102, 31.357683, 33.291080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776672, 31.014593, 33.250008>,  <26.340851, 30.927446, 33.795670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776672, 31.014593, 33.250008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106443, 31.145590, 33.065372>,  <26.304306, 31.224188, 32.954590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106443, 31.145590, 33.065372>,  <25.776672, 31.014593, 33.250008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.106443, 31.145590, 33.065372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374202, -0.296461, -0.878683,
		-0.424605, 0.897140, -0.121863,
		0.824429, 0.327492, -0.461591,
		26.353771, 31.243837, 32.926895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632202, 30.977018, 32.581860>,  <25.776672, 31.014593, 33.250008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632202, 30.977018, 32.581860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027483, 31.014071, 32.533077>,  <26.264652, 31.036303, 32.503807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027483, 31.014071, 32.533077>,  <25.632202, 30.977018, 32.581860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.027483, 31.014071, 32.533077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093767, -0.263676, -0.960043,
		-0.121086, 0.960153, -0.251880,
		0.988204, 0.092630, -0.121958,
		26.323944, 31.041859, 32.496490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717251, 31.337990, 31.944017>,  <25.632202, 30.977018, 32.581860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717251, 31.337990, 31.944017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073454, 31.162392, 31.991821>,  <26.287176, 31.057034, 32.020504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073454, 31.162392, 31.991821>,  <25.717251, 31.337990, 31.944017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073454, 31.162392, 31.991821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032375, -0.323149, -0.945794,
		0.453818, 0.838366, -0.301979,
		0.890506, -0.438995, 0.119509,
		26.340607, 31.030693, 32.027676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090363, 31.385851, 31.254063>,  <25.717251, 31.337990, 31.944017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090363, 31.385851, 31.254063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245966, 31.088116, 31.471182>,  <26.339329, 30.909473, 31.601454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245966, 31.088116, 31.471182>,  <26.090363, 31.385851, 31.254063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245966, 31.088116, 31.471182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073282, -0.612344, -0.787188,
		0.918315, 0.266446, -0.292754,
		0.389009, -0.744340, 0.542799,
		26.362669, 30.864813, 31.634022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461246, 30.989210, 30.686520>,  <26.090363, 31.385851, 31.254063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461246, 30.989210, 30.686520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.417961, 30.765669, 31.015390>,  <26.391991, 30.631544, 31.212713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.417961, 30.765669, 31.015390>,  <26.461246, 30.989210, 30.686520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.417961, 30.765669, 31.015390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010599, -0.827634, -0.561168,
		0.994071, -0.052012, 0.095484,
		-0.108213, -0.558853, 0.822176,
		26.385498, 30.598013, 31.262043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014210, 30.456141, 30.642031>,  <26.461246, 30.989210, 30.686520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014210, 30.456141, 30.642031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759485, 30.286255, 30.899429>,  <26.606651, 30.184324, 31.053869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759485, 30.286255, 30.899429>,  <27.014210, 30.456141, 30.642031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759485, 30.286255, 30.899429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011649, -0.829211, -0.558815,
		0.770932, -0.363355, 0.523103,
		-0.636811, -0.424715, 0.643498,
		26.568441, 30.158840, 31.092480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338703, 29.808668, 30.850618>,  <27.014210, 30.456141, 30.642031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338703, 29.808668, 30.850618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946936, 29.767519, 30.920076>,  <26.711874, 29.742830, 30.961750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.946936, 29.767519, 30.920076>,  <27.338703, 29.808668, 30.850618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946936, 29.767519, 30.920076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002127, -0.865567, -0.500788,
		0.201816, -0.490113, 0.847974,
		-0.979421, -0.102871, 0.173643,
		26.653109, 29.736658, 30.972170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301804, 29.136368, 31.079958>,  <27.338703, 29.808668, 30.850618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301804, 29.136368, 31.079958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.931942, 29.238899, 30.967308>,  <26.710026, 29.300419, 30.899719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.931942, 29.238899, 30.967308>,  <27.301804, 29.136368, 31.079958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.931942, 29.238899, 30.967308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183366, -0.947852, -0.260678,
		-0.333757, -0.189397, 0.923437,
		-0.924653, 0.256330, -0.281623,
		26.654547, 29.315798, 30.882820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942404, 28.722084, 31.370811>,  <27.301804, 29.136368, 31.079958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942404, 28.722084, 31.370811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.732292, 28.843477, 31.052824>,  <26.606224, 28.916313, 30.862032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.732292, 28.843477, 31.052824>,  <26.942404, 28.722084, 31.370811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.732292, 28.843477, 31.052824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034509, -0.925871, -0.376259,
		-0.850228, -0.225076, 0.475871,
		-0.525282, 0.303485, -0.794969,
		26.574707, 28.934523, 30.814333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284466, 28.255177, 31.260607>,  <26.942404, 28.722084, 31.370811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284466, 28.255177, 31.260607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383646, 28.442661, 30.921473>,  <26.443153, 28.555153, 30.717991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383646, 28.442661, 30.921473>,  <26.284466, 28.255177, 31.260607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383646, 28.442661, 30.921473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053232, -0.880436, -0.471168,
		-0.967309, 0.071695, -0.243256,
		0.247951, 0.468714, -0.847837,
		26.458031, 28.583275, 30.667122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928734, 27.933886, 30.729136>,  <26.284466, 28.255177, 31.260607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928734, 27.933886, 30.729136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207664, 28.121393, 30.512253>,  <26.375023, 28.233898, 30.382124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207664, 28.121393, 30.512253>,  <25.928734, 27.933886, 30.729136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.207664, 28.121393, 30.512253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088983, -0.694005, -0.714450,
		-0.711208, 0.546453, -0.442236,
		0.697327, 0.468771, -0.542207,
		26.416862, 28.262024, 30.349590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.720844, 28.057226, 29.975639>,  <25.928734, 27.933886, 30.729136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.720844, 28.057226, 29.975639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105320, 27.992159, 30.064770>,  <26.336006, 27.953119, 30.118248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105320, 27.992159, 30.064770>,  <25.720844, 28.057226, 29.975639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105320, 27.992159, 30.064770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085112, -0.593435, -0.800369,
		0.262425, 0.788273, -0.556560,
		0.961191, -0.162667, 0.222824,
		26.393677, 27.943359, 30.131617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.123667, 28.303808, 29.438753>,  <25.720844, 28.057226, 29.975639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.123667, 28.303808, 29.438753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271704, 27.978407, 29.618195>,  <26.360527, 27.783167, 29.725861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.271704, 27.978407, 29.618195>,  <26.123667, 28.303808, 29.438753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271704, 27.978407, 29.618195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137584, -0.525565, -0.839555,
		0.918750, 0.248993, -0.306433,
		0.370094, -0.813501, 0.448605,
		26.382732, 27.734356, 29.752775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657814, 28.187202, 28.946043>,  <26.123667, 28.303808, 29.438753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.657814, 28.187202, 28.946043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532463, 27.868412, 29.152586>,  <26.457253, 27.677137, 29.276512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532463, 27.868412, 29.152586>,  <26.657814, 28.187202, 28.946043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532463, 27.868412, 29.152586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178457, -0.484635, -0.856319,
		0.932709, -0.360500, 0.009649,
		-0.313379, -0.796974, 0.516357,
		26.438450, 27.629320, 29.307493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593704, 27.773493, 28.250368>,  <26.657814, 28.187202, 28.946043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593704, 27.773493, 28.250368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301613, 27.961267, 28.051817>,  <26.126358, 28.073933, 27.932686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301613, 27.961267, 28.051817>,  <26.593704, 27.773493, 28.250368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301613, 27.961267, 28.051817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046516, 0.759025, 0.649398,
		0.681616, 0.451120, -0.576099,
		-0.730230, 0.469438, -0.496379,
		26.082544, 28.102098, 27.902903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038382, 28.148245, 27.792643>,  <26.593704, 27.773493, 28.250368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038382, 28.148245, 27.792643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135805, 28.261065, 27.421455>,  <27.194260, 28.328756, 27.198742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135805, 28.261065, 27.421455>,  <27.038382, 28.148245, 27.792643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135805, 28.261065, 27.421455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304351, 0.930680, 0.202993,
		0.920896, 0.232987, 0.312519,
		0.243560, 0.282051, -0.927969,
		27.208872, 28.345680, 27.143064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538326, 28.705299, 27.630421>,  <27.038382, 28.148245, 27.792643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.538326, 28.705299, 27.630421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.249269, 28.707123, 27.353937>,  <27.075836, 28.708218, 27.188047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.249269, 28.707123, 27.353937>,  <27.538326, 28.705299, 27.630421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.249269, 28.707123, 27.353937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295489, 0.901964, 0.314876,
		0.624880, 0.431787, -0.650450,
		-0.722642, 0.004559, -0.691208,
		27.032476, 28.708490, 27.146574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572140, 29.358080, 27.216415>,  <27.538326, 28.705299, 27.630421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572140, 29.358080, 27.216415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211161, 29.188740, 27.248323>,  <26.994574, 29.087135, 27.267469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211161, 29.188740, 27.248323>,  <27.572140, 29.358080, 27.216415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211161, 29.188740, 27.248323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340774, 0.814795, 0.469023,
		-0.263560, 0.396084, -0.879576,
		-0.902446, -0.423352, 0.079773,
		26.940426, 29.061733, 27.272255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839550, 29.523291, 26.861511>,  <27.572140, 29.358080, 27.216415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839550, 29.523291, 26.861511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788099, 29.393688, 27.236420>,  <26.757229, 29.315928, 27.461365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788099, 29.393688, 27.236420>,  <26.839550, 29.523291, 26.861511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788099, 29.393688, 27.236420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444658, 0.863632, 0.237526,
		-0.886416, -0.386212, -0.255158,
		-0.128628, -0.324005, 0.937270,
		26.749512, 29.296486, 27.517601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579414, 30.126661, 26.339567>,  <26.839550, 29.523291, 26.861511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579414, 30.126661, 26.339567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866049, 30.304295, 26.124422>,  <27.038029, 30.410873, 25.995335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866049, 30.304295, 26.124422>,  <26.579414, 30.126661, 26.339567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866049, 30.304295, 26.124422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070834, 0.720812, 0.689501,
		0.693897, -0.532183, 0.485065,
		0.716582, 0.444084, -0.537867,
		27.081024, 30.437519, 25.963062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219872, 30.157166, 26.720743>,  <26.579414, 30.126661, 26.339567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219872, 30.157166, 26.720743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235046, 30.470612, 26.472710>,  <27.244152, 30.658680, 26.323889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.235046, 30.470612, 26.472710>,  <27.219872, 30.157166, 26.720743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235046, 30.470612, 26.472710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197414, 0.602426, 0.773376,
		0.979586, -0.151755, -0.131841,
		0.037939, 0.783616, -0.620086,
		27.246428, 30.705696, 26.286684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850796, 30.389967, 26.878710>,  <27.219872, 30.157166, 26.720743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850796, 30.389967, 26.878710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608732, 30.674721, 26.736158>,  <27.463495, 30.845573, 26.650627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608732, 30.674721, 26.736158>,  <27.850796, 30.389967, 26.878710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608732, 30.674721, 26.736158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091919, 0.507139, 0.856949,
		0.790781, 0.485831, -0.372335,
		-0.605158, 0.711884, -0.356378,
		27.427185, 30.888287, 26.629246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139235, 31.031710, 26.914642>,  <27.850796, 30.389967, 26.878710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139235, 31.031710, 26.914642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742477, 31.048893, 26.962481>,  <27.504423, 31.059202, 26.991182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.742477, 31.048893, 26.962481>,  <28.139235, 31.031710, 26.914642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742477, 31.048893, 26.962481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124844, 0.504978, 0.854056,
		-0.023706, 0.862063, -0.506247,
		-0.991893, 0.042956, 0.119594,
		27.444910, 31.061779, 26.998360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981466, 31.684067, 27.052998>,  <28.139235, 31.031710, 26.914642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981466, 31.684067, 27.052998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675587, 31.473404, 27.201523>,  <27.492060, 31.347006, 27.290638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675587, 31.473404, 27.201523>,  <27.981466, 31.684067, 27.052998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675587, 31.473404, 27.201523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156525, 0.407153, 0.899848,
		-0.625090, 0.746231, -0.228914,
		-0.764697, -0.526655, 0.371311,
		27.446178, 31.315407, 27.312916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.502947, 32.116341, 27.123104>,  <27.981466, 31.684067, 27.052998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.502947, 32.116341, 27.123104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444674, 31.823288, 27.389046>,  <27.409710, 31.647457, 27.548611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.444674, 31.823288, 27.389046>,  <27.502947, 32.116341, 27.123104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.444674, 31.823288, 27.389046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028792, 0.668599, 0.743065,
		-0.988912, 0.127395, -0.076310,
		-0.145684, -0.732629, 0.664854,
		27.400969, 31.603498, 27.588501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252932, 32.441879, 27.597681>,  <27.502947, 32.116341, 27.123104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252932, 32.441879, 27.597681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317881, 32.101677, 27.797794>,  <27.356850, 31.897556, 27.917862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317881, 32.101677, 27.797794>,  <27.252932, 32.441879, 27.597681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317881, 32.101677, 27.797794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093615, 0.491444, 0.865863,
		-0.982279, -0.187427, 0.000177,
		0.162373, -0.850502, 0.500281,
		27.366592, 31.846527, 27.947878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777370, 32.452732, 28.231884>,  <27.252932, 32.441879, 27.597681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777370, 32.452732, 28.231884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059717, 32.180458, 28.310293>,  <27.229126, 32.017094, 28.357338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059717, 32.180458, 28.310293>,  <26.777370, 32.452732, 28.231884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059717, 32.180458, 28.310293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172141, 0.433276, 0.884669,
		-0.687109, -0.590716, 0.423009,
		0.705868, -0.680681, 0.196021,
		27.271477, 31.976254, 28.369101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635170, 32.119183, 28.926645>,  <26.777370, 32.452732, 28.231884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635170, 32.119183, 28.926645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.028326, 32.074215, 28.868279>,  <27.264219, 32.047234, 28.833258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.028326, 32.074215, 28.868279>,  <26.635170, 32.119183, 28.926645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028326, 32.074215, 28.868279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177516, 0.366604, 0.913285,
		-0.049175, -0.923560, 0.380287,
		0.982889, -0.112417, -0.145919,
		27.323193, 32.040489, 28.824503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947460, 31.834677, 29.554125>,  <26.635170, 32.119183, 28.926645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947460, 31.834677, 29.554125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240784, 32.032417, 29.367418>,  <27.416779, 32.151062, 29.255394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.240784, 32.032417, 29.367418>,  <26.947460, 31.834677, 29.554125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240784, 32.032417, 29.367418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258241, 0.432562, 0.863830,
		0.628943, -0.753993, 0.189539,
		0.733309, 0.494353, -0.466768,
		27.460777, 32.180721, 29.227388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614389, 31.686897, 29.875898>,  <26.947460, 31.834677, 29.554125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614389, 31.686897, 29.875898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676926, 32.035194, 29.689409>,  <27.714447, 32.244171, 29.577517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.676926, 32.035194, 29.689409>,  <27.614389, 31.686897, 29.875898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676926, 32.035194, 29.689409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424847, 0.366845, 0.827605,
		0.891663, -0.327463, -0.312579,
		0.156342, 0.870743, -0.466223,
		27.723827, 32.296417, 29.549541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263206, 31.885176, 30.093273>,  <27.614389, 31.686897, 29.875898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263206, 31.885176, 30.093273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136093, 32.231598, 29.938892>,  <28.059826, 32.439453, 29.846264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.136093, 32.231598, 29.938892>,  <28.263206, 31.885176, 30.093273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136093, 32.231598, 29.938892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399279, 0.491434, 0.773996,
		0.859994, 0.091861, -0.501967,
		-0.317783, 0.866057, -0.385953,
		28.040758, 32.491413, 29.823107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838156, 32.316544, 30.039278>,  <28.263206, 31.885176, 30.093273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838156, 32.316544, 30.039278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517748, 32.556000, 30.039129>,  <28.325504, 32.699673, 30.039040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517748, 32.556000, 30.039129>,  <28.838156, 32.316544, 30.039278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517748, 32.556000, 30.039129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350141, 0.469018, 0.810817,
		0.485562, 0.649348, -0.585300,
		-0.801019, 0.598639, -0.000373,
		28.277443, 32.735592, 30.039017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061083, 32.918484, 30.081030>,  <28.838156, 32.316544, 30.039278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061083, 32.918484, 30.081030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687481, 32.960049, 30.217754>,  <28.463320, 32.984989, 30.299789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687481, 32.960049, 30.217754>,  <29.061083, 32.918484, 30.081030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687481, 32.960049, 30.217754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325936, 0.639614, 0.696175,
		-0.146286, 0.761640, -0.631272,
		-0.934005, 0.103913, 0.341813,
		28.407280, 32.991222, 30.320299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035879, 33.589718, 30.388561>,  <29.061083, 32.918484, 30.081030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035879, 33.589718, 30.388561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715450, 33.398792, 30.533033>,  <28.523193, 33.284237, 30.619717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715450, 33.398792, 30.533033>,  <29.035879, 33.589718, 30.388561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715450, 33.398792, 30.533033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128758, 0.451872, 0.882742,
		-0.584554, 0.753646, -0.300524,
		-0.801073, -0.477315, 0.361182,
		28.475128, 33.255596, 30.641388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567064, 34.046902, 30.590548>,  <29.035879, 33.589718, 30.388561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567064, 34.046902, 30.590548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455853, 33.720722, 30.793621>,  <28.389126, 33.525013, 30.915466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455853, 33.720722, 30.793621>,  <28.567064, 34.046902, 30.590548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455853, 33.720722, 30.793621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117379, 0.495721, 0.860513,
		-0.953374, 0.298841, -0.042110,
		-0.278031, -0.815447, 0.507685,
		28.372444, 33.476089, 30.945927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.050192, 34.208282, 31.069578>,  <28.567064, 34.046902, 30.590548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.050192, 34.208282, 31.069578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205877, 33.863548, 31.199657>,  <28.299290, 33.656708, 31.277704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205877, 33.863548, 31.199657>,  <28.050192, 34.208282, 31.069578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205877, 33.863548, 31.199657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029382, 0.364471, 0.930751,
		-0.920678, -0.352707, 0.167180,
		0.389215, -0.861835, 0.325197,
		28.322641, 33.605000, 31.297216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821337, 34.204372, 31.776936>,  <28.050192, 34.208282, 31.069578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821337, 34.204372, 31.776936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104061, 33.923203, 31.745136>,  <28.273695, 33.754501, 31.726057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104061, 33.923203, 31.745136>,  <27.821337, 34.204372, 31.776936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104061, 33.923203, 31.745136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298440, 0.194412, 0.934418,
		-0.641367, -0.684183, 0.347193,
		0.706811, -0.702921, -0.079498,
		28.316105, 33.712326, 31.721287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769646, 33.621662, 32.426746>,  <27.821337, 34.204372, 31.776936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769646, 33.621662, 32.426746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133478, 33.616158, 32.260624>,  <28.351778, 33.612854, 32.160950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133478, 33.616158, 32.260624>,  <27.769646, 33.621662, 32.426746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133478, 33.616158, 32.260624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415450, 0.049672, 0.908259,
		0.008132, -0.998671, 0.050897,
		0.909579, -0.013759, -0.415302,
		28.406351, 33.612030, 32.136032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119896, 33.016407, 32.811642>,  <27.769646, 33.621662, 32.426746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119896, 33.016407, 32.811642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393888, 33.255440, 32.644932>,  <28.558285, 33.398857, 32.544907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393888, 33.255440, 32.644932>,  <28.119896, 33.016407, 32.811642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393888, 33.255440, 32.644932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512935, 0.010696, 0.858361,
		0.517395, -0.801740, -0.299192,
		0.684982, 0.597578, -0.416774,
		28.599382, 33.434711, 32.519901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717350, 32.723484, 33.042889>,  <28.119896, 33.016407, 32.811642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717350, 32.723484, 33.042889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802643, 33.098671, 32.933533>,  <28.853819, 33.323784, 32.867920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802643, 33.098671, 32.933533>,  <28.717350, 32.723484, 33.042889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802643, 33.098671, 32.933533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710826, 0.043035, 0.702050,
		0.670268, -0.344033, -0.657558,
		0.213230, 0.937971, -0.273393,
		28.866611, 33.380062, 32.851517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348614, 32.810867, 33.109089>,  <28.717350, 32.723484, 33.042889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348614, 32.810867, 33.109089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.264900, 33.201859, 33.098209>,  <29.214672, 33.436455, 33.091682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.264900, 33.201859, 33.098209>,  <29.348614, 32.810867, 33.109089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264900, 33.201859, 33.098209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636002, 0.157197, 0.755507,
		0.742767, 0.140815, -0.654575,
		-0.209284, 0.977477, -0.027202,
		29.202114, 33.495102, 33.090050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988531, 33.176430, 33.103546>,  <29.348614, 32.810867, 33.109089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988531, 33.176430, 33.103546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714386, 33.422314, 33.259705>,  <29.549900, 33.569843, 33.353401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.714386, 33.422314, 33.259705>,  <29.988531, 33.176430, 33.103546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714386, 33.422314, 33.259705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560999, 0.103893, 0.821271,
		0.464285, 0.781880, -0.416057,
		-0.685361, 0.614712, 0.390398,
		29.508778, 33.606728, 33.376823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331066, 33.819847, 33.354061>,  <29.988531, 33.176430, 33.103546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331066, 33.819847, 33.354061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996250, 33.716396, 33.546925>,  <29.795361, 33.654327, 33.662643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996250, 33.716396, 33.546925>,  <30.331066, 33.819847, 33.354061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996250, 33.716396, 33.546925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512038, -0.059719, 0.856884,
		-0.192819, 0.964130, 0.182414,
		-0.837041, -0.258627, 0.482156,
		29.745138, 33.638809, 33.691570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815327, 33.195835, 33.072456>,  <30.331066, 33.819847, 33.354061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815327, 33.195835, 33.072456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106482, 32.931156, 33.144379>,  <31.281176, 32.772346, 33.187531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106482, 32.931156, 33.144379>,  <30.815327, 33.195835, 33.072456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106482, 32.931156, 33.144379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656437, 0.596665, -0.461608,
		0.198163, 0.454030, 0.868671,
		0.727889, -0.661701, 0.179805,
		31.324848, 32.732647, 33.198318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424688, 33.489548, 33.380089>,  <30.815327, 33.195835, 33.072456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424688, 33.489548, 33.380089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586048, 33.168568, 33.204208>,  <31.682865, 32.975979, 33.098679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586048, 33.168568, 33.204208>,  <31.424688, 33.489548, 33.380089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586048, 33.168568, 33.204208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735016, 0.570389, -0.366618,
		0.544995, -0.175295, 0.819910,
		0.403401, -0.802451, -0.439704,
		31.707069, 32.927834, 33.072296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252007, 32.843109, 33.696217>,  <31.424688, 33.489548, 33.380089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252007, 32.843109, 33.696217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232094, 32.738102, 34.081673>,  <31.220146, 32.675098, 34.312946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232094, 32.738102, 34.081673>,  <31.252007, 32.843109, 33.696217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232094, 32.738102, 34.081673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902017, -0.426073, -0.069475,
		0.428820, 0.865764, 0.258005,
		-0.049780, -0.262517, 0.963642,
		31.217159, 32.659348, 34.370766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824028, 32.938873, 33.970482>,  <31.252007, 32.843109, 33.696217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824028, 32.938873, 33.970482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724648, 32.679607, 34.258411>,  <31.665020, 32.524048, 34.431171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724648, 32.679607, 34.258411>,  <31.824028, 32.938873, 33.970482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724648, 32.679607, 34.258411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942353, -0.333703, 0.024775,
		0.224150, 0.684486, 0.693712,
		-0.248451, -0.648168, 0.719827,
		31.650112, 32.485157, 34.474358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312748, 32.942467, 34.587322>,  <31.824028, 32.938873, 33.970482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312748, 32.942467, 34.587322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128544, 32.591343, 34.534599>,  <32.018021, 32.380669, 34.502964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128544, 32.591343, 34.534599>,  <32.312748, 32.942467, 34.587322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128544, 32.591343, 34.534599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881571, -0.469639, 0.047673,
		-0.103751, -0.094246, 0.990128,
		-0.460509, -0.877814, -0.131810,
		31.990391, 32.327999, 34.495056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617985, 32.418621, 35.061428>,  <32.312748, 32.942467, 34.587322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617985, 32.418621, 35.061428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510349, 32.219479, 34.731644>,  <32.445766, 32.099995, 34.533775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510349, 32.219479, 34.731644>,  <32.617985, 32.418621, 35.061428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510349, 32.219479, 34.731644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851278, -0.523325, 0.038168,
		-0.450461, -0.691573, 0.564634,
		-0.269091, -0.497854, -0.824458,
		32.429623, 32.070122, 34.484306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906460, 31.682673, 35.093693>,  <32.617985, 32.418621, 35.061428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906460, 31.682673, 35.093693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818054, 31.752769, 34.709934>,  <32.765011, 31.794827, 34.479679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818054, 31.752769, 34.709934>,  <32.906460, 31.682673, 35.093693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818054, 31.752769, 34.709934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919992, -0.289018, -0.264731,
		-0.323674, -0.941148, -0.097342,
		-0.221018, 0.175240, -0.959397,
		32.751747, 31.805342, 34.422115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472786, 31.582182, 34.654774>,  <32.906460, 31.682673, 35.093693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472786, 31.582182, 34.654774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745121, 31.321671, 34.520733>,  <33.908524, 31.165363, 34.440308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745121, 31.321671, 34.520733>,  <33.472786, 31.582182, 34.654774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745121, 31.321671, 34.520733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598735, 0.231359, 0.766805,
		-0.421875, -0.722708, 0.547462,
		0.680836, -0.651280, -0.335106,
		33.949371, 31.126286, 34.420200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551140, 31.136692, 35.169174>,  <33.472786, 31.582182, 34.654774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551140, 31.136692, 35.169174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886353, 31.113743, 34.952133>,  <34.087479, 31.099974, 34.821907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886353, 31.113743, 34.952133>,  <33.551140, 31.136692, 35.169174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886353, 31.113743, 34.952133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539691, 0.233457, 0.808846,
		0.080269, -0.970673, 0.226606,
		0.838028, -0.057372, -0.542603,
		34.137760, 31.096531, 34.789352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946144, 30.581581, 35.409901>,  <33.551140, 31.136692, 35.169174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946144, 30.581581, 35.409901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203396, 30.835119, 35.238026>,  <34.357746, 30.987242, 35.134903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203396, 30.835119, 35.238026>,  <33.946144, 30.581581, 35.409901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203396, 30.835119, 35.238026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478629, 0.105278, 0.871683,
		0.597749, -0.766261, -0.235670,
		0.643126, 0.633846, -0.429685,
		34.396332, 31.025272, 35.109119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640648, 30.366856, 35.649925>,  <33.946144, 30.581581, 35.409901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640648, 30.366856, 35.649925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647373, 30.746868, 35.525242>,  <34.651409, 30.974874, 35.450432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647373, 30.746868, 35.525242>,  <34.640648, 30.366856, 35.649925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647373, 30.746868, 35.525242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654466, 0.225231, 0.721765,
		0.755904, -0.216139, -0.617975,
		0.016814, 0.950029, -0.311709,
		34.652416, 31.031878, 35.431728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300316, 30.437838, 35.786503>,  <34.640648, 30.366856, 35.649925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300316, 30.437838, 35.786503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136162, 30.802296, 35.771561>,  <35.037670, 31.020971, 35.762596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136162, 30.802296, 35.771561>,  <35.300316, 30.437838, 35.786503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136162, 30.802296, 35.771561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567025, 0.287047, 0.772067,
		0.714189, 0.295664, -0.634443,
		-0.410387, 0.911146, -0.037357,
		35.013046, 31.075640, 35.760353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914345, 30.948458, 35.846703>,  <35.300316, 30.437838, 35.786503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914345, 30.948458, 35.846703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584908, 31.145775, 35.958675>,  <35.387245, 31.264166, 36.025860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584908, 31.145775, 35.958675>,  <35.914345, 30.948458, 35.846703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584908, 31.145775, 35.958675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447771, 0.262546, 0.854734,
		0.348141, 0.829295, -0.437113,
		-0.823589, 0.493295, 0.279931,
		35.337830, 31.293764, 36.042656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074921, 31.588047, 36.123558>,  <35.914345, 30.948458, 35.846703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074921, 31.588047, 36.123558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720070, 31.533529, 36.299934>,  <35.507160, 31.500818, 36.405762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720070, 31.533529, 36.299934>,  <36.074921, 31.588047, 36.123558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720070, 31.533529, 36.299934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400845, 0.246005, 0.882499,
		-0.228754, 0.959638, -0.163605,
		-0.887128, -0.136295, 0.440940,
		35.453930, 31.492641, 36.432217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143780, 32.083302, 36.600925>,  <36.074921, 31.588047, 36.123558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143780, 32.083302, 36.600925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834194, 31.848633, 36.696255>,  <35.648441, 31.707832, 36.753452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834194, 31.848633, 36.696255>,  <36.143780, 32.083302, 36.600925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834194, 31.848633, 36.696255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288207, 0.008760, 0.957528,
		-0.563840, 0.809779, 0.162302,
		-0.773964, -0.586670, 0.238323,
		35.602005, 31.672632, 36.767754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946819, 32.370525, 37.224499>,  <36.143780, 32.083302, 36.600925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946819, 32.370525, 37.224499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769878, 32.011974, 37.212944>,  <35.663715, 31.796844, 37.206013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769878, 32.011974, 37.212944>,  <35.946819, 32.370525, 37.224499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769878, 32.011974, 37.212944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224806, -0.142005, 0.964000,
		-0.868211, 0.419929, 0.264327,
		-0.442348, -0.896378, -0.028888,
		35.637173, 31.743061, 37.204277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616970, 32.365234, 37.852646>,  <35.946819, 32.370525, 37.224499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616970, 32.365234, 37.852646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644653, 31.981686, 37.742535>,  <35.661263, 31.751556, 37.676468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644653, 31.981686, 37.742535>,  <35.616970, 32.365234, 37.852646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644653, 31.981686, 37.742535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048769, -0.278861, 0.959092,
		-0.996409, -0.052956, -0.066064,
		0.069212, -0.958870, -0.275277,
		35.665417, 31.694025, 37.659950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106991, 31.914268, 38.277000>,  <35.616970, 32.365234, 37.852646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106991, 31.914268, 38.277000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399899, 31.677845, 38.141689>,  <35.575642, 31.535992, 38.060505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399899, 31.677845, 38.141689>,  <35.106991, 31.914268, 38.277000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399899, 31.677845, 38.141689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310275, -0.152616, 0.938317,
		-0.606226, -0.792059, 0.071635,
		0.732270, -0.591059, -0.338276,
		35.619579, 31.500528, 38.040207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105183, 31.331312, 38.661236>,  <35.106991, 31.914268, 38.277000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105183, 31.331312, 38.661236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474781, 31.364241, 38.511860>,  <35.696541, 31.383997, 38.422234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474781, 31.364241, 38.511860>,  <35.105183, 31.331312, 38.661236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474781, 31.364241, 38.511860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382401, -0.195829, 0.903006,
		0.001209, -0.977177, -0.212425,
		0.923996, 0.082323, -0.373437,
		35.751980, 31.388937, 38.399830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381348, 30.874859, 39.091057>,  <35.105183, 31.331312, 38.661236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381348, 30.874859, 39.091057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702404, 31.015242, 38.898140>,  <35.895039, 31.099470, 38.782391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702404, 31.015242, 38.898140>,  <35.381348, 30.874859, 39.091057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702404, 31.015242, 38.898140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592592, -0.377155, 0.711750,
		0.067894, -0.857079, -0.510691,
		0.802636, 0.350955, -0.482292,
		35.943195, 31.120529, 38.753452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947968, 30.318111, 38.997494>,  <35.381348, 30.874859, 39.091057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947968, 30.318111, 38.997494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113148, 30.681204, 39.027161>,  <36.212254, 30.899059, 39.044960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113148, 30.681204, 39.027161>,  <35.947968, 30.318111, 38.997494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113148, 30.681204, 39.027161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565178, -0.319264, 0.760687,
		0.714176, -0.272208, -0.644868,
		0.412948, 0.907730, 0.074165,
		36.237034, 30.953524, 39.049412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728882, 30.201160, 39.153488>,  <35.947968, 30.318111, 38.997494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728882, 30.201160, 39.153488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656776, 30.580311, 39.258587>,  <36.613514, 30.807800, 39.321648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656776, 30.580311, 39.258587>,  <36.728882, 30.201160, 39.153488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656776, 30.580311, 39.258587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567316, -0.118027, 0.814998,
		0.803529, 0.295977, -0.516468,
		-0.180263, 0.947875, 0.262751,
		36.602699, 30.864674, 39.337414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307720, 30.433643, 39.526928>,  <36.728882, 30.201160, 39.153488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307720, 30.433643, 39.526928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050774, 30.710632, 39.658287>,  <36.896606, 30.876825, 39.737103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050774, 30.710632, 39.658287>,  <37.307720, 30.433643, 39.526928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050774, 30.710632, 39.658287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404755, -0.057331, 0.912626,
		0.650797, 0.719161, -0.243455,
		-0.642368, 0.692474, 0.328395,
		36.858063, 30.918375, 39.756805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710808, 30.862007, 39.918430>,  <37.307720, 30.433643, 39.526928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710808, 30.862007, 39.918430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337219, 30.941591, 40.037167>,  <37.113068, 30.989342, 40.108410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337219, 30.941591, 40.037167>,  <37.710808, 30.862007, 39.918430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337219, 30.941591, 40.037167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312066, 0.049368, 0.948777,
		0.174115, 0.978763, -0.108197,
		-0.933969, 0.198961, 0.296843,
		37.057030, 31.001280, 40.126221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786423, 31.267515, 40.472084>,  <37.710808, 30.862007, 39.918430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786423, 31.267515, 40.472084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400467, 31.170551, 40.512550>,  <37.168896, 31.112373, 40.536831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400467, 31.170551, 40.512550>,  <37.786423, 31.267515, 40.472084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400467, 31.170551, 40.512550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121745, -0.071448, 0.989987,
		-0.232752, 0.967540, 0.098451,
		-0.964886, -0.242408, 0.101163,
		37.111000, 31.097830, 40.542900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467728, 31.792217, 40.880280>,  <37.786423, 31.267515, 40.472084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467728, 31.792217, 40.880280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243446, 31.463970, 40.924458>,  <37.108879, 31.267021, 40.950966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243446, 31.463970, 40.924458>,  <37.467728, 31.792217, 40.880280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243446, 31.463970, 40.924458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096727, 0.067559, 0.993016,
		-0.822347, 0.567472, 0.041496,
		-0.560705, -0.820617, 0.110447,
		37.075233, 31.217785, 40.957592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030045, 31.977570, 41.460075>,  <37.467728, 31.792217, 40.880280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030045, 31.977570, 41.460075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989433, 31.580658, 41.431580>,  <36.965069, 31.342510, 41.414482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989433, 31.580658, 41.431580>,  <37.030045, 31.977570, 41.460075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989433, 31.580658, 41.431580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027217, -0.074353, 0.996861,
		-0.994461, 0.099266, 0.034556,
		-0.101524, -0.992279, -0.071239,
		36.958977, 31.282974, 41.410210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424892, 31.860664, 41.896774>,  <37.030045, 31.977570, 41.460075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424892, 31.860664, 41.896774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628418, 31.518785, 41.855591>,  <36.750534, 31.313658, 41.830879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628418, 31.518785, 41.855591>,  <36.424892, 31.860664, 41.896774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628418, 31.518785, 41.855591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069843, -0.160190, 0.984612,
		-0.858039, -0.493792, -0.141202,
		0.508813, -0.854698, -0.102961,
		36.781063, 31.262377, 41.824703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096542, 31.406504, 42.357403>,  <36.424892, 31.860664, 41.896774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096542, 31.406504, 42.357403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443123, 31.224840, 42.274452>,  <36.651070, 31.115841, 42.224682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443123, 31.224840, 42.274452>,  <36.096542, 31.406504, 42.357403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443123, 31.224840, 42.274452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039049, -0.352452, 0.935015,
		-0.497739, -0.818239, -0.287646,
		0.866447, -0.454161, -0.207381,
		36.703056, 31.088593, 42.212238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068325, 30.789982, 42.753616>,  <36.096542, 31.406504, 42.357403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068325, 30.789982, 42.753616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456722, 30.837240, 42.670467>,  <36.689762, 30.865595, 42.620579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456722, 30.837240, 42.670467>,  <36.068325, 30.789982, 42.753616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456722, 30.837240, 42.670467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238253, -0.404973, 0.882741,
		0.020112, -0.906663, -0.421376,
		0.970994, 0.118148, -0.207870,
		36.748020, 30.872684, 42.608105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364368, 30.163023, 42.953053>,  <36.068325, 30.789982, 42.753616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364368, 30.163023, 42.953053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666065, 30.425079, 42.935539>,  <36.847084, 30.582314, 42.925030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666065, 30.425079, 42.935539>,  <36.364368, 30.163023, 42.953053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666065, 30.425079, 42.935539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414968, -0.423934, 0.805035,
		0.508848, -0.625358, -0.591609,
		0.754238, 0.655139, -0.043786,
		36.892338, 30.621620, 42.922405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952328, 29.720198, 43.039253>,  <36.364368, 30.163023, 42.953053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952328, 29.720198, 43.039253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026669, 30.098148, 43.147079>,  <37.071274, 30.324919, 43.211773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026669, 30.098148, 43.147079>,  <36.952328, 29.720198, 43.039253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026669, 30.098148, 43.147079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521668, -0.327370, 0.787840,
		0.832659, -0.005802, -0.553755,
		0.185854, 0.944878, 0.269562,
		37.082424, 30.381613, 43.227947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704865, 29.768360, 43.140541>,  <36.952328, 29.720198, 43.039253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704865, 29.768360, 43.140541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512726, 30.056915, 43.340088>,  <37.397442, 30.230049, 43.459816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512726, 30.056915, 43.340088>,  <37.704865, 29.768360, 43.140541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512726, 30.056915, 43.340088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491567, -0.249634, 0.834293,
		0.726384, 0.645974, -0.234700,
		-0.480343, 0.721388, 0.498869,
		37.368622, 30.273333, 43.489750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229698, 30.233315, 43.393890>,  <37.704865, 29.768360, 43.140541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229698, 30.233315, 43.393890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897972, 30.275225, 43.613438>,  <37.698936, 30.300371, 43.745167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897972, 30.275225, 43.613438>,  <38.229698, 30.233315, 43.393890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897972, 30.275225, 43.613438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541155, -0.094138, 0.835637,
		0.139225, 0.990030, 0.021370,
		-0.829318, 0.104778, 0.548866,
		37.649178, 30.306658, 43.778099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507362, 30.690136, 43.872276>,  <38.229698, 30.233315, 43.393890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507362, 30.690136, 43.872276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167034, 30.542555, 44.021935>,  <37.962837, 30.454006, 44.111729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167034, 30.542555, 44.021935>,  <38.507362, 30.690136, 43.872276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167034, 30.542555, 44.021935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472035, -0.223846, 0.852687,
		-0.230851, 0.902090, 0.364611,
		-0.850818, -0.368953, 0.374144,
		37.911789, 30.431870, 44.134178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332767, 31.093750, 44.464661>,  <38.507362, 30.690136, 43.872276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332767, 31.093750, 44.464661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133003, 30.750561, 44.512772>,  <38.013145, 30.544647, 44.541637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133003, 30.750561, 44.512772>,  <38.332767, 31.093750, 44.464661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133003, 30.750561, 44.512772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300028, -0.041035, 0.953047,
		-0.812753, 0.512054, 0.277909,
		-0.499415, -0.857973, 0.120280,
		37.983177, 30.493170, 44.548855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068890, 31.174103, 45.067158>,  <38.332767, 31.093750, 44.464661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068890, 31.174103, 45.067158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066959, 30.777620, 45.014259>,  <38.065800, 30.539730, 44.982521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066959, 30.777620, 45.014259>,  <38.068890, 31.174103, 45.067158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066959, 30.777620, 45.014259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171017, -0.131114, 0.976505,
		-0.985256, -0.017899, 0.170147,
		-0.004830, -0.991206, -0.132242,
		38.065510, 30.480259, 44.974586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849831, 30.907017, 45.758247>,  <38.068890, 31.174103, 45.067158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849831, 30.907017, 45.758247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012291, 30.582674, 45.589699>,  <38.109768, 30.388069, 45.488567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012291, 30.582674, 45.589699>,  <37.849831, 30.907017, 45.758247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012291, 30.582674, 45.589699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558062, -0.145053, 0.817023,
		-0.723609, -0.566986, 0.393595,
		0.406149, -0.810855, -0.421375,
		38.134136, 30.339417, 45.463287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736450, 30.301231, 46.149181>,  <37.849831, 30.907017, 45.758247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736450, 30.301231, 46.149181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070396, 30.228926, 45.941212>,  <38.270763, 30.185543, 45.816429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070396, 30.228926, 45.941212>,  <37.736450, 30.301231, 46.149181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070396, 30.228926, 45.941212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475144, -0.240225, 0.846481,
		-0.277907, -0.953739, -0.114671,
		0.834869, -0.180757, -0.519924,
		38.320858, 30.174698, 45.785233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070210, 29.851622, 46.505398>,  <37.736450, 30.301231, 46.149181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070210, 29.851622, 46.505398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363014, 29.911999, 46.239655>,  <38.538696, 29.948225, 46.080208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363014, 29.911999, 46.239655>,  <38.070210, 29.851622, 46.505398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363014, 29.911999, 46.239655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676473, -0.276754, 0.682489,
		-0.080845, -0.949012, -0.304698,
		0.732017, 0.150944, -0.664355,
		38.582619, 29.957281, 46.040348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434277, 29.239754, 46.448357>,  <38.070210, 29.851622, 46.505398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434277, 29.239754, 46.448357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676693, 29.532661, 46.324100>,  <38.822144, 29.708406, 46.249546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676693, 29.532661, 46.324100>,  <38.434277, 29.239754, 46.448357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676693, 29.532661, 46.324100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533811, -0.084887, 0.841332,
		0.589715, -0.675701, -0.442339,
		0.606038, 0.732272, -0.310637,
		38.858505, 29.752342, 46.230907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056446, 28.895193, 46.299507>,  <38.434277, 29.239754, 46.448357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056446, 28.895193, 46.299507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182957, 29.269424, 46.362316>,  <39.258865, 29.493963, 46.400002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182957, 29.269424, 46.362316>,  <39.056446, 28.895193, 46.299507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182957, 29.269424, 46.362316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322345, -0.261660, 0.909741,
		0.892222, -0.237118, -0.384338,
		0.316281, 0.935580, 0.157025,
		39.277840, 29.550098, 46.409424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781330, 28.862001, 46.532120>,  <39.056446, 28.895193, 46.299507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781330, 28.862001, 46.532120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636528, 29.213945, 46.655277>,  <39.549648, 29.425112, 46.729172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636528, 29.213945, 46.655277>,  <39.781330, 28.862001, 46.532120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636528, 29.213945, 46.655277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400804, -0.151287, 0.903587,
		0.841610, 0.450508, -0.297884,
		-0.362007, 0.879861, 0.307890,
		39.527927, 29.477903, 46.747643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360973, 29.157127, 46.885036>,  <39.781330, 28.862001, 46.532120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360973, 29.157127, 46.885036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020760, 29.317122, 47.021626>,  <39.816631, 29.413118, 47.103577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020760, 29.317122, 47.021626>,  <40.360973, 29.157127, 46.885036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020760, 29.317122, 47.021626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319157, -0.123498, 0.939620,
		0.418004, 0.908163, -0.022619,
		-0.850536, 0.399984, 0.341470,
		39.765598, 29.437117, 47.124065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630585, 29.537874, 47.444302>,  <40.360973, 29.157127, 46.885036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630585, 29.537874, 47.444302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237186, 29.492762, 47.500896>,  <40.001148, 29.465694, 47.534855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237186, 29.492762, 47.500896>,  <40.630585, 29.537874, 47.444302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237186, 29.492762, 47.500896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136489, 0.050925, 0.989332,
		-0.118785, 0.992314, -0.034691,
		-0.983494, -0.112783, 0.141489,
		39.942139, 29.458927, 47.543343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432354, 30.001398, 48.124012>,  <40.630585, 29.537874, 47.444302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432354, 30.001398, 48.124012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132957, 29.742334, 48.067032>,  <39.953320, 29.586897, 48.032845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132957, 29.742334, 48.067032>,  <40.432354, 30.001398, 48.124012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132957, 29.742334, 48.067032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169197, -0.021188, 0.985354,
		-0.641191, 0.761636, -0.093723,
		-0.748496, -0.647658, -0.142452,
		39.908409, 29.548037, 48.024296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935276, 30.266634, 48.564899>,  <40.432354, 30.001398, 48.124012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935276, 30.266634, 48.564899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817398, 29.889969, 48.499874>,  <39.746670, 29.663971, 48.460857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817398, 29.889969, 48.499874>,  <39.935276, 30.266634, 48.564899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817398, 29.889969, 48.499874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022106, -0.176793, 0.984000,
		-0.955334, 0.286390, 0.072917,
		-0.294699, -0.941661, -0.162565,
		39.728989, 29.607471, 48.451103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372665, 30.134169, 49.084778>,  <39.935276, 30.266634, 48.564899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372665, 30.134169, 49.084778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535740, 29.789103, 48.965042>,  <39.633583, 29.582064, 48.893200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535740, 29.789103, 48.965042>,  <39.372665, 30.134169, 49.084778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535740, 29.789103, 48.965042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028236, -0.315754, 0.948421,
		-0.912686, -0.395109, -0.104371,
		0.407685, -0.862664, -0.299340,
		39.658047, 29.530304, 48.875240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005844, 29.438395, 49.370449>,  <39.372665, 30.134169, 49.084778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005844, 29.438395, 49.370449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396889, 29.374897, 49.315205>,  <39.631516, 29.336798, 49.282059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396889, 29.374897, 49.315205>,  <39.005844, 29.438395, 49.370449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396889, 29.374897, 49.315205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085506, -0.300004, 0.950098,
		-0.192255, -0.940637, -0.279714,
		0.977613, -0.158744, -0.138108,
		39.690174, 29.327274, 49.273773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111355, 28.787569, 49.727543>,  <39.005844, 29.438395, 49.370449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111355, 28.787569, 49.727543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438084, 29.014297, 49.684628>,  <39.634121, 29.150335, 49.658878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438084, 29.014297, 49.684628>,  <39.111355, 28.787569, 49.727543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438084, 29.014297, 49.684628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137174, -0.010195, 0.990495,
		0.560340, -0.823778, -0.086080,
		0.816825, 0.566822, -0.107288,
		39.683132, 29.184343, 49.652443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484119, 29.170317, 50.359112>,  <39.111355, 28.787569, 49.727543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484119, 29.170317, 50.359112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520241, 28.799442, 50.504532>,  <39.541916, 28.576918, 50.591785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520241, 28.799442, 50.504532>,  <39.484119, 29.170317, 50.359112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520241, 28.799442, 50.504532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992221, 0.115171, 0.047258,
		-0.085688, 0.356453, 0.930376,
		0.090307, -0.927188, 0.363549,
		39.547333, 28.521286, 50.613598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941753, 29.221498, 50.843559>,  <39.484119, 29.170317, 50.359112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941753, 29.221498, 50.843559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961079, 28.827324, 50.778343>,  <39.972675, 28.590820, 50.739212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961079, 28.827324, 50.778343>,  <39.941753, 29.221498, 50.843559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961079, 28.827324, 50.778343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992622, 0.029195, 0.117686,
		-0.111212, -0.167525, 0.979575,
		0.048314, -0.985435, -0.163042,
		39.975574, 28.531693, 50.729431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376106, 28.653358, 51.013401>,  <39.941753, 29.221498, 50.843559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376106, 28.653358, 51.013401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682907, 28.616190, 51.267353>,  <40.866989, 28.593889, 51.419724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682907, 28.616190, 51.267353>,  <40.376106, 28.653358, 51.013401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682907, 28.616190, 51.267353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450683, -0.782306, 0.429978,
		0.456715, -0.615924, -0.641911,
		0.767005, -0.092921, 0.634878,
		40.913010, 28.588314, 51.457817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803917, 28.004333, 50.952217>,  <40.376106, 28.653358, 51.013401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803917, 28.004333, 50.952217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758820, 28.180494, 51.308495>,  <40.731762, 28.286190, 51.522263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758820, 28.180494, 51.308495>,  <40.803917, 28.004333, 50.952217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758820, 28.180494, 51.308495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546680, -0.776032, 0.314507,
		0.829716, -0.451464, 0.328255,
		-0.112748, 0.440402, 0.890693,
		40.724995, 28.312614, 51.575703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922523, 27.300287, 50.680885>,  <40.803917, 28.004333, 50.952217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922523, 27.300287, 50.680885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208130, 27.044548, 50.566757>,  <41.379494, 26.891104, 50.498280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208130, 27.044548, 50.566757>,  <40.922523, 27.300287, 50.680885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208130, 27.044548, 50.566757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094878, 0.315411, -0.944200,
		0.693667, 0.701248, 0.164549,
		0.714019, -0.639349, -0.285324,
		41.422337, 26.852743, 50.481159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495396, 27.658318, 50.418358>,  <40.922523, 27.300287, 50.680885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495396, 27.658318, 50.418358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481926, 27.296463, 50.248417>,  <41.473846, 27.079351, 50.146450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.481926, 27.296463, 50.248417>,  <41.495396, 27.658318, 50.418358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481926, 27.296463, 50.248417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050698, 0.426096, -0.903256,
		0.998146, -0.008873, -0.060210,
		-0.033670, -0.904634, -0.424857,
		41.471825, 27.025072, 50.120960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.988556, 27.612942, 49.799770>,  <41.495396, 27.658318, 50.418358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.988556, 27.612942, 49.799770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716221, 27.325495, 49.743141>,  <41.552818, 27.153027, 49.709164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716221, 27.325495, 49.743141>,  <41.988556, 27.612942, 49.799770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716221, 27.325495, 49.743141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042602, 0.231813, -0.971827,
		0.731191, -0.655628, -0.188443,
		-0.680841, -0.718620, -0.141569,
		41.511967, 27.109909, 49.700672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227398, 27.147947, 49.220837>,  <41.988556, 27.612942, 49.799770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227398, 27.147947, 49.220837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831951, 27.181805, 49.270599>,  <41.594685, 27.202120, 49.300457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831951, 27.181805, 49.270599>,  <42.227398, 27.147947, 49.220837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831951, 27.181805, 49.270599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097169, 0.272147, -0.957337,
		-0.114892, -0.958525, -0.260823,
		-0.988614, 0.084646, 0.124407,
		41.535366, 27.207199, 49.307922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947224, 26.715761, 48.764553>,  <42.227398, 27.147947, 49.220837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947224, 26.715761, 48.764553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703415, 27.026142, 48.829517>,  <41.557129, 27.212372, 48.868496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703415, 27.026142, 48.829517>,  <41.947224, 26.715761, 48.764553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703415, 27.026142, 48.829517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051302, 0.243048, -0.968657,
		-0.791108, -0.582085, -0.187951,
		-0.609522, 0.775954, 0.162415,
		41.520557, 27.258928, 48.878242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371761, 26.728292, 48.238171>,  <41.947224, 26.715761, 48.764553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371761, 26.728292, 48.238171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450260, 27.097445, 48.370705>,  <41.497360, 27.318935, 48.450226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450260, 27.097445, 48.370705>,  <41.371761, 26.728292, 48.238171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450260, 27.097445, 48.370705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056334, 0.347959, -0.935816,
		-0.978936, 0.164983, 0.120274,
		0.196244, 0.922879, 0.331335,
		41.509132, 27.374308, 48.470104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870834, 27.118635, 47.889553>,  <41.371761, 26.728292, 48.238171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870834, 27.118635, 47.889553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149628, 27.381134, 48.005177>,  <41.316902, 27.538633, 48.074551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149628, 27.381134, 48.005177>,  <40.870834, 27.118635, 47.889553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149628, 27.381134, 48.005177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038902, 0.437108, -0.898567,
		-0.716033, 0.615041, 0.330186,
		0.696982, 0.656249, 0.289057,
		41.358723, 27.578009, 48.091892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607349, 27.778900, 47.719643>,  <40.870834, 27.118635, 47.889553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607349, 27.778900, 47.719643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002487, 27.828922, 47.756588>,  <41.239571, 27.858936, 47.778755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002487, 27.828922, 47.756588>,  <40.607349, 27.778900, 47.719643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002487, 27.828922, 47.756588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023750, 0.465727, -0.884609,
		-0.153641, 0.876047, 0.457095,
		0.987841, 0.125056, 0.092361,
		41.298840, 27.866440, 47.784298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805981, 28.429546, 47.401398>,  <40.607349, 27.778900, 47.719643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805981, 28.429546, 47.401398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178230, 28.283527, 47.411812>,  <41.401581, 28.195917, 47.418060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178230, 28.283527, 47.411812>,  <40.805981, 28.429546, 47.401398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178230, 28.283527, 47.411812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182724, 0.401839, -0.897295,
		0.317092, 0.839802, 0.440664,
		0.930626, -0.365045, 0.026032,
		41.457417, 28.174013, 47.419621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263386, 29.014143, 47.176338>,  <40.805981, 28.429546, 47.401398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263386, 29.014143, 47.176338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460983, 28.670300, 47.124115>,  <41.579540, 28.463993, 47.092781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460983, 28.670300, 47.124115>,  <41.263386, 29.014143, 47.176338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460983, 28.670300, 47.124115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191711, 0.254146, -0.947975,
		0.848069, 0.443262, 0.290342,
		0.493991, -0.859609, -0.130555,
		41.609180, 28.412416, 47.084949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930668, 29.241497, 46.900738>,  <41.263386, 29.014143, 47.176338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930668, 29.241497, 46.900738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879505, 28.855385, 46.809635>,  <41.848808, 28.623718, 46.754974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879505, 28.855385, 46.809635>,  <41.930668, 29.241497, 46.900738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879505, 28.855385, 46.809635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251696, 0.190537, -0.948865,
		0.959317, -0.178690, 0.218587,
		-0.127904, -0.965280, -0.227761,
		41.841133, 28.565802, 46.741306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483864, 29.135096, 46.492477>,  <41.930668, 29.241497, 46.900738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483864, 29.135096, 46.492477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240223, 28.829531, 46.407219>,  <42.094040, 28.646191, 46.356064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240223, 28.829531, 46.407219>,  <42.483864, 29.135096, 46.492477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240223, 28.829531, 46.407219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310897, 0.017252, -0.950287,
		0.729614, -0.645088, 0.226991,
		-0.609103, -0.763914, -0.213143,
		42.057491, 28.600357, 46.343277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849499, 28.602299, 46.064648>,  <42.483864, 29.135096, 46.492477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849499, 28.602299, 46.064648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467335, 28.534658, 45.967819>,  <42.238037, 28.494074, 45.909721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.467335, 28.534658, 45.967819>,  <42.849499, 28.602299, 46.064648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.467335, 28.534658, 45.967819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214951, 0.163793, -0.962792,
		0.202462, -0.971893, -0.120140,
		-0.955408, -0.169105, -0.242071,
		42.180714, 28.483929, 45.895199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994873, 28.430496, 45.427784>,  <42.849499, 28.602299, 46.064648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994873, 28.430496, 45.427784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596203, 28.459316, 45.412586>,  <42.357002, 28.476608, 45.403465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596203, 28.459316, 45.412586>,  <42.994873, 28.430496, 45.427784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596203, 28.459316, 45.412586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042814, 0.066514, -0.996867,
		-0.069297, -0.995181, -0.069377,
		-0.996677, 0.072050, -0.037998,
		42.297199, 28.480930, 45.401188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820236, 28.137205, 44.856194>,  <42.994873, 28.430496, 45.427784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820236, 28.137205, 44.856194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495598, 28.362516, 44.918205>,  <42.300816, 28.497704, 44.955414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495598, 28.362516, 44.918205>,  <42.820236, 28.137205, 44.856194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495598, 28.362516, 44.918205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026829, 0.229147, -0.973022,
		-0.583607, -0.793857, -0.170862,
		-0.811593, 0.563278, 0.155031,
		42.252121, 28.531500, 44.964714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395859, 28.020546, 44.292160>,  <42.820236, 28.137205, 44.856194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395859, 28.020546, 44.292160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224365, 28.341921, 44.457409>,  <42.121468, 28.534746, 44.556561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224365, 28.341921, 44.457409>,  <42.395859, 28.020546, 44.292160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224365, 28.341921, 44.457409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207422, 0.357529, -0.910576,
		-0.879296, -0.476089, 0.013364,
		-0.428737, 0.803438, 0.413125,
		42.095745, 28.582952, 44.581345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649574, 28.072721, 44.070469>,  <42.395859, 28.020546, 44.292160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649574, 28.072721, 44.070469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792351, 28.431576, 44.174576>,  <41.878017, 28.646889, 44.237041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.792351, 28.431576, 44.174576>,  <41.649574, 28.072721, 44.070469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792351, 28.431576, 44.174576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336925, 0.383515, -0.859882,
		-0.871248, 0.219237, 0.439160,
		0.356943, 0.897135, 0.260270,
		41.899433, 28.700716, 44.252655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055664, 28.504894, 44.176479>,  <41.649574, 28.072721, 44.070469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055664, 28.504894, 44.176479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389874, 28.697014, 44.069733>,  <41.590401, 28.812286, 44.005684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389874, 28.697014, 44.069733>,  <41.055664, 28.504894, 44.176479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389874, 28.697014, 44.069733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487146, 0.422881, -0.764108,
		-0.254150, 0.768430, 0.587302,
		0.835522, 0.480300, -0.266862,
		41.640530, 28.841105, 43.989674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646057, 28.950695, 43.838688>,  <41.055664, 28.504894, 44.176479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646057, 28.950695, 43.838688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018631, 29.039843, 43.723614>,  <41.242176, 29.093330, 43.654568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018631, 29.039843, 43.723614>,  <40.646057, 28.950695, 43.838688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018631, 29.039843, 43.723614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357436, 0.411778, -0.838259,
		-0.068358, 0.883612, 0.463204,
		0.931433, 0.222868, -0.287686,
		41.298061, 29.106703, 43.637306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593578, 29.627756, 43.512817>,  <40.646057, 28.950695, 43.838688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593578, 29.627756, 43.512817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939785, 29.468159, 43.391697>,  <41.147507, 29.372400, 43.319023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939785, 29.468159, 43.391697>,  <40.593578, 29.627756, 43.512817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939785, 29.468159, 43.391697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210144, 0.259508, -0.942600,
		0.454672, 0.879466, 0.140761,
		0.865513, -0.398993, -0.302806,
		41.199440, 29.348461, 43.300854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696190, 30.030088, 43.011139>,  <40.593578, 29.627756, 43.512817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696190, 30.030088, 43.011139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919720, 29.705969, 42.940567>,  <41.053837, 29.511497, 42.898224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919720, 29.705969, 42.940567>,  <40.696190, 30.030088, 43.011139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919720, 29.705969, 42.940567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255277, 0.034335, -0.966258,
		0.789016, 0.585010, -0.187664,
		0.558827, -0.810299, -0.176431,
		41.087368, 29.462879, 42.887638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009018, 30.255409, 42.396469>,  <40.696190, 30.030088, 43.011139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009018, 30.255409, 42.396469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070206, 29.861389, 42.428165>,  <41.106918, 29.624977, 42.447182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070206, 29.861389, 42.428165>,  <41.009018, 30.255409, 42.396469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070206, 29.861389, 42.428165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247476, -0.115812, -0.961948,
		0.956743, 0.127534, -0.261491,
		0.152965, -0.985049, 0.079241,
		41.116096, 29.565874, 42.451939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286304, 30.081036, 41.742920>,  <41.009018, 30.255409, 42.396469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286304, 30.081036, 41.742920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143482, 29.743389, 41.902905>,  <41.057789, 29.540800, 41.998898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143482, 29.743389, 41.902905>,  <41.286304, 30.081036, 41.742920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143482, 29.743389, 41.902905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491493, -0.194341, -0.848921,
		0.794319, -0.499696, -0.345487,
		-0.357060, -0.844118, 0.399966,
		41.036366, 29.490154, 42.022896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464207, 29.572018, 41.325542>,  <41.286304, 30.081036, 41.742920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464207, 29.572018, 41.325542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147808, 29.429289, 41.524338>,  <40.957970, 29.343651, 41.643616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.147808, 29.429289, 41.524338>,  <41.464207, 29.572018, 41.325542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147808, 29.429289, 41.524338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465092, -0.177080, -0.867371,
		0.397503, -0.917235, -0.025885,
		-0.791000, -0.356822, 0.496988,
		40.910507, 29.322243, 41.673435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308037, 29.021832, 40.901672>,  <41.464207, 29.572018, 41.325542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308037, 29.021832, 40.901672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979630, 29.125364, 41.105217>,  <40.782585, 29.187485, 41.227345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.979630, 29.125364, 41.105217>,  <41.308037, 29.021832, 40.901672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.979630, 29.125364, 41.105217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569603, -0.311196, -0.760730,
		-0.038545, -0.914420, 0.402928,
		-0.821016, 0.258831, 0.508861,
		40.733326, 29.203014, 41.257874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814003, 28.413155, 40.814022>,  <41.308037, 29.021832, 40.901672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814003, 28.413155, 40.814022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605724, 28.729605, 40.942390>,  <40.480755, 28.919476, 41.019413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605724, 28.729605, 40.942390>,  <40.814003, 28.413155, 40.814022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605724, 28.729605, 40.942390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610215, -0.081980, -0.787983,
		-0.597083, -0.606136, 0.525444,
		-0.520700, 0.791125, 0.320924,
		40.449512, 28.966942, 41.038666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099674, 28.162918, 40.713535>,  <40.814003, 28.413155, 40.814022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099674, 28.162918, 40.713535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076881, 28.562202, 40.720737>,  <40.063206, 28.801773, 40.725060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076881, 28.562202, 40.720737>,  <40.099674, 28.162918, 40.713535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076881, 28.562202, 40.720737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645422, -0.023076, -0.763478,
		-0.761698, -0.055128, 0.645583,
		-0.056986, 0.998212, 0.018004,
		40.059784, 28.861666, 40.726139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438423, 28.233568, 40.418686>,  <40.099674, 28.162918, 40.713535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438423, 28.233568, 40.418686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610775, 28.594269, 40.404877>,  <39.714188, 28.810688, 40.396591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610775, 28.594269, 40.404877>,  <39.438423, 28.233568, 40.418686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610775, 28.594269, 40.404877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654115, 0.285741, -0.700347,
		-0.621673, 0.324345, 0.712967,
		0.430878, 0.901750, -0.034521,
		39.740040, 28.864794, 40.394520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849205, 28.643238, 40.388809>,  <39.438423, 28.233568, 40.418686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849205, 28.643238, 40.388809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147457, 28.863428, 40.238602>,  <39.326408, 28.995543, 40.148476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147457, 28.863428, 40.238602>,  <38.849205, 28.643238, 40.388809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147457, 28.863428, 40.238602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578414, 0.254854, -0.774910,
		-0.330865, 0.795002, 0.508429,
		0.745631, 0.550473, -0.375518,
		39.371147, 29.028570, 40.125946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526604, 29.183311, 40.183075>,  <38.849205, 28.643238, 40.388809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526604, 29.183311, 40.183075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873455, 29.155680, 39.985767>,  <39.081566, 29.139101, 39.867382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873455, 29.155680, 39.985767>,  <38.526604, 29.183311, 40.183075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873455, 29.155680, 39.985767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451983, 0.306976, -0.837542,
		0.209279, 0.949207, 0.234965,
		0.867129, -0.069080, -0.493269,
		39.133595, 29.134956, 39.837788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628689, 29.785524, 39.800953>,  <38.526604, 29.183311, 40.183075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628689, 29.785524, 39.800953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861565, 29.513760, 39.622311>,  <39.001289, 29.350700, 39.515125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861565, 29.513760, 39.622311>,  <38.628689, 29.785524, 39.800953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861565, 29.513760, 39.622311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463652, 0.173793, -0.868805,
		0.667894, 0.712877, -0.213831,
		0.582189, -0.679413, -0.446603,
		39.036221, 29.309937, 39.488331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716019, 30.098265, 39.195057>,  <38.628689, 29.785524, 39.800953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716019, 30.098265, 39.195057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861076, 29.736507, 39.105110>,  <38.948112, 29.519453, 39.051144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861076, 29.736507, 39.105110>,  <38.716019, 30.098265, 39.195057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861076, 29.736507, 39.105110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306229, 0.112246, -0.945317,
		0.880177, 0.411676, -0.236245,
		0.362647, -0.904391, -0.224864,
		38.969872, 29.465191, 39.037651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245796, 30.080645, 38.599045>,  <38.716019, 30.098265, 39.195057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245796, 30.080645, 38.599045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060062, 29.726877, 38.617783>,  <38.948624, 29.514616, 38.629025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060062, 29.726877, 38.617783>,  <39.245796, 30.080645, 38.599045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060062, 29.726877, 38.617783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303804, 0.109371, -0.946436,
		0.831923, -0.453696, -0.319475,
		-0.464336, -0.884419, 0.046847,
		38.920761, 29.461552, 38.631836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200550, 30.074900, 38.008579>,  <39.245796, 30.080645, 38.599045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200550, 30.074900, 38.008579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961525, 29.774000, 38.119598>,  <38.818108, 29.593460, 38.186211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961525, 29.774000, 38.119598>,  <39.200550, 30.074900, 38.008579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961525, 29.774000, 38.119598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453001, 0.031119, -0.890967,
		0.661593, -0.658143, -0.359365,
		-0.597566, -0.752250, 0.277551,
		38.782253, 29.548325, 38.202866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356907, 29.527020, 37.602612>,  <39.200550, 30.074900, 38.008579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356907, 29.527020, 37.602612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979515, 29.479984, 37.726555>,  <38.753078, 29.451763, 37.800922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979515, 29.479984, 37.726555>,  <39.356907, 29.527020, 37.602612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979515, 29.479984, 37.726555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304922, -0.058356, -0.950588,
		0.129864, -0.991346, 0.019202,
		-0.943482, -0.117592, 0.309862,
		38.696472, 29.444708, 37.819515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099625, 28.952379, 37.166199>,  <39.356907, 29.527020, 37.602612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099625, 28.952379, 37.166199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774635, 29.133160, 37.313507>,  <38.579639, 29.241627, 37.401894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.774635, 29.133160, 37.313507>,  <39.099625, 28.952379, 37.166199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774635, 29.133160, 37.313507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501111, -0.218550, -0.837331,
		-0.297946, -0.864857, 0.404044,
		-0.812476, 0.451950, 0.368273,
		38.530891, 29.268744, 37.423988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534012, 28.477169, 37.146385>,  <39.099625, 28.952379, 37.166199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534012, 28.477169, 37.146385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341713, 28.827576, 37.161751>,  <38.226334, 29.037819, 37.170971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.341713, 28.827576, 37.161751>,  <38.534012, 28.477169, 37.146385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341713, 28.827576, 37.161751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485472, -0.229434, -0.843610,
		-0.730202, -0.424214, 0.535581,
		-0.480751, 0.876015, 0.038411,
		38.197487, 29.090380, 37.173275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864552, 28.334150, 36.895870>,  <38.534012, 28.477169, 37.146385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864552, 28.334150, 36.895870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868092, 28.732880, 36.864216>,  <37.870216, 28.972118, 36.845222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868092, 28.732880, 36.864216>,  <37.864552, 28.334150, 36.895870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868092, 28.732880, 36.864216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460186, -0.066201, -0.885351,
		-0.887778, 0.044257, 0.458139,
		0.008854, 0.996824, -0.079138,
		37.870747, 29.031927, 36.840473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131958, 28.563763, 36.752079>,  <37.864552, 28.334150, 36.895870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131958, 28.563763, 36.752079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364414, 28.871004, 36.644531>,  <37.503887, 29.055349, 36.580002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364414, 28.871004, 36.644531>,  <37.131958, 28.563763, 36.752079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364414, 28.871004, 36.644531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542895, 0.119788, -0.831213,
		-0.606251, 0.629020, 0.486613,
		0.581140, 0.768104, -0.268871,
		37.538757, 29.101435, 36.563869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739059, 29.085293, 36.640968>,  <37.131958, 28.563763, 36.752079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739059, 29.085293, 36.640968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049030, 29.195869, 36.413612>,  <37.235012, 29.262215, 36.277199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049030, 29.195869, 36.413612>,  <36.739059, 29.085293, 36.640968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049030, 29.195869, 36.413612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617393, 0.138558, -0.774356,
		-0.135310, 0.950990, 0.278046,
		0.774931, 0.276441, -0.568386,
		37.281509, 29.278801, 36.243095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552845, 29.719637, 36.304569>,  <36.739059, 29.085293, 36.640968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552845, 29.719637, 36.304569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856003, 29.581451, 36.083206>,  <37.037895, 29.498541, 35.950390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856003, 29.581451, 36.083206>,  <36.552845, 29.719637, 36.304569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856003, 29.581451, 36.083206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494393, 0.249325, -0.832714,
		0.425650, 0.904705, 0.018166,
		0.757890, -0.345463, -0.553405,
		37.083370, 29.477812, 35.917183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471432, 30.139359, 35.742363>,  <36.552845, 29.719637, 36.304569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471432, 30.139359, 35.742363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698456, 29.830059, 35.629250>,  <36.834671, 29.644480, 35.561382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698456, 29.830059, 35.629250>,  <36.471432, 30.139359, 35.742363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698456, 29.830059, 35.629250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318873, 0.110215, -0.941368,
		0.759077, 0.624453, -0.184014,
		0.567559, -0.773247, -0.282783,
		36.868725, 29.598085, 35.544415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811005, 30.390902, 35.185963>,  <36.471432, 30.139359, 35.742363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811005, 30.390902, 35.185963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811413, 29.990904, 35.184757>,  <36.811657, 29.750906, 35.184036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811413, 29.990904, 35.184757>,  <36.811005, 30.390902, 35.185963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811413, 29.990904, 35.184757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318321, 0.002529, -0.947979,
		0.947982, 0.001929, -0.318317,
		0.001024, -0.999995, -0.003012,
		36.811718, 29.690905, 35.183853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333012, 30.645555, 34.701439>,  <36.811005, 30.390902, 35.185963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333012, 30.645555, 34.701439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633965, 30.746588, 34.458092>,  <37.814537, 30.807207, 34.312084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633965, 30.746588, 34.458092>,  <37.333012, 30.645555, 34.701439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633965, 30.746588, 34.458092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650352, -0.138073, 0.746979,
		0.104673, -0.957673, -0.268152,
		0.752387, 0.252582, -0.608372,
		37.859680, 30.822363, 34.275581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912624, 30.194351, 34.880463>,  <37.333012, 30.645555, 34.701439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912624, 30.194351, 34.880463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084248, 30.514509, 34.712997>,  <38.187222, 30.706604, 34.612518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084248, 30.514509, 34.712997>,  <37.912624, 30.194351, 34.880463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084248, 30.514509, 34.712997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628569, 0.068293, 0.774750,
		0.648697, -0.595572, -0.473801,
		0.429062, 0.800394, -0.418659,
		38.212967, 30.754627, 34.587399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562485, 30.088634, 35.061115>,  <37.912624, 30.194351, 34.880463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562485, 30.088634, 35.061115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528545, 30.476391, 34.968960>,  <38.508183, 30.709045, 34.913666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.528545, 30.476391, 34.968960>,  <38.562485, 30.088634, 35.061115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.528545, 30.476391, 34.968960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736014, 0.216839, 0.641299,
		0.671628, -0.115157, -0.731885,
		-0.084852, 0.969391, -0.230392,
		38.503090, 30.767208, 34.899841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183968, 30.283714, 34.832191>,  <38.562485, 30.088634, 35.061115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183968, 30.283714, 34.832191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999645, 30.622061, 34.939648>,  <38.889053, 30.825068, 35.004124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999645, 30.622061, 34.939648>,  <39.183968, 30.283714, 34.832191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999645, 30.622061, 34.939648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832623, 0.307241, 0.460806,
		0.307241, 0.436022, -0.845865,
		-0.460806, 0.845865, 0.268645,
		38.861404, 30.875820, 35.020241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562984, 30.873770, 34.596951>,  <39.183968, 30.283714, 34.832191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562984, 30.873770, 34.596951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360283, 30.996506, 34.919205>,  <39.238663, 31.070147, 35.112556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360283, 30.996506, 34.919205>,  <39.562984, 30.873770, 34.596951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360283, 30.996506, 34.919205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854422, 0.303144, 0.421979,
		-0.114744, 0.902194, -0.415789,
		-0.506751, 0.306839, 0.805638,
		39.208260, 31.088558, 35.160896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932480, 31.378048, 34.805927>,  <39.562984, 30.873770, 34.596951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932480, 31.378048, 34.805927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697285, 31.343639, 35.127640>,  <39.556168, 31.322994, 35.320667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.697285, 31.343639, 35.127640>,  <39.932480, 31.378048, 34.805927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697285, 31.343639, 35.127640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776392, 0.218909, 0.591011,
		-0.226904, 0.971946, -0.061929,
		-0.587988, -0.086022, 0.804283,
		39.520889, 31.317833, 35.368923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042450, 31.951565, 35.258652>,  <39.932480, 31.378048, 34.805927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042450, 31.951565, 35.258652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914768, 31.652472, 35.491550>,  <39.838158, 31.473017, 35.631290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914768, 31.652472, 35.491550>,  <40.042450, 31.951565, 35.258652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914768, 31.652472, 35.491550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586278, 0.326899, 0.741226,
		-0.744572, 0.577958, 0.334031,
		-0.319203, -0.747731, 0.582244,
		39.819008, 31.428152, 35.666225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987640, 32.232227, 35.943081>,  <40.042450, 31.951565, 35.258652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987640, 32.232227, 35.943081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021622, 31.835651, 35.982758>,  <40.042011, 31.597706, 36.006561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021622, 31.835651, 35.982758>,  <39.987640, 32.232227, 35.943081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021622, 31.835651, 35.982758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580350, 0.130153, 0.803899,
		-0.809924, -0.010726, 0.586436,
		0.084949, -0.991436, 0.099189,
		40.047108, 31.538221, 36.012516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649525, 32.046703, 36.560520>,  <39.987640, 32.232227, 35.943081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649525, 32.046703, 36.560520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919514, 31.764933, 36.472706>,  <40.081509, 31.595871, 36.420017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919514, 31.764933, 36.472706>,  <39.649525, 32.046703, 36.560520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919514, 31.764933, 36.472706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309486, 0.000196, 0.950904,
		-0.669797, -0.709778, 0.218142,
		0.674974, -0.704425, -0.219536,
		40.122005, 31.553606, 36.406845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827457, 31.891233, 37.256493>,  <39.649525, 32.046703, 36.560520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827457, 31.891233, 37.256493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091904, 31.685467, 37.038021>,  <40.250572, 31.562006, 36.906940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091904, 31.685467, 37.038021>,  <39.827457, 31.891233, 37.256493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091904, 31.685467, 37.038021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604000, -0.066956, 0.794167,
		-0.445103, -0.854923, 0.266442,
		0.661111, -0.514417, -0.546175,
		40.290237, 31.531141, 36.874168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006111, 31.364912, 37.591743>,  <39.827457, 31.891233, 37.256493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006111, 31.364912, 37.591743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319920, 31.364950, 37.343700>,  <40.508205, 31.364973, 37.194874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.319920, 31.364950, 37.343700>,  <40.006111, 31.364912, 37.591743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319920, 31.364950, 37.343700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617543, -0.090912, 0.781265,
		-0.056298, -0.995859, -0.071384,
		0.784520, 0.000099, -0.620104,
		40.555275, 31.364979, 37.157669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385632, 30.819986, 37.807163>,  <40.006111, 31.364912, 37.591743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385632, 30.819986, 37.807163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638783, 31.030056, 37.579601>,  <40.790672, 31.156097, 37.443066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638783, 31.030056, 37.579601>,  <40.385632, 30.819986, 37.807163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638783, 31.030056, 37.579601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646991, 0.044876, 0.761176,
		0.425282, -0.849809, -0.311383,
		0.632881, 0.525177, -0.568904,
		40.828648, 31.187609, 37.408932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135380, 30.503117, 37.835922>,  <40.385632, 30.819986, 37.807163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135380, 30.503117, 37.835922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198128, 30.881210, 37.721436>,  <41.235775, 31.108067, 37.652744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198128, 30.881210, 37.721436>,  <41.135380, 30.503117, 37.835922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198128, 30.881210, 37.721436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751795, 0.073654, 0.655271,
		0.640467, -0.317968, -0.699070,
		0.156866, 0.945236, -0.286220,
		41.245186, 31.164782, 37.635571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799664, 30.553967, 37.636311>,  <41.135380, 30.503117, 37.835922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799664, 30.553967, 37.636311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696438, 30.933550, 37.708847>,  <41.634502, 31.161299, 37.752369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.696438, 30.933550, 37.708847>,  <41.799664, 30.553967, 37.636311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696438, 30.933550, 37.708847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808328, 0.109273, 0.578503,
		0.529158, 0.295874, -0.795267,
		-0.258065, 0.948956, 0.181340,
		41.619019, 31.218237, 37.763248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410431, 30.858028, 37.575825>,  <41.799664, 30.553967, 37.636311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410431, 30.858028, 37.575825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165279, 31.101946, 37.776833>,  <42.018188, 31.248297, 37.897438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165279, 31.101946, 37.776833>,  <42.410431, 30.858028, 37.575825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165279, 31.101946, 37.776833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708372, 0.142217, 0.691364,
		0.350122, 0.779697, -0.519122,
		-0.612882, 0.609793, 0.502522,
		41.981415, 31.284883, 37.927589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906120, 31.240715, 38.006981>,  <42.410431, 30.858028, 37.575825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906120, 31.240715, 38.006981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559605, 31.324923, 38.188187>,  <42.351696, 31.375446, 38.296909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559605, 31.324923, 38.188187>,  <42.906120, 31.240715, 38.006981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559605, 31.324923, 38.188187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475469, 0.069379, 0.876993,
		0.153192, 0.975125, -0.160197,
		-0.866292, 0.210517, 0.453013,
		42.299717, 31.388079, 38.324089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879868, 31.827847, 38.447826>,  <42.906120, 31.240715, 38.006981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879868, 31.827847, 38.447826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621120, 31.553616, 38.581421>,  <42.465874, 31.389076, 38.661575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621120, 31.553616, 38.581421>,  <42.879868, 31.827847, 38.447826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621120, 31.553616, 38.581421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462017, -0.003888, 0.886863,
		-0.606714, 0.727990, 0.319263,
		-0.646869, -0.685577, 0.333985,
		42.427059, 31.347942, 38.681618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699051, 32.093487, 39.084587>,  <42.879868, 31.827847, 38.447826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699051, 32.093487, 39.084587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582741, 31.711212, 39.102951>,  <42.512955, 31.481846, 39.113968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582741, 31.711212, 39.102951>,  <42.699051, 32.093487, 39.084587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582741, 31.711212, 39.102951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407326, -0.080230, 0.909752,
		-0.865757, 0.283233, 0.412606,
		-0.290775, -0.955689, 0.045908,
		42.495510, 31.424505, 39.116722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648472, 32.084072, 39.727852>,  <42.699051, 32.093487, 39.084587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.648472, 32.084072, 39.727852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592327, 31.696587, 39.645985>,  <42.558640, 31.464094, 39.596863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592327, 31.696587, 39.645985>,  <42.648472, 32.084072, 39.727852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592327, 31.696587, 39.645985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362094, -0.242618, 0.900013,
		-0.921513, 0.052219, 0.384821,
		-0.140362, -0.968715, -0.204668,
		42.550217, 31.405972, 39.584583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243591, 31.807318, 40.168583>,  <42.648472, 32.084072, 39.727852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243591, 31.807318, 40.168583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461132, 31.495289, 40.044834>,  <42.591656, 31.308071, 39.970585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461132, 31.495289, 40.044834>,  <42.243591, 31.807318, 40.168583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461132, 31.495289, 40.044834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122944, -0.290614, 0.948909,
		-0.830125, -0.554103, -0.062146,
		0.543854, -0.780073, -0.309370,
		42.624287, 31.261267, 39.952023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972244, 31.217976, 40.517082>,  <42.243591, 31.807318, 40.168583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972244, 31.217976, 40.517082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350109, 31.135761, 40.414814>,  <42.576828, 31.086433, 40.353451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350109, 31.135761, 40.414814>,  <41.972244, 31.217976, 40.517082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350109, 31.135761, 40.414814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207103, -0.230767, 0.950713,
		-0.254416, -0.951051, -0.175427,
		0.944659, -0.205545, -0.255677,
		42.633507, 31.074100, 40.338112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147667, 30.599051, 40.886814>,  <41.972244, 31.217976, 40.517082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147667, 30.599051, 40.886814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488102, 30.794596, 40.810219>,  <42.692364, 30.911922, 40.764263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488102, 30.794596, 40.810219>,  <42.147667, 30.599051, 40.886814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488102, 30.794596, 40.810219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372931, -0.306161, 0.875893,
		0.369567, -0.816870, -0.442882,
		0.851084, 0.488865, -0.191489,
		42.743427, 30.941256, 40.752773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718849, 30.167051, 41.031677>,  <42.147667, 30.599051, 40.886814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718849, 30.167051, 41.031677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829033, 30.550608, 41.058941>,  <42.895145, 30.780743, 41.075298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829033, 30.550608, 41.058941>,  <42.718849, 30.167051, 41.031677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829033, 30.550608, 41.058941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404395, -0.179914, 0.896714,
		0.872115, -0.219448, -0.437331,
		0.275464, 0.958892, 0.068163,
		42.911671, 30.838276, 41.079391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453594, 30.192684, 41.123318>,  <42.718849, 30.167051, 41.031677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453594, 30.192684, 41.123318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248848, 30.480673, 41.310780>,  <43.125999, 30.653465, 41.423256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.248848, 30.480673, 41.310780>,  <43.453594, 30.192684, 41.123318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248848, 30.480673, 41.310780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520569, -0.174014, 0.835899,
		0.683376, 0.671833, -0.285724,
		-0.511864, 0.719972, 0.468653,
		43.095287, 30.696665, 41.451374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967377, 30.531910, 41.539986>,  <43.453594, 30.192684, 41.123318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967377, 30.531910, 41.539986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645733, 30.673294, 41.731182>,  <43.452747, 30.758123, 41.845901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645733, 30.673294, 41.731182>,  <43.967377, 30.531910, 41.539986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.645733, 30.673294, 41.731182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408400, -0.255833, 0.876219,
		0.431993, 0.899787, 0.061365,
		-0.804109, 0.353459, 0.477991,
		43.404499, 30.779331, 41.874580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.236973, 30.882202, 42.082806>,  <43.967377, 30.531910, 41.539986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.236973, 30.882202, 42.082806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855495, 30.815657, 42.183041>,  <43.626610, 30.775730, 42.243183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855495, 30.815657, 42.183041>,  <44.236973, 30.882202, 42.082806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855495, 30.815657, 42.183041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248634, 0.032837, 0.968041,
		-0.169276, 0.985517, 0.010048,
		-0.953691, -0.166365, 0.250591,
		43.569389, 30.765747, 42.258217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.987408, 31.381454, 42.574837>,  <44.236973, 30.882202, 42.082806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.987408, 31.381454, 42.574837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772343, 31.049736, 42.635750>,  <43.643303, 30.850704, 42.672298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772343, 31.049736, 42.635750>,  <43.987408, 31.381454, 42.574837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772343, 31.049736, 42.635750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035773, 0.202885, 0.978549,
		-0.842403, 0.520678, -0.138749,
		-0.537659, -0.829296, 0.152284,
		43.611046, 30.800947, 42.681435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282318, 31.563990, 42.839069>,  <43.987408, 31.381454, 42.574837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282318, 31.563990, 42.839069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457966, 31.217751, 42.935329>,  <43.563354, 31.010008, 42.993084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457966, 31.217751, 42.935329>,  <43.282318, 31.563990, 42.839069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457966, 31.217751, 42.935329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082715, 0.227765, 0.970196,
		-0.894611, -0.445941, 0.028419,
		0.439124, -0.865598, 0.240648,
		43.589703, 30.958071, 43.007523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.084522, 31.634420, 43.490273>,  <43.282318, 31.563990, 42.839069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.084522, 31.634420, 43.490273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262341, 31.276234, 43.481163>,  <43.369030, 31.061321, 43.475697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262341, 31.276234, 43.481163>,  <43.084522, 31.634420, 43.490273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262341, 31.276234, 43.481163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079686, -0.064860, 0.994708,
		-0.892206, -0.440376, -0.100189,
		0.444543, -0.895468, -0.022777,
		43.395702, 31.007593, 43.474331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710865, 31.297043, 44.009396>,  <43.084522, 31.634420, 43.490273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710865, 31.297043, 44.009396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057762, 31.109913, 43.941242>,  <43.265900, 30.997635, 43.900352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.057762, 31.109913, 43.941242>,  <42.710865, 31.297043, 44.009396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.057762, 31.109913, 43.941242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091709, -0.186255, 0.978212,
		-0.489368, -0.863972, -0.118624,
		0.867242, -0.467826, -0.170381,
		43.317936, 30.969564, 43.890129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762722, 30.851311, 44.558712>,  <42.710865, 31.297043, 44.009396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762722, 30.851311, 44.558712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132984, 30.849062, 44.407383>,  <43.355141, 30.847712, 44.316586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.132984, 30.849062, 44.407383>,  <42.762722, 30.851311, 44.558712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132984, 30.849062, 44.407383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370425, -0.190251, 0.909170,
		-0.077087, -0.981719, -0.174025,
		0.925658, -0.005621, -0.378320,
		43.410683, 30.847376, 44.293888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160389, 30.241814, 44.883858>,  <42.762722, 30.851311, 44.558712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160389, 30.241814, 44.883858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427799, 30.502220, 44.740047>,  <43.588245, 30.658464, 44.653763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.427799, 30.502220, 44.740047>,  <43.160389, 30.241814, 44.883858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427799, 30.502220, 44.740047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410007, 0.080687, 0.908507,
		0.620460, -0.754765, -0.212979,
		0.668524, 0.651014, -0.359522,
		43.628357, 30.697525, 44.632191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.859177, 30.095442, 45.214882>,  <43.160389, 30.241814, 44.883858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.859177, 30.095442, 45.214882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873783, 30.476633, 45.094547>,  <43.882545, 30.705347, 45.022346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.873783, 30.476633, 45.094547>,  <43.859177, 30.095442, 45.214882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873783, 30.476633, 45.094547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493598, 0.244556, 0.834598,
		0.868923, -0.178968, -0.461457,
		0.036514, 0.952976, -0.300838,
		43.884739, 30.762526, 45.004295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528118, 30.192390, 45.353603>,  <43.859177, 30.095442, 45.214882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528118, 30.192390, 45.353603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.345032, 30.547598, 45.336086>,  <44.235180, 30.760721, 45.325577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.345032, 30.547598, 45.336086>,  <44.528118, 30.192390, 45.353603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.345032, 30.547598, 45.336086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502100, 0.298825, 0.811542,
		0.733749, 0.349470, -0.582651,
		-0.457721, 0.888017, -0.043794,
		44.207714, 30.814003, 45.322948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018925, 30.620464, 45.537560>,  <44.528118, 30.192390, 45.353603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018925, 30.620464, 45.537560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705303, 30.857290, 45.612091>,  <44.517132, 30.999386, 45.656811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705303, 30.857290, 45.612091>,  <45.018925, 30.620464, 45.537560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705303, 30.857290, 45.612091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462507, 0.357095, 0.811524,
		0.413939, 0.722456, -0.553816,
		-0.784055, 0.592065, 0.186325,
		44.470085, 31.034910, 45.667988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292126, 31.191879, 45.655556>,  <45.018925, 30.620464, 45.537560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292126, 31.191879, 45.655556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.932831, 31.216911, 45.829571>,  <44.717255, 31.231930, 45.933979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.932831, 31.216911, 45.829571>,  <45.292126, 31.191879, 45.655556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.932831, 31.216911, 45.829571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438455, 0.196220, 0.877072,
		-0.030475, 0.978561, -0.203691,
		-0.898236, 0.062580, 0.435035,
		44.663361, 31.235685, 45.960083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383480, 31.770443, 46.161186>,  <45.292126, 31.191879, 45.655556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383480, 31.770443, 46.161186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.048683, 31.580065, 46.269207>,  <44.847805, 31.465837, 46.334019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.048683, 31.580065, 46.269207>,  <45.383480, 31.770443, 46.161186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.048683, 31.580065, 46.269207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227573, 0.146049, 0.962746,
		-0.497655, 0.867263, -0.013929,
		-0.836989, -0.475945, 0.270048,
		44.797588, 31.437281, 46.350220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.091091, 32.163235, 46.668743>,  <45.383480, 31.770443, 46.161186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.091091, 32.163235, 46.668743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.898262, 31.816427, 46.719162>,  <44.782566, 31.608343, 46.749413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.898262, 31.816427, 46.719162>,  <45.091091, 32.163235, 46.668743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898262, 31.816427, 46.719162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120388, 0.076951, 0.989740,
		-0.867821, 0.492301, 0.067283,
		-0.482072, -0.867017, 0.126047,
		44.753639, 31.556322, 46.756977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632759, 32.245213, 47.246483>,  <45.091091, 32.163235, 46.668743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632759, 32.245213, 47.246483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700100, 31.852781, 47.208233>,  <44.740505, 31.617323, 47.185284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700100, 31.852781, 47.208233>,  <44.632759, 32.245213, 47.246483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700100, 31.852781, 47.208233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130417, -0.073991, 0.988695,
		-0.977062, -0.178918, 0.115493,
		0.168350, -0.981078, -0.095628,
		44.750607, 31.558458, 47.179546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934818, 32.834961, 47.074413>,  <44.632759, 32.245213, 47.246483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.934818, 32.834961, 47.074413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848640, 33.219883, 47.140816>,  <44.796932, 33.450836, 47.180656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848640, 33.219883, 47.140816>,  <44.934818, 32.834961, 47.074413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848640, 33.219883, 47.140816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620433, -0.003618, -0.784251,
		-0.754085, -0.271962, 0.597823,
		-0.215449, 0.962301, 0.166006,
		44.784004, 33.508572, 47.190617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.247875, 32.913445, 46.978806>,  <44.934818, 32.834961, 47.074413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.247875, 32.913445, 46.978806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384644, 33.286644, 46.933907>,  <44.466705, 33.510563, 46.906967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384644, 33.286644, 46.933907>,  <44.247875, 32.913445, 46.978806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384644, 33.286644, 46.933907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369462, 0.023643, -0.928945,
		-0.864053, 0.359095, 0.352792,
		0.341921, 0.933001, -0.112244,
		44.487221, 33.566544, 46.900234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.730591, 33.268242, 46.651146>,  <44.247875, 32.913445, 46.978806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.730591, 33.268242, 46.651146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052711, 33.486145, 46.557568>,  <44.245983, 33.616886, 46.501419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.052711, 33.486145, 46.557568>,  <43.730591, 33.268242, 46.651146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052711, 33.486145, 46.557568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398506, 0.205211, -0.893914,
		-0.438960, 0.813097, 0.382346,
		0.805300, 0.544759, -0.233944,
		44.294300, 33.649574, 46.487385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502796, 33.734848, 46.164680>,  <43.730591, 33.268242, 46.651146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502796, 33.734848, 46.164680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892094, 33.812458, 46.115456>,  <44.125671, 33.859024, 46.085922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892094, 33.812458, 46.115456>,  <43.502796, 33.734848, 46.164680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892094, 33.812458, 46.115456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124334, -0.005641, -0.992224,
		-0.193215, 0.980979, 0.018634,
		0.973247, 0.194029, -0.123059,
		44.184067, 33.870667, 46.078537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533310, 34.197578, 45.661045>,  <43.502796, 33.734848, 46.164680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533310, 34.197578, 45.661045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905617, 34.051792, 45.649471>,  <44.129002, 33.964321, 45.642529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.905617, 34.051792, 45.649471>,  <43.533310, 34.197578, 45.661045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905617, 34.051792, 45.649471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071433, -0.103664, -0.992044,
		0.358568, 0.925428, -0.122522,
		0.930766, -0.364468, -0.028936,
		44.184845, 33.942451, 45.640789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861389, 34.568115, 45.042133>,  <43.533310, 34.197578, 45.661045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861389, 34.568115, 45.042133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063263, 34.228577, 45.105053>,  <44.184387, 34.024853, 45.142807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.063263, 34.228577, 45.105053>,  <43.861389, 34.568115, 45.042133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.063263, 34.228577, 45.105053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055794, -0.149759, -0.987147,
		0.861497, 0.506977, -0.028221,
		0.504687, -0.848850, 0.157304,
		44.214668, 33.973923, 45.152245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361103, 34.575684, 44.546951>,  <43.861389, 34.568115, 45.042133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361103, 34.575684, 44.546951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284203, 34.200878, 44.663597>,  <44.238064, 33.975994, 44.733585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284203, 34.200878, 44.663597>,  <44.361103, 34.575684, 44.546951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284203, 34.200878, 44.663597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074212, -0.282427, -0.956414,
		0.978536, -0.205512, -0.015241,
		-0.192249, -0.937016, 0.291616,
		44.226528, 33.919773, 44.751083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692799, 34.235634, 44.095535>,  <44.361103, 34.575684, 44.546951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.692799, 34.235634, 44.095535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.423359, 33.976833, 44.238449>,  <44.261696, 33.821552, 44.324196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.423359, 33.976833, 44.238449>,  <44.692799, 34.235634, 44.095535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.423359, 33.976833, 44.238449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297072, -0.205629, -0.932451,
		0.676767, -0.734236, -0.053695,
		-0.673598, -0.647004, 0.357284,
		44.221279, 33.782734, 44.345634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.808208, 33.754261, 43.603268>,  <44.692799, 34.235634, 44.095535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.808208, 33.754261, 43.603268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.464890, 33.682487, 43.795574>,  <44.258900, 33.639423, 43.910957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.464890, 33.682487, 43.795574>,  <44.808208, 33.754261, 43.603268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464890, 33.682487, 43.795574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424361, -0.278591, -0.861571,
		0.288530, -0.943500, 0.162969,
		-0.858294, -0.179432, 0.480767,
		44.207401, 33.628658, 43.939804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.504181, 33.111389, 43.321243>,  <44.808208, 33.754261, 43.603268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.504181, 33.111389, 43.321243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219913, 33.355072, 43.461998>,  <44.049355, 33.501282, 43.546452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219913, 33.355072, 43.461998>,  <44.504181, 33.111389, 43.321243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219913, 33.355072, 43.461998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512439, -0.105538, -0.852214,
		-0.482037, -0.785957, 0.387184,
		-0.710666, 0.609207, 0.351882,
		44.006714, 33.537834, 43.567562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.927158, 32.805172, 43.062500>,  <44.504181, 33.111389, 43.321243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.927158, 32.805172, 43.062500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774410, 33.141567, 43.215813>,  <43.682762, 33.343407, 43.307800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774410, 33.141567, 43.215813>,  <43.927158, 32.805172, 43.062500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774410, 33.141567, 43.215813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697887, 0.009495, -0.716145,
		-0.605911, -0.540966, 0.583290,
		-0.381872, 0.840991, 0.383286,
		43.659847, 33.393864, 43.330799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221764, 32.752293, 42.947784>,  <43.927158, 32.805172, 43.062500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221764, 32.752293, 42.947784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288948, 33.139824, 43.020622>,  <43.329258, 33.372341, 43.064327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288948, 33.139824, 43.020622>,  <43.221764, 32.752293, 42.947784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288948, 33.139824, 43.020622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833885, 0.238154, -0.497913,
		-0.525760, -0.068219, 0.847893,
		0.167962, 0.968829, 0.182099,
		43.339336, 33.430473, 43.075253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598568, 33.039017, 43.110535>,  <43.221764, 32.752293, 42.947784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598568, 33.039017, 43.110535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797943, 33.356056, 42.970055>,  <42.917568, 33.546280, 42.885765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797943, 33.356056, 42.970055>,  <42.598568, 33.039017, 43.110535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797943, 33.356056, 42.970055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724990, 0.158969, -0.670163,
		-0.475341, 0.588654, 0.653863,
		0.498438, 0.792601, -0.351204,
		42.947475, 33.593838, 42.864693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131660, 33.623886, 43.033985>,  <42.598568, 33.039017, 43.110535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131660, 33.623886, 43.033985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434067, 33.717716, 42.789551>,  <42.615509, 33.774014, 42.642891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434067, 33.717716, 42.789551>,  <42.131660, 33.623886, 43.033985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434067, 33.717716, 42.789551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654528, 0.261950, -0.709207,
		-0.006290, 0.936139, 0.351574,
		0.756011, 0.234576, -0.611082,
		42.660870, 33.788090, 42.606228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080379, 34.237289, 42.692944>,  <42.131660, 33.623886, 43.033985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080379, 34.237289, 42.692944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318069, 34.054752, 42.428024>,  <42.460686, 33.945229, 42.269073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318069, 34.054752, 42.428024>,  <42.080379, 34.237289, 42.692944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318069, 34.054752, 42.428024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668863, 0.176929, -0.722024,
		0.446672, 0.872036, -0.200096,
		0.594227, -0.456344, -0.662302,
		42.496338, 33.917850, 42.229332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979076, 34.655502, 42.123299>,  <42.080379, 34.237289, 42.692944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979076, 34.655502, 42.123299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177952, 34.339081, 41.980724>,  <42.297276, 34.149227, 41.895180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177952, 34.339081, 41.980724>,  <41.979076, 34.655502, 42.123299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177952, 34.339081, 41.980724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571177, 0.010833, -0.820755,
		0.653119, 0.611656, -0.446444,
		0.497184, -0.791050, -0.356439,
		42.327106, 34.101765, 41.873795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197208, 34.854939, 41.530556>,  <41.979076, 34.655502, 42.123299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197208, 34.854939, 41.530556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189548, 34.456356, 41.497810>,  <42.184952, 34.217205, 41.478161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189548, 34.456356, 41.497810>,  <42.197208, 34.854939, 41.530556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189548, 34.456356, 41.497810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686547, 0.072632, -0.723449,
		0.726833, 0.042350, -0.685507,
		-0.019152, -0.996459, -0.081866,
		42.183804, 34.157417, 41.473251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414555, 34.723270, 40.852333>,  <42.197208, 34.854939, 41.530556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414555, 34.723270, 40.852333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249981, 34.374924, 40.959904>,  <42.151237, 34.165916, 41.024445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249981, 34.374924, 40.959904>,  <42.414555, 34.723270, 40.852333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249981, 34.374924, 40.959904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401802, -0.091530, -0.911141,
		0.818093, -0.482930, -0.312256,
		-0.411436, -0.870862, 0.268922,
		42.126549, 34.113667, 41.040581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583420, 34.264072, 40.270573>,  <42.414555, 34.723270, 40.852333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583420, 34.264072, 40.270573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252087, 34.130138, 40.450241>,  <42.053288, 34.049778, 40.558041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252087, 34.130138, 40.450241>,  <42.583420, 34.264072, 40.270573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252087, 34.130138, 40.450241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417653, -0.165312, -0.893441,
		0.373412, -0.927661, -0.002913,
		-0.828329, -0.334838, 0.449170,
		42.003586, 34.029686, 40.584991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380306, 33.767910, 39.758202>,  <42.583420, 34.264072, 40.270573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380306, 33.767910, 39.758202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049919, 33.788242, 39.982773>,  <41.851688, 33.800442, 40.117516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.049919, 33.788242, 39.982773>,  <42.380306, 33.767910, 39.758202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.049919, 33.788242, 39.982773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559841, -0.190626, -0.806374,
		0.066037, -0.980346, 0.185905,
		-0.825964, 0.050826, 0.561426,
		41.802132, 33.803490, 40.151199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952873, 33.231739, 39.513409>,  <42.380306, 33.767910, 39.758202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952873, 33.231739, 39.513409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707336, 33.458485, 39.733173>,  <41.560013, 33.594532, 39.865032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707336, 33.458485, 39.733173>,  <41.952873, 33.231739, 39.513409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707336, 33.458485, 39.733173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723050, -0.124388, -0.679505,
		-0.316849, -0.814364, 0.486229,
		-0.613845, 0.566868, 0.549413,
		41.523182, 33.628544, 39.897999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330250, 32.767921, 39.760361>,  <41.952873, 33.231739, 39.513409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330250, 32.767921, 39.760361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253761, 33.158344, 39.718910>,  <41.207867, 33.392597, 39.694038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253761, 33.158344, 39.718910>,  <41.330250, 32.767921, 39.760361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253761, 33.158344, 39.718910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604956, -0.200337, -0.770644,
		-0.772956, -0.084678, 0.628784,
		-0.191225, 0.976061, -0.103626,
		41.196392, 33.451164, 39.687824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671951, 32.772091, 39.473812>,  <41.330250, 32.767921, 39.760361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671951, 32.772091, 39.473812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771881, 33.154518, 39.412472>,  <40.831841, 33.383976, 39.375668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771881, 33.154518, 39.412472>,  <40.671951, 32.772091, 39.473812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771881, 33.154518, 39.412472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496958, -0.009324, -0.867724,
		-0.831036, 0.292988, 0.472798,
		0.249824, 0.956071, -0.153351,
		40.846828, 33.441338, 39.366467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048378, 33.138546, 39.258228>,  <40.671951, 32.772091, 39.473812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048378, 33.138546, 39.258228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354664, 33.368237, 39.142334>,  <40.538433, 33.506050, 39.072796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354664, 33.368237, 39.142334>,  <40.048378, 33.138546, 39.258228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354664, 33.368237, 39.142334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383289, 0.045636, -0.922500,
		-0.516504, 0.817422, 0.255040,
		0.765711, 0.574229, -0.289738,
		40.584377, 33.540504, 39.055412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759892, 33.660709, 38.817963>,  <40.048378, 33.138546, 39.258228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759892, 33.660709, 38.817963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150520, 33.633614, 38.736256>,  <40.384895, 33.617355, 38.687233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150520, 33.633614, 38.736256>,  <39.759892, 33.660709, 38.817963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150520, 33.633614, 38.736256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187449, 0.198493, -0.962010,
		0.105713, 0.977758, 0.181144,
		0.976569, -0.067742, -0.204264,
		40.443493, 33.613293, 38.674976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048290, 34.333340, 38.580296>,  <39.759892, 33.660709, 38.817963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048290, 34.333340, 38.580296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283058, 34.041767, 38.439335>,  <40.423920, 33.866825, 38.354759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283058, 34.041767, 38.439335>,  <40.048290, 34.333340, 38.580296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283058, 34.041767, 38.439335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145322, 0.333346, -0.931538,
		0.796496, 0.597950, 0.089718,
		0.586920, -0.728928, -0.352404,
		40.459133, 33.823090, 38.333614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305168, 34.614510, 38.069618>,  <40.048290, 34.333340, 38.580296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305168, 34.614510, 38.069618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414257, 34.244167, 37.964993>,  <40.479710, 34.021961, 37.902218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414257, 34.244167, 37.964993>,  <40.305168, 34.614510, 38.069618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414257, 34.244167, 37.964993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165042, 0.312859, -0.935350,
		0.947831, 0.211923, 0.238129,
		0.272723, -0.925855, -0.261562,
		40.496075, 33.966412, 37.886524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820435, 34.713100, 37.648754>,  <40.305168, 34.614510, 38.069618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820435, 34.713100, 37.648754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700169, 34.339870, 37.569782>,  <40.628010, 34.115932, 37.522400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700169, 34.339870, 37.569782>,  <40.820435, 34.713100, 37.648754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700169, 34.339870, 37.569782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054269, 0.189934, -0.980296,
		0.952183, -0.305458, -0.006470,
		-0.300668, -0.933070, -0.197429,
		40.609966, 34.059948, 37.510555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334476, 34.511169, 37.201447>,  <40.820435, 34.713100, 37.648754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334476, 34.511169, 37.201447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046394, 34.241943, 37.134186>,  <40.873543, 34.080406, 37.093830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046394, 34.241943, 37.134186>,  <41.334476, 34.511169, 37.201447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046394, 34.241943, 37.134186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141866, 0.094376, -0.985377,
		0.679097, -0.733533, 0.027515,
		-0.720209, -0.673069, -0.168154,
		40.830330, 34.040024, 37.083740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622505, 34.059444, 36.789318>,  <41.334476, 34.511169, 37.201447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622505, 34.059444, 36.789318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228729, 34.016827, 36.733437>,  <40.992462, 33.991257, 36.699909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228729, 34.016827, 36.733437>,  <41.622505, 34.059444, 36.789318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228729, 34.016827, 36.733437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135130, 0.049047, -0.989613,
		0.112290, -0.993097, -0.033887,
		-0.984444, -0.106545, -0.139705,
		40.933395, 33.984863, 36.691525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529133, 33.432915, 36.303837>,  <41.622505, 34.059444, 36.789318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529133, 33.432915, 36.303837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195557, 33.653393, 36.293102>,  <40.995411, 33.785679, 36.286659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195557, 33.653393, 36.293102>,  <41.529133, 33.432915, 36.303837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195557, 33.653393, 36.293102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134470, 0.155796, -0.978594,
		-0.535219, -0.819699, -0.204045,
		-0.833942, 0.551199, -0.026840,
		40.945374, 33.818752, 36.285049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114353, 33.244240, 35.686241>,  <41.529133, 33.432915, 36.303837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114353, 33.244240, 35.686241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974792, 33.606686, 35.781925>,  <40.891056, 33.824154, 35.839336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974792, 33.606686, 35.781925>,  <41.114353, 33.244240, 35.686241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974792, 33.606686, 35.781925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197253, 0.320538, -0.926470,
		-0.916167, -0.276057, -0.290569,
		-0.348897, 0.906117, 0.239213,
		40.870125, 33.878521, 35.853687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675838, 33.529472, 35.122616>,  <41.114353, 33.244240, 35.686241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675838, 33.529472, 35.122616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764477, 33.850025, 35.344852>,  <40.817661, 34.042358, 35.478195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.764477, 33.850025, 35.344852>,  <40.675838, 33.529472, 35.122616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764477, 33.850025, 35.344852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111707, 0.545145, -0.830866,
		-0.968719, 0.246180, 0.031282,
		0.221596, 0.801381, 0.555593,
		40.830956, 34.090439, 35.511532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528126, 34.005302, 34.631096>,  <40.675838, 33.529472, 35.122616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528126, 34.005302, 34.631096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710365, 34.209179, 34.923027>,  <40.819710, 34.331505, 35.098186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710365, 34.209179, 34.923027>,  <40.528126, 34.005302, 34.631096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710365, 34.209179, 34.923027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015256, 0.815270, -0.578881,
		-0.890056, 0.274870, 0.363658,
		0.455597, 0.509688, 0.729829,
		40.847046, 34.362087, 35.141975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146244, 34.646042, 34.794121>,  <40.528126, 34.005302, 34.631096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146244, 34.646042, 34.794121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534748, 34.685925, 34.880566>,  <40.767853, 34.709854, 34.932434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534748, 34.685925, 34.880566>,  <40.146244, 34.646042, 34.794121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534748, 34.685925, 34.880566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016619, 0.877394, -0.479482,
		-0.237423, 0.469296, 0.850524,
		0.971264, 0.099705, 0.216113,
		40.826126, 34.715836, 34.945400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296768, 35.356071, 34.785645>,  <40.146244, 34.646042, 34.794121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296768, 35.356071, 34.785645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659855, 35.199379, 34.725521>,  <40.877708, 35.105362, 34.689445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659855, 35.199379, 34.725521>,  <40.296768, 35.356071, 34.785645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659855, 35.199379, 34.725521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285238, 0.838851, -0.463647,
		0.307715, 0.377987, 0.873177,
		0.907717, -0.391734, -0.150311,
		40.932171, 35.081860, 34.680428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611038, 35.888821, 34.818031>,  <40.296768, 35.356071, 34.785645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611038, 35.888821, 34.818031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907654, 35.659431, 34.678749>,  <41.085621, 35.521797, 34.595181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.907654, 35.659431, 34.678749>,  <40.611038, 35.888821, 34.818031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907654, 35.659431, 34.678749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451941, 0.810558, -0.372486,
		0.495855, 0.118842, 0.860235,
		0.741537, -0.573474, -0.348210,
		41.130116, 35.487389, 34.574287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284512, 36.225876, 34.997494>,  <40.611038, 35.888821, 34.818031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284512, 36.225876, 34.997494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308537, 35.982449, 34.681004>,  <41.322952, 35.836391, 34.491108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308537, 35.982449, 34.681004>,  <41.284512, 36.225876, 34.997494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308537, 35.982449, 34.681004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587881, 0.662170, -0.464680,
		0.806715, -0.437239, 0.397535,
		0.060059, -0.608567, -0.791226,
		41.326553, 35.799877, 34.443634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872284, 36.399548, 34.702274>,  <41.284512, 36.225876, 34.997494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872284, 36.399548, 34.702274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719204, 36.205154, 34.387985>,  <41.627357, 36.088520, 34.199409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719204, 36.205154, 34.387985>,  <41.872284, 36.399548, 34.702274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719204, 36.205154, 34.387985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325035, 0.725272, -0.606905,
		0.864810, -0.487648, -0.119597,
		-0.382696, -0.485984, -0.785725,
		41.604397, 36.059361, 34.152267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269333, 36.414734, 34.155594>,  <41.872284, 36.399548, 34.702274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269333, 36.414734, 34.155594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922249, 36.342049, 33.970528>,  <41.713997, 36.298435, 33.859489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922249, 36.342049, 33.970528>,  <42.269333, 36.414734, 34.155594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922249, 36.342049, 33.970528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283089, 0.584425, -0.760466,
		0.408580, -0.790839, -0.455671,
		-0.867711, -0.181715, -0.462662,
		41.661934, 36.287533, 33.831730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445568, 36.195602, 33.485966>,  <42.269333, 36.414734, 34.155594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445568, 36.195602, 33.485966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090862, 36.380486, 33.484394>,  <41.878040, 36.491417, 33.483452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090862, 36.380486, 33.484394>,  <42.445568, 36.195602, 33.485966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090862, 36.380486, 33.484394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277801, 0.526144, -0.803741,
		-0.369430, -0.713818, -0.594967,
		-0.886763, 0.462209, -0.003926,
		41.824833, 36.519150, 33.483215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.202988, 36.371353, 33.581520>,  <42.445568, 36.195602, 33.485966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.202988, 36.371353, 33.581520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601891, 36.399452, 33.572147>,  <43.841232, 36.416309, 33.566525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601891, 36.399452, 33.572147>,  <43.202988, 36.371353, 33.581520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601891, 36.399452, 33.572147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045230, 0.828374, 0.558347,
		0.058632, -0.555754, 0.829277,
		0.997255, 0.070245, -0.023433,
		43.901066, 36.420525, 33.565117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544769, 36.321987, 34.223484>,  <43.202988, 36.371353, 33.581520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544769, 36.321987, 34.223484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717533, 36.552551, 33.946011>,  <43.821194, 36.690891, 33.779526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717533, 36.552551, 33.946011>,  <43.544769, 36.321987, 34.223484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717533, 36.552551, 33.946011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099237, 0.794826, 0.598668,
		0.896440, -0.189732, 0.400496,
		0.431911, 0.576414, -0.693685,
		43.847107, 36.725475, 33.737904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203751, 36.785103, 34.377945>,  <43.544769, 36.321987, 34.223484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203751, 36.785103, 34.377945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965019, 36.961620, 34.109898>,  <43.821781, 37.067532, 33.949070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965019, 36.961620, 34.109898>,  <44.203751, 36.785103, 34.377945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965019, 36.961620, 34.109898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270844, 0.675353, 0.685960,
		0.755275, 0.590897, -0.283548,
		-0.596827, 0.441292, -0.670119,
		43.785973, 37.094009, 33.908863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.276062, 37.558216, 34.146893>,  <44.203751, 36.785103, 34.377945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.276062, 37.558216, 34.146893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888454, 37.460014, 34.136112>,  <43.655891, 37.401093, 34.129646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888454, 37.460014, 34.136112>,  <44.276062, 37.558216, 34.146893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888454, 37.460014, 34.136112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153168, 0.511768, 0.845360,
		-0.193751, 0.823298, -0.533517,
		-0.969020, -0.245507, -0.026947,
		43.597748, 37.386364, 34.128029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922745, 38.220409, 34.039322>,  <44.276062, 37.558216, 34.146893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922745, 38.220409, 34.039322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719383, 37.944275, 34.245216>,  <43.597366, 37.778595, 34.368752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719383, 37.944275, 34.245216>,  <43.922745, 38.220409, 34.039322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719383, 37.944275, 34.245216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022587, 0.586859, 0.809374,
		-0.860820, 0.423118, -0.282770,
		-0.508407, -0.690338, 0.514737,
		43.566860, 37.737175, 34.399639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410423, 38.502125, 34.454556>,  <43.922745, 38.220409, 34.039322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410423, 38.502125, 34.454556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540112, 38.167435, 34.631092>,  <43.617924, 37.966621, 34.737015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540112, 38.167435, 34.631092>,  <43.410423, 38.502125, 34.454556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540112, 38.167435, 34.631092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039436, 0.478087, 0.877427,
		-0.945161, -0.267072, 0.188001,
		0.324217, -0.836723, 0.441337,
		43.637375, 37.916416, 34.763493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900066, 38.393173, 34.958290>,  <43.410423, 38.502125, 34.454556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900066, 38.393173, 34.958290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268356, 38.264473, 35.046600>,  <43.489330, 38.187252, 35.099586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268356, 38.264473, 35.046600>,  <42.900066, 38.393173, 34.958290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268356, 38.264473, 35.046600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048126, 0.467826, 0.882509,
		-0.387234, -0.823173, 0.415255,
		0.920725, -0.321752, 0.220774,
		43.544575, 38.167946, 35.112831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899448, 38.153969, 35.670780>,  <42.900066, 38.393173, 34.958290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899448, 38.153969, 35.670780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286800, 38.231117, 35.607483>,  <43.519211, 38.277405, 35.569504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286800, 38.231117, 35.607483>,  <42.899448, 38.153969, 35.670780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286800, 38.231117, 35.607483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057766, 0.443727, 0.894298,
		0.242700, -0.875162, 0.418555,
		0.968380, 0.192868, -0.158247,
		43.577312, 38.288979, 35.560009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239086, 38.121532, 36.237858>,  <42.899448, 38.153969, 35.670780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239086, 38.121532, 36.237858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536015, 38.317844, 36.055389>,  <43.714172, 38.435631, 35.945908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536015, 38.317844, 36.055389>,  <43.239086, 38.121532, 36.237858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536015, 38.317844, 36.055389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289349, 0.379259, 0.878886,
		0.604347, -0.784409, 0.139526,
		0.742322, 0.490781, -0.456172,
		43.758713, 38.465080, 35.918537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719822, 38.023392, 36.611980>,  <43.239086, 38.121532, 36.237858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719822, 38.023392, 36.611980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826080, 38.357098, 36.418716>,  <43.889835, 38.557320, 36.302757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826080, 38.357098, 36.418716>,  <43.719822, 38.023392, 36.611980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826080, 38.357098, 36.418716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220587, 0.435269, 0.872859,
		0.938495, -0.338450, -0.068400,
		0.265647, 0.834262, -0.483155,
		43.905773, 38.607376, 36.273769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.301739, 38.190178, 36.968845>,  <43.719822, 38.023392, 36.611980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.301739, 38.190178, 36.968845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198757, 38.525127, 36.775963>,  <44.136967, 38.726097, 36.660233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.198757, 38.525127, 36.775963>,  <44.301739, 38.190178, 36.968845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.198757, 38.525127, 36.775963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147279, 0.527208, 0.836876,
		0.955000, 0.144439, -0.259060,
		-0.257456, 0.837371, -0.482211,
		44.121521, 38.776340, 36.631298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.736519, 38.617229, 37.215366>,  <44.301739, 38.190178, 36.968845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.736519, 38.617229, 37.215366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424191, 38.823879, 37.074848>,  <44.236794, 38.947868, 36.990536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424191, 38.823879, 37.074848>,  <44.736519, 38.617229, 37.215366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424191, 38.823879, 37.074848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027871, 0.590547, 0.806522,
		0.624128, 0.619962, -0.475513,
		-0.780825, 0.516625, -0.351298,
		44.189941, 38.978867, 36.969460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845947, 39.342930, 37.315945>,  <44.736519, 38.617229, 37.215366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.845947, 39.342930, 37.315945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.447834, 39.320255, 37.284454>,  <44.208965, 39.306652, 37.265560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.447834, 39.320255, 37.284454>,  <44.845947, 39.342930, 37.315945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.447834, 39.320255, 37.284454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096871, 0.623890, 0.775485,
		0.005157, 0.779454, -0.626439,
		-0.995284, -0.056685, -0.078724,
		44.149250, 39.303249, 37.260838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739265, 39.956013, 37.413593>,  <44.845947, 39.342930, 37.315945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739265, 39.956013, 37.413593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390995, 39.771263, 37.481224>,  <44.182034, 39.660412, 37.521801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390995, 39.771263, 37.481224>,  <44.739265, 39.956013, 37.413593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390995, 39.771263, 37.481224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153700, 0.582038, 0.798504,
		-0.467217, 0.669255, -0.577760,
		-0.870680, -0.461876, 0.169073,
		44.129791, 39.632702, 37.531944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.371674, 40.443981, 37.641842>,  <44.739265, 39.956013, 37.413593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.371674, 40.443981, 37.641842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149288, 40.136086, 37.767319>,  <44.015858, 39.951347, 37.842606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.149288, 40.136086, 37.767319>,  <44.371674, 40.443981, 37.641842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.149288, 40.136086, 37.767319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290029, 0.533325, 0.794637,
		-0.778964, 0.350809, -0.519757,
		-0.555966, -0.769738, 0.313696,
		43.982498, 39.905163, 37.861427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765675, 40.770718, 37.920628>,  <44.371674, 40.443981, 37.641842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765675, 40.770718, 37.920628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759384, 40.403893, 38.080002>,  <43.755611, 40.183800, 38.175629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759384, 40.403893, 38.080002>,  <43.765675, 40.770718, 37.920628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759384, 40.403893, 38.080002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394106, 0.371914, 0.840452,
		-0.918930, -0.143812, -0.367267,
		-0.015724, -0.917059, 0.398440,
		43.754665, 40.128777, 38.199535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079613, 40.740696, 38.152515>,  <43.765675, 40.770718, 37.920628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079613, 40.740696, 38.152515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265732, 40.451080, 38.356186>,  <43.377403, 40.277309, 38.478390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265732, 40.451080, 38.356186>,  <43.079613, 40.740696, 38.152515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265732, 40.451080, 38.356186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557052, 0.207517, 0.804132,
		-0.687887, -0.657803, -0.306770,
		0.465301, -0.724039, 0.509179,
		43.405323, 40.233868, 38.508938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580692, 40.487850, 38.560535>,  <43.079613, 40.740696, 38.152515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580692, 40.487850, 38.560535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919075, 40.376568, 38.742504>,  <43.122105, 40.309799, 38.851685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919075, 40.376568, 38.742504>,  <42.580692, 40.487850, 38.560535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919075, 40.376568, 38.742504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419047, 0.180764, 0.889789,
		-0.329776, -0.943360, 0.036339,
		0.845959, -0.278203, 0.454924,
		43.172863, 40.293106, 38.878983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439846, 39.970894, 39.016182>,  <42.580692, 40.487850, 38.560535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439846, 39.970894, 39.016182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764488, 40.177914, 39.124584>,  <42.959274, 40.302128, 39.189625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764488, 40.177914, 39.124584>,  <42.439846, 39.970894, 39.016182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764488, 40.177914, 39.124584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354080, 0.066801, 0.932826,
		0.464684, -0.853039, 0.237471,
		0.811601, 0.517553, 0.271003,
		43.007969, 40.333179, 39.205887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397560, 39.870651, 39.689476>,  <42.439846, 39.970894, 39.016182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397560, 39.870651, 39.689476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691319, 40.142033, 39.697048>,  <42.867573, 40.304863, 39.701591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691319, 40.142033, 39.697048>,  <42.397560, 39.870651, 39.689476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691319, 40.142033, 39.697048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192584, 0.181555, 0.964339,
		0.650822, -0.711856, 0.263993,
		0.734399, 0.678454, 0.018932,
		42.911640, 40.345570, 39.702728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883801, 39.684296, 40.291325>,  <42.397560, 39.870651, 39.689476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883801, 39.684296, 40.291325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926346, 40.074760, 40.215637>,  <42.951874, 40.309040, 40.170227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926346, 40.074760, 40.215637>,  <42.883801, 39.684296, 40.291325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926346, 40.074760, 40.215637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160036, 0.204619, 0.965671,
		0.981364, -0.072430, 0.177984,
		0.106363, 0.976158, -0.189214,
		42.958256, 40.367607, 40.158875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328632, 39.881290, 40.802074>,  <42.883801, 39.684296, 40.291325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328632, 39.881290, 40.802074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202461, 40.242439, 40.685234>,  <43.126759, 40.459129, 40.615131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.202461, 40.242439, 40.685234>,  <43.328632, 39.881290, 40.802074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202461, 40.242439, 40.685234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048618, 0.322788, 0.945222,
		0.947702, 0.283952, -0.145713,
		-0.315432, 0.902873, -0.292101,
		43.107830, 40.513302, 40.597603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826931, 40.405281, 41.110741>,  <43.328632, 39.881290, 40.802074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826931, 40.405281, 41.110741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475163, 40.574776, 41.023956>,  <43.264103, 40.676472, 40.971886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475163, 40.574776, 41.023956>,  <43.826931, 40.405281, 41.110741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475163, 40.574776, 41.023956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108664, 0.265051, 0.958092,
		0.463485, 0.866139, -0.187045,
		-0.879417, 0.423736, -0.216965,
		43.211338, 40.701897, 40.958866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740711, 41.144562, 41.432323>,  <43.826931, 40.405281, 41.110741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740711, 41.144562, 41.432323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372631, 41.012569, 41.348083>,  <43.151783, 40.933372, 41.297539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.372631, 41.012569, 41.348083>,  <43.740711, 41.144562, 41.432323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.372631, 41.012569, 41.348083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335384, 0.387122, 0.858868,
		-0.201884, 0.860958, -0.466899,
		-0.920196, -0.329982, -0.210597,
		43.096573, 40.913574, 41.284904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329174, 41.715206, 41.592480>,  <43.740711, 41.144562, 41.432323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329174, 41.715206, 41.592480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079521, 41.402966, 41.605854>,  <42.929729, 41.215622, 41.613876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079521, 41.402966, 41.605854>,  <43.329174, 41.715206, 41.592480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079521, 41.402966, 41.605854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298360, 0.277666, 0.913172,
		-0.722107, 0.559967, -0.406201,
		-0.624134, -0.780602, 0.033433,
		42.892281, 41.168785, 41.615883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780392, 41.958454, 41.912018>,  <43.329174, 41.715206, 41.592480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780392, 41.958454, 41.912018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707928, 41.568798, 41.966030>,  <42.664448, 41.335003, 41.998440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.707928, 41.568798, 41.966030>,  <42.780392, 41.958454, 41.912018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707928, 41.568798, 41.966030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431457, 0.202110, 0.879202,
		-0.883757, 0.101015, -0.456913,
		-0.181160, -0.974140, 0.135033,
		42.653580, 41.276558, 42.006538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023525, 41.890934, 42.084641>,  <42.780392, 41.958454, 41.912018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023525, 41.890934, 42.084641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221016, 41.577427, 42.235336>,  <42.339512, 41.389320, 42.325752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221016, 41.577427, 42.235336>,  <42.023525, 41.890934, 42.084641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221016, 41.577427, 42.235336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413751, 0.169326, 0.894505,
		-0.764879, -0.597521, -0.240685,
		0.493731, -0.783771, 0.376739,
		42.369137, 41.342297, 42.348358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517086, 41.474136, 42.453999>,  <42.023525, 41.890934, 42.084641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517086, 41.474136, 42.453999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879860, 41.370667, 42.587002>,  <42.097523, 41.308582, 42.666805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879860, 41.370667, 42.587002>,  <41.517086, 41.474136, 42.453999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879860, 41.370667, 42.587002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391071, -0.223452, 0.892823,
		-0.156649, -0.939765, -0.303815,
		0.906932, -0.258673, 0.332512,
		42.151939, 41.293064, 42.686756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591415, 40.787594, 42.733150>,  <41.517086, 41.474136, 42.453999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591415, 40.787594, 42.733150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881813, 40.988605, 42.920940>,  <42.056049, 41.109211, 43.033615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881813, 40.988605, 42.920940>,  <41.591415, 40.787594, 42.733150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881813, 40.988605, 42.920940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417696, -0.220099, 0.881525,
		0.546321, -0.836075, 0.050114,
		0.725991, 0.502528, 0.469470,
		42.099609, 41.139362, 43.061783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860767, 40.463623, 43.338860>,  <41.591415, 40.787594, 42.733150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860767, 40.463623, 43.338860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895763, 40.860229, 43.377293>,  <41.916759, 41.098194, 43.400352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895763, 40.860229, 43.377293>,  <41.860767, 40.463623, 43.338860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895763, 40.860229, 43.377293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382326, -0.055646, 0.922351,
		0.919876, -0.117431, 0.374216,
		0.087489, 0.991521, 0.096084,
		41.922009, 41.157684, 43.406116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828213, 40.493782, 44.107021>,  <41.860767, 40.463623, 43.338860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828213, 40.493782, 44.107021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.791466, 40.869919, 43.975983>,  <41.769417, 41.095600, 43.897358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.791466, 40.869919, 43.975983>,  <41.828213, 40.493782, 44.107021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791466, 40.869919, 43.975983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531816, 0.231805, 0.814517,
		0.841862, 0.249046, 0.478794,
		-0.091865, 0.940341, -0.327595,
		41.763905, 41.152020, 43.877705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872665, 40.083172, 44.676964>,  <41.828213, 40.493782, 44.107021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872665, 40.083172, 44.676964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259472, 40.141533, 44.760475>,  <42.491554, 40.176552, 44.810581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259472, 40.141533, 44.760475>,  <41.872665, 40.083172, 44.676964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259472, 40.141533, 44.760475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176664, -0.974674, -0.137113,
		0.183489, 0.169474, -0.968303,
		0.967017, 0.145905, 0.208782,
		42.549576, 40.185303, 44.823109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136566, 39.551003, 44.384388>,  <41.872665, 40.083172, 44.676964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136566, 39.551003, 44.384388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465939, 39.698189, 44.557159>,  <42.663563, 39.786499, 44.660824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465939, 39.698189, 44.557159>,  <42.136566, 39.551003, 44.384388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465939, 39.698189, 44.557159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414492, -0.909929, -0.015006,
		0.387505, 0.191388, -0.901781,
		0.823429, 0.367967, 0.431931,
		42.712967, 39.808578, 44.686737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593315, 39.129452, 43.871979>,  <42.136566, 39.551003, 44.384388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593315, 39.129452, 43.871979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647846, 38.776356, 44.051838>,  <42.680565, 38.564499, 44.159756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.647846, 38.776356, 44.051838>,  <42.593315, 39.129452, 43.871979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647846, 38.776356, 44.051838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540154, -0.314251, -0.780692,
		0.830451, 0.349310, 0.433974,
		0.136326, -0.882739, 0.449651,
		42.688744, 38.511536, 44.186733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343281, 38.893250, 43.760303>,  <42.593315, 39.129452, 43.871979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343281, 38.893250, 43.760303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.153484, 38.557957, 43.867809>,  <43.039608, 38.356781, 43.932312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.153484, 38.557957, 43.867809>,  <43.343281, 38.893250, 43.760303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153484, 38.557957, 43.867809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533303, -0.516647, -0.669824,
		0.700321, -0.174491, 0.692172,
		-0.474487, -0.838229, 0.268762,
		43.011139, 38.306488, 43.948437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869953, 38.371292, 43.921349>,  <43.343281, 38.893250, 43.760303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869953, 38.371292, 43.921349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541218, 38.188175, 43.785698>,  <43.343975, 38.078304, 43.704308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541218, 38.188175, 43.785698>,  <43.869953, 38.371292, 43.921349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541218, 38.188175, 43.785698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561158, -0.547633, -0.620645,
		0.098409, -0.700374, 0.706960,
		-0.821838, -0.457794, -0.339129,
		43.294666, 38.050838, 43.683960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.024933, 37.633663, 43.807827>,  <43.869953, 38.371292, 43.921349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.024933, 37.633663, 43.807827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724926, 37.716434, 43.556541>,  <43.544922, 37.766098, 43.405769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724926, 37.716434, 43.556541>,  <44.024933, 37.633663, 43.807827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724926, 37.716434, 43.556541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420305, -0.584255, -0.694255,
		-0.510695, -0.784747, 0.351231,
		-0.750022, 0.206928, -0.628209,
		43.499920, 37.778515, 43.368080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.961067, 37.028351, 43.422718>,  <44.024933, 37.633663, 43.807827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.961067, 37.028351, 43.422718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804974, 37.341404, 43.228725>,  <43.711319, 37.529236, 43.112328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804974, 37.341404, 43.228725>,  <43.961067, 37.028351, 43.422718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.804974, 37.341404, 43.228725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422954, -0.315500, -0.849453,
		-0.817820, -0.536609, -0.207898,
		-0.390233, 0.782630, -0.484983,
		43.687904, 37.576195, 43.083229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748096, 36.751137, 42.752716>,  <43.961067, 37.028351, 43.422718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748096, 36.751137, 42.752716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754105, 37.148895, 42.710854>,  <43.757710, 37.387550, 42.685734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754105, 37.148895, 42.710854>,  <43.748096, 36.751137, 42.752716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754105, 37.148895, 42.710854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345114, -0.103395, -0.932848,
		-0.938441, -0.022108, -0.344732,
		0.015020, 0.994395, -0.104660,
		43.758610, 37.447212, 42.679455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244305, 37.012276, 42.241444>,  <43.748096, 36.751137, 42.752716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244305, 37.012276, 42.241444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.549740, 37.270424, 42.249840>,  <43.733002, 37.425312, 42.254879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.549740, 37.270424, 42.249840>,  <43.244305, 37.012276, 42.241444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.549740, 37.270424, 42.249840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130765, -0.122720, -0.983789,
		-0.632328, 0.753950, -0.178099,
		0.763584, 0.645367, 0.020991,
		43.778816, 37.464035, 42.256138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185440, 37.248508, 41.582329>,  <43.244305, 37.012276, 42.241444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185440, 37.248508, 41.582329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536652, 37.378021, 41.723316>,  <43.747379, 37.455730, 41.807907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536652, 37.378021, 41.723316>,  <43.185440, 37.248508, 41.582329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536652, 37.378021, 41.723316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364147, 0.025971, -0.930979,
		-0.310589, 0.945775, -0.095101,
		0.878027, 0.323783, 0.352467,
		43.800060, 37.475155, 41.829056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446487, 37.888325, 41.188587>,  <43.185440, 37.248508, 41.582329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446487, 37.888325, 41.188587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777386, 37.700459, 41.311920>,  <43.975925, 37.587738, 41.385921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777386, 37.700459, 41.311920>,  <43.446487, 37.888325, 41.188587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777386, 37.700459, 41.311920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352058, 0.005643, -0.935961,
		0.437853, 0.882824, 0.170019,
		0.827248, -0.469670, 0.308334,
		44.025558, 37.559559, 41.404419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845753, 38.107071, 40.731995>,  <43.446487, 37.888325, 41.188587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845753, 38.107071, 40.731995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067993, 37.819809, 40.899593>,  <44.201336, 37.647449, 41.000153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067993, 37.819809, 40.899593>,  <43.845753, 38.107071, 40.731995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067993, 37.819809, 40.899593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482527, -0.131887, -0.865895,
		0.677111, 0.683266, 0.273255,
		0.555598, -0.718159, 0.418996,
		44.234673, 37.604362, 41.025291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552261, 38.036110, 40.347572>,  <43.845753, 38.107071, 40.731995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552261, 38.036110, 40.347572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567978, 37.702515, 40.567726>,  <44.577408, 37.502357, 40.699818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567978, 37.702515, 40.567726>,  <44.552261, 38.036110, 40.347572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567978, 37.702515, 40.567726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514724, -0.455218, -0.726523,
		0.856455, 0.311845, 0.411384,
		0.039293, -0.833984, 0.550388,
		44.579765, 37.452320, 40.732841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.270355, 37.798729, 40.397541>,  <44.552261, 38.036110, 40.347572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.270355, 37.798729, 40.397541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.012058, 37.500694, 40.464302>,  <44.857079, 37.321873, 40.504360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.012058, 37.500694, 40.464302>,  <45.270355, 37.798729, 40.397541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.012058, 37.500694, 40.464302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393275, -0.511914, -0.763727,
		0.654485, -0.427534, 0.623590,
		-0.645743, -0.745090, 0.166901,
		44.818336, 37.277168, 40.514374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.656212, 37.192848, 40.204815>,  <45.270355, 37.798729, 40.397541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.656212, 37.192848, 40.204815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.270458, 37.088547, 40.187080>,  <45.039005, 37.025967, 40.176437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.270458, 37.088547, 40.187080>,  <45.656212, 37.192848, 40.204815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.270458, 37.088547, 40.187080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128683, -0.316093, -0.939961,
		0.231086, -0.912190, 0.338391,
		-0.964386, -0.260756, -0.044338,
		44.981144, 37.010319, 40.173779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.678589, 36.526020, 39.909229>,  <45.656212, 37.192848, 40.204815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.678589, 36.526020, 39.909229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.313831, 36.681244, 39.855774>,  <45.094978, 36.774376, 39.823700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.313831, 36.681244, 39.855774>,  <45.678589, 36.526020, 39.909229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.313831, 36.681244, 39.855774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054194, -0.208906, -0.976433,
		-0.406830, -0.897647, 0.169470,
		-0.911895, 0.388058, -0.133637,
		45.040264, 36.797661, 39.815681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381485, 36.067081, 39.488396>,  <45.678589, 36.526020, 39.909229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381485, 36.067081, 39.488396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156414, 36.396095, 39.455311>,  <45.021374, 36.593502, 39.435459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156414, 36.396095, 39.455311>,  <45.381485, 36.067081, 39.488396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.156414, 36.396095, 39.455311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135066, -0.190184, -0.972413,
		-0.815571, -0.535978, 0.218107,
		-0.562672, 0.822531, -0.082716,
		44.987614, 36.642853, 39.430496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875565, 35.781143, 39.091034>,  <45.381485, 36.067081, 39.488396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875565, 35.781143, 39.091034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.824245, 36.173759, 39.034306>,  <44.793453, 36.409328, 39.000267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.824245, 36.173759, 39.034306>,  <44.875565, 35.781143, 39.091034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824245, 36.173759, 39.034306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022051, -0.140143, -0.989886,
		-0.991490, -0.130131, -0.003664,
		-0.128301, 0.981543, -0.141820,
		44.785755, 36.468224, 38.991760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358437, 35.771679, 38.632977>,  <44.875565, 35.781143, 39.091034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358437, 35.771679, 38.632977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531361, 36.131638, 38.610016>,  <44.635113, 36.347614, 38.596237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531361, 36.131638, 38.610016>,  <44.358437, 35.771679, 38.632977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531361, 36.131638, 38.610016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035972, -0.080820, -0.996079,
		-0.901009, 0.428547, -0.067310,
		0.432306, 0.899898, -0.057404,
		44.661053, 36.401608, 38.592796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028469, 36.072441, 38.129837>,  <44.358437, 35.771679, 38.632977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028469, 36.072441, 38.129837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350658, 36.309372, 38.137363>,  <44.543972, 36.451530, 38.141880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350658, 36.309372, 38.137363>,  <44.028469, 36.072441, 38.129837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.350658, 36.309372, 38.137363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078226, -0.074804, -0.994125,
		-0.587444, 0.802215, -0.106589,
		0.805475, 0.592331, 0.018811,
		44.592300, 36.487072, 38.143005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934399, 36.570702, 37.653751>,  <44.028469, 36.072441, 38.129837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934399, 36.570702, 37.653751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331097, 36.546062, 37.698734>,  <44.569115, 36.531281, 37.725723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331097, 36.546062, 37.698734>,  <43.934399, 36.570702, 37.653751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331097, 36.546062, 37.698734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114451, 0.029814, -0.992981,
		0.057808, 0.997656, 0.036617,
		0.991746, -0.061594, 0.112459,
		44.628620, 36.527584, 37.732471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206966, 37.057831, 37.193851>,  <43.934399, 36.570702, 37.653751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206966, 37.057831, 37.193851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.521305, 36.822384, 37.269730>,  <44.709908, 36.681118, 37.315258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.521305, 36.822384, 37.269730>,  <44.206966, 37.057831, 37.193851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.521305, 36.822384, 37.269730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240777, 0.008672, -0.970542,
		0.569630, 0.808367, 0.148540,
		0.785842, -0.588615, 0.189696,
		44.757057, 36.645798, 37.326637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803806, 37.392742, 37.011082>,  <44.206966, 37.057831, 37.193851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803806, 37.392742, 37.011082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.883709, 37.002033, 36.980087>,  <44.931652, 36.767609, 36.961491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.883709, 37.002033, 36.980087>,  <44.803806, 37.392742, 37.011082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.883709, 37.002033, 36.980087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353332, 0.145568, -0.924103,
		0.913921, 0.157221, 0.374206,
		0.199761, -0.976776, -0.077486,
		44.943638, 36.709000, 36.956841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468922, 37.343620, 36.724663>,  <44.803806, 37.392742, 37.011082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468922, 37.343620, 36.724663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300846, 36.995110, 36.623215>,  <45.200001, 36.786003, 36.562347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300846, 36.995110, 36.623215>,  <45.468922, 37.343620, 36.724663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300846, 36.995110, 36.623215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167092, 0.200419, -0.965356,
		0.891919, -0.448011, 0.061369,
		-0.420190, -0.871274, -0.253616,
		45.174789, 36.733727, 36.547131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.975044, 36.934399, 36.314758>,  <45.468922, 37.343620, 36.724663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.975044, 36.934399, 36.314758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621117, 36.781013, 36.208889>,  <45.408760, 36.688984, 36.145367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.621117, 36.781013, 36.208889>,  <45.975044, 36.934399, 36.314758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621117, 36.781013, 36.208889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335200, -0.129317, -0.933230,
		0.323632, -0.914458, 0.242959,
		-0.884818, -0.383463, -0.264676,
		45.355671, 36.665974, 36.129486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.973133, 36.170380, 36.101234>,  <45.975044, 36.934399, 36.314758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.973133, 36.170380, 36.101234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.646633, 36.320332, 35.925419>,  <45.450733, 36.410301, 35.819927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.646633, 36.320332, 35.925419>,  <45.973133, 36.170380, 36.101234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.646633, 36.320332, 35.925419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365078, -0.254930, -0.895393,
		-0.447719, -0.891333, 0.071226,
		-0.816251, 0.374881, -0.439543,
		45.401756, 36.432796, 35.793556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.551643, 35.575680, 35.774776>,  <45.973133, 36.170380, 36.101234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.551643, 35.575680, 35.774776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.537392, 35.934345, 35.598267>,  <45.528843, 36.149544, 35.492363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.537392, 35.934345, 35.598267>,  <45.551643, 35.575680, 35.774776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537392, 35.934345, 35.598267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468341, -0.375083, -0.799981,
		-0.882829, -0.235165, -0.406583,
		-0.035625, 0.896666, -0.441272,
		45.526703, 36.203346, 35.465885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.881702, 34.980350, 36.046600>,  <45.551643, 35.575680, 35.774776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.881702, 34.980350, 36.046600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.269802, 34.896725, 36.095432>,  <46.502663, 34.846550, 36.124733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.269802, 34.896725, 36.095432>,  <45.881702, 34.980350, 36.046600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.269802, 34.896725, 36.095432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150214, 0.124403, -0.980796,
		0.189864, 0.969956, 0.152106,
		0.970251, -0.209066, 0.122081,
		46.560879, 34.834003, 36.132057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.271122, 35.419094, 35.614120>,  <45.881702, 34.980350, 36.046600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.271122, 35.419094, 35.614120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.505138, 35.102150, 35.683270>,  <46.645550, 34.911983, 35.724758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.505138, 35.102150, 35.683270>,  <46.271122, 35.419094, 35.614120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.505138, 35.102150, 35.683270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312600, 0.023627, -0.949591,
		0.748337, 0.609591, 0.261516,
		0.585041, -0.792364, 0.172877,
		46.680649, 34.864441, 35.735134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.778385, 35.532738, 35.183350>,  <46.271122, 35.419094, 35.614120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.778385, 35.532738, 35.183350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.869320, 35.153248, 35.271198>,  <46.923882, 34.925552, 35.323910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.869320, 35.153248, 35.271198>,  <46.778385, 35.532738, 35.183350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.869320, 35.153248, 35.271198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466077, -0.092018, -0.879946,
		0.855037, 0.302411, 0.421260,
		0.227342, -0.948726, 0.219625,
		46.937523, 34.868629, 35.337086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.448082, 35.070705, 35.331940>,  <46.778385, 35.532738, 35.183350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.448082, 35.070705, 35.331940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.543278, 34.768528, 35.087753>,  <47.600395, 34.587223, 34.941242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.543278, 34.768528, 35.087753>,  <47.448082, 35.070705, 35.331940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.543278, 34.768528, 35.087753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345884, 0.521402, -0.780067,
		0.907594, 0.396795, -0.137209,
		0.237986, -0.755443, -0.610466,
		47.614674, 34.541897, 34.904613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.835499, 34.156479, 41.769791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.593082, 33.860741, 41.887154>,  <38.447632, 33.683296, 41.957569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.593082, 33.860741, 41.887154>,  <38.835499, 34.156479, 41.769791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593082, 33.860741, 41.887154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218626, -0.199830, -0.955129,
		0.764802, -0.642989, -0.040536,
		-0.606037, -0.739347, 0.293404,
		38.411270, 33.638935, 41.975174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025402, 33.492569, 41.372837>,  <38.835499, 34.156479, 41.769791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025402, 33.492569, 41.372837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.649776, 33.428577, 41.494537>,  <38.424400, 33.390182, 41.567558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.649776, 33.428577, 41.494537>,  <39.025402, 33.492569, 41.372837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649776, 33.428577, 41.494537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265522, -0.224541, -0.937592,
		0.218309, -0.961243, 0.168381,
		-0.939063, -0.159976, 0.304250,
		38.368057, 33.380585, 41.585812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922924, 32.983356, 40.973091>,  <39.025402, 33.492569, 41.372837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922924, 32.983356, 40.973091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.559380, 33.108574, 41.083344>,  <38.341251, 33.183704, 41.149494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.559380, 33.108574, 41.083344>,  <38.922924, 32.983356, 40.973091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559380, 33.108574, 41.083344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338097, -0.165964, -0.926362,
		-0.244245, -0.935126, 0.256677,
		-0.908864, 0.313041, 0.275627,
		38.286720, 33.202484, 41.166031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428249, 32.510387, 40.689754>,  <38.922924, 32.983356, 40.973091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428249, 32.510387, 40.689754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.202206, 32.821072, 40.801018>,  <38.066578, 33.007481, 40.867775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.202206, 32.821072, 40.801018>,  <38.428249, 32.510387, 40.689754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202206, 32.821072, 40.801018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596730, -0.151987, -0.787917,
		-0.569706, -0.611245, 0.549376,
		-0.565108, 0.776710, 0.278161,
		38.032673, 33.054085, 40.884464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781345, 32.364929, 40.547733>,  <38.428249, 32.510387, 40.689754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781345, 32.364929, 40.547733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.753986, 32.762440, 40.582912>,  <37.737572, 33.000946, 40.604019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.753986, 32.762440, 40.582912>,  <37.781345, 32.364929, 40.547733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753986, 32.762440, 40.582912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518632, 0.039889, -0.854067,
		-0.852257, -0.104027, 0.512675,
		-0.068396, 0.993774, 0.087948,
		37.733467, 33.060574, 40.609295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077366, 32.515339, 40.306908>,  <37.781345, 32.364929, 40.547733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077366, 32.515339, 40.306908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.334637, 32.819473, 40.270679>,  <37.488998, 33.001953, 40.248943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.334637, 32.819473, 40.270679>,  <37.077366, 32.515339, 40.306908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334637, 32.819473, 40.270679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396954, 0.229941, -0.888569,
		-0.654789, 0.607461, 0.449713,
		0.643179, 0.760341, -0.090572,
		37.527592, 33.047577, 40.243507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706993, 33.078094, 39.920525>,  <37.077366, 32.515339, 40.306908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706993, 33.078094, 39.920525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.084534, 33.202297, 39.875393>,  <37.311058, 33.276817, 39.848312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.084534, 33.202297, 39.875393>,  <36.706993, 33.078094, 39.920525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084534, 33.202297, 39.875393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239106, 0.406364, -0.881871,
		-0.227977, 0.859333, 0.457792,
		0.943851, 0.310507, -0.112830,
		37.367687, 33.295448, 39.841545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592445, 33.767914, 39.608089>,  <36.706993, 33.078094, 39.920525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592445, 33.767914, 39.608089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.961689, 33.651054, 39.508076>,  <37.183235, 33.580940, 39.448067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.961689, 33.651054, 39.508076>,  <36.592445, 33.767914, 39.608089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961689, 33.651054, 39.508076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223663, 0.120989, -0.967128,
		0.312798, 0.948689, 0.046343,
		0.923110, -0.292150, -0.250032,
		37.238621, 33.563408, 39.433067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857540, 34.288223, 39.212746>,  <36.592445, 33.767914, 39.608089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857540, 34.288223, 39.212746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.076313, 33.965645, 39.122849>,  <37.207577, 33.772099, 39.068909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.076313, 33.965645, 39.122849>,  <36.857540, 34.288223, 39.212746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076313, 33.965645, 39.122849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002311, 0.266997, -0.963695,
		0.837174, 0.527594, 0.144165,
		0.546931, -0.806447, -0.224743,
		37.240391, 33.723709, 39.055428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104473, 34.419502, 38.630829>,  <36.857540, 34.288223, 39.212746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104473, 34.419502, 38.630829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.252491, 34.047947, 38.624725>,  <37.341301, 33.825012, 38.621063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.252491, 34.047947, 38.624725>,  <37.104473, 34.419502, 38.630829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252491, 34.047947, 38.624725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198270, 0.095014, -0.975531,
		0.907612, 0.357960, 0.219330,
		0.370040, -0.928890, -0.015263,
		37.363503, 33.769279, 38.620148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669819, 34.394707, 38.197624>,  <37.104473, 34.419502, 38.630829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669819, 34.394707, 38.197624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513695, 34.026699, 38.211582>,  <37.420021, 33.805893, 38.219955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513695, 34.026699, 38.211582>,  <37.669819, 34.394707, 38.197624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513695, 34.026699, 38.211582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070957, -0.067848, -0.995169,
		0.917944, -0.385952, 0.091763,
		-0.390314, -0.920021, 0.034895,
		37.396599, 33.750694, 38.222050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159302, 33.872040, 38.019993>,  <37.669819, 34.394707, 38.197624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159302, 33.872040, 38.019993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.806515, 33.712811, 37.919067>,  <37.594841, 33.617271, 37.858513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.806515, 33.712811, 37.919067>,  <38.159302, 33.872040, 38.019993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806515, 33.712811, 37.919067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295527, -0.050072, -0.954021,
		0.367141, -0.915984, 0.161805,
		-0.881970, -0.398078, -0.252315,
		37.541924, 33.593388, 37.843372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286251, 33.315247, 37.470428>,  <38.159302, 33.872040, 38.019993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286251, 33.315247, 37.470428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.905800, 33.437626, 37.453697>,  <37.677528, 33.511055, 37.443657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.905800, 33.437626, 37.453697>,  <38.286251, 33.315247, 37.470428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905800, 33.437626, 37.453697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088437, 0.140093, -0.986181,
		-0.295864, -0.941683, -0.160304,
		-0.951127, 0.305952, -0.041832,
		37.620461, 33.529411, 37.441147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169704, 32.954441, 36.875393>,  <38.286251, 33.315247, 37.470428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169704, 32.954441, 36.875393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.894753, 33.238964, 36.934120>,  <37.729782, 33.409676, 36.969357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.894753, 33.238964, 36.934120>,  <38.169704, 32.954441, 36.875393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894753, 33.238964, 36.934120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010167, 0.211545, -0.977315,
		-0.726225, -0.670296, -0.152644,
		-0.687382, 0.711303, 0.146814,
		37.688538, 33.452354, 36.978165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754070, 32.892632, 36.387501>,  <38.169704, 32.954441, 36.875393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754070, 32.892632, 36.387501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.595753, 33.234463, 36.521988>,  <37.500763, 33.439560, 36.602680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.595753, 33.234463, 36.521988>,  <37.754070, 32.892632, 36.387501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595753, 33.234463, 36.521988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186302, 0.283780, -0.940617,
		-0.899243, -0.434929, 0.046891,
		-0.395795, 0.854579, 0.336216,
		37.477013, 33.490837, 36.622852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218700, 33.010990, 35.864521>,  <37.754070, 32.892632, 36.387501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218700, 33.010990, 35.864521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.300945, 33.364483, 36.032681>,  <37.350292, 33.576580, 36.133575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.300945, 33.364483, 36.032681>,  <37.218700, 33.010990, 35.864521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300945, 33.364483, 36.032681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077112, 0.442875, -0.893261,
		-0.975591, 0.151246, 0.159207,
		0.205611, 0.883734, 0.420402,
		37.362629, 33.629604, 36.158802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844040, 33.394463, 35.520954>,  <37.218700, 33.010990, 35.864521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844040, 33.394463, 35.520954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.075356, 33.676163, 35.685692>,  <37.214146, 33.845184, 35.784534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.075356, 33.676163, 35.685692>,  <36.844040, 33.394463, 35.520954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075356, 33.676163, 35.685692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002182, 0.506148, -0.862444,
		-0.815831, 0.497841, 0.294235,
		0.578286, 0.704251, 0.411845,
		37.248840, 33.887440, 35.809246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499592, 34.040977, 35.466702>,  <36.844040, 33.394463, 35.520954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499592, 34.040977, 35.466702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891365, 34.118904, 35.487686>,  <37.126431, 34.165661, 35.500278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891365, 34.118904, 35.487686>,  <36.499592, 34.040977, 35.466702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891365, 34.118904, 35.487686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057778, 0.519982, -0.852221,
		-0.193309, 0.831664, 0.520545,
		0.979435, 0.194818, 0.052466,
		37.185196, 34.177349, 35.503426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563904, 34.718346, 35.310413>,  <36.499592, 34.040977, 35.466702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563904, 34.718346, 35.310413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929062, 34.566776, 35.249691>,  <37.148155, 34.475834, 35.213257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929062, 34.566776, 35.249691>,  <36.563904, 34.718346, 35.310413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929062, 34.566776, 35.249691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047139, 0.271537, -0.961273,
		0.405470, 0.884694, 0.230022,
		0.912892, -0.378925, -0.151803,
		37.202930, 34.453098, 35.204151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929344, 35.222881, 34.959633>,  <36.563904, 34.718346, 35.310413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929344, 35.222881, 34.959633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.154026, 34.903557, 34.872742>,  <37.288837, 34.711964, 34.820606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.154026, 34.903557, 34.872742>,  <36.929344, 35.222881, 34.959633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154026, 34.903557, 34.872742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015255, 0.252526, -0.967470,
		0.827196, 0.546748, 0.129667,
		0.561707, -0.798309, -0.217229,
		37.322536, 34.664062, 34.807571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476452, 35.501785, 34.612522>,  <36.929344, 35.222881, 34.959633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476452, 35.501785, 34.612522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446396, 35.112640, 34.524979>,  <37.428360, 34.879154, 34.472454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446396, 35.112640, 34.524979>,  <37.476452, 35.501785, 34.612522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446396, 35.112640, 34.524979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099834, 0.225716, -0.969064,
		0.992162, -0.050970, -0.114085,
		-0.075144, -0.972859, -0.218858,
		37.423851, 34.820782, 34.459320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779884, 35.480534, 33.939919>,  <37.476452, 35.501785, 34.612522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779884, 35.480534, 33.939919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.572903, 35.139645, 33.970795>,  <37.448711, 34.935112, 33.989319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.572903, 35.139645, 33.970795>,  <37.779884, 35.480534, 33.939919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572903, 35.139645, 33.970795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048878, -0.060624, -0.996963,
		0.854312, -0.519658, -0.010285,
		-0.517457, -0.852220, 0.077192,
		37.417667, 34.883980, 33.993954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509003, 35.654545, 34.176624>,  <37.779884, 35.480534, 33.939919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509003, 35.654545, 34.176624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.706631, 35.980068, 34.054241>,  <38.825207, 36.175381, 33.980812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.706631, 35.980068, 34.054241>,  <38.509003, 35.654545, 34.176624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706631, 35.980068, 34.054241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246199, 0.206548, 0.946955,
		0.833833, -0.543192, -0.098308,
		0.494073, 0.813806, -0.305961,
		38.854855, 36.224209, 33.962452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050209, 35.668865, 34.629013>,  <38.509003, 35.654545, 34.176624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050209, 35.668865, 34.629013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.045719, 36.040241, 34.480488>,  <39.043026, 36.263069, 34.391373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.045719, 36.040241, 34.480488>,  <39.050209, 35.668865, 34.629013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045719, 36.040241, 34.480488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163724, 0.368027, 0.915287,
		0.986442, -0.050517, -0.156140,
		-0.011226, 0.928442, -0.371309,
		39.042351, 36.318775, 34.369095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572712, 36.008144, 35.054684>,  <39.050209, 35.668865, 34.629013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572712, 36.008144, 35.054684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.363026, 36.306965, 34.891163>,  <39.237213, 36.486256, 34.793049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.363026, 36.306965, 34.891163>,  <39.572712, 36.008144, 35.054684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363026, 36.306965, 34.891163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118334, 0.411488, 0.903701,
		0.843324, 0.522109, -0.127307,
		-0.524216, 0.747047, -0.408801,
		39.205761, 36.531078, 34.768524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857349, 36.691887, 35.212845>,  <39.572712, 36.008144, 35.054684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857349, 36.691887, 35.212845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.470284, 36.764557, 35.142857>,  <39.238045, 36.808159, 35.100864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.470284, 36.764557, 35.142857>,  <39.857349, 36.691887, 35.212845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470284, 36.764557, 35.142857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102005, 0.352561, 0.930213,
		0.230685, 0.917984, -0.322630,
		-0.967667, 0.181676, -0.174969,
		39.179985, 36.819061, 35.090366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732571, 37.380245, 35.528625>,  <39.857349, 36.691887, 35.212845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732571, 37.380245, 35.528625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.373466, 37.212383, 35.475079>,  <39.158005, 37.111668, 35.442951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.373466, 37.212383, 35.475079>,  <39.732571, 37.380245, 35.528625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373466, 37.212383, 35.475079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222019, 0.168613, 0.960353,
		-0.380445, 0.891885, -0.244545,
		-0.897758, -0.419655, -0.133867,
		39.104137, 37.086487, 35.434917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405273, 37.848427, 35.993656>,  <39.732571, 37.380245, 35.528625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405273, 37.848427, 35.993656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.150963, 37.544201, 35.941002>,  <38.998375, 37.361668, 35.909409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.150963, 37.544201, 35.941002>,  <39.405273, 37.848427, 35.993656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150963, 37.544201, 35.941002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319466, 0.104042, 0.941869,
		-0.702655, 0.640874, -0.309122,
		-0.635780, -0.760563, -0.131632,
		38.960228, 37.316032, 35.901512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814201, 38.071960, 36.265434>,  <39.405273, 37.848427, 35.993656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814201, 38.071960, 36.265434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.764332, 37.675232, 36.254555>,  <38.734409, 37.437195, 36.248028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.764332, 37.675232, 36.254555>,  <38.814201, 38.071960, 36.265434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764332, 37.675232, 36.254555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327807, 0.015300, 0.944621,
		-0.936482, 0.126688, -0.327035,
		-0.124676, -0.991824, -0.027201,
		38.726929, 37.377686, 36.246395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193630, 37.980682, 36.561333>,  <38.814201, 38.071960, 36.265434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193630, 37.980682, 36.561333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.388069, 37.631893, 36.584560>,  <38.504734, 37.422619, 36.598499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.388069, 37.631893, 36.584560>,  <38.193630, 37.980682, 36.561333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388069, 37.631893, 36.584560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243722, -0.071452, 0.967209,
		-0.839229, -0.484315, -0.247252,
		0.486101, -0.871971, 0.058073,
		38.533901, 37.370300, 36.601982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712860, 37.490242, 36.897892>,  <38.193630, 37.980682, 36.561333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712860, 37.490242, 36.897892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.071312, 37.322472, 36.955902>,  <38.286385, 37.221809, 36.990707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.071312, 37.322472, 36.955902>,  <37.712860, 37.490242, 36.897892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071312, 37.322472, 36.955902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258413, -0.227492, 0.938867,
		-0.360793, -0.878823, -0.312247,
		0.896131, -0.419425, 0.145022,
		38.340153, 37.196644, 36.999409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688293, 36.805801, 37.257652>,  <37.712860, 37.490242, 36.897892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688293, 36.805801, 37.257652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066944, 36.914471, 37.327038>,  <38.294136, 36.979671, 37.368671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066944, 36.914471, 37.327038>,  <37.688293, 36.805801, 37.257652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066944, 36.914471, 37.327038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091348, -0.289994, 0.952659,
		0.309117, -0.917658, -0.249699,
		0.946626, 0.271674, 0.173468,
		38.350933, 36.995972, 37.379078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051708, 36.353596, 37.678635>,  <37.688293, 36.805801, 37.257652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051708, 36.353596, 37.678635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282360, 36.671665, 37.753674>,  <38.420750, 36.862507, 37.798695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.282360, 36.671665, 37.753674>,  <38.051708, 36.353596, 37.678635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282360, 36.671665, 37.753674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078440, -0.174667, 0.981498,
		0.813232, -0.580675, -0.038345,
		0.576629, 0.795177, 0.187593,
		38.455349, 36.910217, 37.809952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500713, 36.153378, 38.130760>,  <38.051708, 36.353596, 37.678635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500713, 36.153378, 38.130760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560459, 36.548611, 38.145645>,  <38.596306, 36.785751, 38.154575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560459, 36.548611, 38.145645>,  <38.500713, 36.153378, 38.130760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560459, 36.548611, 38.145645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044303, -0.044283, 0.998036,
		0.987789, -0.147426, -0.050389,
		0.149368, 0.988081, 0.037211,
		38.605270, 36.845036, 38.156807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164841, 36.266575, 38.442707>,  <38.500713, 36.153378, 38.130760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164841, 36.266575, 38.442707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.939034, 36.594707, 38.479313>,  <38.803551, 36.791588, 38.501278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.939034, 36.594707, 38.479313>,  <39.164841, 36.266575, 38.442707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939034, 36.594707, 38.479313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193994, 0.024090, 0.980707,
		0.802301, 0.571380, -0.172739,
		-0.564517, 0.820332, 0.091517,
		38.769680, 36.840809, 38.506767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460125, 36.730217, 38.811745>,  <39.164841, 36.266575, 38.442707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460125, 36.730217, 38.811745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.120682, 36.908344, 38.925972>,  <38.917015, 37.015221, 38.994507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.120682, 36.908344, 38.925972>,  <39.460125, 36.730217, 38.811745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120682, 36.908344, 38.925972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337666, 0.040418, 0.940398,
		0.407238, 0.894458, -0.184669,
		-0.848610, 0.445322, 0.285568,
		38.866100, 37.041943, 39.011642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645817, 37.215027, 39.370564>,  <39.460125, 36.730217, 38.811745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645817, 37.215027, 39.370564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.249596, 37.177624, 39.410683>,  <39.011864, 37.155182, 39.434753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.249596, 37.177624, 39.410683>,  <39.645817, 37.215027, 39.370564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249596, 37.177624, 39.410683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102017, -0.013822, 0.994687,
		-0.091621, 0.995523, 0.023231,
		-0.990554, -0.093504, 0.100294,
		38.952431, 37.149574, 39.440769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453056, 37.598579, 39.937775>,  <39.645817, 37.215027, 39.370564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453056, 37.598579, 39.937775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.136559, 37.359772, 39.884857>,  <38.946659, 37.216488, 39.853107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.136559, 37.359772, 39.884857>,  <39.453056, 37.598579, 39.937775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136559, 37.359772, 39.884857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027230, -0.250529, 0.967726,
		-0.610892, 0.762106, 0.214487,
		-0.791245, -0.597017, -0.132294,
		38.899185, 37.180668, 39.845169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980804, 37.669441, 40.460976>,  <39.453056, 37.598579, 39.937775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980804, 37.669441, 40.460976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.895630, 37.297707, 40.340317>,  <38.844524, 37.074665, 40.267921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.895630, 37.297707, 40.340317>,  <38.980804, 37.669441, 40.460976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895630, 37.297707, 40.340317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080322, -0.324332, 0.942527,
		-0.973759, 0.176471, 0.143708,
		-0.212938, -0.929337, -0.301647,
		38.831749, 37.018906, 40.249825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722347, 37.381817, 41.075848>,  <38.980804, 37.669441, 40.460976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722347, 37.381817, 41.075848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.778702, 37.061485, 40.843014>,  <38.812515, 36.869286, 40.703312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.778702, 37.061485, 40.843014>,  <38.722347, 37.381817, 41.075848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778702, 37.061485, 40.843014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230617, -0.545228, 0.805942,
		-0.962791, -0.247785, 0.107870,
		0.140887, -0.800830, -0.582084,
		38.820969, 36.821236, 40.668388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.266773, 36.554813, 41.433891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.571243, 36.458080, 41.193184>,  <38.753925, 36.400040, 41.048759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.571243, 36.458080, 41.193184>,  <38.266773, 36.554813, 41.433891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571243, 36.458080, 41.193184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436386, -0.495421, 0.751083,
		-0.479758, -0.834313, -0.271576,
		0.761183, -0.241826, -0.601765,
		38.799595, 36.385529, 41.012653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358582, 35.854187, 41.522324>,  <38.266773, 36.554813, 41.433891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358582, 35.854187, 41.522324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.714249, 35.961948, 41.374378>,  <38.927650, 36.026608, 41.285610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.714249, 35.961948, 41.374378>,  <38.358582, 35.854187, 41.522324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714249, 35.961948, 41.374378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454726, -0.430058, 0.779920,
		0.051051, -0.861667, -0.504900,
		0.889167, 0.269407, -0.369867,
		38.980999, 36.042770, 41.263416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752995, 35.249573, 41.555477>,  <38.358582, 35.854187, 41.522324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752995, 35.249573, 41.555477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.011711, 35.554634, 41.557331>,  <39.166943, 35.737671, 41.558445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.011711, 35.554634, 41.557331>,  <38.752995, 35.249573, 41.555477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011711, 35.554634, 41.557331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553006, -0.473162, 0.685786,
		0.525210, -0.440998, -0.727789,
		0.646792, 0.762653, 0.004634,
		39.205750, 35.783428, 41.558720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352245, 34.940514, 41.552151>,  <38.752995, 35.249573, 41.555477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352245, 34.940514, 41.552151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.412994, 35.291996, 41.733177>,  <39.449444, 35.502884, 41.841793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.412994, 35.291996, 41.733177>,  <39.352245, 34.940514, 41.552151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412994, 35.291996, 41.733177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516786, -0.460900, 0.721459,
		0.842536, 0.124311, -0.524099,
		0.151872, 0.878703, 0.452567,
		39.458557, 35.555607, 41.868946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212727, 35.024971, 41.599525>,  <39.352245, 34.940514, 41.552151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212727, 35.024971, 41.599525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.050907, 35.262501, 41.877724>,  <39.953815, 35.405018, 42.044643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.050907, 35.262501, 41.877724>,  <40.212727, 35.024971, 41.599525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050907, 35.262501, 41.877724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652768, -0.345128, 0.674374,
		0.640495, 0.726813, -0.248009,
		-0.404549, 0.593825, 0.695494,
		39.929543, 35.440647, 42.086372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745422, 35.044579, 42.098549>,  <40.212727, 35.024971, 41.599525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745422, 35.044579, 42.098549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.463802, 35.224045, 42.318737>,  <40.294830, 35.331722, 42.450848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.463802, 35.224045, 42.318737>,  <40.745422, 35.044579, 42.098549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463802, 35.224045, 42.318737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532863, -0.178634, 0.827132,
		0.469435, 0.875666, -0.113308,
		-0.704050, 0.448663, 0.550468,
		40.252586, 35.358643, 42.483879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134983, 35.571323, 42.529896>,  <40.745422, 35.044579, 42.098549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134983, 35.571323, 42.529896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.781837, 35.524693, 42.711868>,  <40.569950, 35.496716, 42.821053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.781837, 35.524693, 42.711868>,  <41.134983, 35.571323, 42.529896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781837, 35.524693, 42.711868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469207, -0.177694, 0.865026,
		-0.020000, 0.977157, 0.211577,
		-0.882862, -0.116574, 0.454935,
		40.516979, 35.489719, 42.848351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170639, 35.904968, 43.090656>,  <41.134983, 35.571323, 42.529896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170639, 35.904968, 43.090656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.897038, 35.624893, 43.172520>,  <40.732876, 35.456848, 43.221638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.897038, 35.624893, 43.172520>,  <41.170639, 35.904968, 43.090656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897038, 35.624893, 43.172520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481156, -0.222166, 0.848016,
		-0.548301, 0.678515, 0.488860,
		-0.683999, -0.700186, 0.204658,
		40.691837, 35.414837, 43.233917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875992, 35.966270, 43.827698>,  <41.170639, 35.904968, 43.090656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875992, 35.966270, 43.827698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.813534, 35.591167, 43.703609>,  <40.776058, 35.366108, 43.629158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.813534, 35.591167, 43.703609>,  <40.875992, 35.966270, 43.827698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813534, 35.591167, 43.703609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541355, -0.343946, 0.767226,
		-0.826168, -0.048141, 0.561363,
		-0.156144, -0.937754, -0.310219,
		40.766689, 35.309841, 43.610542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655926, 35.696850, 44.418175>,  <40.875992, 35.966270, 43.827698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655926, 35.696850, 44.418175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.748394, 35.374977, 44.199432>,  <40.803875, 35.181854, 44.068188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.748394, 35.374977, 44.199432>,  <40.655926, 35.696850, 44.418175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748394, 35.374977, 44.199432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488075, -0.390316, 0.780664,
		-0.841631, -0.447373, 0.302514,
		0.231172, -0.804681, -0.546853,
		40.817745, 35.133572, 44.035378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144485, 35.218529, 44.590069>,  <40.655926, 35.696850, 44.418175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144485, 35.218529, 44.590069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.480049, 35.050533, 44.451599>,  <40.681389, 34.949738, 44.368515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.480049, 35.050533, 44.451599>,  <40.144485, 35.218529, 44.590069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480049, 35.050533, 44.451599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122432, -0.474121, 0.871906,
		-0.530318, -0.773835, -0.346326,
		0.838912, -0.419986, -0.346177,
		40.731724, 34.924538, 44.347748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173477, 34.509960, 44.856228>,  <40.144485, 35.218529, 44.590069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173477, 34.509960, 44.856228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.551167, 34.585026, 44.747986>,  <40.777779, 34.630066, 44.683041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.551167, 34.585026, 44.747986>,  <40.173477, 34.509960, 44.856228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.551167, 34.585026, 44.747986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328546, -0.480844, 0.812925,
		0.022438, -0.856488, -0.515680,
		0.944222, 0.187665, -0.270606,
		40.834435, 34.641327, 44.666805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489693, 33.858067, 44.966103>,  <40.173477, 34.509960, 44.856228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489693, 33.858067, 44.966103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.805164, 34.100586, 44.925327>,  <40.994446, 34.246098, 44.900864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.805164, 34.100586, 44.925327>,  <40.489693, 33.858067, 44.966103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805164, 34.100586, 44.925327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451042, -0.457920, 0.766074,
		0.417793, -0.650161, -0.634618,
		0.788676, 0.606300, -0.101934,
		41.041767, 34.282475, 44.894749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087173, 33.444767, 45.008099>,  <40.489693, 33.858067, 44.966103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087173, 33.444767, 45.008099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.203201, 33.819328, 45.087093>,  <41.272816, 34.044067, 45.134491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.203201, 33.819328, 45.087093>,  <41.087173, 33.444767, 45.008099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203201, 33.819328, 45.087093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438644, -0.313501, 0.842204,
		0.850560, -0.157667, -0.501686,
		0.290067, 0.936407, 0.197491,
		41.290222, 34.100250, 45.146339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.791286, 33.284428, 45.264923>,  <41.087173, 33.444767, 45.008099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.791286, 33.284428, 45.264923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.688744, 33.657787, 45.365364>,  <41.627220, 33.881802, 45.425629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.688744, 33.657787, 45.365364>,  <41.791286, 33.284428, 45.264923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688744, 33.657787, 45.365364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518955, -0.086259, 0.850438,
		0.815456, 0.348326, -0.462278,
		-0.256354, 0.933396, 0.251106,
		41.611835, 33.937805, 45.440697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481068, 33.597794, 45.500889>,  <41.791286, 33.284428, 45.264923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481068, 33.597794, 45.500889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.161713, 33.790733, 45.645061>,  <41.970100, 33.906498, 45.731564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.161713, 33.790733, 45.645061>,  <42.481068, 33.597794, 45.500889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161713, 33.790733, 45.645061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339547, -0.133684, 0.931041,
		0.497271, 0.865718, -0.057048,
		-0.798392, 0.482349, 0.360429,
		41.922195, 33.935440, 45.753189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731838, 33.902706, 46.096703>,  <42.481068, 33.597794, 45.500889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731838, 33.902706, 46.096703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.348198, 34.010719, 46.130665>,  <42.118015, 34.075527, 46.151043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.348198, 34.010719, 46.130665>,  <42.731838, 33.902706, 46.096703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348198, 34.010719, 46.130665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066585, -0.076300, 0.994859,
		0.275119, 0.959824, 0.055200,
		-0.959102, 0.270029, 0.084901,
		42.060467, 34.091728, 46.156136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665756, 34.555607, 46.465378>,  <42.731838, 33.902706, 46.096703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665756, 34.555607, 46.465378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.350620, 34.316727, 46.525578>,  <42.161537, 34.173397, 46.561699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.350620, 34.316727, 46.525578>,  <42.665756, 34.555607, 46.465378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350620, 34.316727, 46.525578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164766, 0.031078, 0.985843,
		-0.593426, 0.801487, 0.073914,
		-0.787843, -0.597204, 0.150501,
		42.114265, 34.137566, 46.570728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.488510, 34.777267, 47.179668>,  <42.665756, 34.555607, 46.465378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.488510, 34.777267, 47.179668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.328758, 34.417393, 47.109180>,  <42.232906, 34.201469, 47.066887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.328758, 34.417393, 47.109180>,  <42.488510, 34.777267, 47.179668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328758, 34.417393, 47.109180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080060, -0.225712, 0.970899,
		-0.913281, 0.373653, 0.162175,
		-0.399384, -0.899687, -0.176224,
		42.208942, 34.147488, 47.056313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904945, 34.637989, 47.667786>,  <42.488510, 34.777267, 47.179668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904945, 34.637989, 47.667786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.027390, 34.278522, 47.542118>,  <42.100857, 34.062843, 47.466717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.027390, 34.278522, 47.542118>,  <41.904945, 34.637989, 47.667786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027390, 34.278522, 47.542118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168404, -0.273687, 0.946962,
		-0.936982, -0.342784, 0.067559,
		0.306113, -0.898663, -0.314166,
		42.119225, 34.008923, 47.447868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876892, 34.298607, 48.335781>,  <41.904945, 34.637989, 47.667786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876892, 34.298607, 48.335781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.080662, 34.053310, 48.094311>,  <42.202923, 33.906132, 47.949429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.080662, 34.053310, 48.094311>,  <41.876892, 34.298607, 48.335781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080662, 34.053310, 48.094311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473780, -0.385745, 0.791665,
		-0.718343, -0.689305, 0.094031,
		0.509427, -0.613237, -0.603676,
		42.233490, 33.869339, 47.913208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862625, 33.647381, 48.685352>,  <41.876892, 34.298607, 48.335781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862625, 33.647381, 48.685352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.160721, 33.598164, 48.423214>,  <42.339581, 33.568634, 48.265930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.160721, 33.598164, 48.423214>,  <41.862625, 33.647381, 48.685352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160721, 33.598164, 48.423214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577393, -0.372503, 0.726539,
		-0.333509, -0.919839, -0.206564,
		0.745244, -0.123039, -0.655342,
		42.384293, 33.561249, 48.226612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959190, 32.988842, 48.575733>,  <41.862625, 33.647381, 48.685352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959190, 32.988842, 48.575733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.308537, 33.176960, 48.525047>,  <42.518143, 33.289829, 48.494637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.308537, 33.176960, 48.525047>,  <41.959190, 32.988842, 48.575733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308537, 33.176960, 48.525047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398443, -0.540215, 0.741222,
		0.280140, -0.697846, -0.659191,
		0.873364, 0.470296, -0.126716,
		42.570545, 33.318050, 48.487034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121193, 32.723377, 49.275112>,  <41.959190, 32.988842, 48.575733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121193, 32.723377, 49.275112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.907375, 32.427017, 49.437752>,  <41.779083, 32.249199, 49.535336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.907375, 32.427017, 49.437752>,  <42.121193, 32.723377, 49.275112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907375, 32.427017, 49.437752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625229, 0.022978, -0.780103,
		0.568639, -0.671218, -0.475517,
		-0.534545, -0.740904, 0.406599,
		41.747013, 32.204746, 49.559731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005222, 32.216415, 48.794422>,  <42.121193, 32.723377, 49.275112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005222, 32.216415, 48.794422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.721085, 32.125820, 49.060993>,  <41.550602, 32.071465, 49.220936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.721085, 32.125820, 49.060993>,  <42.005222, 32.216415, 48.794422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721085, 32.125820, 49.060993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666868, -0.086339, -0.740157,
		0.225176, -0.970180, -0.089708,
		-0.710340, -0.226488, 0.666423,
		41.507984, 32.057873, 49.260921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645954, 31.637203, 48.566235>,  <42.005222, 32.216415, 48.794422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645954, 31.637203, 48.566235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.378819, 31.803755, 48.813011>,  <41.218536, 31.903687, 48.961075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.378819, 31.803755, 48.813011>,  <41.645954, 31.637203, 48.566235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378819, 31.803755, 48.813011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733022, -0.224186, -0.642199,
		-0.129087, -0.881120, 0.454934,
		-0.667844, 0.416376, 0.616940,
		41.178467, 31.928669, 48.998093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058784, 31.248611, 48.477753>,  <41.645954, 31.637203, 48.566235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058784, 31.248611, 48.477753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.930901, 31.596264, 48.628696>,  <40.854172, 31.804855, 48.719261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.930901, 31.596264, 48.628696>,  <41.058784, 31.248611, 48.477753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930901, 31.596264, 48.628696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643391, 0.093236, -0.759839,
		-0.695582, -0.485716, 0.529382,
		-0.319708, 0.869130, 0.377359,
		40.834988, 31.857002, 48.741905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379086, 31.197580, 48.388287>,  <41.058784, 31.248611, 48.477753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379086, 31.197580, 48.388287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.425621, 31.592283, 48.433506>,  <40.453541, 31.829105, 48.460636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.425621, 31.592283, 48.433506>,  <40.379086, 31.197580, 48.388287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425621, 31.592283, 48.433506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545678, 0.158603, -0.822849,
		-0.829881, 0.034040, 0.556902,
		0.116336, 0.986756, 0.113047,
		40.460522, 31.888309, 48.467419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743507, 31.418884, 48.296204>,  <40.379086, 31.197580, 48.388287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743507, 31.418884, 48.296204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.967163, 31.745687, 48.239834>,  <40.101357, 31.941769, 48.206013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.967163, 31.745687, 48.239834>,  <39.743507, 31.418884, 48.296204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967163, 31.745687, 48.239834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618609, 0.297966, -0.727007,
		-0.551979, 0.493677, 0.672014,
		0.559144, 0.817006, -0.140922,
		40.134907, 31.990789, 48.197556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259357, 31.982794, 48.123753>,  <39.743507, 31.418884, 48.296204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259357, 31.982794, 48.123753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.619579, 32.086472, 47.984146>,  <39.835712, 32.148678, 47.900383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.619579, 32.086472, 47.984146>,  <39.259357, 31.982794, 48.123753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619579, 32.086472, 47.984146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415827, 0.279373, -0.865470,
		-0.126819, 0.924537, 0.359372,
		0.900558, 0.259195, -0.349017,
		39.889748, 32.164230, 47.879440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035522, 32.350468, 47.594479>,  <39.259357, 31.982794, 48.123753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035522, 32.350468, 47.594479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.429092, 32.338726, 47.524025>,  <39.665234, 32.331680, 47.481754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.429092, 32.338726, 47.524025>,  <39.035522, 32.350468, 47.594479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429092, 32.338726, 47.524025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161096, 0.279569, -0.946514,
		0.077030, 0.959677, 0.270346,
		0.983928, -0.029358, -0.176135,
		39.724270, 32.329918, 47.471184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254269, 33.039417, 47.316944>,  <39.035522, 32.350468, 47.594479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254269, 33.039417, 47.316944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.474686, 32.721645, 47.214787>,  <39.606937, 32.530983, 47.153492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.474686, 32.721645, 47.214787>,  <39.254269, 33.039417, 47.316944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474686, 32.721645, 47.214787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245502, 0.138165, -0.959499,
		0.797544, 0.591428, -0.118900,
		0.551047, -0.794433, -0.255389,
		39.639999, 32.483315, 47.138168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663605, 33.292061, 46.910156>,  <39.254269, 33.039417, 47.316944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663605, 33.292061, 46.910156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.686203, 32.907318, 46.803093>,  <39.699764, 32.676472, 46.738853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.686203, 32.907318, 46.803093>,  <39.663605, 33.292061, 46.910156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686203, 32.907318, 46.803093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107672, 0.260652, -0.959410,
		0.992580, 0.083024, -0.088839,
		0.056498, -0.961856, -0.267657,
		39.703152, 32.618763, 46.722797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070095, 33.227547, 46.328026>,  <39.663605, 33.292061, 46.910156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070095, 33.227547, 46.328026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.885769, 32.875332, 46.283646>,  <39.775173, 32.664005, 46.257019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.885769, 32.875332, 46.283646>,  <40.070095, 33.227547, 46.328026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885769, 32.875332, 46.283646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060472, 0.093569, -0.993775,
		0.885433, -0.464657, 0.010130,
		-0.460817, -0.880533, -0.110948,
		39.747524, 32.611172, 46.250362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502083, 32.817814, 45.779579>,  <40.070095, 33.227547, 46.328026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502083, 32.817814, 45.779579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.129032, 32.673630, 45.786224>,  <39.905201, 32.587120, 45.790211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.129032, 32.673630, 45.786224>,  <40.502083, 32.817814, 45.779579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129032, 32.673630, 45.786224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103426, 0.222925, -0.969333,
		0.345706, -0.905743, -0.245187,
		-0.932625, -0.360463, 0.016611,
		39.849243, 32.565491, 45.791206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396126, 32.495293, 45.210011>,  <40.502083, 32.817814, 45.779579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396126, 32.495293, 45.210011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.013702, 32.539131, 45.318771>,  <39.784248, 32.565434, 45.384029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.013702, 32.539131, 45.318771>,  <40.396126, 32.495293, 45.210011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013702, 32.539131, 45.318771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258359, 0.123344, -0.958142,
		-0.138547, -0.986294, -0.089609,
		-0.956063, 0.109596, 0.271907,
		39.726883, 32.572010, 45.400345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979042, 32.049622, 44.790947>,  <40.396126, 32.495293, 45.210011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979042, 32.049622, 44.790947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.715157, 32.330048, 44.899231>,  <39.556824, 32.498302, 44.964203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.715157, 32.330048, 44.899231>,  <39.979042, 32.049622, 44.790947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715157, 32.330048, 44.899231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297630, 0.087036, -0.950706,
		-0.690069, -0.707766, 0.151240,
		-0.659713, 0.701066, 0.270713,
		39.517242, 32.540367, 44.980446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584770, 32.006893, 44.211464>,  <39.979042, 32.049622, 44.790947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584770, 32.006893, 44.211464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.457588, 32.344238, 44.384735>,  <39.381279, 32.546646, 44.488697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.457588, 32.344238, 44.384735>,  <39.584770, 32.006893, 44.211464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457588, 32.344238, 44.384735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403613, 0.293022, -0.866738,
		-0.857903, -0.450425, 0.247222,
		-0.317959, 0.843360, 0.433182,
		39.362202, 32.597244, 44.514690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853725, 32.143433, 43.995174>,  <39.584770, 32.006893, 44.211464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853725, 32.143433, 43.995174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.958416, 32.508358, 44.121151>,  <39.021229, 32.727314, 44.196735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.958416, 32.508358, 44.121151>,  <38.853725, 32.143433, 43.995174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958416, 32.508358, 44.121151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318280, 0.389647, -0.864218,
		-0.911153, 0.125946, 0.392350,
		0.261723, 0.912312, 0.314942,
		39.036934, 32.782051, 44.215633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279476, 32.529285, 43.997349>,  <38.853725, 32.143433, 43.995174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279476, 32.529285, 43.997349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.557804, 32.815605, 43.973820>,  <38.724800, 32.987396, 43.959702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.557804, 32.815605, 43.973820>,  <38.279476, 32.529285, 43.997349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557804, 32.815605, 43.973820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504067, 0.428376, -0.749940,
		-0.511610, 0.551475, 0.658885,
		0.695824, 0.715800, -0.058819,
		38.766552, 33.030346, 43.956173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939686, 33.126923, 44.047153>,  <38.279476, 32.529285, 43.997349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939686, 33.126923, 44.047153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.282406, 33.187225, 43.849907>,  <38.488037, 33.223408, 43.731560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.282406, 33.187225, 43.849907>,  <37.939686, 33.126923, 44.047153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282406, 33.187225, 43.849907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472528, 0.612372, -0.633812,
		0.206416, 0.776062, 0.595920,
		0.856802, 0.150760, -0.493114,
		38.539448, 33.232452, 43.701973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769569, 33.783157, 43.643566>,  <37.939686, 33.126923, 44.047153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769569, 33.783157, 43.643566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.103851, 33.647366, 43.470894>,  <38.304420, 33.565891, 43.367290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.103851, 33.647366, 43.470894>,  <37.769569, 33.783157, 43.643566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103851, 33.647366, 43.470894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362514, 0.249457, -0.897972,
		0.412527, 0.906933, 0.085408,
		0.835706, -0.339476, -0.431684,
		38.354565, 33.545525, 43.341389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893005, 34.160660, 43.054951>,  <37.769569, 33.783157, 43.643566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893005, 34.160660, 43.054951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.148537, 33.867466, 42.961452>,  <38.301853, 33.691551, 42.905354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.148537, 33.867466, 42.961452>,  <37.893005, 34.160660, 43.054951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148537, 33.867466, 42.961452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155939, 0.174153, -0.972293,
		0.753384, 0.657574, -0.003048,
		0.638824, -0.732985, -0.233746,
		38.340183, 33.647572, 42.891331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423859, 34.377838, 42.546413>,  <37.893005, 34.160660, 43.054951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423859, 34.377838, 42.546413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389675, 33.981785, 42.501999>,  <38.369167, 33.744152, 42.475349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389675, 33.981785, 42.501999>,  <38.423859, 34.377838, 42.546413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389675, 33.981785, 42.501999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112066, 0.120286, -0.986394,
		0.990020, -0.071849, -0.121240,
		-0.085455, -0.990136, -0.111034,
		38.364040, 33.684746, 42.468689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.938419, 40.184818, 42.778080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.770103, 40.524040, 42.649246>,  <42.669113, 40.727573, 42.571945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.770103, 40.524040, 42.649246>,  <42.938419, 40.184818, 42.778080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770103, 40.524040, 42.649246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247994, -0.233980, -0.940081,
		-0.872604, -0.475446, -0.111858,
		-0.420785, 0.848059, -0.322080,
		42.643867, 40.778458, 42.552624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519424, 40.017780, 42.168198>,  <42.938419, 40.184818, 42.778080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519424, 40.017780, 42.168198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.558750, 40.412983, 42.120575>,  <42.582344, 40.650105, 42.091999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.558750, 40.412983, 42.120575>,  <42.519424, 40.017780, 42.168198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.558750, 40.412983, 42.120575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361425, -0.146920, -0.920753,
		-0.927204, 0.047489, -0.371534,
		0.098312, 0.988008, -0.119061,
		42.588245, 40.709385, 42.084858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019421, 40.212990, 41.593571>,  <42.519424, 40.017780, 42.168198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019421, 40.212990, 41.593571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.287586, 40.509598, 41.604134>,  <42.448486, 40.687561, 41.610470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.287586, 40.509598, 41.604134>,  <42.019421, 40.212990, 41.593571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287586, 40.509598, 41.604134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166322, -0.115497, -0.979284,
		-0.723108, 0.660916, -0.200762,
		0.670412, 0.741519, 0.026408,
		42.488708, 40.732052, 41.612057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976196, 40.446831, 40.928993>,  <42.019421, 40.212990, 41.593571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976196, 40.446831, 40.928993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.322414, 40.609898, 41.045357>,  <42.530148, 40.707737, 41.115173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.322414, 40.609898, 41.045357>,  <41.976196, 40.446831, 40.928993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322414, 40.609898, 41.045357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348098, -0.072085, -0.934683,
		-0.360073, 0.910279, -0.204302,
		0.865549, 0.407671, 0.290910,
		42.582081, 40.732201, 41.132629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962811, 41.144672, 40.591312>,  <41.976196, 40.446831, 40.928993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962811, 41.144672, 40.591312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.321743, 41.001656, 40.694817>,  <42.537102, 40.915844, 40.756920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.321743, 41.001656, 40.694817>,  <41.962811, 41.144672, 40.591312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321743, 41.001656, 40.694817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308350, 0.088403, -0.947156,
		0.315772, 0.929704, 0.189575,
		0.897334, -0.357541, 0.258759,
		42.590942, 40.894394, 40.772446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505737, 41.604874, 40.275642>,  <41.962811, 41.144672, 40.591312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505737, 41.604874, 40.275642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.674805, 41.254768, 40.369678>,  <42.776245, 41.044704, 40.426098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.674805, 41.254768, 40.369678>,  <42.505737, 41.604874, 40.275642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674805, 41.254768, 40.369678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448374, -0.023475, -0.893538,
		0.787601, 0.483074, 0.382524,
		0.422665, -0.875265, 0.235087,
		42.801605, 40.992188, 40.440205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.139568, 41.620834, 40.021206>,  <42.505737, 41.604874, 40.275642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.139568, 41.620834, 40.021206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.102676, 41.225174, 40.066933>,  <43.080544, 40.987778, 40.094368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.102676, 41.225174, 40.066933>,  <43.139568, 41.620834, 40.021206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102676, 41.225174, 40.066933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449939, -0.143813, -0.881404,
		0.888284, -0.029854, 0.458323,
		-0.092226, -0.989155, 0.114314,
		43.075008, 40.928429, 40.101227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817410, 41.305847, 39.817379>,  <43.139568, 41.620834, 40.021206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817410, 41.305847, 39.817379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.557842, 41.005981, 39.765354>,  <43.402103, 40.826061, 39.734138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.557842, 41.005981, 39.765354>,  <43.817410, 41.305847, 39.817379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557842, 41.005981, 39.765354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489753, -0.280724, -0.825431,
		0.582282, -0.599334, 0.549315,
		-0.648915, -0.749662, -0.130064,
		43.363167, 40.781082, 39.726334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173653, 40.732109, 39.562939>,  <43.817410, 41.305847, 39.817379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173653, 40.732109, 39.562939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.797676, 40.622833, 39.481083>,  <43.572090, 40.557266, 39.431969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.797676, 40.622833, 39.481083>,  <44.173653, 40.732109, 39.562939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.797676, 40.622833, 39.481083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328296, -0.559409, -0.761107,
		0.093448, -0.782578, 0.615499,
		-0.939941, -0.273190, -0.204641,
		43.515694, 40.540878, 39.419689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321636, 39.969582, 39.422001>,  <44.173653, 40.732109, 39.562939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321636, 39.969582, 39.422001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.966797, 40.069118, 39.266502>,  <43.753891, 40.128841, 39.173203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.966797, 40.069118, 39.266502>,  <44.321636, 39.969582, 39.422001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966797, 40.069118, 39.266502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175255, -0.597572, -0.782428,
		-0.427005, -0.762225, 0.486498,
		-0.887103, 0.248839, -0.388750,
		43.700665, 40.143772, 39.149876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.042755, 39.368050, 39.165367>,  <44.321636, 39.969582, 39.422001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.042755, 39.368050, 39.165367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.844193, 39.648151, 38.960144>,  <43.725056, 39.816212, 38.837009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.844193, 39.648151, 38.960144>,  <44.042755, 39.368050, 39.165367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844193, 39.648151, 38.960144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122769, -0.528446, -0.840043,
		-0.859367, -0.479988, 0.176353,
		-0.496403, 0.700255, -0.513057,
		43.695271, 39.858227, 38.806229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602951, 38.989033, 38.798759>,  <44.042755, 39.368050, 39.165367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602951, 38.989033, 38.798759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663067, 39.335396, 38.607922>,  <43.699135, 39.543213, 38.493420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.663067, 39.335396, 38.607922>,  <43.602951, 38.989033, 38.798759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663067, 39.335396, 38.607922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109587, -0.494188, -0.862420,
		-0.982550, 0.077330, -0.169163,
		0.150289, 0.865909, -0.477090,
		43.708153, 39.595169, 38.464794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149418, 38.953568, 38.156696>,  <43.602951, 38.989033, 38.798759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149418, 38.953568, 38.156696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.412189, 39.240616, 38.064209>,  <43.569855, 39.412846, 38.008717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.412189, 39.240616, 38.064209>,  <43.149418, 38.953568, 38.156696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412189, 39.240616, 38.064209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001485, -0.305446, -0.952208,
		-0.753949, 0.625879, -0.199591,
		0.656932, 0.717620, -0.231220,
		43.609268, 39.455902, 37.994843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882229, 39.271454, 37.643730>,  <43.149418, 38.953568, 38.156696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882229, 39.271454, 37.643730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.278305, 39.319889, 37.615860>,  <43.515953, 39.348949, 37.599136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.278305, 39.319889, 37.615860>,  <42.882229, 39.271454, 37.643730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278305, 39.319889, 37.615860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028828, -0.310917, -0.950000,
		-0.136694, 0.942692, -0.304378,
		0.990194, 0.121085, -0.069677,
		43.575363, 39.356216, 37.594955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922138, 39.423824, 37.007172>,  <42.882229, 39.271454, 37.643730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922138, 39.423824, 37.007172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304161, 39.346146, 37.096748>,  <43.533375, 39.299538, 37.150494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304161, 39.346146, 37.096748>,  <42.922138, 39.423824, 37.007172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304161, 39.346146, 37.096748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105207, -0.484231, -0.868592,
		0.277115, 0.853117, -0.442039,
		0.955059, -0.194195, 0.223942,
		43.590679, 39.287888, 37.163929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184410, 39.653660, 36.438530>,  <42.922138, 39.423824, 37.007172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184410, 39.653660, 36.438530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.487133, 39.457649, 36.611561>,  <43.668766, 39.340042, 36.715378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.487133, 39.457649, 36.611561>,  <43.184410, 39.653660, 36.438530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487133, 39.457649, 36.611561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333331, -0.279942, -0.900290,
		0.562259, 0.825537, -0.048523,
		0.756806, -0.490022, 0.432577,
		43.714176, 39.310642, 36.741333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769440, 39.844917, 35.983810>,  <43.184410, 39.653660, 36.438530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769440, 39.844917, 35.983810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.879536, 39.517315, 36.185196>,  <43.945595, 39.320755, 36.306026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.879536, 39.517315, 36.185196>,  <43.769440, 39.844917, 35.983810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879536, 39.517315, 36.185196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279195, -0.433020, -0.857055,
		0.919942, 0.376459, 0.109479,
		0.275240, -0.819007, 0.503459,
		43.962109, 39.271614, 36.336235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.337139, 39.669704, 35.670593>,  <43.769440, 39.844917, 35.983810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.337139, 39.669704, 35.670593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.208790, 39.342049, 35.860775>,  <44.131779, 39.145454, 35.974884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.208790, 39.342049, 35.860775>,  <44.337139, 39.669704, 35.670593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208790, 39.342049, 35.860775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135810, -0.536605, -0.832833,
		0.937334, -0.202664, 0.283430,
		-0.320875, -0.819135, 0.475454,
		44.112526, 39.096310, 36.003410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646332, 39.146797, 35.294373>,  <44.337139, 39.669704, 35.670593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646332, 39.146797, 35.294373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.379017, 38.933781, 35.502140>,  <44.218628, 38.805973, 35.626801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.379017, 38.933781, 35.502140>,  <44.646332, 39.146797, 35.294373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.379017, 38.933781, 35.502140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042063, -0.670066, -0.741109,
		0.742712, -0.517123, 0.425397,
		-0.668288, -0.532537, 0.519418,
		44.178532, 38.774021, 35.657967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872890, 38.421410, 35.283569>,  <44.646332, 39.146797, 35.294373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872890, 38.421410, 35.283569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.485004, 38.383289, 35.373520>,  <44.252274, 38.360416, 35.427490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.485004, 38.383289, 35.373520>,  <44.872890, 38.421410, 35.283569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485004, 38.383289, 35.373520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070688, -0.771814, -0.631907,
		0.233783, -0.628666, 0.741704,
		-0.969716, -0.095300, 0.224876,
		44.194088, 38.354698, 35.440983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.737610, 37.748917, 35.480267>,  <44.872890, 38.421410, 35.283569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.737610, 37.748917, 35.480267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.387661, 37.892487, 35.350174>,  <44.177692, 37.978626, 35.272118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.387661, 37.892487, 35.350174>,  <44.737610, 37.748917, 35.480267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.387661, 37.892487, 35.350174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048578, -0.733110, -0.678372,
		-0.481915, -0.577689, 0.658812,
		-0.874871, 0.358922, -0.325234,
		44.125198, 38.000164, 35.252605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639069, 37.179974, 35.139061>,  <44.737610, 37.748917, 35.480267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639069, 37.179974, 35.139061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.875900, 36.864326, 35.204460>,  <45.017998, 36.674938, 35.243702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.875900, 36.864326, 35.204460>,  <44.639069, 37.179974, 35.139061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875900, 36.864326, 35.204460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484069, -0.186039, 0.855024,
		-0.644301, -0.585385, -0.492139,
		0.592076, -0.789122, 0.163502,
		45.053524, 36.627590, 35.253510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.220463, 36.494194, 35.341827>,  <44.639069, 37.179974, 35.139061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.220463, 36.494194, 35.341827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.592545, 36.497890, 35.488598>,  <44.815792, 36.500107, 35.576660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.592545, 36.497890, 35.488598>,  <44.220463, 36.494194, 35.341827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592545, 36.497890, 35.488598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362979, -0.125254, 0.923341,
		0.054489, -0.992082, -0.113158,
		0.930203, 0.009238, 0.366929,
		44.871605, 36.500660, 35.598675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238182, 36.018887, 35.968761>,  <44.220463, 36.494194, 35.341827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238182, 36.018887, 35.968761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.572380, 36.232784, 36.019344>,  <44.772900, 36.361122, 36.049694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.572380, 36.232784, 36.019344>,  <44.238182, 36.018887, 35.968761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.572380, 36.232784, 36.019344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069242, -0.125835, 0.989632,
		0.545114, -0.835590, -0.068108,
		0.835497, 0.534747, 0.126453,
		44.823029, 36.393208, 36.057281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605885, 35.598885, 36.453079>,  <44.238182, 36.018887, 35.968761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605885, 35.598885, 36.453079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.781059, 35.958214, 36.467075>,  <44.886166, 36.173813, 36.475471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.781059, 35.958214, 36.467075>,  <44.605885, 35.598885, 36.453079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781059, 35.958214, 36.467075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005082, -0.041391, 0.999130,
		0.898992, -0.437377, -0.022692,
		0.437936, 0.898325, 0.034987,
		44.912441, 36.227711, 36.477573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242954, 35.473015, 36.921394>,  <44.605885, 35.598885, 36.453079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242954, 35.473015, 36.921394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.110905, 35.850460, 36.931301>,  <45.031673, 36.076927, 36.937244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.110905, 35.850460, 36.931301>,  <45.242954, 35.473015, 36.921394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.110905, 35.850460, 36.931301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162120, -0.082525, 0.983314,
		0.929912, 0.320600, 0.180222,
		-0.330124, 0.943613, 0.024765,
		45.011868, 36.133545, 36.938732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589252, 35.698036, 37.513371>,  <45.242954, 35.473015, 36.921394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589252, 35.698036, 37.513371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.335472, 36.002556, 37.459866>,  <45.183205, 36.185268, 37.427761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.335472, 36.002556, 37.459866>,  <45.589252, 35.698036, 37.513371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335472, 36.002556, 37.459866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125496, 0.069306, 0.989670,
		0.762709, 0.644683, 0.051569,
		-0.634449, 0.761302, -0.133765,
		45.145138, 36.230946, 37.419735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.892731, 36.262112, 37.973068>,  <45.589252, 35.698036, 37.513371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.892731, 36.262112, 37.973068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516171, 36.369484, 37.891376>,  <45.290234, 36.433907, 37.842361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516171, 36.369484, 37.891376>,  <45.892731, 36.262112, 37.973068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516171, 36.369484, 37.891376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100170, 0.355670, 0.929228,
		0.322068, 0.895235, -0.307940,
		-0.941402, 0.268428, -0.204226,
		45.233749, 36.450012, 37.830109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.795349, 36.950821, 38.225571>,  <45.892731, 36.262112, 37.973068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.795349, 36.950821, 38.225571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.415329, 36.831104, 38.190193>,  <45.187317, 36.759274, 38.168968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.415329, 36.831104, 38.190193>,  <45.795349, 36.950821, 38.225571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.415329, 36.831104, 38.190193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227024, 0.468326, 0.853892,
		-0.214143, 0.831321, -0.512882,
		-0.950054, -0.299291, -0.088441,
		45.130314, 36.741318, 38.163662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.413754, 37.450302, 38.634426>,  <45.795349, 36.950821, 38.225571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.413754, 37.450302, 38.634426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.149685, 37.152054, 38.598164>,  <44.991245, 36.973103, 38.576405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.149685, 37.152054, 38.598164>,  <45.413754, 37.450302, 38.634426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149685, 37.152054, 38.598164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370308, 0.218085, 0.902945,
		-0.653487, 0.629670, -0.420084,
		-0.660172, -0.745624, -0.090656,
		44.951633, 36.928368, 38.570969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782036, 37.735023, 38.833031>,  <45.413754, 37.450302, 38.634426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782036, 37.735023, 38.833031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780167, 37.338684, 38.886997>,  <44.779045, 37.100880, 38.919376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780167, 37.338684, 38.886997>,  <44.782036, 37.735023, 38.833031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780167, 37.338684, 38.886997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151177, 0.134068, 0.979373,
		-0.988496, -0.015820, -0.150419,
		-0.004673, -0.990846, 0.134918,
		44.778767, 37.041431, 38.927471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.154373, 37.588085, 39.183525>,  <44.782036, 37.735023, 38.833031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.154373, 37.588085, 39.183525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.412762, 37.292809, 39.261280>,  <44.567795, 37.115643, 39.307934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.412762, 37.292809, 39.261280>,  <44.154373, 37.588085, 39.183525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.412762, 37.292809, 39.261280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310442, -0.021409, 0.950351,
		-0.697382, -0.674248, -0.242996,
		0.645975, -0.738194, 0.194385,
		44.606556, 37.071350, 39.319595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835266, 37.168453, 39.614090>,  <44.154373, 37.588085, 39.183525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835266, 37.168453, 39.614090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.210377, 37.049065, 39.685070>,  <44.435444, 36.977432, 39.727657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.210377, 37.049065, 39.685070>,  <43.835266, 37.168453, 39.614090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210377, 37.049065, 39.685070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160644, 0.080147, 0.983753,
		-0.307843, -0.951048, 0.027213,
		0.937777, -0.298470, 0.177453,
		44.491711, 36.959522, 39.738304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741150, 36.605316, 40.100262>,  <43.835266, 37.168453, 39.614090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741150, 36.605316, 40.100262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.116909, 36.737648, 40.136246>,  <44.342365, 36.817047, 40.157837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.116909, 36.737648, 40.136246>,  <43.741150, 36.605316, 40.100262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116909, 36.737648, 40.136246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121518, 0.075932, 0.989681,
		0.320584, -0.940631, 0.111531,
		0.939393, 0.330829, 0.089961,
		44.398727, 36.836895, 40.163235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.945404, 36.327618, 40.774696>,  <43.741150, 36.605316, 40.100262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.945404, 36.327618, 40.774696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.207703, 36.619152, 40.695915>,  <44.365082, 36.794071, 40.648647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.207703, 36.619152, 40.695915>,  <43.945404, 36.327618, 40.774696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207703, 36.619152, 40.695915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007209, 0.266908, 0.963695,
		0.754944, -0.630522, 0.180279,
		0.655749, 0.728836, -0.196955,
		44.404427, 36.837803, 40.636829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294762, 36.354649, 41.329052>,  <43.945404, 36.327618, 40.774696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294762, 36.354649, 41.329052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.407825, 36.697323, 41.156452>,  <44.475662, 36.902927, 41.052891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.407825, 36.697323, 41.156452>,  <44.294762, 36.354649, 41.329052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407825, 36.697323, 41.156452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003587, 0.448899, 0.893575,
		0.959215, -0.254122, 0.123812,
		0.282656, 0.856686, -0.431502,
		44.492622, 36.954330, 41.027000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891975, 36.677589, 41.685642>,  <44.294762, 36.354649, 41.329052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891975, 36.677589, 41.685642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.712791, 36.972301, 41.483063>,  <44.605282, 37.149128, 41.361515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.712791, 36.972301, 41.483063>,  <44.891975, 36.677589, 41.685642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.712791, 36.972301, 41.483063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064827, 0.538203, 0.840318,
		0.891702, 0.409258, -0.193329,
		-0.447957, 0.736780, -0.506448,
		44.578403, 37.193336, 41.331127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.183064, 37.276199, 41.832283>,  <44.891975, 36.677589, 41.685642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.183064, 37.276199, 41.832283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.800911, 37.325596, 41.724960>,  <44.571617, 37.355232, 41.660568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.800911, 37.325596, 41.724960>,  <45.183064, 37.276199, 41.832283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800911, 37.325596, 41.724960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159642, 0.548383, 0.820847,
		0.248500, 0.827059, -0.504204,
		-0.955386, 0.123488, -0.268307,
		44.514294, 37.362644, 41.644466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933556, 37.899773, 42.265518>,  <45.183064, 37.276199, 41.832283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933556, 37.899773, 42.265518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.590416, 37.750229, 42.124474>,  <44.384533, 37.660503, 42.039848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.590416, 37.750229, 42.124474>,  <44.933556, 37.899773, 42.265518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.590416, 37.750229, 42.124474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500351, 0.451044, 0.739059,
		-0.117259, 0.810427, -0.573985,
		-0.857846, -0.373855, -0.352609,
		44.333061, 37.638073, 42.018692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.568779, 38.471645, 42.347572>,  <44.933556, 37.899773, 42.265518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.568779, 38.471645, 42.347572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.331928, 38.151558, 42.309559>,  <44.189819, 37.959503, 42.286751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.331928, 38.151558, 42.309559>,  <44.568779, 38.471645, 42.347572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331928, 38.151558, 42.309559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429936, 0.213963, 0.877140,
		-0.681572, 0.560237, -0.470737,
		-0.592127, -0.800221, -0.095035,
		44.154289, 37.911491, 42.281048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931473, 38.751606, 42.639519>,  <44.568779, 38.471645, 42.347572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931473, 38.751606, 42.639519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.887753, 38.354031, 42.644096>,  <43.861519, 38.115486, 42.646843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.887753, 38.354031, 42.644096>,  <43.931473, 38.751606, 42.639519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887753, 38.354031, 42.644096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562385, 0.071330, 0.823793,
		-0.819620, 0.083605, -0.566775,
		-0.109301, -0.993943, 0.011445,
		43.854961, 38.055847, 42.647530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293507, 38.674751, 42.516144>,  <43.931473, 38.751606, 42.639519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.293507, 38.674751, 42.516144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.425835, 38.337856, 42.686413>,  <43.505234, 38.135719, 42.788574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.425835, 38.337856, 42.686413>,  <43.293507, 38.674751, 42.516144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425835, 38.337856, 42.686413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633497, 0.136124, 0.761677,
		-0.699455, -0.521643, -0.488520,
		0.330824, -0.842234, 0.425672,
		43.525082, 38.085186, 42.814114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.728844, 38.145267, 38.270420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672020, 37.751728, 38.226871>,  <38.637928, 37.515602, 38.200741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672020, 37.751728, 38.226871>,  <38.728844, 38.145267, 38.270420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672020, 37.751728, 38.226871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081254, 0.098025, -0.991862,
		0.986518, -0.149747, 0.066017,
		-0.142057, -0.983853, -0.108871,
		38.629402, 37.456573, 38.194210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210949, 37.967903, 37.848728>,  <38.728844, 38.145267, 38.270420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210949, 37.967903, 37.848728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985733, 37.637356, 37.844852>,  <38.850605, 37.439026, 37.842525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985733, 37.637356, 37.844852>,  <39.210949, 37.967903, 37.848728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985733, 37.637356, 37.844852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237757, -0.150740, -0.959557,
		0.791490, -0.542574, 0.281348,
		-0.563041, -0.826372, -0.009691,
		38.816822, 37.389442, 37.841946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523682, 37.549068, 37.416271>,  <39.210949, 37.967903, 37.848728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523682, 37.549068, 37.416271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180870, 37.342964, 37.414627>,  <38.975185, 37.219303, 37.413643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180870, 37.342964, 37.414627>,  <39.523682, 37.549068, 37.416271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180870, 37.342964, 37.414627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168463, -0.272652, -0.947249,
		0.486957, -0.812508, 0.320472,
		-0.857025, -0.515258, -0.004107,
		38.923763, 37.188389, 37.413395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610535, 36.918674, 37.038670>,  <39.523682, 37.549068, 37.416271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610535, 36.918674, 37.038670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211784, 36.949059, 37.047253>,  <38.972534, 36.967289, 37.052402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211784, 36.949059, 37.047253>,  <39.610535, 36.918674, 37.038670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211784, 36.949059, 37.047253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038061, -0.224385, -0.973757,
		-0.069151, -0.971536, 0.226576,
		-0.996880, 0.075960, 0.021462,
		38.912720, 36.971848, 37.053692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318985, 36.333042, 36.623508>,  <39.610535, 36.918674, 37.038670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318985, 36.333042, 36.623508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043541, 36.622677, 36.607941>,  <38.878273, 36.796455, 36.598598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043541, 36.622677, 36.607941>,  <39.318985, 36.333042, 36.623508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043541, 36.622677, 36.607941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018064, -0.070789, -0.997328,
		-0.724905, -0.686068, 0.061826,
		-0.688612, 0.724085, -0.038922,
		38.836956, 36.839901, 36.596264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669243, 36.092106, 36.290649>,  <39.318985, 36.333042, 36.623508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669243, 36.092106, 36.290649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684299, 36.490570, 36.259056>,  <38.693333, 36.729649, 36.240101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684299, 36.490570, 36.259056>,  <38.669243, 36.092106, 36.290649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684299, 36.490570, 36.259056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018252, -0.078344, -0.996759,
		-0.999125, 0.038960, 0.015233,
		0.037640, 0.996165, -0.078986,
		38.695591, 36.789421, 36.235359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177280, 36.242855, 35.783901>,  <38.669243, 36.092106, 36.290649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177280, 36.242855, 35.783901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403069, 36.572830, 35.795647>,  <38.538540, 36.770813, 35.802696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403069, 36.572830, 35.795647>,  <38.177280, 36.242855, 35.783901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403069, 36.572830, 35.795647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090063, -0.026185, -0.995592,
		-0.820529, 0.564622, -0.089077,
		0.564466, 0.824934, 0.029366,
		38.572407, 36.820309, 35.804455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898132, 36.746494, 35.259533>,  <38.177280, 36.242855, 35.783901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898132, 36.746494, 35.259533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287643, 36.822670, 35.309330>,  <38.521351, 36.868374, 35.339207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287643, 36.822670, 35.309330>,  <37.898132, 36.746494, 35.259533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287643, 36.822670, 35.309330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150858, -0.130837, -0.979859,
		-0.170316, 0.972941, -0.156134,
		0.973773, 0.190439, 0.124492,
		38.579777, 36.879803, 35.346676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023232, 37.205681, 34.713371>,  <37.898132, 36.746494, 35.259533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023232, 37.205681, 34.713371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380535, 37.053574, 34.809280>,  <38.594917, 36.962311, 34.866825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380535, 37.053574, 34.809280>,  <38.023232, 37.205681, 34.713371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380535, 37.053574, 34.809280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226653, -0.079659, -0.970713,
		0.388229, 0.921440, 0.015033,
		0.893256, -0.380266, 0.239773,
		38.648514, 36.939495, 34.881214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441402, 37.507046, 34.258816>,  <38.023232, 37.205681, 34.713371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441402, 37.507046, 34.258816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651215, 37.204144, 34.414471>,  <38.777100, 37.022400, 34.507862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651215, 37.204144, 34.414471>,  <38.441402, 37.507046, 34.258816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651215, 37.204144, 34.414471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481002, -0.113554, -0.869334,
		0.702500, 0.643166, 0.304682,
		0.524529, -0.757260, 0.389136,
		38.808575, 36.976967, 34.531212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175690, 37.559528, 34.073132>,  <38.441402, 37.507046, 34.258816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175690, 37.559528, 34.073132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111164, 37.170403, 34.139599>,  <39.072449, 36.936928, 34.179482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111164, 37.170403, 34.139599>,  <39.175690, 37.559528, 34.073132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111164, 37.170403, 34.139599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198818, -0.196958, -0.960041,
		0.966668, -0.121834, 0.225186,
		-0.161317, -0.972812, 0.166171,
		39.062767, 36.878559, 34.189449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721497, 37.214897, 33.760899>,  <39.175690, 37.559528, 34.073132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.721497, 37.214897, 33.760899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420528, 36.955845, 33.808964>,  <39.239948, 36.800415, 33.837803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420528, 36.955845, 33.808964>,  <39.721497, 37.214897, 33.760899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420528, 36.955845, 33.808964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093543, -0.285644, -0.953760,
		0.652008, -0.706386, 0.275505,
		-0.752419, -0.647631, 0.120164,
		39.194801, 36.761555, 33.845013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828354, 36.524380, 33.629211>,  <39.721497, 37.214897, 33.760899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828354, 36.524380, 33.629211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448536, 36.620106, 33.548126>,  <39.220646, 36.677540, 33.499477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448536, 36.620106, 33.548126>,  <39.828354, 36.524380, 33.629211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448536, 36.620106, 33.548126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050306, -0.521754, -0.851611,
		-0.309567, -0.818842, 0.483391,
		-0.949546, 0.239313, -0.202710,
		39.163673, 36.691898, 33.487312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557907, 36.616055, 33.564919>,  <39.828354, 36.524380, 33.629211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557907, 36.616055, 33.564919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908253, 36.505081, 33.406986>,  <41.118462, 36.438496, 33.312225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908253, 36.505081, 33.406986>,  <40.557907, 36.616055, 33.564919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908253, 36.505081, 33.406986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055082, -0.755381, 0.652967,
		-0.479406, -0.593658, -0.646328,
		0.875863, -0.277436, -0.394834,
		41.171013, 36.421852, 33.288536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585026, 35.886158, 33.303398>,  <40.557907, 36.616055, 33.564919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585026, 35.886158, 33.303398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950233, 35.993862, 33.425968>,  <41.169357, 36.058487, 33.499512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950233, 35.993862, 33.425968>,  <40.585026, 35.886158, 33.303398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950233, 35.993862, 33.425968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016084, -0.774367, 0.632532,
		0.407604, -0.572584, -0.711341,
		0.913017, 0.269263, 0.306426,
		41.224140, 36.074642, 33.517895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971676, 35.317661, 33.241638>,  <40.585026, 35.886158, 33.303398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971676, 35.317661, 33.241638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160999, 35.551170, 33.505516>,  <41.274593, 35.691277, 33.663841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160999, 35.551170, 33.505516>,  <40.971676, 35.317661, 33.241638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160999, 35.551170, 33.505516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009080, -0.745613, 0.666318,
		0.880852, -0.321361, -0.347601,
		0.473304, 0.583771, 0.659693,
		41.302990, 35.726303, 33.703423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515556, 34.948105, 33.512497>,  <40.971676, 35.317661, 33.241638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515556, 34.948105, 33.512497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391445, 35.201916, 33.795650>,  <41.316978, 35.354202, 33.965542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391445, 35.201916, 33.795650>,  <41.515556, 34.948105, 33.512497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391445, 35.201916, 33.795650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088503, -0.760680, 0.643065,
		0.946517, 0.136879, 0.292180,
		-0.310278, 0.634531, 0.707883,
		41.298363, 35.392277, 34.008015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924168, 34.595325, 34.039349>,  <41.515556, 34.948105, 33.512497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924168, 34.595325, 34.039349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651844, 34.847336, 34.188782>,  <41.488449, 34.998543, 34.278442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651844, 34.847336, 34.188782>,  <41.924168, 34.595325, 34.039349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651844, 34.847336, 34.188782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089939, -0.578079, 0.811009,
		0.726919, 0.518542, 0.450225,
		-0.680808, 0.630030, 0.373580,
		41.447601, 35.036346, 34.300858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173805, 34.640533, 34.696266>,  <41.924168, 34.595325, 34.039349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173805, 34.640533, 34.696266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794792, 34.768360, 34.699474>,  <41.567387, 34.845055, 34.701397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794792, 34.768360, 34.699474>,  <42.173805, 34.640533, 34.696266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794792, 34.768360, 34.699474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156604, -0.485919, 0.859859,
		0.278676, 0.813487, 0.510468,
		-0.947531, 0.319564, 0.008019,
		41.510532, 34.864231, 34.701881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118969, 34.835518, 35.362968>,  <42.173805, 34.640533, 34.696266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118969, 34.835518, 35.362968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737583, 34.822735, 35.243042>,  <41.508751, 34.815063, 35.171085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737583, 34.822735, 35.243042>,  <42.118969, 34.835518, 35.362968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737583, 34.822735, 35.243042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269305, -0.356890, 0.894485,
		-0.135587, 0.933599, 0.331675,
		-0.953463, -0.031959, -0.299813,
		41.451546, 34.813148, 35.153099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792160, 35.023666, 35.858593>,  <42.118969, 34.835518, 35.362968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792160, 35.023666, 35.858593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501938, 34.824760, 35.668316>,  <41.327805, 34.705418, 35.554150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501938, 34.824760, 35.668316>,  <41.792160, 35.023666, 35.858593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501938, 34.824760, 35.668316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283972, -0.413309, 0.865180,
		-0.626836, 0.762824, 0.158670,
		-0.725560, -0.497268, -0.475697,
		41.284271, 34.675579, 35.525608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147408, 35.194202, 36.167751>,  <41.792160, 35.023666, 35.858593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147408, 35.194202, 36.167751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068493, 34.854668, 35.971565>,  <41.021145, 34.650948, 35.853855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068493, 34.854668, 35.971565>,  <41.147408, 35.194202, 36.167751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068493, 34.854668, 35.971565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529431, -0.328815, 0.782038,
		-0.825095, 0.413951, -0.384530,
		-0.197286, -0.848837, -0.490462,
		41.009308, 34.600018, 35.824425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503925, 35.099663, 36.265976>,  <41.147408, 35.194202, 36.167751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503925, 35.099663, 36.265976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625660, 34.734249, 36.158020>,  <40.698700, 34.515003, 36.093246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625660, 34.734249, 36.158020>,  <40.503925, 35.099663, 36.265976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625660, 34.734249, 36.158020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359363, -0.372506, 0.855627,
		-0.882177, -0.163409, -0.441656,
		0.304337, -0.913530, -0.269894,
		40.716961, 34.460190, 36.077053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975971, 34.662361, 36.382320>,  <40.503925, 35.099663, 36.265976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975971, 34.662361, 36.382320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264843, 34.391106, 36.327785>,  <40.438168, 34.228352, 36.295067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264843, 34.391106, 36.327785>,  <39.975971, 34.662361, 36.382320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264843, 34.391106, 36.327785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245924, -0.435942, 0.865723,
		-0.646512, -0.591680, -0.481599,
		0.722179, -0.678137, -0.136334,
		40.481499, 34.187664, 36.286884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643784, 33.907871, 36.506702>,  <39.975971, 34.662361, 36.382320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643784, 33.907871, 36.506702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038338, 33.930576, 36.568451>,  <40.275070, 33.944199, 36.605499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038338, 33.930576, 36.568451>,  <39.643784, 33.907871, 36.506702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038338, 33.930576, 36.568451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102058, -0.524781, 0.845097,
		0.128984, -0.849342, -0.511841,
		0.986381, 0.056766, 0.154371,
		40.334251, 33.947605, 36.614761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866573, 33.236641, 36.711933>,  <39.643784, 33.907871, 36.506702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866573, 33.236641, 36.711933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174576, 33.467064, 36.821659>,  <40.359379, 33.605316, 36.887493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174576, 33.467064, 36.821659>,  <39.866573, 33.236641, 36.711933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174576, 33.467064, 36.821659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039467, -0.386107, 0.921610,
		0.636813, -0.720473, -0.274570,
		0.770008, 0.576056, 0.274313,
		40.405579, 33.639881, 36.903954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237015, 32.876476, 37.097473>,  <39.866573, 33.236641, 36.711933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237015, 32.876476, 37.097473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400864, 33.217693, 37.226795>,  <40.499172, 33.422424, 37.304386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400864, 33.217693, 37.226795>,  <40.237015, 32.876476, 37.097473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400864, 33.217693, 37.226795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143130, -0.410104, 0.900738,
		0.900958, -0.322686, -0.290083,
		0.409619, 0.853047, 0.323301,
		40.523750, 33.473606, 37.323784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839809, 32.770229, 37.520283>,  <40.237015, 32.876476, 37.097473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839809, 32.770229, 37.520283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726330, 33.138508, 37.627487>,  <40.658241, 33.359474, 37.691811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726330, 33.138508, 37.627487>,  <40.839809, 32.770229, 37.520283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726330, 33.138508, 37.627487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099270, -0.249799, 0.963196,
		0.953762, 0.299862, -0.020530,
		-0.283698, 0.920697, 0.268016,
		40.641220, 33.414719, 37.707893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425213, 32.419231, 37.283024>,  <40.839809, 32.770229, 37.520283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425213, 32.419231, 37.283024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349789, 32.038502, 37.379757>,  <41.304535, 31.810064, 37.437798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349789, 32.038502, 37.379757>,  <41.425213, 32.419231, 37.283024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349789, 32.038502, 37.379757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352621, -0.164205, -0.921247,
		0.916571, -0.258988, -0.304669,
		-0.188563, -0.951820, 0.241830,
		41.293221, 31.752956, 37.452305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515045, 32.006966, 36.665459>,  <41.425213, 32.419231, 37.283024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515045, 32.006966, 36.665459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311153, 31.748821, 36.893032>,  <41.188816, 31.593935, 37.029575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311153, 31.748821, 36.893032>,  <41.515045, 32.006966, 36.665459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311153, 31.748821, 36.893032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465102, -0.349624, -0.813292,
		0.723777, -0.679174, -0.121943,
		-0.509732, -0.645357, 0.568935,
		41.158234, 31.555214, 37.063713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507912, 31.430605, 36.270161>,  <41.515045, 32.006966, 36.665459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507912, 31.430605, 36.270161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213444, 31.392277, 36.538151>,  <41.036762, 31.369280, 36.698944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213444, 31.392277, 36.538151>,  <41.507912, 31.430605, 36.270161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213444, 31.392277, 36.538151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599253, -0.367812, -0.711063,
		0.314559, -0.924950, 0.213353,
		-0.736172, -0.095819, 0.669978,
		40.992592, 31.363531, 36.739143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230484, 30.780989, 36.249447>,  <41.507912, 31.430605, 36.270161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230484, 30.780989, 36.249447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948441, 31.025776, 36.392731>,  <40.779213, 31.172647, 36.478703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948441, 31.025776, 36.392731>,  <41.230484, 30.780989, 36.249447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948441, 31.025776, 36.392731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637312, -0.325443, -0.698513,
		-0.310890, -0.720820, 0.619488,
		-0.705110, 0.611968, 0.358210,
		40.736908, 31.209366, 36.500195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653442, 30.360386, 36.328064>,  <41.230484, 30.780989, 36.249447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653442, 30.360386, 36.328064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505383, 30.731974, 36.329380>,  <40.416546, 30.954926, 36.330170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505383, 30.731974, 36.329380>,  <40.653442, 30.360386, 36.328064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505383, 30.731974, 36.329380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724253, -0.286359, -0.627261,
		-0.581763, -0.234560, 0.778802,
		-0.370148, 0.928967, 0.003288,
		40.394337, 31.010664, 36.330368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907642, 30.260727, 36.315781>,  <40.653442, 30.360386, 36.328064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907642, 30.260727, 36.315781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969994, 30.643232, 36.216774>,  <40.007404, 30.872736, 36.157372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969994, 30.643232, 36.216774>,  <39.907642, 30.260727, 36.315781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969994, 30.643232, 36.216774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810710, -0.019298, -0.585129,
		-0.564314, 0.291874, 0.772243,
		0.155881, 0.956262, -0.247515,
		40.016758, 30.930111, 36.142521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255119, 30.530153, 36.438194>,  <39.907642, 30.260727, 36.315781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255119, 30.530153, 36.438194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431145, 30.801367, 36.202698>,  <39.536758, 30.964094, 36.061398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431145, 30.801367, 36.202698>,  <39.255119, 30.530153, 36.438194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431145, 30.801367, 36.202698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829117, 0.055023, -0.556361,
		-0.344836, 0.732970, 0.586381,
		0.440060, 0.678032, -0.588744,
		39.563164, 31.004776, 36.026073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743587, 31.087900, 36.354019>,  <39.255119, 30.530153, 36.438194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743587, 31.087900, 36.354019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001156, 31.167007, 36.058384>,  <39.155697, 31.214472, 35.881001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001156, 31.167007, 36.058384>,  <38.743587, 31.087900, 36.354019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001156, 31.167007, 36.058384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764994, 0.150947, -0.626099,
		-0.012258, 0.968557, 0.248488,
		0.643921, 0.197767, -0.739090,
		39.194332, 31.226337, 35.836658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471756, 31.725382, 36.050392>,  <38.743587, 31.087900, 36.354019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471756, 31.725382, 36.050392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698574, 31.525406, 35.788548>,  <38.834667, 31.405420, 35.631439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698574, 31.525406, 35.788548>,  <38.471756, 31.725382, 36.050392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698574, 31.525406, 35.788548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723484, 0.077592, -0.685966,
		0.393736, 0.862576, -0.317702,
		0.567047, -0.499942, -0.654611,
		38.868687, 31.375423, 35.592163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423687, 32.058338, 35.423832>,  <38.471756, 31.725382, 36.050392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423687, 32.058338, 35.423832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549324, 31.694813, 35.313992>,  <38.624706, 31.476698, 35.248089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549324, 31.694813, 35.313992>,  <38.423687, 32.058338, 35.423832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549324, 31.694813, 35.313992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499738, 0.087660, -0.861729,
		0.807223, 0.407887, -0.426637,
		0.314089, -0.908815, -0.274598,
		38.643551, 31.422169, 35.231613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468616, 32.065365, 34.665543>,  <38.423687, 32.058338, 35.423832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468616, 32.065365, 34.665543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473362, 31.672138, 34.738689>,  <38.476212, 31.436203, 34.782578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473362, 31.672138, 34.738689>,  <38.468616, 32.065365, 34.665543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473362, 31.672138, 34.738689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405894, -0.171873, -0.897614,
		0.913843, -0.063574, -0.401060,
		0.011867, -0.983066, 0.182869,
		38.476921, 31.377218, 34.793549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795490, 31.783825, 34.067371>,  <38.468616, 32.065365, 34.665543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795490, 31.783825, 34.067371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594448, 31.473215, 34.219372>,  <38.473824, 31.286850, 34.310574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594448, 31.473215, 34.219372>,  <38.795490, 31.783825, 34.067371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594448, 31.473215, 34.219372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352139, -0.217553, -0.910313,
		0.789551, -0.591338, -0.164102,
		-0.502601, -0.776524, 0.380002,
		38.443668, 31.240257, 34.333374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<43.732525, 31.588518, 40.318485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.453274, 31.347857, 40.473728>,  <43.285721, 31.203459, 40.566875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.453274, 31.347857, 40.473728>,  <43.732525, 31.588518, 40.318485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453274, 31.347857, 40.473728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461517, -0.036258, -0.886390,
		0.547372, -0.797933, -0.252362,
		-0.698130, -0.601655, 0.388106,
		43.243835, 31.167360, 40.590160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868679, 30.932999, 39.982143>,  <43.732525, 31.588518, 40.318485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868679, 30.932999, 39.982143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.486946, 30.967604, 40.096519>,  <43.257904, 30.988367, 40.165146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.486946, 30.967604, 40.096519>,  <43.868679, 30.932999, 39.982143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486946, 30.967604, 40.096519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298514, -0.313272, -0.901527,
		0.011584, -0.945715, 0.324791,
		-0.954335, 0.086511, 0.285938,
		43.200645, 30.993557, 40.182301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424282, 30.431948, 39.437977>,  <43.868679, 30.932999, 39.982143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424282, 30.431948, 39.437977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.167549, 30.696388, 39.593414>,  <43.013512, 30.855053, 39.686676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.167549, 30.696388, 39.593414>,  <43.424282, 30.431948, 39.437977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167549, 30.696388, 39.593414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590935, -0.103439, -0.800060,
		-0.488726, -0.743132, 0.457058,
		-0.641828, 0.661102, 0.388589,
		42.975002, 30.894718, 39.709991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684296, 30.138803, 39.459133>,  <43.424282, 30.431948, 39.437977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684296, 30.138803, 39.459133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.649208, 30.537256, 39.461342>,  <42.628155, 30.776327, 39.462666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.649208, 30.537256, 39.461342>,  <42.684296, 30.138803, 39.459133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.649208, 30.537256, 39.461342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698578, -0.057568, -0.713214,
		-0.710136, -0.066420, 0.700924,
		-0.087723, 0.996130, 0.005519,
		42.622890, 30.836096, 39.462997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948997, 30.262966, 39.296146>,  <42.684296, 30.138803, 39.459133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948997, 30.262966, 39.296146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.113983, 30.623180, 39.241135>,  <42.212975, 30.839308, 39.208130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.113983, 30.623180, 39.241135>,  <41.948997, 30.262966, 39.296146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113983, 30.623180, 39.241135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636192, 0.176695, -0.751025,
		-0.652023, 0.397264, 0.645792,
		0.412464, 0.900533, -0.137526,
		42.237720, 30.893341, 39.199875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428085, 30.759750, 39.262123>,  <41.948997, 30.262966, 39.296146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428085, 30.759750, 39.262123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.738026, 30.948944, 39.094368>,  <41.923992, 31.062460, 38.993717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.738026, 30.948944, 39.094368>,  <41.428085, 30.759750, 39.262123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738026, 30.948944, 39.094368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603955, 0.358026, -0.712078,
		-0.186652, 0.805047, 0.563081,
		0.774854, 0.472987, -0.419385,
		41.970482, 31.090839, 38.968552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147385, 31.342911, 39.040947>,  <41.428085, 30.759750, 39.262123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147385, 31.342911, 39.040947> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.481621, 31.365877, 38.822411>,  <41.682163, 31.379658, 38.691288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.481621, 31.365877, 38.822411>,  <41.147385, 31.342911, 39.040947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481621, 31.365877, 38.822411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539003, 0.277838, -0.795161,
		0.106139, 0.958910, 0.263107,
		0.835590, 0.057418, -0.546345,
		41.732296, 31.383102, 38.658508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151886, 31.982576, 38.677570>,  <41.147385, 31.342911, 39.040947>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151886, 31.982576, 38.677570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.419399, 31.829725, 38.422474>,  <41.579906, 31.738014, 38.269417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.419399, 31.829725, 38.422474>,  <41.151886, 31.982576, 38.677570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419399, 31.829725, 38.422474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673804, 0.050977, -0.737149,
		0.314195, 0.922702, -0.223387,
		0.668782, -0.382128, -0.637737,
		41.620033, 31.715086, 38.231152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302864, 32.383701, 38.009754>,  <41.151886, 31.982576, 38.677570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302864, 32.383701, 38.009754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.391262, 32.006256, 37.911167>,  <41.444302, 31.779789, 37.852013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.391262, 32.006256, 37.911167>,  <41.302864, 32.383701, 38.009754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391262, 32.006256, 37.911167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633822, 0.053110, -0.771653,
		0.741235, 0.326751, -0.586348,
		0.220998, -0.943617, -0.246469,
		41.457561, 31.723171, 37.837227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409115, 33.019592, 38.072269>,  <41.302864, 32.383701, 38.009754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409115, 33.019592, 38.072269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.099556, 33.269783, 38.111996>,  <40.913822, 33.419899, 38.135830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.099556, 33.269783, 38.111996>,  <41.409115, 33.019592, 38.072269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099556, 33.269783, 38.111996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063735, -0.079106, 0.994827,
		0.630098, 0.776223, 0.021355,
		-0.773896, 0.625477, 0.099317,
		40.867386, 33.457424, 38.141792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692883, 33.701550, 38.416798>,  <41.409115, 33.019592, 38.072269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692883, 33.701550, 38.416798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.300842, 33.662067, 38.485699>,  <41.065620, 33.638378, 38.527039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.300842, 33.662067, 38.485699>,  <41.692883, 33.701550, 38.416798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300842, 33.662067, 38.485699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143630, 0.246416, 0.958462,
		-0.137047, 0.964125, -0.227334,
		-0.980096, -0.098703, 0.172248,
		41.006813, 33.632458, 38.537373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528412, 34.375347, 38.755154>,  <41.692883, 33.701550, 38.416798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528412, 34.375347, 38.755154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.263351, 34.086830, 38.835777>,  <41.104313, 33.913719, 38.884151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.263351, 34.086830, 38.835777>,  <41.528412, 34.375347, 38.755154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263351, 34.086830, 38.835777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181111, 0.106805, 0.977646,
		-0.726698, 0.684344, 0.059860,
		-0.662653, -0.721295, 0.201557,
		41.064556, 33.870441, 38.896244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115879, 34.708656, 39.214931>,  <41.528412, 34.375347, 38.755154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115879, 34.708656, 39.214931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.038193, 34.319950, 39.268536>,  <40.991581, 34.086727, 39.300697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.038193, 34.319950, 39.268536>,  <41.115879, 34.708656, 39.214931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038193, 34.319950, 39.268536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343623, 0.060562, 0.937153,
		-0.918806, 0.228056, 0.322158,
		-0.194213, -0.971763, 0.134010,
		40.979927, 34.028419, 39.308739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801746, 34.690956, 39.808605>,  <41.115879, 34.708656, 39.214931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801746, 34.690956, 39.808605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.906643, 34.308594, 39.755726>,  <40.969582, 34.079178, 39.723999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.906643, 34.308594, 39.755726>,  <40.801746, 34.690956, 39.808605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906643, 34.308594, 39.755726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292578, -0.051782, 0.954839,
		-0.919581, -0.289071, 0.266098,
		0.262237, -0.955906, -0.132194,
		40.985313, 34.021820, 39.716068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686401, 34.407970, 40.445614>,  <40.801746, 34.690956, 39.808605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686401, 34.407970, 40.445614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.949036, 34.153503, 40.283535>,  <41.106617, 34.000824, 40.186287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.949036, 34.153503, 40.283535>,  <40.686401, 34.407970, 40.445614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949036, 34.153503, 40.283535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401031, -0.160544, 0.901887,
		-0.638808, -0.754659, 0.149714,
		0.656581, -0.636172, -0.405198,
		41.146011, 33.962650, 40.161976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770531, 33.974892, 40.978573>,  <40.686401, 34.407970, 40.445614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770531, 33.974892, 40.978573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.076832, 33.920895, 40.727047>,  <41.260612, 33.888496, 40.576130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.076832, 33.920895, 40.727047>,  <40.770531, 33.974892, 40.978573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076832, 33.920895, 40.727047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612540, -0.144919, 0.777041,
		-0.196022, -0.980192, -0.028283,
		0.765748, -0.134993, -0.628814,
		41.306557, 33.880398, 40.538403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022751, 33.401546, 41.169655>,  <40.770531, 33.974892, 40.978573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022751, 33.401546, 41.169655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.321186, 33.589802, 40.981255>,  <41.500248, 33.702755, 40.868214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.321186, 33.589802, 40.981255>,  <41.022751, 33.401546, 41.169655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321186, 33.589802, 40.981255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648861, -0.355173, 0.672928,
		0.149420, -0.807681, -0.570373,
		0.746092, 0.470642, -0.471003,
		41.545013, 33.730995, 40.839954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613247, 32.974083, 41.291683>,  <41.022751, 33.401546, 41.169655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613247, 32.974083, 41.291683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.781456, 33.327663, 41.209911>,  <41.882381, 33.539814, 41.160851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.781456, 33.327663, 41.209911>,  <41.613247, 32.974083, 41.291683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781456, 33.327663, 41.209911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630652, -0.122804, 0.766288,
		0.652259, -0.451160, -0.609108,
		0.420520, 0.883953, -0.204425,
		41.907612, 33.592850, 41.148582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270157, 32.825039, 41.359428>,  <41.613247, 32.974083, 41.291683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270157, 32.825039, 41.359428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.242424, 33.222645, 41.393192>,  <42.225784, 33.461208, 41.413448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.242424, 33.222645, 41.393192>,  <42.270157, 32.825039, 41.359428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242424, 33.222645, 41.393192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713490, -0.009726, 0.700598,
		0.697227, 0.108796, -0.708547,
		-0.069331, 0.994016, 0.084406,
		42.221626, 33.520851, 41.418514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907890, 33.107632, 41.316216>,  <42.270157, 32.825039, 41.359428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907890, 33.107632, 41.316216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.726917, 33.406487, 41.510983>,  <42.618336, 33.585800, 41.627842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.726917, 33.406487, 41.510983>,  <42.907890, 33.107632, 41.316216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726917, 33.406487, 41.510983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753147, 0.027719, 0.657268,
		0.477573, 0.664090, -0.575247,
		-0.452430, 0.747139, 0.486920,
		42.591187, 33.630627, 41.657059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387775, 33.724045, 41.364769>,  <42.907890, 33.107632, 41.316216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387775, 33.724045, 41.364769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.107975, 33.738537, 41.650253>,  <42.940094, 33.747231, 41.821545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.107975, 33.738537, 41.650253>,  <43.387775, 33.724045, 41.364769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107975, 33.738537, 41.650253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689687, 0.295799, 0.660935,
		-0.187172, 0.954563, -0.231897,
		-0.699499, 0.036228, 0.713714,
		42.898125, 33.749405, 41.864368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.747917, 33.935833, 41.888313>,  <43.387775, 33.724045, 41.364769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.747917, 33.935833, 41.888313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.407944, 33.890961, 42.094234>,  <43.203960, 33.864037, 42.217785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.407944, 33.890961, 42.094234>,  <43.747917, 33.935833, 41.888313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.407944, 33.890961, 42.094234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510514, 0.066305, 0.857309,
		-0.130312, 0.991473, 0.000917,
		-0.849938, -0.112185, 0.514801,
		43.152962, 33.857304, 42.248676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686420, 34.483955, 42.312965>,  <43.747917, 33.935833, 41.888313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686420, 34.483955, 42.312965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.483837, 34.179054, 42.474201>,  <43.362289, 33.996113, 42.570942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.483837, 34.179054, 42.474201>,  <43.686420, 34.483955, 42.312965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483837, 34.179054, 42.474201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475351, 0.143209, 0.868063,
		-0.719406, 0.631242, 0.289808,
		-0.506454, -0.762250, 0.403087,
		43.331902, 33.950378, 42.595127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.683765, 30.778666, 44.545727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.967548, 30.614565, 44.316513>,  <37.137817, 30.516104, 44.178986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.967548, 30.614565, 44.316513>,  <36.683765, 30.778666, 44.545727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967548, 30.614565, 44.316513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308096, 0.550741, -0.775733,
		0.633839, 0.726896, 0.264328,
		0.709454, -0.410252, -0.573035,
		37.180386, 30.491489, 44.144604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968121, 31.299871, 44.142532>,  <36.683765, 30.778666, 44.545727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968121, 31.299871, 44.142532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.101269, 30.979780, 43.943001>,  <37.181156, 30.787725, 43.823280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.101269, 30.979780, 43.943001>,  <36.968121, 31.299871, 44.142532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101269, 30.979780, 43.943001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114257, 0.490874, -0.863706,
		0.936026, 0.344494, 0.071964,
		0.332866, -0.800229, -0.498832,
		37.201130, 30.739712, 43.793350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432552, 31.563087, 43.619450>,  <36.968121, 31.299871, 44.142532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432552, 31.563087, 43.619450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.338081, 31.201487, 43.476902>,  <37.281399, 30.984526, 43.391373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.338081, 31.201487, 43.476902>,  <37.432552, 31.563087, 43.619450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338081, 31.201487, 43.476902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021853, 0.371595, -0.928138,
		0.971464, -0.211419, -0.107519,
		-0.236180, -0.904002, -0.356371,
		37.267227, 30.930286, 43.369991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742092, 31.553406, 42.990192>,  <37.432552, 31.563087, 43.619450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742092, 31.553406, 42.990192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.480911, 31.251041, 42.971226>,  <37.324203, 31.069624, 42.959846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.480911, 31.251041, 42.971226>,  <37.742092, 31.553406, 42.990192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480911, 31.251041, 42.971226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212394, 0.242842, -0.946529,
		0.727006, -0.607970, -0.319116,
		-0.652956, -0.755910, -0.047418,
		37.285023, 31.024269, 42.957001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969067, 31.136087, 42.435753>,  <37.742092, 31.553406, 42.990192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969067, 31.136087, 42.435753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.583065, 31.048027, 42.492741>,  <37.351463, 30.995192, 42.526936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.583065, 31.048027, 42.492741>,  <37.969067, 31.136087, 42.435753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583065, 31.048027, 42.492741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159053, 0.059436, -0.985479,
		0.208486, -0.973653, -0.092372,
		-0.965006, -0.220151, 0.142471,
		37.293564, 30.981983, 42.535480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883820, 30.509785, 42.049305>,  <37.969067, 31.136087, 42.435753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883820, 30.509785, 42.049305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.528301, 30.685705, 42.100853>,  <37.314991, 30.791258, 42.131783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.528301, 30.685705, 42.100853>,  <37.883820, 30.509785, 42.049305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528301, 30.685705, 42.100853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170251, -0.055775, -0.983821,
		-0.425500, -0.896360, 0.124449,
		-0.888799, 0.439804, 0.128874,
		37.261662, 30.817646, 42.139515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390648, 30.103384, 41.811974>,  <37.883820, 30.509785, 42.049305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390648, 30.103384, 41.811974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.221096, 30.465528, 41.801746>,  <37.119366, 30.682816, 41.795612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.221096, 30.465528, 41.801746>,  <37.390648, 30.103384, 41.811974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221096, 30.465528, 41.801746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069216, -0.060525, -0.995764,
		-0.903072, -0.420311, 0.088321,
		-0.423876, 0.905359, -0.025566,
		37.093933, 30.737137, 41.794075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912991, 29.996618, 41.225822>,  <37.390648, 30.103384, 41.811974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912991, 29.996618, 41.225822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.916355, 30.389589, 41.300407>,  <36.918373, 30.625372, 41.345158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.916355, 30.389589, 41.300407>,  <36.912991, 29.996618, 41.225822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916355, 30.389589, 41.300407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297434, 0.180488, -0.937527,
		-0.954705, -0.047577, 0.293725,
		0.008410, 0.982426, 0.186464,
		36.918877, 30.684317, 41.356346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249962, 30.205004, 41.009235>,  <36.912991, 29.996618, 41.225822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249962, 30.205004, 41.009235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.501923, 30.515673, 41.008873>,  <36.653099, 30.702074, 41.008656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.501923, 30.515673, 41.008873>,  <36.249962, 30.205004, 41.009235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501923, 30.515673, 41.008873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395769, 0.319981, -0.860802,
		-0.668272, 0.542579, 0.508940,
		0.629904, 0.776672, -0.000902,
		36.690895, 30.748674, 41.008602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887363, 30.801884, 40.791683>,  <36.249962, 30.205004, 41.009235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887363, 30.801884, 40.791683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269791, 30.887596, 40.711662>,  <36.499249, 30.939024, 40.663651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269791, 30.887596, 40.711662>,  <35.887363, 30.801884, 40.791683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269791, 30.887596, 40.711662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262306, 0.320637, -0.910158,
		-0.130886, 0.922646, 0.362758,
		0.956067, 0.214281, -0.200049,
		36.556610, 30.951880, 40.651649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789078, 31.449232, 40.475857>,  <35.887363, 30.801884, 40.791683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789078, 31.449232, 40.475857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.133533, 31.283335, 40.358257>,  <36.340206, 31.183796, 40.287697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.133533, 31.283335, 40.358257>,  <35.789078, 31.449232, 40.475857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133533, 31.283335, 40.358257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133128, 0.374153, -0.917762,
		0.490633, 0.829457, 0.266983,
		0.861136, -0.414741, -0.293996,
		36.391876, 31.158913, 40.270058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059059, 31.858198, 40.045261>,  <35.789078, 31.449232, 40.475857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059059, 31.858198, 40.045261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.318714, 31.567373, 39.955814>,  <36.474506, 31.392878, 39.902145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.318714, 31.567373, 39.955814>,  <36.059059, 31.858198, 40.045261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318714, 31.567373, 39.955814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009378, 0.286297, -0.958095,
		0.760615, 0.624031, 0.179027,
		0.649136, -0.727062, -0.223614,
		36.513454, 31.349255, 39.888729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504894, 32.113098, 39.613056>,  <36.059059, 31.858198, 40.045261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504894, 32.113098, 39.613056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.514183, 31.721939, 39.529938>,  <36.519756, 31.487244, 39.480068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.514183, 31.721939, 39.529938>,  <36.504894, 32.113098, 39.613056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514183, 31.721939, 39.529938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137166, 0.202768, -0.969572,
		0.990276, 0.051018, -0.129426,
		0.023222, -0.977897, -0.207795,
		36.521149, 31.428570, 39.467598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859512, 32.105103, 39.021133>,  <36.504894, 32.113098, 39.613056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859512, 32.105103, 39.021133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.659870, 31.759598, 39.048874>,  <36.540085, 31.552294, 39.065517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.659870, 31.759598, 39.048874>,  <36.859512, 32.105103, 39.021133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659870, 31.759598, 39.048874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167332, 0.017541, -0.985744,
		0.850234, -0.503591, -0.153290,
		-0.499101, -0.863764, 0.069353,
		36.510139, 31.500469, 39.069679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427364, 32.390118, 38.557461>,  <36.859512, 32.105103, 39.021133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427364, 32.390118, 38.557461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.391968, 32.788139, 38.575542>,  <37.370731, 33.026951, 38.586391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.391968, 32.788139, 38.575542>,  <37.427364, 32.390118, 38.557461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391968, 32.788139, 38.575542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435663, -0.002145, 0.900107,
		0.895750, 0.099341, -0.433317,
		-0.088488, 0.995051, 0.045201,
		37.365421, 33.086655, 38.589104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058437, 32.734467, 38.728100>,  <37.427364, 32.390118, 38.557461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058437, 32.734467, 38.728100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.796318, 33.017246, 38.834538>,  <37.639046, 33.186913, 38.898399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.796318, 33.017246, 38.834538>,  <38.058437, 32.734467, 38.728100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796318, 33.017246, 38.834538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369667, -0.007059, 0.929137,
		0.658730, 0.707230, -0.256709,
		-0.655302, 0.706948, 0.266090,
		37.599728, 33.229332, 38.914364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484760, 33.303196, 39.003166>,  <38.058437, 32.734467, 38.728100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484760, 33.303196, 39.003166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.106766, 33.301498, 39.133999>,  <37.879971, 33.300480, 39.212498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.106766, 33.301498, 39.133999>,  <38.484760, 33.303196, 39.003166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106766, 33.301498, 39.133999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326707, 0.037260, 0.944391,
		-0.016197, 0.999297, -0.033823,
		-0.944987, -0.004246, 0.327081,
		37.823269, 33.300224, 39.232124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521954, 33.727394, 39.537464>,  <38.484760, 33.303196, 39.003166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521954, 33.727394, 39.537464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.174568, 33.556236, 39.637600>,  <37.966137, 33.453541, 39.697681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.174568, 33.556236, 39.637600>,  <38.521954, 33.727394, 39.537464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174568, 33.556236, 39.637600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209613, 0.140659, 0.967614,
		-0.449253, 0.892815, -0.032464,
		-0.868466, -0.427899, 0.250337,
		37.914028, 33.427868, 39.712700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366726, 34.078503, 40.150150>,  <38.521954, 33.727394, 39.537464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366726, 34.078503, 40.150150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.098068, 33.784706, 40.188953>,  <37.936874, 33.608429, 40.212234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.098068, 33.784706, 40.188953>,  <38.366726, 34.078503, 40.150150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098068, 33.784706, 40.188953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052761, 0.083192, 0.995136,
		-0.738992, 0.673496, -0.017122,
		-0.671645, -0.734494, 0.097012,
		37.896576, 33.564358, 40.218056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853081, 34.361244, 40.525742>,  <38.366726, 34.078503, 40.150150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853081, 34.361244, 40.525742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.801075, 33.965008, 40.542809>,  <37.769871, 33.727264, 40.553047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.801075, 33.965008, 40.542809>,  <37.853081, 34.361244, 40.525742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801075, 33.965008, 40.542809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050736, 0.036330, 0.998051,
		-0.990213, 0.131927, 0.045535,
		-0.130015, -0.990593, 0.042668,
		37.762070, 33.667831, 40.555611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371651, 34.133717, 41.098640>,  <37.853081, 34.361244, 40.525742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371651, 34.133717, 41.098640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.572067, 33.794239, 41.030903>,  <37.692318, 33.590553, 40.990261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.572067, 33.794239, 41.030903>,  <37.371651, 34.133717, 41.098640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572067, 33.794239, 41.030903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037861, -0.173993, 0.984019,
		-0.864595, -0.499444, -0.055045,
		0.501040, -0.848694, -0.169343,
		37.722378, 33.539631, 40.980099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057835, 33.550640, 41.476978>,  <37.371651, 34.133717, 41.098640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057835, 33.550640, 41.476978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.434975, 33.449711, 41.389919>,  <37.661259, 33.389153, 41.337685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.434975, 33.449711, 41.389919>,  <37.057835, 33.550640, 41.476978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434975, 33.449711, 41.389919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195654, -0.109529, 0.974537,
		-0.269735, -0.961425, -0.053901,
		0.942848, -0.252321, -0.217650,
		37.717831, 33.374016, 41.324623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214424, 33.063442, 41.910465>,  <37.057835, 33.550640, 41.476978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214424, 33.063442, 41.910465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.582592, 33.179478, 41.805645>,  <37.803493, 33.249100, 41.742752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.582592, 33.179478, 41.805645>,  <37.214424, 33.063442, 41.910465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582592, 33.179478, 41.805645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289088, -0.053830, 0.955788,
		0.263156, -0.955485, -0.133407,
		0.920422, 0.290088, -0.262053,
		37.858719, 33.266502, 41.727028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598721, 32.658360, 42.313358>,  <37.214424, 33.063442, 41.910465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598721, 32.658360, 42.313358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.850845, 32.948208, 42.201904>,  <38.002121, 33.122116, 42.135033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.850845, 32.948208, 42.201904>,  <37.598721, 32.658360, 42.313358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850845, 32.948208, 42.201904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499134, -0.103342, 0.860341,
		0.594625, -0.681356, -0.426819,
		0.630307, 0.724620, -0.278638,
		38.039936, 33.165592, 42.118313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354706, 32.383224, 42.402279>,  <37.598721, 32.658360, 42.313358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354706, 32.383224, 42.402279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.344524, 32.782593, 42.422279>,  <38.338413, 33.022213, 42.434280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.344524, 32.782593, 42.422279>,  <38.354706, 32.383224, 42.402279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344524, 32.782593, 42.422279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447295, -0.033353, 0.893764,
		0.894024, 0.045117, -0.445741,
		-0.025457, 0.998425, 0.049999,
		38.336887, 33.082119, 42.437279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977840, 32.592812, 42.720165>,  <38.354706, 32.383224, 42.402279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977840, 32.592812, 42.720165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.774025, 32.934357, 42.762657>,  <38.651733, 33.139282, 42.788155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.774025, 32.934357, 42.762657>,  <38.977840, 32.592812, 42.720165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774025, 32.934357, 42.762657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408315, 0.131273, 0.903353,
		0.757394, 0.503672, -0.415534,
		-0.509542, 0.853863, 0.106232,
		38.621162, 33.190517, 42.794525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491505, 33.133385, 42.945721>,  <38.977840, 32.592812, 42.720165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491505, 33.133385, 42.945721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.125465, 33.236980, 43.069351>,  <38.905842, 33.299137, 43.143528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.125465, 33.236980, 43.069351>,  <39.491505, 33.133385, 42.945721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125465, 33.236980, 43.069351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355050, 0.154144, 0.922051,
		0.191156, 0.953502, -0.233010,
		-0.915095, 0.258986, 0.309075,
		38.850937, 33.314674, 43.162075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616177, 33.769474, 43.222885>,  <39.491505, 33.133385, 42.945721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616177, 33.769474, 43.222885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.299770, 33.584557, 43.383167>,  <39.109924, 33.473606, 43.479336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.299770, 33.584557, 43.383167>,  <39.616177, 33.769474, 43.222885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299770, 33.584557, 43.383167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373098, 0.154559, 0.914828,
		-0.484856, 0.873151, 0.050223,
		-0.791020, -0.462298, 0.400709,
		39.062466, 33.445866, 43.503380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750343, 34.535000, 43.319748>,  <39.616177, 33.769474, 43.222885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750343, 34.535000, 43.319748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.049644, 34.799656, 43.300362>,  <40.229225, 34.958450, 43.288731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.049644, 34.799656, 43.300362>,  <39.750343, 34.535000, 43.319748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049644, 34.799656, 43.300362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491046, 0.503245, -0.711069,
		-0.446079, 0.555860, 0.701450,
		0.748256, 0.661637, -0.048466,
		40.274120, 34.998146, 43.285820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416191, 35.231461, 43.437744>,  <39.750343, 34.535000, 43.319748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416191, 35.231461, 43.437744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.759418, 35.254444, 43.233620>,  <39.965355, 35.268234, 43.111145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.759418, 35.254444, 43.233620>,  <39.416191, 35.231461, 43.437744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759418, 35.254444, 43.233620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430991, 0.620896, -0.654779,
		0.279226, 0.781785, 0.557536,
		0.858067, 0.057462, -0.510313,
		40.016838, 35.271683, 43.080524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570477, 35.922539, 43.372032>,  <39.416191, 35.231461, 43.437744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570477, 35.922539, 43.372032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.756924, 35.736252, 43.071144>,  <39.868793, 35.624477, 42.890610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.756924, 35.736252, 43.071144>,  <39.570477, 35.922539, 43.372032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756924, 35.736252, 43.071144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350781, 0.683266, -0.640391,
		0.812211, 0.562363, 0.155116,
		0.466118, -0.465721, -0.752223,
		39.896759, 35.596535, 42.845478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711044, 36.415924, 42.873970>,  <39.570477, 35.922539, 43.372032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711044, 36.415924, 42.873970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.759987, 36.090607, 42.646435>,  <39.789352, 35.895416, 42.509914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.759987, 36.090607, 42.646435>,  <39.711044, 36.415924, 42.873970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759987, 36.090607, 42.646435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457153, 0.462541, -0.759650,
		0.880931, 0.352994, -0.315206,
		0.122356, -0.813296, -0.568839,
		39.796692, 35.846619, 42.475784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895195, 36.723778, 42.212872>,  <39.711044, 36.415924, 42.873970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895195, 36.723778, 42.212872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.774353, 36.357147, 42.108082>,  <39.701847, 36.137169, 42.045208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.774353, 36.357147, 42.108082>,  <39.895195, 36.723778, 42.212872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774353, 36.357147, 42.108082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473149, 0.382747, -0.793495,
		0.827566, -0.115763, -0.549303,
		-0.302101, -0.916572, -0.261975,
		39.683723, 36.082176, 42.029488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129051, 36.683098, 41.533508>,  <39.895195, 36.723778, 42.212872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129051, 36.683098, 41.533508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.830025, 36.418297, 41.555065>,  <39.650608, 36.259418, 41.568001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.830025, 36.418297, 41.555065>,  <40.129051, 36.683098, 41.533508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830025, 36.418297, 41.555065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289311, 0.251512, -0.923602,
		0.597868, -0.706045, -0.379545,
		-0.747564, -0.661999, 0.053896,
		39.605755, 36.219696, 41.571236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156513, 36.478157, 40.774784>,  <40.129051, 36.683098, 41.533508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156513, 36.478157, 40.774784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.803196, 36.350533, 40.912182>,  <39.591206, 36.273956, 40.994621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.803196, 36.350533, 40.912182>,  <40.156513, 36.478157, 40.774784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803196, 36.350533, 40.912182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439454, 0.308281, -0.843708,
		0.163301, -0.896194, -0.412515,
		-0.883297, -0.319060, 0.343494,
		39.538208, 36.254814, 41.015228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725246, 36.088474, 40.148800>,  <40.156513, 36.478157, 40.774784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725246, 36.088474, 40.148800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.452755, 36.177544, 40.427750>,  <39.289261, 36.230988, 40.595119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.452755, 36.177544, 40.427750>,  <39.725246, 36.088474, 40.148800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452755, 36.177544, 40.427750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599715, 0.376571, -0.706071,
		-0.419838, -0.899227, -0.122990,
		-0.681232, 0.222677, 0.697379,
		39.248386, 36.244347, 40.636963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049469, 35.766335, 39.925919>,  <39.725246, 36.088474, 40.148800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049469, 35.766335, 39.925919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.975925, 36.084038, 40.157555>,  <38.931801, 36.274658, 40.296535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.975925, 36.084038, 40.157555>,  <39.049469, 35.766335, 39.925919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975925, 36.084038, 40.157555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541810, 0.409668, -0.733904,
		-0.820145, -0.448694, 0.355016,
		-0.183859, 0.794259, 0.579094,
		38.920769, 36.322315, 40.331284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286263, 35.875141, 39.873455>,  <39.049469, 35.766335, 39.925919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286263, 35.875141, 39.873455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.472485, 36.216377, 39.967678>,  <38.584217, 36.421120, 40.024212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.472485, 36.216377, 39.967678>,  <38.286263, 35.875141, 39.873455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472485, 36.216377, 39.967678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464191, 0.461991, -0.755706,
		-0.753516, 0.242476, 0.611080,
		0.465554, 0.853094, 0.235562,
		38.612152, 36.472305, 40.038345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835194, 36.359875, 39.711433>,  <38.286263, 35.875141, 39.873455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835194, 36.359875, 39.711433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.149536, 36.605732, 39.738708>,  <38.338142, 36.753246, 39.755074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.149536, 36.605732, 39.738708>,  <37.835194, 36.359875, 39.711433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149536, 36.605732, 39.738708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378919, 0.565724, -0.732377,
		-0.488724, 0.549704, 0.677476,
		0.785855, 0.614639, 0.068190,
		38.385292, 36.790123, 39.759167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669430, 37.085354, 39.588402>,  <37.835194, 36.359875, 39.711433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669430, 37.085354, 39.588402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.064690, 37.085045, 39.527008>,  <38.301846, 37.084858, 39.490173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.064690, 37.085045, 39.527008>,  <37.669430, 37.085354, 39.588402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064690, 37.085045, 39.527008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138875, 0.421259, -0.896245,
		0.065348, 0.906940, 0.416160,
		0.988151, -0.000773, -0.153480,
		38.361134, 37.084812, 39.480965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690189, 37.623878, 39.168591>,  <37.669430, 37.085354, 39.588402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690189, 37.623878, 39.168591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.049526, 37.450420, 39.140472>,  <38.265129, 37.346348, 39.123600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.049526, 37.450420, 39.140472>,  <37.690189, 37.623878, 39.168591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049526, 37.450420, 39.140472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006367, 0.147151, -0.989093,
		0.439257, 0.888988, 0.129431,
		0.898339, -0.433642, -0.070297,
		38.319027, 37.320328, 39.119385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137035, 37.981541, 38.678009>,  <37.690189, 37.623878, 39.168591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137035, 37.981541, 38.678009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.320312, 37.626514, 38.658886>,  <38.430279, 37.413498, 38.647411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.320312, 37.626514, 38.658886>,  <38.137035, 37.981541, 38.678009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320312, 37.626514, 38.658886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191008, 0.150852, -0.969927,
		0.868085, 0.435285, 0.238652,
		0.458196, -0.887564, -0.047810,
		38.457771, 37.360245, 38.644543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.096609, 28.788229, 29.381956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.864277, 28.639391, 29.671558>,  <26.724878, 28.550087, 29.845320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.864277, 28.639391, 29.671558>,  <27.096609, 28.788229, 29.381956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864277, 28.639391, 29.671558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178393, 0.925976, 0.332784,
		-0.794238, 0.064133, -0.604213,
		-0.580829, -0.372097, 0.724004,
		26.690029, 28.527761, 29.888760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.565161, 29.264156, 29.533222>,  <27.096609, 28.788229, 29.381956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.565161, 29.264156, 29.533222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.547003, 29.043673, 29.866474>,  <26.536108, 28.911383, 30.066425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.547003, 29.043673, 29.866474>,  <26.565161, 29.264156, 29.533222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547003, 29.043673, 29.866474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186224, 0.824040, 0.535050,
		-0.981458, -0.130860, -0.140057,
		-0.045396, -0.551211, 0.833130,
		26.533384, 28.878309, 30.116413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891615, 29.449816, 29.860863>,  <26.565161, 29.264156, 29.533222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891615, 29.449816, 29.860863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.141037, 29.305227, 30.138142>,  <26.290689, 29.218475, 30.304508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.141037, 29.305227, 30.138142>,  <25.891615, 29.449816, 29.860863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.141037, 29.305227, 30.138142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248480, 0.749072, 0.614124,
		-0.741241, -0.555185, 0.377270,
		0.623554, -0.361470, 0.693195,
		26.328104, 29.196787, 30.346100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.492317, 29.595797, 30.427399>,  <25.891615, 29.449816, 29.860863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.492317, 29.595797, 30.427399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.858700, 29.525126, 30.571516>,  <26.078529, 29.482723, 30.657986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.858700, 29.525126, 30.571516>,  <25.492317, 29.595797, 30.427399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858700, 29.525126, 30.571516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082885, 0.795200, 0.600656,
		-0.392626, -0.580037, 0.713724,
		0.915956, -0.176676, 0.360293,
		26.133486, 29.472122, 30.679604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.365957, 29.791710, 31.155882>,  <25.492317, 29.595797, 30.427399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.365957, 29.791710, 31.155882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.761295, 29.745800, 31.115881>,  <25.998499, 29.718254, 31.091881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.761295, 29.745800, 31.115881>,  <25.365957, 29.791710, 31.155882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.761295, 29.745800, 31.115881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151821, 0.695159, 0.702641,
		-0.011127, -0.709635, 0.704482,
		0.988346, -0.114773, -0.100003,
		26.057798, 29.711369, 31.085880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.653881, 29.769697, 31.871336>,  <25.365957, 29.791710, 31.155882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.653881, 29.769697, 31.871336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.966639, 29.864639, 31.640753>,  <26.154293, 29.921604, 31.502403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.966639, 29.864639, 31.640753>,  <25.653881, 29.769697, 31.871336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966639, 29.864639, 31.640753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228790, 0.750909, 0.619509,
		0.579910, -0.616278, 0.532827,
		0.781894, 0.237354, -0.576458,
		26.201206, 29.935846, 31.467815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359764, 29.816139, 32.263371>,  <25.653881, 29.769697, 31.871336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359764, 29.816139, 32.263371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.353834, 30.061890, 31.947823>,  <26.350277, 30.209339, 31.758493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.353834, 30.061890, 31.947823>,  <26.359764, 29.816139, 32.263371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353834, 30.061890, 31.947823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361580, 0.738862, 0.568632,
		0.932223, -0.276810, -0.233100,
		-0.014826, 0.614376, -0.788874,
		26.349386, 30.246202, 31.711161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028343, 30.012459, 32.220440>,  <26.359764, 29.816139, 32.263371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.028343, 30.012459, 32.220440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.785118, 30.282879, 32.053963>,  <26.639183, 30.445131, 31.954077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.785118, 30.282879, 32.053963>,  <27.028343, 30.012459, 32.220440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785118, 30.282879, 32.053963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395556, 0.712534, 0.579509,
		0.688327, 0.187752, -0.700682,
		-0.608064, 0.676051, -0.416190,
		26.602699, 30.485695, 31.929106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482502, 30.515051, 32.243465>,  <27.028343, 30.012459, 32.220440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482502, 30.515051, 32.243465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.116611, 30.665249, 32.183765>,  <26.897078, 30.755367, 32.147945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.116611, 30.665249, 32.183765>,  <27.482502, 30.515051, 32.243465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116611, 30.665249, 32.183765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258956, 0.828312, 0.496831,
		0.310183, 0.415817, -0.854917,
		-0.914728, 0.375495, -0.149250,
		26.842194, 30.777897, 32.138988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597385, 31.124315, 32.366795>,  <27.482502, 30.515051, 32.243465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597385, 31.124315, 32.366795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.198332, 31.118814, 32.393726>,  <26.958899, 31.115515, 32.409885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.198332, 31.118814, 32.393726>,  <27.597385, 31.124315, 32.366795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198332, 31.118814, 32.393726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036022, 0.729718, 0.682799,
		-0.058518, 0.683610, -0.727498,
		-0.997636, -0.013750, 0.067327,
		26.899040, 31.114689, 32.413925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420265, 31.771975, 32.336651>,  <27.597385, 31.124315, 32.366795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420265, 31.771975, 32.336651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.107386, 31.596962, 32.514069>,  <26.919659, 31.491955, 32.620522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.107386, 31.596962, 32.514069>,  <27.420265, 31.771975, 32.336651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107386, 31.596962, 32.514069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003240, 0.709051, 0.705150,
		-0.623022, 0.553004, -0.553200,
		-0.782197, -0.437532, 0.443546,
		26.872726, 31.465702, 32.647133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.847189, 32.309616, 32.408855>,  <27.420265, 31.771975, 32.336651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.847189, 32.309616, 32.408855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.779158, 32.006931, 32.661346>,  <26.738338, 31.825319, 32.812843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.779158, 32.006931, 32.661346>,  <26.847189, 32.309616, 32.408855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779158, 32.006931, 32.661346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222973, 0.594399, 0.772640,
		-0.959873, 0.272158, 0.067632,
		-0.170080, -0.756717, 0.631231,
		26.728134, 31.779917, 32.850716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196167, 32.519691, 32.863617>,  <26.847189, 32.309616, 32.408855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196167, 32.519691, 32.863617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.426371, 32.255547, 33.056576>,  <26.564493, 32.097061, 33.172352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.426371, 32.255547, 33.056576>,  <26.196167, 32.519691, 32.863617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426371, 32.255547, 33.056576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012666, 0.582609, 0.812654,
		-0.817697, -0.473800, 0.326933,
		0.575510, -0.660364, 0.482399,
		26.599024, 32.057438, 33.201294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083992, 32.674179, 33.487263>,  <26.196167, 32.519691, 32.863617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083992, 32.674179, 33.487263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.387138, 32.426361, 33.569046>,  <26.569027, 32.277672, 33.618114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.387138, 32.426361, 33.569046>,  <26.083992, 32.674179, 33.487263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387138, 32.426361, 33.569046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231317, 0.548203, 0.803720,
		-0.610024, -0.561819, 0.558776,
		0.757868, -0.619543, 0.204459,
		26.614498, 32.240498, 33.630383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058352, 32.430393, 34.218845>,  <26.083992, 32.674179, 33.487263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058352, 32.430393, 34.218845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.442640, 32.407692, 34.110184>,  <26.673214, 32.394073, 34.044987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.442640, 32.407692, 34.110184>,  <26.058352, 32.430393, 34.218845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.442640, 32.407692, 34.110184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264856, 0.479811, 0.836440,
		0.082875, -0.875534, 0.475995,
		0.960720, -0.056751, -0.271655,
		26.730856, 32.390667, 34.028687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320786, 32.264042, 34.816441>,  <26.058352, 32.430393, 34.218845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320786, 32.264042, 34.816441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.630110, 32.394051, 34.598690>,  <26.815704, 32.472057, 34.468040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.630110, 32.394051, 34.598690>,  <26.320786, 32.264042, 34.816441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630110, 32.394051, 34.598690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288482, 0.584209, 0.758602,
		0.564592, -0.743681, 0.358015,
		0.773314, 0.325020, -0.544378,
		26.862103, 32.491558, 34.435375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.842869, 32.401749, 35.341831>,  <26.320786, 32.264042, 34.816441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.842869, 32.401749, 35.341831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.973284, 32.603245, 35.021843>,  <27.051533, 32.724140, 34.829849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.973284, 32.603245, 35.021843>,  <26.842869, 32.401749, 35.341831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973284, 32.603245, 35.021843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341082, 0.726529, 0.596506,
		0.881682, -0.467338, 0.065060,
		0.326038, 0.503737, -0.799968,
		27.071095, 32.754364, 34.781853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637152, 32.529606, 35.302288>,  <26.842869, 32.401749, 35.341831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637152, 32.529606, 35.302288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.442965, 32.803768, 35.085201>,  <27.326452, 32.968266, 34.954948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.442965, 32.803768, 35.085201>,  <27.637152, 32.529606, 35.302288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442965, 32.803768, 35.085201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454467, 0.728158, 0.513076,
		0.746847, 0.002437, -0.664991,
		-0.485469, 0.685405, -0.542715,
		27.297323, 33.009388, 34.922386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060917, 32.970901, 35.220898>,  <27.637152, 32.529606, 35.302288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060917, 32.970901, 35.220898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.756361, 33.213634, 35.129642>,  <27.573627, 33.359272, 35.074890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.756361, 33.213634, 35.129642>,  <28.060917, 32.970901, 35.220898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756361, 33.213634, 35.129642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462840, 0.755221, 0.464134,
		0.453948, 0.247793, -0.855880,
		-0.761388, 0.606828, -0.228143,
		27.527945, 33.395683, 35.061199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359385, 33.635422, 34.862892>,  <28.060917, 32.970901, 35.220898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359385, 33.635422, 34.862892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.010233, 33.676708, 35.053654>,  <27.800743, 33.701481, 35.168110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.010233, 33.676708, 35.053654>,  <28.359385, 33.635422, 34.862892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010233, 33.676708, 35.053654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416919, 0.665545, 0.619054,
		-0.253504, 0.739187, -0.623970,
		-0.872877, 0.103212, 0.476899,
		27.748369, 33.707672, 35.196724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502800, 33.760475, 34.047779>,  <28.359385, 33.635422, 34.862892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502800, 33.760475, 34.047779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.891851, 33.821194, 33.977409>,  <29.125282, 33.857624, 33.935188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.891851, 33.821194, 33.977409>,  <28.502800, 33.760475, 34.047779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891851, 33.821194, 33.977409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201130, 0.170871, -0.964546,
		-0.116357, 0.973530, 0.196725,
		0.972629, 0.151799, -0.175924,
		29.183640, 33.866734, 33.924633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542530, 34.379753, 33.645405>,  <28.502800, 33.760475, 34.047779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542530, 34.379753, 33.645405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.866131, 34.159420, 33.563328>,  <29.060291, 34.027222, 33.514080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.866131, 34.159420, 33.563328>,  <28.542530, 34.379753, 33.645405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866131, 34.159420, 33.563328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218278, 0.042604, -0.974956,
		0.545776, 0.833530, -0.085767,
		0.809001, -0.550829, -0.205194,
		29.108831, 33.994171, 33.501770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817760, 34.709999, 32.972992>,  <28.542530, 34.379753, 33.645405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817760, 34.709999, 32.972992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.942272, 34.332764, 33.019802>,  <29.016979, 34.106422, 33.047890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.942272, 34.332764, 33.019802>,  <28.817760, 34.709999, 32.972992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942272, 34.332764, 33.019802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252007, -0.200651, -0.946695,
		0.916296, 0.265194, -0.300123,
		0.311278, -0.943086, 0.117025,
		29.035656, 34.049839, 33.054909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344311, 34.562527, 32.570484>,  <28.817760, 34.709999, 32.972992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344311, 34.562527, 32.570484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162334, 34.210209, 32.622993>,  <29.053148, 33.998817, 32.654499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162334, 34.210209, 32.622993>,  <29.344311, 34.562527, 32.570484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162334, 34.210209, 32.622993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156808, -0.065876, -0.985430,
		0.876608, -0.468896, -0.108146,
		-0.454940, -0.880793, 0.131274,
		29.025852, 33.945972, 32.662376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462908, 34.229286, 31.925077>,  <29.344311, 34.562527, 32.570484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462908, 34.229286, 31.925077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217012, 33.978413, 32.116386>,  <29.069475, 33.827888, 32.231171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217012, 33.978413, 32.116386>,  <29.462908, 34.229286, 31.925077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217012, 33.978413, 32.116386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384872, -0.290759, -0.875975,
		0.688456, -0.722568, -0.062644,
		-0.614737, -0.627180, 0.478271,
		29.032591, 33.790260, 32.259869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603340, 33.431316, 31.720615>,  <29.462908, 34.229286, 31.925077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603340, 33.431316, 31.720615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.220768, 33.465668, 31.832230>,  <28.991224, 33.486279, 31.899199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.220768, 33.465668, 31.832230>,  <29.603340, 33.431316, 31.720615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220768, 33.465668, 31.832230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291402, -0.222099, -0.930460,
		-0.017933, -0.971235, 0.237448,
		-0.956433, 0.085879, 0.279037,
		28.933838, 33.491432, 31.915941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291487, 32.842869, 31.540218>,  <29.603340, 33.431316, 31.720615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291487, 32.842869, 31.540218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985840, 33.092484, 31.605583>,  <28.802452, 33.242252, 31.644802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985840, 33.092484, 31.605583>,  <29.291487, 32.842869, 31.540218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985840, 33.092484, 31.605583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534376, -0.470444, -0.702229,
		-0.361336, -0.623912, 0.692943,
		-0.764120, 0.624033, 0.163415,
		28.756603, 33.279694, 31.654608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673018, 32.315964, 31.607141>,  <29.291487, 32.842869, 31.540218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673018, 32.315964, 31.607141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.584280, 32.695374, 31.516733>,  <28.531036, 32.923019, 31.462488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.584280, 32.695374, 31.516733>,  <28.673018, 32.315964, 31.607141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584280, 32.695374, 31.516733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430739, -0.303285, -0.849990,
		-0.874785, -0.091211, 0.475849,
		-0.221846, 0.948525, -0.226021,
		28.517727, 32.979931, 31.448927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977018, 32.359669, 31.544945>,  <28.673018, 32.315964, 31.607141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977018, 32.359669, 31.544945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.082220, 32.707314, 31.377390>,  <28.145342, 32.915901, 31.276857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.082220, 32.707314, 31.377390>,  <27.977018, 32.359669, 31.544945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082220, 32.707314, 31.377390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359429, -0.314655, -0.878524,
		-0.895343, 0.381618, 0.229629,
		0.263006, 0.869115, -0.418889,
		28.161121, 32.968048, 31.251724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398369, 32.679565, 31.111324>,  <27.977018, 32.359669, 31.544945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398369, 32.679565, 31.111324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.742512, 32.831547, 30.975430>,  <27.948997, 32.922737, 30.893892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.742512, 32.831547, 30.975430>,  <27.398369, 32.679565, 31.111324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.742512, 32.831547, 30.975430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317132, -0.122755, -0.940404,
		-0.399015, 0.916824, 0.014883,
		0.860357, 0.379955, -0.339735,
		28.000618, 32.945534, 30.873508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167883, 33.088493, 30.613535>,  <27.398369, 32.679565, 31.111324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167883, 33.088493, 30.613535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.556807, 33.058300, 30.525063>,  <27.790161, 33.040184, 30.471979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.556807, 33.058300, 30.525063>,  <27.167883, 33.088493, 30.613535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556807, 33.058300, 30.525063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229125, -0.121389, -0.965799,
		0.046055, 0.989731, -0.135323,
		0.972307, -0.075486, -0.221181,
		27.848499, 33.035656, 30.458708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310749, 33.620621, 30.092842>,  <27.167883, 33.088493, 30.613535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310749, 33.620621, 30.092842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.567604, 33.314140, 30.083139>,  <27.721718, 33.130253, 30.077318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.567604, 33.314140, 30.083139>,  <27.310749, 33.620621, 30.092842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567604, 33.314140, 30.083139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233961, -0.165747, -0.958014,
		0.730014, 0.620853, -0.285695,
		0.642139, -0.766204, -0.024258,
		27.760246, 33.084278, 30.075863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488575, 33.552780, 29.388613>,  <27.310749, 33.620621, 30.092842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488575, 33.552780, 29.388613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.648489, 33.215843, 29.533186>,  <27.744438, 33.013680, 29.619930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.648489, 33.215843, 29.533186>,  <27.488575, 33.552780, 29.388613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648489, 33.215843, 29.533186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182558, -0.459586, -0.869168,
		0.898245, 0.281499, -0.337512,
		0.399785, -0.842341, 0.361431,
		27.768425, 32.963142, 29.641615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049702, 33.322308, 28.862539>,  <27.488575, 33.552780, 29.388613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049702, 33.322308, 28.862539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.930056, 33.014500, 29.088234>,  <27.858267, 32.829815, 29.223652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.930056, 33.014500, 29.088234>,  <28.049702, 33.322308, 28.862539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930056, 33.014500, 29.088234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114060, -0.558238, -0.821803,
		0.947375, -0.310172, 0.079207,
		-0.299117, -0.769522, 0.564239,
		27.840321, 32.783642, 29.257505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482107, 32.661453, 28.656502>,  <28.049702, 33.322308, 28.862539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482107, 32.661453, 28.656502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.157862, 32.517387, 28.841192>,  <27.963314, 32.430950, 28.952005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.157862, 32.517387, 28.841192>,  <28.482107, 32.661453, 28.656502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157862, 32.517387, 28.841192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104298, -0.687081, -0.719056,
		0.576218, -0.631034, 0.519393,
		-0.810614, -0.360161, 0.461724,
		27.914677, 32.409340, 28.979710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522362, 31.948950, 28.433617>,  <28.482107, 32.661453, 28.656502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522362, 31.948950, 28.433617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.149048, 31.979939, 28.573889>,  <27.925058, 31.998531, 28.658052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.149048, 31.979939, 28.573889>,  <28.522362, 31.948950, 28.433617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149048, 31.979939, 28.573889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298507, -0.710248, -0.637527,
		0.199679, -0.699675, 0.685990,
		-0.933285, 0.077472, 0.350679,
		27.869062, 32.003181, 28.679092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276897, 31.235792, 28.616339>,  <28.522362, 31.948950, 28.433617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276897, 31.235792, 28.616339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.970873, 31.480343, 28.535442>,  <27.787258, 31.627073, 28.486904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.970873, 31.480343, 28.535442>,  <28.276897, 31.235792, 28.616339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970873, 31.480343, 28.535442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296933, -0.613605, -0.731656,
		-0.571412, -0.499710, 0.650983,
		-0.765062, 0.611375, -0.202240,
		27.741354, 31.663755, 28.474770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770052, 30.733959, 28.450098>,  <28.276897, 31.235792, 28.616339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770052, 30.733959, 28.450098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.634720, 31.082424, 28.307770>,  <27.553520, 31.291504, 28.222374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.634720, 31.082424, 28.307770>,  <27.770052, 30.733959, 28.450098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634720, 31.082424, 28.307770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450682, -0.481939, -0.751413,
		-0.826086, -0.093864, 0.555672,
		-0.338330, 0.871163, -0.355820,
		27.533220, 31.343773, 28.201023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027710, 30.619717, 28.354055>,  <27.770052, 30.733959, 28.450098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027710, 30.619717, 28.354055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.138144, 30.922546, 28.117205>,  <27.204403, 31.104244, 27.975094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.138144, 30.922546, 28.117205>,  <27.027710, 30.619717, 28.354055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138144, 30.922546, 28.117205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296738, -0.518834, -0.801722,
		-0.914180, 0.397048, 0.081412,
		0.276083, 0.757076, -0.592127,
		27.220968, 31.149670, 27.939566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.508135, 30.642477, 27.877249>,  <27.027710, 30.619717, 28.354055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.508135, 30.642477, 27.877249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.802891, 30.840477, 27.693087>,  <26.979744, 30.959276, 27.582590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.802891, 30.840477, 27.693087>,  <26.508135, 30.642477, 27.877249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802891, 30.840477, 27.693087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193167, -0.498480, -0.845106,
		-0.647830, 0.711683, -0.271706,
		0.736888, 0.495000, -0.460404,
		27.023956, 30.988977, 27.554966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307045, 31.107599, 27.202423>,  <26.508135, 30.642477, 27.877249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307045, 31.107599, 27.202423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.686356, 30.980619, 27.203138>,  <26.913942, 30.904432, 27.203568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.686356, 30.980619, 27.203138>,  <26.307045, 31.107599, 27.202423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686356, 30.980619, 27.203138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148571, -0.448777, -0.881207,
		0.280540, 0.835360, -0.472728,
		0.948274, -0.317447, 0.001789,
		26.970839, 30.885386, 27.203674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891781, 31.432283, 26.838741>,  <26.307045, 31.107599, 27.202423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891781, 31.432283, 26.838741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.935501, 31.035707, 26.867311>,  <26.961733, 30.797762, 26.884453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.935501, 31.035707, 26.867311>,  <26.891781, 31.432283, 26.838741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935501, 31.035707, 26.867311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268005, -0.098589, -0.958360,
		0.957197, 0.085609, -0.276487,
		0.109303, -0.991439, 0.071426,
		26.968292, 30.738276, 26.888739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<43.604546, 34.725151, 42.998257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.562305, 34.327698, 43.013920>,  <43.536961, 34.089226, 43.023319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.562305, 34.327698, 43.013920>,  <43.604546, 34.725151, 42.998257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562305, 34.327698, 43.013920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479282, -0.016357, 0.877508,
		-0.871284, 0.111437, 0.477960,
		-0.105605, -0.993637, 0.039159,
		43.530624, 34.029606, 43.025669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286289, 34.627758, 43.601704>,  <43.604546, 34.725151, 42.998257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286289, 34.627758, 43.601704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.400860, 34.251259, 43.530132>,  <43.469601, 34.025360, 43.487190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.400860, 34.251259, 43.530132>,  <43.286289, 34.627758, 43.601704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.400860, 34.251259, 43.530132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280470, -0.096202, 0.955029,
		-0.916131, -0.323732, 0.236436,
		0.286428, -0.941245, -0.178931,
		43.486790, 33.968884, 43.476452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024651, 34.111027, 44.205700>,  <43.286289, 34.627758, 43.601704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024651, 34.111027, 44.205700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.321377, 33.938816, 44.000038>,  <43.499413, 33.835487, 43.876640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.321377, 33.938816, 44.000038>,  <43.024651, 34.111027, 44.205700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321377, 33.938816, 44.000038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379996, -0.361875, 0.851264,
		-0.552555, -0.826856, -0.104844,
		0.741812, -0.430530, -0.514157,
		43.543922, 33.809658, 43.845791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031067, 33.445442, 44.437233>,  <43.024651, 34.111027, 44.205700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031067, 33.445442, 44.437233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.396534, 33.514439, 44.290012>,  <43.615814, 33.555836, 44.201679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.396534, 33.514439, 44.290012>,  <43.031067, 33.445442, 44.437233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396534, 33.514439, 44.290012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396485, -0.178807, 0.900460,
		0.089512, -0.968646, -0.231761,
		0.913667, 0.172492, -0.368048,
		43.670635, 33.566185, 44.179600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418129, 32.884251, 44.751793>,  <43.031067, 33.445442, 44.437233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418129, 32.884251, 44.751793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.652798, 33.182808, 44.626122>,  <43.793598, 33.361942, 44.550720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.652798, 33.182808, 44.626122>,  <43.418129, 32.884251, 44.751793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652798, 33.182808, 44.626122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579856, -0.116356, 0.806367,
		0.565313, -0.655251, -0.501065,
		0.586675, 0.746396, -0.314174,
		43.828800, 33.406727, 44.531868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110596, 32.681923, 44.958702>,  <43.418129, 32.884251, 44.751793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110596, 32.681923, 44.958702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.114109, 33.080605, 44.926434>,  <44.116215, 33.319813, 44.907070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.114109, 33.080605, 44.926434>,  <44.110596, 32.681923, 44.958702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114109, 33.080605, 44.926434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397140, 0.070564, 0.915041,
		0.917716, -0.040074, -0.395211,
		0.008781, 0.996702, -0.080673,
		44.116745, 33.379616, 44.902233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678345, 32.799694, 45.274399>,  <44.110596, 32.681923, 44.958702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678345, 32.799694, 45.274399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.547539, 33.175865, 45.237194>,  <44.469055, 33.401569, 45.214870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.547539, 33.175865, 45.237194>,  <44.678345, 32.799694, 45.274399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547539, 33.175865, 45.237194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478423, 0.249626, 0.841902,
		0.814967, 0.230819, -0.531556,
		-0.327017, 0.940431, -0.093008,
		44.449432, 33.457993, 45.209293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.287262, 33.217468, 45.495899>,  <44.678345, 32.799694, 45.274399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.287262, 33.217468, 45.495899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.952953, 33.430054, 45.551071>,  <44.752369, 33.557606, 45.584175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.952953, 33.430054, 45.551071>,  <45.287262, 33.217468, 45.495899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.952953, 33.430054, 45.551071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334795, 0.294171, 0.895196,
		0.435194, 0.794358, -0.423794,
		-0.835774, 0.531468, 0.137925,
		44.702221, 33.589493, 45.592449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.464523, 33.811863, 45.967033>,  <45.287262, 33.217468, 45.495899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.464523, 33.811863, 45.967033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.074017, 33.886509, 46.011002>,  <44.839714, 33.931297, 46.037384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.074017, 33.886509, 46.011002>,  <45.464523, 33.811863, 45.967033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074017, 33.886509, 46.011002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125294, 0.072659, 0.989455,
		0.176662, 0.979742, -0.094316,
		-0.976264, 0.186616, 0.109919,
		44.781136, 33.942493, 46.043976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.353367, 34.333977, 46.451260>,  <45.464523, 33.811863, 45.967033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.353367, 34.333977, 46.451260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.002224, 34.142548, 46.443943>,  <44.791538, 34.027691, 46.439552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.002224, 34.142548, 46.443943>,  <45.353367, 34.333977, 46.451260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002224, 34.142548, 46.443943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015458, -0.009867, 0.999832,
		-0.478669, 0.877995, 0.001264,
		-0.877860, -0.478569, -0.018295,
		44.738865, 33.998978, 46.438454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.914906, 34.768089, 46.796833>,  <45.353367, 34.333977, 46.451260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.914906, 34.768089, 46.796833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.780918, 34.393467, 46.838139>,  <44.700523, 34.168694, 46.862923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.780918, 34.393467, 46.838139>,  <44.914906, 34.768089, 46.796833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780918, 34.393467, 46.838139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114013, 0.068499, 0.991115,
		-0.935304, 0.343770, 0.083834,
		-0.334973, -0.936552, 0.103261,
		44.680428, 34.112503, 46.869118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377506, 34.777370, 47.327930>,  <44.914906, 34.768089, 46.796833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377506, 34.777370, 47.327930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.530033, 34.408817, 47.297874>,  <44.621548, 34.187683, 47.279842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.530033, 34.408817, 47.297874>,  <44.377506, 34.777370, 47.327930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530033, 34.408817, 47.297874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177479, -0.006800, 0.984101,
		-0.907248, -0.388589, 0.160934,
		0.381316, -0.921386, -0.075136,
		44.644428, 34.132401, 47.275333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692711, 34.566853, 47.581146>,  <44.377506, 34.777370, 47.327930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692711, 34.566853, 47.581146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.776974, 34.720528, 47.221584>,  <43.827530, 34.812733, 47.005848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.776974, 34.720528, 47.221584>,  <43.692711, 34.566853, 47.581146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776974, 34.720528, 47.221584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478044, -0.761603, -0.437534,
		-0.852700, 0.521885, 0.023220,
		0.210658, 0.384185, -0.898902,
		43.840172, 34.835785, 46.951912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278397, 34.117638, 48.003437>,  <43.692711, 34.566853, 47.581146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278397, 34.117638, 48.003437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.174870, 33.738464, 48.077660>,  <43.112751, 33.510960, 48.122192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.174870, 33.738464, 48.077660>,  <43.278397, 34.117638, 48.003437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174870, 33.738464, 48.077660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766166, 0.084487, -0.637064,
		0.588218, -0.307055, -0.748142,
		-0.258822, -0.947934, 0.185558,
		43.097221, 33.454082, 48.133327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364357, 33.583355, 47.331032>,  <43.278397, 34.117638, 48.003437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364357, 33.583355, 47.331032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.076504, 33.564598, 47.608139>,  <42.903790, 33.553345, 47.774403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.076504, 33.564598, 47.608139>,  <43.364357, 33.583355, 47.331032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076504, 33.564598, 47.608139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690410, 0.154466, -0.706735,
		-0.073870, -0.986885, -0.143533,
		-0.719637, -0.046890, 0.692765,
		42.860611, 33.550529, 47.815968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950851, 33.093746, 47.114059>,  <43.364357, 33.583355, 47.331032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950851, 33.093746, 47.114059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.732124, 33.319530, 47.361404>,  <42.600887, 33.455002, 47.509811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.732124, 33.319530, 47.361404>,  <42.950851, 33.093746, 47.114059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732124, 33.319530, 47.361404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641384, 0.192311, -0.742727,
		-0.538159, -0.802745, 0.256877,
		-0.546820, 0.564462, 0.618361,
		42.568077, 33.488869, 47.546913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245659, 32.770622, 47.166477>,  <42.950851, 33.093746, 47.114059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245659, 32.770622, 47.166477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.246109, 33.165524, 47.230152>,  <42.246380, 33.402462, 47.268356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.246109, 33.165524, 47.230152>,  <42.245659, 32.770622, 47.166477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246109, 33.165524, 47.230152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636715, 0.123456, -0.761152,
		-0.771098, -0.100495, 0.628736,
		0.001130, 0.987248, 0.159183,
		42.246449, 33.461697, 47.277908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620026, 33.019463, 47.049801>,  <42.245659, 32.770622, 47.166477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620026, 33.019463, 47.049801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.803696, 33.373402, 47.018295>,  <41.913898, 33.585766, 46.999393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.803696, 33.373402, 47.018295>,  <41.620026, 33.019463, 47.049801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803696, 33.373402, 47.018295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459724, 0.160824, -0.873378,
		-0.760139, 0.437244, 0.480631,
		0.459176, 0.884847, -0.078763,
		41.941448, 33.638855, 46.994667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099564, 33.389290, 46.625904>,  <41.620026, 33.019463, 47.049801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099564, 33.389290, 46.625904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.413002, 33.637657, 46.634300>,  <41.601063, 33.786678, 46.639339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.413002, 33.637657, 46.634300>,  <41.099564, 33.389290, 46.625904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413002, 33.637657, 46.634300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308586, 0.418315, -0.854276,
		-0.539217, 0.662927, 0.519396,
		0.783594, 0.620918, 0.020992,
		41.648079, 33.823933, 46.640598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838982, 34.112171, 46.527233>,  <41.099564, 33.389290, 46.625904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838982, 34.112171, 46.527233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.217911, 34.106228, 46.399254>,  <41.445267, 34.102661, 46.322468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.217911, 34.106228, 46.399254>,  <40.838982, 34.112171, 46.527233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217911, 34.106228, 46.399254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278153, 0.457087, -0.844809,
		0.158797, 0.889298, 0.428874,
		0.947320, -0.014861, -0.319945,
		41.502106, 34.101768, 46.303272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997150, 34.730576, 46.307175>,  <40.838982, 34.112171, 46.527233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997150, 34.730576, 46.307175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.253891, 34.481781, 46.127773>,  <41.407936, 34.332504, 46.020130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.253891, 34.481781, 46.127773>,  <40.997150, 34.730576, 46.307175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253891, 34.481781, 46.127773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169541, 0.455307, -0.874043,
		0.747849, 0.637049, 0.186790,
		0.641855, -0.621984, -0.448507,
		41.446445, 34.295185, 45.993221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319046, 35.128666, 45.836151>,  <40.997150, 34.730576, 46.307175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319046, 35.128666, 45.836151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.401043, 34.759815, 45.704910>,  <41.450241, 34.538506, 45.626163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.401043, 34.759815, 45.704910>,  <41.319046, 35.128666, 45.836151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401043, 34.759815, 45.704910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053459, 0.324176, -0.944485,
		0.977303, 0.211149, 0.017156,
		0.204988, -0.922131, -0.328106,
		41.462540, 34.483177, 45.606480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881905, 35.185688, 45.430035>,  <41.319046, 35.128666, 45.836151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881905, 35.185688, 45.430035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.679142, 34.852634, 45.340801>,  <41.557484, 34.652802, 45.287262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.679142, 34.852634, 45.340801>,  <41.881905, 35.185688, 45.430035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679142, 34.852634, 45.340801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082019, 0.304210, -0.949067,
		0.858091, -0.462790, -0.222497,
		-0.506905, -0.832635, -0.223082,
		41.527069, 34.602844, 45.273876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117809, 34.989250, 44.824596>,  <41.881905, 35.185688, 45.430035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117809, 34.989250, 44.824596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.777592, 34.779747, 44.843575>,  <41.573460, 34.654045, 44.854961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.777592, 34.779747, 44.843575>,  <42.117809, 34.989250, 44.824596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777592, 34.779747, 44.843575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212816, 0.260279, -0.941788,
		0.480920, -0.811130, -0.332842,
		-0.850544, -0.523758, 0.047448,
		41.522427, 34.622620, 44.857811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030434, 34.587120, 44.205879>,  <42.117809, 34.989250, 44.824596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030434, 34.587120, 44.205879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.653961, 34.608627, 44.339325>,  <41.428078, 34.621532, 44.419392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.653961, 34.608627, 44.339325>,  <42.030434, 34.587120, 44.205879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653961, 34.608627, 44.339325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325297, 0.123107, -0.937564,
		-0.091480, -0.990936, -0.098375,
		-0.941176, 0.053768, 0.333610,
		41.371609, 34.624756, 44.439407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732201, 34.338997, 43.711502>,  <42.030434, 34.587120, 44.205879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732201, 34.338997, 43.711502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.428326, 34.504581, 43.912109>,  <41.246002, 34.603931, 44.032475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.428326, 34.504581, 43.912109>,  <41.732201, 34.338997, 43.711502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428326, 34.504581, 43.912109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392626, 0.322801, -0.861188,
		-0.518386, -0.851139, -0.082695,
		-0.759684, 0.413960, 0.501515,
		41.200420, 34.628769, 44.062565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087742, 34.072037, 43.370110>,  <41.732201, 34.338997, 43.711502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087742, 34.072037, 43.370110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.003071, 34.403915, 43.576717>,  <40.952267, 34.603043, 43.700684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.003071, 34.403915, 43.576717>,  <41.087742, 34.072037, 43.370110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003071, 34.403915, 43.576717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576357, 0.320841, -0.751581,
		-0.789306, -0.456795, 0.410286,
		-0.211682, 0.829699, 0.516518,
		40.939568, 34.652824, 43.731674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343712, 34.109058, 43.509621>,  <41.087742, 34.072037, 43.370110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343712, 34.109058, 43.509621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.485977, 34.482841, 43.502678>,  <40.571335, 34.707111, 43.498512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.485977, 34.482841, 43.502678>,  <40.343712, 34.109058, 43.509621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485977, 34.482841, 43.502678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722386, 0.263068, -0.639495,
		-0.593014, 0.239979, 0.768599,
		0.355659, 0.934455, -0.017355,
		40.592674, 34.763180, 43.497471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715202, 33.920341, 44.009228>,  <40.343712, 34.109058, 43.509621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715202, 33.920341, 44.009228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.429329, 33.644428, 43.962891>,  <39.257805, 33.478878, 43.935089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.429329, 33.644428, 43.962891>,  <39.715202, 33.920341, 44.009228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429329, 33.644428, 43.962891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137569, -0.301011, 0.943646,
		-0.685783, 0.658474, 0.310022,
		-0.714686, -0.689786, -0.115843,
		39.214924, 33.437492, 43.928139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552582, 33.884869, 44.679279>,  <39.715202, 33.920341, 44.009228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552582, 33.884869, 44.679279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.377609, 33.552879, 44.540829>,  <39.272625, 33.353687, 44.457760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.377609, 33.552879, 44.540829>,  <39.552582, 33.884869, 44.679279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377609, 33.552879, 44.540829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018572, -0.376481, 0.926238,
		-0.899060, 0.411594, 0.149270,
		-0.437432, -0.829971, -0.346123,
		39.246380, 33.303886, 44.436993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963528, 33.733479, 45.089424>,  <39.552582, 33.884869, 44.679279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963528, 33.733479, 45.089424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.089497, 33.393353, 44.920765>,  <39.165077, 33.189278, 44.819569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.089497, 33.393353, 44.920765>,  <38.963528, 33.733479, 45.089424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089497, 33.393353, 44.920765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243182, -0.357129, 0.901843,
		-0.917436, -0.386544, 0.094316,
		0.314919, -0.850319, -0.421643,
		39.183971, 33.138256, 44.794273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518326, 33.161266, 45.372742>,  <38.963528, 33.733479, 45.089424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518326, 33.161266, 45.372742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.866409, 33.011520, 45.244629>,  <39.075260, 32.921673, 45.167763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.866409, 33.011520, 45.244629>,  <38.518326, 33.161266, 45.372742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866409, 33.011520, 45.244629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200891, -0.323965, 0.924494,
		-0.449862, -0.868847, -0.206710,
		0.870211, -0.374369, -0.320283,
		39.127472, 32.899212, 45.148544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475197, 32.601185, 45.832134>,  <38.518326, 33.161266, 45.372742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475197, 32.601185, 45.832134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.848061, 32.605747, 45.687386>,  <39.071777, 32.608482, 45.600536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.848061, 32.605747, 45.687386>,  <38.475197, 32.601185, 45.832134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848061, 32.605747, 45.687386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336494, -0.396148, 0.854306,
		-0.133611, -0.918116, -0.373110,
		0.932159, 0.011405, -0.361870,
		39.127708, 32.609169, 45.578823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751701, 31.925627, 45.908367>,  <38.475197, 32.601185, 45.832134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751701, 31.925627, 45.908367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.075279, 32.159779, 45.886654>,  <39.269424, 32.300270, 45.873627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.075279, 32.159779, 45.886654>,  <38.751701, 31.925627, 45.908367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075279, 32.159779, 45.886654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402772, -0.484590, 0.776496,
		0.428240, -0.650003, -0.627779,
		0.808941, 0.585379, -0.054283,
		39.317963, 32.335392, 45.870369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209465, 31.473888, 46.128567>,  <38.751701, 31.925627, 45.908367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209465, 31.473888, 46.128567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.381847, 31.832209, 46.172050>,  <39.485279, 32.047199, 46.198139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.381847, 31.832209, 46.172050>,  <39.209465, 31.473888, 46.128567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381847, 31.832209, 46.172050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422439, -0.306736, 0.852912,
		0.797382, -0.321648, -0.510611,
		0.430960, 0.895799, 0.108709,
		39.511135, 32.100948, 46.204662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587692, 30.772936, 45.925186>,  <39.209465, 31.473888, 46.128567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587692, 30.772936, 45.925186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.376579, 30.444250, 46.011185>,  <39.249912, 30.247038, 46.062782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.376579, 30.444250, 46.011185>,  <39.587692, 30.772936, 45.925186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376579, 30.444250, 46.011185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433280, 0.042750, -0.900245,
		0.730555, -0.568290, -0.378596,
		-0.527785, -0.821717, 0.214997,
		39.218243, 30.197735, 46.075684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605568, 30.288944, 45.351208>,  <39.587692, 30.772936, 45.925186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605568, 30.288944, 45.351208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.282410, 30.208273, 45.572704>,  <39.088512, 30.159870, 45.705601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.282410, 30.208273, 45.572704>,  <39.605568, 30.288944, 45.351208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282410, 30.208273, 45.572704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551343, -0.073202, -0.831061,
		0.208142, -0.976713, -0.052054,
		-0.807897, -0.201678, 0.553740,
		39.040039, 30.147770, 45.738827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238926, 29.812445, 44.943218>,  <39.605568, 30.288944, 45.351208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238926, 29.812445, 44.943218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955345, 29.910751, 45.207638>,  <38.785198, 29.969734, 45.366291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.955345, 29.910751, 45.207638>,  <39.238926, 29.812445, 44.943218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955345, 29.910751, 45.207638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699489, -0.125407, -0.703554,
		-0.090007, -0.961184, 0.260816,
		-0.708953, 0.245763, 0.661050,
		38.742661, 29.984480, 45.405952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716053, 29.349674, 44.879887>,  <39.238926, 29.812445, 44.943218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716053, 29.349674, 44.879887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.529755, 29.669765, 45.030998>,  <38.417976, 29.861820, 45.121666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.529755, 29.669765, 45.030998>,  <38.716053, 29.349674, 44.879887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529755, 29.669765, 45.030998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707199, -0.079970, -0.702477,
		-0.531931, -0.594341, 0.603166,
		-0.465746, 0.800227, 0.377779,
		38.390030, 29.909834, 45.144333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034496, 29.221230, 44.779785>,  <38.716053, 29.349674, 44.879887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034496, 29.221230, 44.779785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.047836, 29.617874, 44.829735>,  <38.055840, 29.855862, 44.859703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.047836, 29.617874, 44.829735>,  <38.034496, 29.221230, 44.779785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047836, 29.617874, 44.829735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552997, 0.122386, -0.824146,
		-0.832515, -0.041566, 0.552440,
		0.033354, 0.991612, 0.124874,
		38.057842, 29.915358, 44.867195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236507, 29.437391, 44.734097>,  <38.034496, 29.221230, 44.779785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236507, 29.437391, 44.734097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.458134, 29.764929, 44.674084>,  <37.591110, 29.961451, 44.638077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.458134, 29.764929, 44.674084>,  <37.236507, 29.437391, 44.734097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458134, 29.764929, 44.674084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531496, 0.209246, -0.820810,
		-0.640720, 0.534523, 0.551147,
		0.554067, 0.818842, -0.150028,
		37.624355, 30.010582, 44.629074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864769, 29.977812, 44.625954>,  <37.236507, 29.437391, 44.734097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864769, 29.977812, 44.625954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.210220, 30.096889, 44.463215>,  <37.417492, 30.168337, 44.365570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.210220, 30.096889, 44.463215>,  <36.864769, 29.977812, 44.625954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210220, 30.096889, 44.463215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497551, 0.373358, -0.782973,
		-0.081187, 0.878625, 0.470560,
		0.863627, 0.297694, -0.406849,
		37.469307, 30.186197, 44.341160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<45.096928, 30.387421, 46.774399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.937767, 30.714676, 46.940449>,  <44.842270, 30.911030, 47.040077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.937767, 30.714676, 46.940449>,  <45.096928, 30.387421, 46.774399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.937767, 30.714676, 46.940449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486984, 0.195123, -0.851336,
		-0.777511, -0.540903, 0.320781,
		-0.397899, 0.818139, 0.415121,
		44.818398, 30.960117, 47.064983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261276, 30.331556, 46.802540>,  <45.096928, 30.387421, 46.774399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261276, 30.331556, 46.802540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.426590, 30.695768, 46.797909>,  <44.525780, 30.914295, 46.795132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.426590, 30.695768, 46.797909>,  <44.261276, 30.331556, 46.802540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426590, 30.695768, 46.797909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556480, 0.242480, -0.794691,
		-0.720781, 0.334877, 0.606904,
		0.413285, 0.910528, -0.011577,
		44.550575, 30.968927, 46.794437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817429, 30.823309, 46.796764>,  <44.261276, 30.331556, 46.802540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817429, 30.823309, 46.796764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.121460, 31.030544, 46.639858>,  <44.303879, 31.154886, 46.545715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.121460, 31.030544, 46.639858>,  <43.817429, 30.823309, 46.796764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121460, 31.030544, 46.639858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547759, 0.186010, -0.815696,
		-0.349637, 0.834856, 0.425169,
		0.760075, 0.518088, -0.392264,
		44.349483, 31.185970, 46.522179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.479614, 31.375355, 46.517456>,  <43.817429, 30.823309, 46.796764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.479614, 31.375355, 46.517456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.835629, 31.329372, 46.340992>,  <44.049236, 31.301783, 46.235115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.835629, 31.329372, 46.340992>,  <43.479614, 31.375355, 46.517456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835629, 31.329372, 46.340992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454310, -0.143099, -0.879275,
		0.037949, 0.983009, -0.179589,
		0.890035, -0.114957, -0.441161,
		44.102638, 31.294886, 46.208645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382675, 31.574924, 45.872128>,  <43.479614, 31.375355, 46.517456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382675, 31.574924, 45.872128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.752640, 31.428518, 45.830997>,  <43.974617, 31.340673, 45.806320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.752640, 31.428518, 45.830997>,  <43.382675, 31.574924, 45.872128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752640, 31.428518, 45.830997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125588, -0.038866, -0.991321,
		0.358843, 0.929796, -0.081915,
		0.924910, -0.366017, -0.102825,
		44.030113, 31.318714, 45.800152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.775307, 32.092766, 45.442677>,  <43.382675, 31.574924, 45.872128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.775307, 32.092766, 45.442677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.910461, 31.718672, 45.400398>,  <43.991554, 31.494215, 45.375031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.910461, 31.718672, 45.400398>,  <43.775307, 32.092766, 45.442677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.910461, 31.718672, 45.400398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288042, 0.004158, -0.957609,
		0.896028, 0.354005, -0.267982,
		0.337885, -0.935234, -0.105694,
		44.011826, 31.438101, 45.368690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.784756, 32.002197, 44.631699>,  <43.775307, 32.092766, 45.442677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.784756, 32.002197, 44.631699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.839741, 31.627321, 44.759937>,  <43.872730, 31.402395, 44.836880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.839741, 31.627321, 44.759937>,  <43.784756, 32.002197, 44.631699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839741, 31.627321, 44.759937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289567, -0.347549, -0.891830,
		0.947236, 0.029757, -0.319154,
		0.137460, -0.937189, 0.320594,
		43.880978, 31.346165, 44.856117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327877, 31.702858, 44.269253>,  <43.784756, 32.002197, 44.631699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327877, 31.702858, 44.269253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.128166, 31.383390, 44.403622>,  <44.008339, 31.191710, 44.484245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.128166, 31.383390, 44.403622>,  <44.327877, 31.702858, 44.269253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.128166, 31.383390, 44.403622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067489, -0.350683, -0.934059,
		0.863808, -0.489028, 0.121188,
		-0.499280, -0.798669, 0.335927,
		43.978382, 31.143789, 44.504398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.609760, 31.025080, 43.934738>,  <44.327877, 31.702858, 44.269253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.609760, 31.025080, 43.934738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.236469, 30.926006, 44.038845>,  <44.012493, 30.866562, 44.101307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.236469, 30.926006, 44.038845>,  <44.609760, 31.025080, 43.934738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236469, 30.926006, 44.038845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123977, -0.457907, -0.880313,
		0.337218, -0.853799, 0.396625,
		-0.933228, -0.247685, 0.260266,
		43.956501, 30.851702, 44.116924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.399517, 30.241379, 43.703354>,  <44.609760, 31.025080, 43.934738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.399517, 30.241379, 43.703354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.083431, 30.483128, 43.743942>,  <43.893780, 30.628178, 43.768295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<44.083431, 30.483128, 43.743942>,  <44.399517, 30.241379, 43.703354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<44.083431, 30.483128, 43.743942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290345, -0.223406, -0.930478,
		-0.539689, -0.764736, 0.352015,
		-0.790213, 0.604375, 0.101468,
		43.846367, 30.664440, 43.774384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869453, 29.823528, 43.473557>,  <44.399517, 30.241379, 43.703354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869453, 29.823528, 43.473557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.733902, 30.197752, 43.433781>,  <43.652569, 30.422285, 43.409916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.733902, 30.197752, 43.433781>,  <43.869453, 29.823528, 43.473557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.733902, 30.197752, 43.433781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365111, -0.228187, -0.902565,
		-0.867094, -0.269557, 0.418912,
		-0.338883, 0.935559, -0.099442,
		43.632236, 30.478420, 43.403950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194584, 29.784088, 43.359764>,  <43.869453, 29.823528, 43.473557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194584, 29.784088, 43.359764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.390388, 30.077063, 43.170486>,  <43.507870, 30.252848, 43.056919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<43.390388, 30.077063, 43.170486>,  <43.194584, 29.784088, 43.359764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390388, 30.077063, 43.170486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424343, -0.273983, -0.863056,
		-0.761781, 0.623275, 0.176686,
		0.489512, 0.732436, -0.473197,
		43.537243, 30.296793, 43.028526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614388, 29.715246, 43.855869>,  <43.194584, 29.784088, 43.359764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614388, 29.715246, 43.855869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.287846, 29.484278, 43.860806>,  <42.091919, 29.345697, 43.863766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.287846, 29.484278, 43.860806>,  <42.614388, 29.715246, 43.855869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287846, 29.484278, 43.860806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133563, -0.167958, 0.976704,
		-0.561896, 0.798984, 0.214235,
		-0.816354, -0.577420, 0.012339,
		42.042938, 29.311052, 43.864506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192287, 29.894464, 44.472382>,  <42.614388, 29.715246, 43.855869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192287, 29.894464, 44.472382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.084091, 29.515795, 44.402363>,  <42.019173, 29.288593, 44.360352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.084091, 29.515795, 44.402363>,  <42.192287, 29.894464, 44.472382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084091, 29.515795, 44.402363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134071, -0.143016, 0.980597,
		-0.953342, 0.288711, -0.088237,
		-0.270490, -0.946674, -0.175051,
		42.002945, 29.231792, 44.349846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738239, 29.781303, 44.979607>,  <42.192287, 29.894464, 44.472382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738239, 29.781303, 44.979607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.843174, 29.414415, 44.859680>,  <41.906136, 29.194283, 44.787724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.843174, 29.414415, 44.859680>,  <41.738239, 29.781303, 44.979607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.843174, 29.414415, 44.859680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080800, -0.330486, 0.940346,
		-0.961587, -0.222463, -0.160810,
		0.262338, -0.917218, -0.299816,
		41.921875, 29.139250, 44.769733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359371, 29.419243, 45.401115>,  <41.738239, 29.781303, 44.979607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359371, 29.419243, 45.401115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.612644, 29.151886, 45.244999>,  <41.764610, 28.991472, 45.151329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.612644, 29.151886, 45.244999>,  <41.359371, 29.419243, 45.401115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612644, 29.151886, 45.244999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031027, -0.525768, 0.850062,
		-0.773377, -0.526138, -0.353647,
		0.633187, -0.668391, -0.390293,
		41.802601, 28.951368, 45.127911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011650, 28.728146, 45.301346>,  <41.359371, 29.419243, 45.401115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011650, 28.728146, 45.301346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.399975, 28.635277, 45.325413>,  <41.632969, 28.579556, 45.339851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.399975, 28.635277, 45.325413>,  <41.011650, 28.728146, 45.301346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399975, 28.635277, 45.325413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171190, -0.495088, 0.851811,
		-0.167980, -0.837248, -0.520383,
		0.970813, -0.232171, 0.060163,
		41.691219, 28.565624, 45.343460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900742, 28.183348, 45.685837>,  <41.011650, 28.728146, 45.301346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900742, 28.183348, 45.685837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.286415, 28.270807, 45.745892>,  <41.517818, 28.323284, 45.781925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.286415, 28.270807, 45.745892>,  <40.900742, 28.183348, 45.685837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286415, 28.270807, 45.745892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002037, -0.572140, 0.820154,
		0.265226, -0.790473, -0.552094,
		0.964184, 0.218650, 0.150136,
		41.575672, 28.336403, 45.790932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141518, 27.704954, 46.076538>,  <40.900742, 28.183348, 45.685837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141518, 27.704954, 46.076538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.423141, 27.980116, 46.147072>,  <41.592113, 28.145212, 46.189392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.423141, 27.980116, 46.147072>,  <41.141518, 27.704954, 46.076538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423141, 27.980116, 46.147072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095001, -0.337307, 0.936589,
		0.703761, -0.642660, -0.302835,
		0.704057, 0.687904, 0.176330,
		41.634357, 28.186487, 46.199970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575623, 27.287416, 46.477123>,  <41.141518, 27.704954, 46.076538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575623, 27.287416, 46.477123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.683453, 27.668066, 46.536098>,  <41.748150, 27.896456, 46.571484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.683453, 27.668066, 46.536098>,  <41.575623, 27.287416, 46.477123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683453, 27.668066, 46.536098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157722, -0.194668, 0.968105,
		0.949974, -0.237727, -0.202570,
		0.269579, 0.951625, 0.147435,
		41.764328, 27.953554, 46.580330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292393, 27.362066, 46.761036>,  <41.575623, 27.287416, 46.477123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292393, 27.362066, 46.761036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.067574, 27.668631, 46.885429>,  <41.932682, 27.852570, 46.960068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.067574, 27.668631, 46.885429>,  <42.292393, 27.362066, 46.761036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.067574, 27.668631, 46.885429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194028, -0.243329, 0.950339,
		0.804023, 0.594479, -0.011942,
		-0.562051, 0.766411, 0.310988,
		41.898960, 27.898554, 46.978725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562294, 27.592386, 47.390823>,  <42.292393, 27.362066, 46.761036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562294, 27.592386, 47.390823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.206127, 27.773296, 47.411259>,  <41.992428, 27.881842, 47.423519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.206127, 27.773296, 47.411259>,  <42.562294, 27.592386, 47.390823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206127, 27.773296, 47.411259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041140, -0.191755, 0.980580,
		0.453287, 0.871021, 0.189348,
		-0.890414, 0.452274, 0.051086,
		41.939003, 27.908979, 47.426586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581528, 28.159472, 47.932041>,  <42.562294, 27.592386, 47.390823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581528, 28.159472, 47.932041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.203686, 28.049871, 47.859776>,  <41.976978, 27.984112, 47.816418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.203686, 28.049871, 47.859776>,  <42.581528, 28.159472, 47.932041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203686, 28.049871, 47.859776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150940, -0.126110, 0.980466,
		-0.291432, 0.953425, 0.077767,
		-0.944608, -0.274001, -0.180663,
		41.920303, 27.967670, 47.805576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258644, 28.438227, 48.399364>,  <42.581528, 28.159472, 47.932041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258644, 28.438227, 48.399364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.005215, 28.149921, 48.286877>,  <41.853157, 27.976938, 48.219383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.005215, 28.149921, 48.286877>,  <42.258644, 28.438227, 48.399364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005215, 28.149921, 48.286877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267836, -0.136681, 0.953720,
		-0.725845, 0.679571, -0.106450,
		-0.633571, -0.720765, -0.281223,
		41.815144, 27.933693, 48.202511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745010, 28.581528, 48.905785>,  <42.258644, 28.438227, 48.399364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745010, 28.581528, 48.905785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.676380, 28.213135, 48.765865>,  <41.635201, 27.992100, 48.681915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.676380, 28.213135, 48.765865>,  <41.745010, 28.581528, 48.905785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676380, 28.213135, 48.765865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450787, -0.242316, 0.859113,
		-0.875987, 0.305086, -0.373590,
		-0.171576, -0.920981, -0.349795,
		41.624908, 27.936840, 48.660927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995174, 28.318045, 48.844067>,  <41.745010, 28.581528, 48.905785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995174, 28.318045, 48.844067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.239250, 28.012156, 48.926888>,  <41.385696, 27.828623, 48.976582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.239250, 28.012156, 48.926888>,  <40.995174, 28.318045, 48.844067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239250, 28.012156, 48.926888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516119, -0.185412, 0.836208,
		-0.601076, -0.617109, -0.507824,
		0.610188, -0.764722, 0.207055,
		41.422306, 27.782740, 48.989006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250679, 28.434076, 48.647854>,  <40.995174, 28.318045, 48.844067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250679, 28.434076, 48.647854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.029682, 28.763470, 48.699436>,  <39.897083, 28.961105, 48.730385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.029682, 28.763470, 48.699436>,  <40.250679, 28.434076, 48.647854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029682, 28.763470, 48.699436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041299, 0.127475, -0.990981,
		-0.832494, -0.552836, -0.036420,
		-0.552492, 0.823482, 0.128954,
		39.863934, 29.010515, 48.738121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620541, 28.355286, 48.166779>,  <40.250679, 28.434076, 48.647854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620541, 28.355286, 48.166779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.639267, 28.742710, 48.264507>,  <39.650501, 28.975164, 48.323147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.639267, 28.742710, 48.264507>,  <39.620541, 28.355286, 48.166779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639267, 28.742710, 48.264507> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140250, 0.248543, -0.958413,
		-0.989009, 0.010599, 0.147476,
		0.046813, 0.968563, 0.244325,
		39.653313, 29.033279, 48.337807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989304, 28.671272, 47.869972>,  <39.620541, 28.355286, 48.166779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989304, 28.671272, 47.869972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.257896, 28.961687, 47.929272>,  <39.419052, 29.135937, 47.964851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.257896, 28.961687, 47.929272>,  <38.989304, 28.671272, 47.869972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257896, 28.961687, 47.929272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239862, 0.402253, -0.883549,
		-0.701126, 0.557727, 0.444254,
		0.671482, 0.726039, 0.148253,
		39.459343, 29.179499, 47.973747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673721, 29.297955, 47.809860>,  <38.989304, 28.671272, 47.869972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673721, 29.297955, 47.809860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.063988, 29.337385, 47.731514>,  <39.298145, 29.361044, 47.684505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.063988, 29.337385, 47.731514>,  <38.673721, 29.297955, 47.809860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063988, 29.337385, 47.731514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216526, 0.292163, -0.931535,
		-0.034602, 0.951274, 0.306397,
		0.975663, 0.098576, -0.195866,
		39.356686, 29.366959, 47.672752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644653, 29.919441, 47.451553>,  <38.673721, 29.297955, 47.809860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644653, 29.919441, 47.451553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.016781, 29.797192, 47.370457>,  <39.240055, 29.723843, 47.321796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.016781, 29.797192, 47.370457>,  <38.644653, 29.919441, 47.451553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016781, 29.797192, 47.370457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066915, 0.402078, -0.913157,
		0.360601, 0.863092, 0.353609,
		0.930317, -0.305624, -0.202744,
		39.295876, 29.705505, 47.309635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900089, 30.544264, 47.192188>,  <38.644653, 29.919441, 47.451553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900089, 30.544264, 47.192188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.121376, 30.235641, 47.066551>,  <39.254147, 30.050468, 46.991169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.121376, 30.235641, 47.066551>,  <38.900089, 30.544264, 47.192188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121376, 30.235641, 47.066551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000886, 0.376501, -0.926416,
		0.833040, 0.512783, 0.207602,
		0.553212, -0.771557, -0.314095,
		39.287338, 30.004175, 46.972324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.338219, 30.834356, 46.653111>,  <38.900089, 30.544264, 47.192188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.338219, 30.834356, 46.653111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.309856, 30.442404, 46.578487>,  <39.292839, 30.207232, 46.533714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.309856, 30.442404, 46.578487>,  <39.338219, 30.834356, 46.653111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309856, 30.442404, 46.578487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214754, 0.197641, -0.956461,
		0.974091, -0.027753, -0.224447,
		-0.070905, -0.979882, -0.186560,
		39.288586, 30.148439, 46.522518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809933, 31.311842, 46.478645>,  <39.338219, 30.834356, 46.653111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.809933, 31.311842, 46.478645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.773685, 31.703346, 46.552204>,  <39.751938, 31.938248, 46.596340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.773685, 31.703346, 46.552204>,  <39.809933, 31.311842, 46.478645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773685, 31.703346, 46.552204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284956, -0.151455, 0.946500,
		0.954248, 0.138170, -0.265179,
		-0.090615, 0.978760, 0.183897,
		39.746502, 31.996975, 46.607372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493740, 31.560495, 46.771423>,  <39.809933, 31.311842, 46.478645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493740, 31.560495, 46.771423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.221809, 31.831499, 46.883724>,  <40.058651, 31.994101, 46.951103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.221809, 31.831499, 46.883724>,  <40.493740, 31.560495, 46.771423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221809, 31.831499, 46.883724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271705, -0.122898, 0.954501,
		0.681186, 0.725175, -0.100534,
		-0.679825, 0.677508, 0.280750,
		40.017860, 32.034752, 46.967949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899403, 32.116001, 47.051235>,  <40.493740, 31.560495, 46.771423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899403, 32.116001, 47.051235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.530884, 32.158413, 47.200886>,  <40.309772, 32.183861, 47.290676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.530884, 32.158413, 47.200886>,  <40.899403, 32.116001, 47.051235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530884, 32.158413, 47.200886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388029, 0.187865, 0.902297,
		0.025389, 0.976455, -0.214223,
		-0.921297, 0.106034, 0.374123,
		40.254494, 32.190224, 47.313122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033665, 32.635506, 47.484707>,  <40.899403, 32.116001, 47.051235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033665, 32.635506, 47.484707> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.677284, 32.489616, 47.592915>,  <40.463455, 32.402081, 47.657841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.677284, 32.489616, 47.592915>,  <41.033665, 32.635506, 47.484707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677284, 32.489616, 47.592915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238360, 0.131443, 0.962241,
		-0.386513, 0.921790, -0.030173,
		-0.890950, -0.364727, 0.270522,
		40.410000, 32.380199, 47.674072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889191, 33.028370, 47.956703>,  <41.033665, 32.635506, 47.484707>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889191, 33.028370, 47.956703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.662663, 32.707611, 48.032848>,  <40.526745, 32.515156, 48.078537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.662663, 32.707611, 48.032848>,  <40.889191, 33.028370, 47.956703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662663, 32.707611, 48.032848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317011, 0.001263, 0.948421,
		-0.760778, 0.597459, 0.253496,
		-0.566322, -0.801899, 0.190362,
		40.492767, 32.467041, 48.089958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660892, 33.135429, 48.552822>,  <40.889191, 33.028370, 47.956703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660892, 33.135429, 48.552822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.584801, 32.742878, 48.542156>,  <40.539146, 32.507347, 48.535755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.584801, 32.742878, 48.542156>,  <40.660892, 33.135429, 48.552822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584801, 32.742878, 48.542156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404223, -0.103047, 0.908837,
		-0.894660, 0.162108, 0.416298,
		-0.190228, -0.981378, -0.026664,
		40.527733, 32.448463, 48.534157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364037, 32.987068, 49.185730>,  <40.660892, 33.135429, 48.552822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364037, 32.987068, 49.185730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.502636, 32.629173, 49.073036>,  <40.585796, 32.414436, 49.005421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.502636, 32.629173, 49.073036>,  <40.364037, 32.987068, 49.185730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502636, 32.629173, 49.073036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483860, -0.086827, 0.870828,
		-0.803628, -0.438062, 0.402844,
		0.346499, -0.894742, -0.281737,
		40.606586, 32.360752, 48.988514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251755, 32.572098, 49.704941>,  <40.364037, 32.987068, 49.185730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251755, 32.572098, 49.704941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.542637, 32.397842, 49.492756>,  <40.717167, 32.293289, 49.365444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.542637, 32.397842, 49.492756>,  <40.251755, 32.572098, 49.704941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542637, 32.397842, 49.492756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492250, -0.207632, 0.845328,
		-0.478400, -0.875846, 0.063453,
		0.727203, -0.435640, -0.530466,
		40.760799, 32.267151, 49.333614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478794, 32.064098, 50.128323>,  <40.251755, 32.572098, 49.704941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478794, 32.064098, 50.128323> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.786053, 32.097649, 49.874420>,  <40.970409, 32.117779, 49.722080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.786053, 32.097649, 49.874420>,  <40.478794, 32.064098, 50.128323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786053, 32.097649, 49.874420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640189, -0.116482, 0.759335,
		-0.010248, -0.989645, -0.143172,
		0.768149, 0.083875, -0.634753,
		41.016499, 32.122810, 49.683994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.265800, 33.678993, 33.440311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361439, 34.035511, 33.594418>,  <37.418823, 34.249420, 33.686882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361439, 34.035511, 33.594418>,  <37.265800, 33.678993, 33.440311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361439, 34.035511, 33.594418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007562, -0.398472, 0.917150,
		0.970966, -0.216374, -0.102013,
		0.239097, 0.891293, 0.385266,
		37.433167, 34.302898, 33.709999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493969, 33.564686, 34.051968>,  <37.265800, 33.678993, 33.440311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493969, 33.564686, 34.051968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495739, 33.948540, 34.164455>,  <37.496799, 34.178852, 34.231949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495739, 33.948540, 34.164455>,  <37.493969, 33.564686, 34.051968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495739, 33.948540, 34.164455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246928, -0.273559, 0.929619,
		0.969024, 0.065329, -0.238170,
		0.004422, 0.959634, 0.281217,
		37.497066, 34.236431, 34.248821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055885, 33.637726, 34.548759>,  <37.493969, 33.564686, 34.051968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055885, 33.637726, 34.548759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835426, 33.962513, 34.625648>,  <37.703152, 34.157383, 34.671780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835426, 33.962513, 34.625648>,  <38.055885, 33.637726, 34.548759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835426, 33.962513, 34.625648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205413, -0.091244, 0.974413,
		0.808726, 0.576533, -0.116499,
		-0.551151, 0.811963, 0.192219,
		37.670082, 34.206100, 34.683315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375221, 34.007080, 35.015968>,  <38.055885, 33.637726, 34.548759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375221, 34.007080, 35.015968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018379, 34.180443, 35.067055>,  <37.804276, 34.284462, 35.097706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018379, 34.180443, 35.067055>,  <38.375221, 34.007080, 35.015968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018379, 34.180443, 35.067055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065569, -0.155480, 0.985660,
		0.447048, 0.887685, 0.110286,
		-0.892103, 0.433406, 0.127712,
		37.750748, 34.310463, 35.105370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419342, 34.458817, 35.614918>,  <38.375221, 34.007080, 35.015968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419342, 34.458817, 35.614918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026814, 34.386620, 35.588284>,  <37.791298, 34.343304, 35.572304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026814, 34.386620, 35.588284>,  <38.419342, 34.458817, 35.614918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026814, 34.386620, 35.588284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032593, -0.185120, 0.982175,
		-0.189597, 0.965999, 0.175779,
		-0.981321, -0.180488, -0.066583,
		37.732418, 34.332474, 35.568310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091595, 34.839737, 36.102295>,  <38.419342, 34.458817, 35.614918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091595, 34.839737, 36.102295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852406, 34.528595, 36.024967>,  <37.708893, 34.341911, 35.978569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852406, 34.528595, 36.024967>,  <38.091595, 34.839737, 36.102295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852406, 34.528595, 36.024967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118767, -0.152541, 0.981135,
		-0.792671, 0.609649, -0.001168,
		-0.597970, -0.777856, -0.193321,
		37.673016, 34.295238, 35.966972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691765, 34.801983, 36.615284>,  <38.091595, 34.839737, 36.102295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691765, 34.801983, 36.615284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589539, 34.443295, 36.470745>,  <37.528202, 34.228081, 36.384022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589539, 34.443295, 36.470745>,  <37.691765, 34.801983, 36.615284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589539, 34.443295, 36.470745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066912, -0.356461, 0.931911,
		-0.964473, 0.262344, 0.031098,
		-0.255567, -0.896722, -0.361351,
		37.512867, 34.174278, 36.362339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096462, 34.705715, 36.962421>,  <37.691765, 34.801983, 36.615284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096462, 34.705715, 36.962421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227142, 34.343967, 36.852600>,  <37.305550, 34.126919, 36.786709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227142, 34.343967, 36.852600>,  <37.096462, 34.705715, 36.962421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227142, 34.343967, 36.852600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218993, -0.355024, 0.908846,
		-0.919407, -0.236796, -0.314037,
		0.326701, -0.904371, -0.274555,
		37.325153, 34.072655, 36.770233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615543, 34.238125, 37.092300>,  <37.096462, 34.705715, 36.962421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615543, 34.238125, 37.092300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943874, 34.012527, 37.056198>,  <37.140873, 33.877167, 37.034538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943874, 34.012527, 37.056198>,  <36.615543, 34.238125, 37.092300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943874, 34.012527, 37.056198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277603, -0.532024, 0.799930,
		-0.499169, -0.631555, -0.593269,
		0.820833, -0.563993, -0.090248,
		37.190125, 33.843327, 37.029121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331970, 33.687153, 37.296513>,  <36.615543, 34.238125, 37.092300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331970, 33.687153, 37.296513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727329, 33.654545, 37.347778>,  <36.964546, 33.634979, 37.378540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727329, 33.654545, 37.347778>,  <36.331970, 33.687153, 37.296513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727329, 33.654545, 37.347778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150075, -0.393827, 0.906850,
		-0.023453, -0.915562, -0.401492,
		0.988396, -0.081522, 0.128167,
		37.023849, 33.630089, 37.386227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439358, 32.976624, 37.739460>,  <36.331970, 33.687153, 37.296513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439358, 32.976624, 37.739460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776470, 33.190884, 37.760601>,  <36.978737, 33.319439, 37.773285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776470, 33.190884, 37.760601>,  <36.439358, 32.976624, 37.739460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776470, 33.190884, 37.760601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162623, -0.347003, 0.923657,
		0.513096, -0.769850, -0.379558,
		0.842785, 0.535650, 0.052850,
		37.029305, 33.351578, 37.776455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844917, 32.534069, 38.106888>,  <36.439358, 32.976624, 37.739460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844917, 32.534069, 38.106888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007885, 32.896889, 38.149353>,  <37.105663, 33.114582, 38.174831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.007885, 32.896889, 38.149353>,  <36.844917, 32.534069, 38.106888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007885, 32.896889, 38.149353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223367, -0.211689, 0.951470,
		0.885505, -0.363931, -0.288850,
		0.407416, 0.907051, 0.106162,
		37.130108, 33.169003, 38.181202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928200, 31.884243, 38.339321>,  <36.844917, 32.534069, 38.106888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928200, 31.884243, 38.339321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644520, 31.636860, 38.474705>,  <36.474312, 31.488430, 38.555935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644520, 31.636860, 38.474705>,  <36.928200, 31.884243, 38.339321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644520, 31.636860, 38.474705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501194, 0.104635, -0.858986,
		0.495829, -0.778823, -0.384173,
		-0.709196, -0.618456, 0.338459,
		36.431763, 31.451323, 38.576244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892521, 31.351175, 37.829304>,  <36.928200, 31.884243, 38.339321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892521, 31.351175, 37.829304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552338, 31.357330, 38.039627>,  <36.348228, 31.361023, 38.165821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552338, 31.357330, 38.039627>,  <36.892521, 31.351175, 37.829304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552338, 31.357330, 38.039627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525965, -0.008577, -0.850463,
		-0.008577, -0.999845, 0.015388,
		0.850463, -0.015388, -0.525810,
		36.297199, 31.361946, 38.197369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524086, 30.784594, 37.508263>,  <36.892521, 31.351175, 37.829304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524086, 30.784594, 37.508263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234310, 31.003139, 37.676395>,  <36.060444, 31.134268, 37.777275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234310, 31.003139, 37.676395>,  <36.524086, 30.784594, 37.508263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234310, 31.003139, 37.676395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557975, -0.106699, -0.822970,
		-0.404794, -0.830722, 0.382155,
		-0.724435, 0.546366, 0.420332,
		36.016979, 31.167049, 37.802494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877319, 30.475710, 37.345310>,  <36.524086, 30.784594, 37.508263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877319, 30.475710, 37.345310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787273, 30.855074, 37.434612>,  <35.733246, 31.082691, 37.488194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787273, 30.855074, 37.434612>,  <35.877319, 30.475710, 37.345310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787273, 30.855074, 37.434612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562370, 0.060640, -0.824659,
		-0.795652, -0.311196, 0.519706,
		-0.225116, 0.948409, 0.223256,
		35.719738, 31.139597, 37.501591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129490, 30.568270, 37.270622>,  <35.877319, 30.475710, 37.345310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129490, 30.568270, 37.270622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257324, 30.946833, 37.251957>,  <35.334026, 31.173971, 37.240757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257324, 30.946833, 37.251957>,  <35.129490, 30.568270, 37.270622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257324, 30.946833, 37.251957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558555, 0.148374, -0.816089,
		-0.765428, 0.286878, 0.576039,
		0.319587, 0.946407, -0.046668,
		35.353199, 31.230755, 37.237957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592064, 30.998280, 37.359344>,  <35.129490, 30.568270, 37.270622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592064, 30.998280, 37.359344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876236, 31.192030, 37.155121>,  <35.046738, 31.308281, 37.032585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876236, 31.192030, 37.155121>,  <34.592064, 30.998280, 37.359344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876236, 31.192030, 37.155121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606552, 0.053502, -0.793241,
		-0.356912, 0.873222, 0.331809,
		0.710428, 0.484377, -0.510559,
		35.089363, 31.337343, 37.001953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218819, 31.454433, 36.911263>,  <34.592064, 30.998280, 37.359344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218819, 31.454433, 36.911263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586288, 31.492147, 36.757824>,  <34.806770, 31.514776, 36.665760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586288, 31.492147, 36.757824>,  <34.218819, 31.454433, 36.911263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586288, 31.492147, 36.757824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391432, 0.086753, -0.916109,
		-0.053096, 0.991758, 0.116603,
		0.918674, 0.094284, -0.383600,
		34.861889, 31.520433, 36.642746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210579, 31.902115, 36.371559>,  <34.218819, 31.454433, 36.911263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210579, 31.902115, 36.371559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537930, 31.695215, 36.271389>,  <34.734341, 31.571075, 36.211288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537930, 31.695215, 36.271389>,  <34.210579, 31.902115, 36.371559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537930, 31.695215, 36.271389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252371, 0.068019, -0.965237,
		0.516301, 0.853128, -0.074873,
		0.818378, -0.517249, -0.250423,
		34.783443, 31.540041, 36.196262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450970, 32.193745, 35.698006>,  <34.210579, 31.902115, 36.371559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450970, 32.193745, 35.698006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648800, 31.846918, 35.721970>,  <34.767498, 31.638821, 35.736347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648800, 31.846918, 35.721970>,  <34.450970, 32.193745, 35.698006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648800, 31.846918, 35.721970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231490, -0.197852, -0.952505,
		0.837741, 0.457215, -0.298570,
		0.494573, -0.867069, 0.059908,
		34.797173, 31.586798, 35.739941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817852, 32.238400, 34.993809>,  <34.450970, 32.193745, 35.698006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817852, 32.238400, 34.993809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768700, 31.867517, 35.135342>,  <34.739208, 31.644989, 35.220261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768700, 31.867517, 35.135342>,  <34.817852, 32.238400, 34.993809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768700, 31.867517, 35.135342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323053, -0.299746, -0.897658,
		0.938370, -0.224611, -0.262702,
		-0.122880, -0.927202, 0.353833,
		34.731834, 31.589357, 35.241493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173393, 31.879568, 34.516281>,  <34.817852, 32.238400, 34.993809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173393, 31.879568, 34.516281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941620, 31.608980, 34.698112>,  <34.802555, 31.446627, 34.807213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941620, 31.608980, 34.698112>,  <35.173393, 31.879568, 34.516281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941620, 31.608980, 34.698112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196688, -0.425203, -0.883468,
		0.790929, -0.601323, 0.113324,
		-0.579435, -0.676472, 0.454578,
		34.767788, 31.406038, 34.834484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355175, 31.115122, 34.313782>,  <35.173393, 31.879568, 34.516281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355175, 31.115122, 34.313782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971073, 31.122343, 34.425201>,  <34.740612, 31.126677, 34.492054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971073, 31.122343, 34.425201>,  <35.355175, 31.115122, 34.313782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971073, 31.122343, 34.425201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233116, -0.600729, -0.764710,
		0.153526, -0.799249, 0.581060,
		-0.960254, 0.018052, 0.278545,
		34.682999, 31.127758, 34.508766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138840, 30.463919, 34.196915>,  <35.355175, 31.115122, 34.313782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138840, 30.463919, 34.196915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805511, 30.685011, 34.199974>,  <34.605515, 30.817667, 34.201809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805511, 30.685011, 34.199974>,  <35.138840, 30.463919, 34.196915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805511, 30.685011, 34.199974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389925, -0.577952, -0.716889,
		-0.391828, -0.600383, 0.697145,
		-0.833325, 0.552731, 0.007647,
		34.555515, 30.850830, 34.202267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746758, 30.220692, 34.428482>,  <35.138840, 30.463919, 34.196915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746758, 30.220692, 34.428482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551212, 30.194462, 34.776440>,  <35.433887, 30.178724, 34.985214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551212, 30.194462, 34.776440>,  <35.746758, 30.220692, 34.428482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551212, 30.194462, 34.776440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778954, -0.481743, 0.401440,
		0.392742, 0.873856, 0.286583,
		-0.488860, -0.065573, 0.869894,
		35.404552, 30.174789, 35.037407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480045, 29.673401, 34.836876>,  <35.746758, 30.220692, 34.428482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480045, 29.673401, 34.836876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651432, 29.366199, 34.646469>,  <35.754265, 29.181879, 34.532227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651432, 29.366199, 34.646469>,  <35.480045, 29.673401, 34.836876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651432, 29.366199, 34.646469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816084, 0.102795, 0.568718,
		-0.387846, -0.632142, 0.670799,
		0.428465, -0.768004, -0.476012,
		35.779972, 29.135798, 34.503666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876823, 29.244265, 35.268864>,  <35.480045, 29.673401, 34.836876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876823, 29.244265, 35.268864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056889, 29.127150, 34.931431>,  <36.164928, 29.056881, 34.728970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056889, 29.127150, 34.931431>,  <35.876823, 29.244265, 35.268864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056889, 29.127150, 34.931431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875543, -0.040893, 0.481407,
		-0.175447, -0.955303, 0.237939,
		0.450159, -0.292787, -0.843583,
		36.191936, 29.039314, 34.678356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203976, 28.571735, 35.268398>,  <35.876823, 29.244265, 35.268864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203976, 28.571735, 35.268398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362984, 28.869549, 35.053867>,  <36.458389, 29.048237, 34.925148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362984, 28.869549, 35.053867>,  <36.203976, 28.571735, 35.268398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362984, 28.869549, 35.053867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689879, 0.142888, 0.709683,
		0.605018, -0.652113, -0.456838,
		0.397518, 0.744534, -0.536329,
		36.482239, 29.092909, 34.892967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988029, 28.413258, 35.079491>,  <36.203976, 28.571735, 35.268398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988029, 28.413258, 35.079491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925011, 28.807459, 35.104652>,  <36.887199, 29.043980, 35.119751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925011, 28.807459, 35.104652>,  <36.988029, 28.413258, 35.079491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925011, 28.807459, 35.104652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698831, 0.066257, 0.712211,
		0.697720, 0.156169, -0.699141,
		-0.157548, 0.985506, 0.062907,
		36.877747, 29.103111, 35.123524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620052, 28.629595, 35.058304>,  <36.988029, 28.413258, 35.079491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620052, 28.629595, 35.058304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407513, 28.935019, 35.205082>,  <37.279987, 29.118273, 35.293148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407513, 28.935019, 35.205082>,  <37.620052, 28.629595, 35.058304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407513, 28.935019, 35.205082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584042, 0.016417, 0.811558,
		0.613647, 0.645531, -0.454672,
		-0.531350, 0.763558, 0.366943,
		37.248108, 29.164085, 35.315166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075451, 29.061489, 35.314117>,  <37.620052, 28.629595, 35.058304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075451, 29.061489, 35.314117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745216, 29.201229, 35.491371>,  <37.547077, 29.285072, 35.597721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745216, 29.201229, 35.491371>,  <38.075451, 29.061489, 35.314117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745216, 29.201229, 35.491371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513574, 0.139849, 0.846572,
		0.233779, 0.926497, -0.294874,
		-0.825585, 0.349350, 0.443131,
		37.497540, 29.306034, 35.624310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373444, 29.576647, 35.651600>,  <38.075451, 29.061489, 35.314117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373444, 29.576647, 35.651600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027409, 29.489182, 35.832180>,  <37.819786, 29.436703, 35.940529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027409, 29.489182, 35.832180>,  <38.373444, 29.576647, 35.651600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027409, 29.489182, 35.832180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465122, -0.012682, 0.885156,
		-0.187826, 0.975718, 0.112676,
		-0.865091, -0.218663, 0.451446,
		37.767879, 29.423582, 35.967613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324429, 30.068890, 36.181896>,  <38.373444, 29.576647, 35.651600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324429, 30.068890, 36.181896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090607, 29.767433, 36.302109>,  <37.950314, 29.586559, 36.374237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090607, 29.767433, 36.302109>,  <38.324429, 30.068890, 36.181896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090607, 29.767433, 36.302109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275136, 0.164332, 0.947257,
		-0.763278, 0.636412, 0.111292,
		-0.584557, -0.753641, 0.300531,
		37.915241, 29.541342, 36.392269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929470, 30.315079, 36.695885>,  <38.324429, 30.068890, 36.181896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929470, 30.315079, 36.695885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897812, 29.922831, 36.767574>,  <37.878815, 29.687481, 36.810589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897812, 29.922831, 36.767574>,  <37.929470, 30.315079, 36.695885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897812, 29.922831, 36.767574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223237, 0.157785, 0.961909,
		-0.971546, 0.116142, 0.206422,
		-0.079148, -0.980620, 0.179223,
		37.874069, 29.628645, 36.821342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630871, 30.267324, 37.288670>,  <37.929470, 30.315079, 36.695885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630871, 30.267324, 37.288670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793507, 29.902905, 37.261333>,  <37.891087, 29.684252, 37.244930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793507, 29.902905, 37.261333>,  <37.630871, 30.267324, 37.288670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793507, 29.902905, 37.261333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383974, 0.102527, 0.917634,
		-0.829005, -0.399340, 0.391506,
		0.406588, -0.911052, -0.068341,
		37.915482, 29.629589, 37.240829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475002, 29.808393, 37.888424>,  <37.630871, 30.267324, 37.288670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475002, 29.808393, 37.888424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797840, 29.618774, 37.747635>,  <37.991543, 29.505003, 37.663162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.797840, 29.618774, 37.747635>,  <37.475002, 29.808393, 37.888424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797840, 29.618774, 37.747635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321291, -0.147515, 0.935420,
		-0.495355, -0.868054, 0.033249,
		0.807090, -0.474048, -0.351970,
		38.039967, 29.476561, 37.642044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464516, 29.198982, 38.238167>,  <37.475002, 29.808393, 37.888424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464516, 29.198982, 38.238167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840557, 29.265383, 38.119072>,  <38.066181, 29.305223, 38.047615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840557, 29.265383, 38.119072>,  <37.464516, 29.198982, 38.238167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840557, 29.265383, 38.119072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333170, -0.262707, 0.905529,
		0.072102, -0.950489, -0.302278,
		0.940106, 0.166001, -0.297733,
		38.122589, 29.315184, 38.029751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929634, 28.594225, 38.422722>,  <37.464516, 29.198982, 38.238167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929634, 28.594225, 38.422722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180225, 28.903633, 38.384361>,  <38.330578, 29.089277, 38.361347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180225, 28.903633, 38.384361>,  <37.929634, 28.594225, 38.422722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180225, 28.903633, 38.384361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520248, -0.323354, 0.790433,
		0.580407, -0.545076, -0.604995,
		0.626474, 0.773520, -0.095898,
		38.368168, 29.135689, 38.355591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484810, 28.298244, 38.653942>,  <37.929634, 28.594225, 38.422722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484810, 28.298244, 38.653942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601490, 28.680626, 38.667011>,  <38.671497, 28.910055, 38.674854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601490, 28.680626, 38.667011>,  <38.484810, 28.298244, 38.653942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601490, 28.680626, 38.667011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680970, -0.231537, 0.694745,
		0.671708, -0.180408, -0.718513,
		0.291700, 0.955952, 0.032673,
		38.688999, 28.967411, 38.676811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208130, 28.204733, 38.801830>,  <38.484810, 28.298244, 38.653942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208130, 28.204733, 38.801830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111340, 28.584063, 38.883930>,  <39.053265, 28.811661, 38.933189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111340, 28.584063, 38.883930>,  <39.208130, 28.204733, 38.801830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111340, 28.584063, 38.883930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687874, 0.018476, 0.725595,
		0.684307, 0.316765, -0.656798,
		-0.241978, 0.948324, 0.205251,
		39.038746, 28.868561, 38.945507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741879, 28.430349, 38.848679>,  <39.208130, 28.204733, 38.801830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741879, 28.430349, 38.848679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530434, 28.706982, 39.045567>,  <39.403564, 28.872961, 39.163700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530434, 28.706982, 39.045567>,  <39.741879, 28.430349, 38.848679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530434, 28.706982, 39.045567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714030, 0.048686, 0.698420,
		0.459048, 0.720658, -0.519544,
		-0.528617, 0.691579, 0.492223,
		39.371849, 28.914455, 39.193233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179413, 28.967621, 39.055000>,  <39.741879, 28.430349, 38.848679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179413, 28.967621, 39.055000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875713, 29.012451, 39.311432>,  <39.693493, 29.039349, 39.465290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875713, 29.012451, 39.311432>,  <40.179413, 28.967621, 39.055000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875713, 29.012451, 39.311432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650323, 0.092725, 0.753978,
		0.025058, 0.989364, -0.143286,
		-0.759245, 0.112075, 0.641082,
		39.647942, 29.046074, 39.503757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472538, 29.475721, 39.561760>,  <40.179413, 28.967621, 39.055000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472538, 29.475721, 39.561760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135178, 29.342628, 39.730503>,  <39.932762, 29.262774, 39.831749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135178, 29.342628, 39.730503>,  <40.472538, 29.475721, 39.561760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135178, 29.342628, 39.730503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399270, 0.137249, 0.906502,
		-0.359521, 0.932981, 0.017093,
		-0.843403, -0.332731, 0.421855,
		39.882156, 29.242809, 39.857059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340260, 29.982824, 40.079391>,  <40.472538, 29.475721, 39.561760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340260, 29.982824, 40.079391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170048, 29.639860, 40.195164>,  <40.067921, 29.434082, 40.264626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170048, 29.639860, 40.195164>,  <40.340260, 29.982824, 40.079391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170048, 29.639860, 40.195164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366697, 0.129025, 0.921350,
		-0.827320, 0.498195, 0.259506,
		-0.425529, -0.857412, 0.289432,
		40.042389, 29.382637, 40.281994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005051, 30.202412, 40.712006>,  <40.340260, 29.982824, 40.079391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005051, 30.202412, 40.712006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033104, 29.803478, 40.720058>,  <40.049938, 29.564117, 40.724892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033104, 29.803478, 40.720058>,  <40.005051, 30.202412, 40.712006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033104, 29.803478, 40.720058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319807, 0.041597, 0.946569,
		-0.944883, -0.059952, 0.321872,
		0.070137, -0.997334, 0.020131,
		40.054146, 29.504278, 40.726097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718735, 29.980864, 41.413502>,  <40.005051, 30.202412, 40.712006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718735, 29.980864, 41.413502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939541, 29.665329, 41.305416>,  <40.072025, 29.476007, 41.240566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939541, 29.665329, 41.305416>,  <39.718735, 29.980864, 41.413502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939541, 29.665329, 41.305416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344789, -0.079119, 0.935340,
		-0.759211, -0.609487, 0.228308,
		0.552014, -0.788838, -0.270213,
		40.105145, 29.428677, 41.224354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604191, 29.438416, 41.912472>,  <39.718735, 29.980864, 41.413502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604191, 29.438416, 41.912472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953335, 29.356403, 41.735348>,  <40.162819, 29.307196, 41.629074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953335, 29.356403, 41.735348>,  <39.604191, 29.438416, 41.912472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953335, 29.356403, 41.735348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464986, 0.074206, 0.882202,
		-0.148018, -0.975939, 0.160107,
		0.872856, -0.205030, -0.442814,
		40.215191, 29.294895, 41.602505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851543, 28.878811, 42.333557>,  <39.604191, 29.438416, 41.912472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851543, 28.878811, 42.333557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163364, 29.034250, 42.137074>,  <40.350456, 29.127514, 42.019184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.163364, 29.034250, 42.137074>,  <39.851543, 28.878811, 42.333557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163364, 29.034250, 42.137074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519295, 0.037468, 0.853773,
		0.350181, -0.920644, -0.172590,
		0.779555, 0.388600, -0.491207,
		40.397232, 29.150829, 41.989712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458309, 28.386452, 42.387280>,  <39.851543, 28.878811, 42.333557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458309, 28.386452, 42.387280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618893, 28.742517, 42.301083>,  <40.715244, 28.956158, 42.249363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618893, 28.742517, 42.301083>,  <40.458309, 28.386452, 42.387280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618893, 28.742517, 42.301083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578653, -0.064141, 0.813048,
		0.709924, -0.451101, -0.540847,
		0.401457, 0.890165, -0.215496,
		40.739330, 29.009567, 42.236435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216534, 28.319826, 42.335957>,  <40.458309, 28.386452, 42.387280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216534, 28.319826, 42.335957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165245, 28.708664, 42.414532>,  <41.134472, 28.941967, 42.461678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165245, 28.708664, 42.414532>,  <41.216534, 28.319826, 42.335957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165245, 28.708664, 42.414532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550795, -0.094919, 0.829226,
		0.824733, 0.214521, -0.523255,
		-0.128220, 0.972096, 0.196440,
		41.126778, 29.000294, 42.473465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796810, 28.442625, 42.669861>,  <41.216534, 28.319826, 42.335957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796810, 28.442625, 42.669861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593750, 28.780752, 42.736462>,  <41.471912, 28.983629, 42.776421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593750, 28.780752, 42.736462>,  <41.796810, 28.442625, 42.669861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593750, 28.780752, 42.736462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582550, 0.194398, 0.789205,
		0.634763, 0.497638, -0.591128,
		-0.507652, 0.845320, 0.166503,
		41.441456, 29.034348, 42.786411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352783, 28.918892, 42.833191>,  <41.796810, 28.442625, 42.669861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.352783, 28.918892, 42.833191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006672, 29.074949, 42.959103>,  <41.799007, 29.168583, 43.034649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.006672, 29.074949, 42.959103>,  <42.352783, 28.918892, 42.833191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006672, 29.074949, 42.959103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403636, 0.169850, 0.899016,
		0.297279, 0.904953, -0.304443,
		-0.865276, 0.390143, 0.314779,
		41.747089, 29.191992, 43.053535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544781, 29.343494, 43.243679>,  <42.352783, 28.918892, 42.833191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544781, 29.343494, 43.243679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168598, 29.272245, 43.359478>,  <41.942886, 29.229496, 43.428959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.168598, 29.272245, 43.359478>,  <42.544781, 29.343494, 43.243679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168598, 29.272245, 43.359478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282345, 0.064834, 0.957120,
		-0.189254, 0.981870, -0.010682,
		-0.940460, -0.178123, 0.289496,
		41.886459, 29.218809, 43.446327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801849, 29.736641, 42.689854>,  <42.544781, 29.343494, 43.243679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801849, 29.736641, 42.689854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033127, 30.061363, 42.722496>,  <43.171894, 30.256197, 42.742081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.033127, 30.061363, 42.722496>,  <42.801849, 29.736641, 42.689854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.033127, 30.061363, 42.722496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427352, 0.386534, -0.817289,
		-0.695027, 0.437675, 0.570419,
		0.578194, 0.811808, 0.081610,
		43.206585, 30.304905, 42.746979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407692, 30.353682, 42.488415>,  <42.801849, 29.736641, 42.689854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407692, 30.353682, 42.488415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.777046, 30.497227, 42.433899>,  <42.998657, 30.583355, 42.401188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.777046, 30.497227, 42.433899>,  <42.407692, 30.353682, 42.488415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777046, 30.497227, 42.433899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317303, 0.513706, -0.797135,
		-0.216050, 0.779309, 0.588218,
		0.923386, 0.358865, -0.136291,
		43.054062, 30.604887, 42.393013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288342, 31.000332, 42.461510>,  <42.407692, 30.353682, 42.488415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288342, 31.000332, 42.461510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628391, 30.924494, 42.264999>,  <42.832420, 30.878992, 42.147095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628391, 30.924494, 42.264999>,  <42.288342, 31.000332, 42.461510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628391, 30.924494, 42.264999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417546, 0.325761, -0.848254,
		0.320861, 0.926247, 0.197772,
		0.850120, -0.189593, -0.491275,
		42.883427, 30.867617, 42.117619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446411, 31.583462, 42.135468>,  <42.288342, 31.000332, 42.461510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446411, 31.583462, 42.135468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587738, 31.266315, 41.936859>,  <42.672535, 31.076027, 41.817696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587738, 31.266315, 41.936859>,  <42.446411, 31.583462, 42.135468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587738, 31.266315, 41.936859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262249, 0.425526, -0.866114,
		0.897993, 0.436225, -0.057581,
		0.353318, -0.792865, -0.496519,
		42.693733, 31.028456, 41.787903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581543, 31.994371, 41.556236>,  <42.446411, 31.583462, 42.135468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581543, 31.994371, 41.556236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605236, 31.601959, 41.482399>,  <42.619453, 31.366512, 41.438095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605236, 31.601959, 41.482399>,  <42.581543, 31.994371, 41.556236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605236, 31.601959, 41.482399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145196, 0.174483, -0.973896,
		0.987628, 0.084490, -0.132106,
		0.059234, -0.981029, -0.184592,
		42.623005, 31.307652, 41.427021>
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
