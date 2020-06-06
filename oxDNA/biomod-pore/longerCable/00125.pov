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
	<24.262018, 35.475822, 35.268242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.145643, 35.280838, 34.938942>,  <24.075817, 35.163849, 34.741364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.145643, 35.280838, 34.938942>,  <24.262018, 35.475822, 35.268242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.145643, 35.280838, 34.938942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765250, -0.397888, 0.506041,
		-0.574236, 0.777217, -0.257269,
		-0.290939, -0.487462, -0.823247,
		24.058361, 35.134598, 34.691967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.928732, 35.776993, 35.531677>,  <24.262018, 35.475822, 35.268242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.928732, 35.776993, 35.531677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.918051, 35.680744, 35.143578>,  <24.911642, 35.622997, 34.910717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.918051, 35.680744, 35.143578>,  <24.928732, 35.776993, 35.531677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.918051, 35.680744, 35.143578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992723, 0.107626, -0.054010,
		0.117420, -0.964634, 0.235993,
		-0.026701, -0.240618, -0.970253,
		24.910040, 35.608559, 34.852501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.520529, 35.167248, 35.394112>,  <24.928732, 35.776993, 35.531677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.520529, 35.167248, 35.394112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478300, 35.375496, 35.055218>,  <25.452963, 35.500446, 34.851883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478300, 35.375496, 35.055218>,  <25.520529, 35.167248, 35.394112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478300, 35.375496, 35.055218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926854, -0.257161, -0.273515,
		-0.360274, -0.814138, -0.455392,
		-0.105570, 0.520622, -0.847235,
		25.446629, 35.531681, 34.801048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900074, 34.748688, 34.916954>,  <25.520529, 35.167248, 35.394112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900074, 34.748688, 34.916954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884531, 35.113029, 34.752594>,  <25.875206, 35.331635, 34.653980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884531, 35.113029, 34.752594>,  <25.900074, 34.748688, 34.916954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884531, 35.113029, 34.752594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947441, -0.097099, -0.304840,
		-0.317562, -0.401146, -0.859207,
		-0.038858, 0.910853, -0.410897,
		25.872873, 35.386284, 34.629326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189865, 34.803730, 34.257286>,  <25.900074, 34.748688, 34.916954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189865, 34.803730, 34.257286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244967, 35.192829, 34.331894>,  <26.278027, 35.426289, 34.376659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244967, 35.192829, 34.331894>,  <26.189865, 34.803730, 34.257286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.244967, 35.192829, 34.331894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925686, -0.059455, -0.373591,
		-0.352320, 0.224119, -0.908648,
		0.137753, 0.972746, 0.186517,
		26.286293, 35.484653, 34.387848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765306, 35.122837, 33.820950>,  <26.189865, 34.803730, 34.257286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765306, 35.122837, 33.820950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788982, 35.346161, 34.151958>,  <26.803188, 35.480156, 34.350563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788982, 35.346161, 34.151958>,  <26.765306, 35.122837, 33.820950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788982, 35.346161, 34.151958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981839, 0.117120, -0.149248,
		-0.180245, 0.821324, -0.541238,
		0.059191, 0.558309, 0.827519,
		26.806740, 35.513653, 34.400215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082338, 35.909576, 33.710930>,  <26.765306, 35.122837, 33.820950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082338, 35.909576, 33.710930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.140169, 35.766048, 34.079788>,  <27.174868, 35.679932, 34.301102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.140169, 35.766048, 34.079788>,  <27.082338, 35.909576, 33.710930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.140169, 35.766048, 34.079788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983662, -0.048914, -0.173254,
		0.107272, 0.932126, 0.345882,
		0.144576, -0.358816, 0.922144,
		27.183542, 35.658405, 34.356430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503881, 36.398697, 34.047375>,  <27.082338, 35.909576, 33.710930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503881, 36.398697, 34.047375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542688, 36.012325, 34.143345>,  <27.565973, 35.780502, 34.200928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542688, 36.012325, 34.143345>,  <27.503881, 36.398697, 34.047375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542688, 36.012325, 34.143345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935913, 0.006530, -0.352169,
		0.338605, 0.258715, 0.904662,
		0.097019, -0.965932, 0.239923,
		27.571795, 35.722546, 34.215321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246157, 36.318748, 34.220898>,  <27.503881, 36.398697, 34.047375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246157, 36.318748, 34.220898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089302, 35.959934, 34.139359>,  <27.995190, 35.744644, 34.090435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089302, 35.959934, 34.139359>,  <28.246157, 36.318748, 34.220898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089302, 35.959934, 34.139359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875990, -0.296481, -0.380448,
		0.280839, -0.327756, 0.902056,
		-0.392137, -0.897037, -0.203847,
		27.971661, 35.690823, 34.078205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715860, 35.896301, 34.444149>,  <28.246157, 36.318748, 34.220898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715860, 35.896301, 34.444149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504375, 35.680386, 34.182129>,  <28.377485, 35.550835, 34.024918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504375, 35.680386, 34.182129>,  <28.715860, 35.896301, 34.444149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504375, 35.680386, 34.182129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845077, -0.262533, -0.465747,
		0.079434, -0.799813, 0.594969,
		-0.528710, -0.539791, -0.655050,
		28.345762, 35.518448, 33.985615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230659, 35.378166, 34.192410>,  <28.715860, 35.896301, 34.444149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230659, 35.378166, 34.192410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947786, 35.368416, 33.909767>,  <28.778063, 35.362564, 33.740181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947786, 35.368416, 33.909767>,  <29.230659, 35.378166, 34.192410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947786, 35.368416, 33.909767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697046, -0.191410, -0.691006,
		-0.118404, -0.981207, 0.152357,
		-0.707183, -0.024382, -0.706610,
		28.735632, 35.361103, 33.697784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228914, 34.773624, 33.689980>,  <29.230659, 35.378166, 34.192410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228914, 34.773624, 33.689980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085176, 35.099609, 33.508121>,  <28.998934, 35.295200, 33.399006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085176, 35.099609, 33.508121>,  <29.228914, 34.773624, 33.689980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085176, 35.099609, 33.508121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624986, -0.151627, -0.765769,
		-0.693011, -0.559324, -0.454854,
		-0.359345, 0.814963, -0.454649,
		28.977373, 35.344097, 33.371727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134060, 34.604221, 32.970619>,  <29.228914, 34.773624, 33.689980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134060, 34.604221, 32.970619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250853, 34.978802, 33.048401>,  <29.320929, 35.203548, 33.095070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250853, 34.978802, 33.048401>,  <29.134060, 34.604221, 32.970619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250853, 34.978802, 33.048401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824089, -0.143143, -0.548076,
		-0.485411, 0.320273, -0.813512,
		0.291983, 0.936448, 0.194450,
		29.338448, 35.259735, 33.106735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313986, 35.112686, 32.390190>,  <29.134060, 34.604221, 32.970619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313986, 35.112686, 32.390190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526386, 35.249882, 32.700130>,  <29.653826, 35.332199, 32.886097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526386, 35.249882, 32.700130>,  <29.313986, 35.112686, 32.390190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526386, 35.249882, 32.700130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847157, -0.194267, -0.494555,
		-0.019096, 0.919033, -0.393718,
		0.530999, 0.342985, 0.774856,
		29.685686, 35.352776, 32.932587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927605, 35.528564, 31.948090>,  <29.313986, 35.112686, 32.390190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927605, 35.528564, 31.948090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630627, 35.607193, 31.691921>,  <28.452440, 35.654369, 31.538221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630627, 35.607193, 31.691921>,  <28.927605, 35.528564, 31.948090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630627, 35.607193, 31.691921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443308, -0.860893, 0.249683,
		-0.502252, 0.469278, 0.726306,
		-0.742443, 0.196574, -0.640420,
		28.407894, 35.666164, 31.499796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289047, 35.590141, 32.265038>,  <28.927605, 35.528564, 31.948090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289047, 35.590141, 32.265038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281603, 35.430038, 31.898554>,  <28.277136, 35.333977, 31.678663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281603, 35.430038, 31.898554>,  <28.289047, 35.590141, 32.265038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281603, 35.430038, 31.898554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231331, -0.889783, 0.393411,
		-0.972697, 0.219271, -0.076030,
		-0.018613, -0.400258, -0.916213,
		28.276018, 35.309959, 31.623690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805920, 35.360325, 32.824776>,  <28.289047, 35.590141, 32.265038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805920, 35.360325, 32.824776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093161, 35.349682, 33.102947>,  <28.265505, 35.343296, 33.269852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093161, 35.349682, 33.102947>,  <27.805920, 35.360325, 32.824776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093161, 35.349682, 33.102947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695673, -0.055094, 0.716243,
		0.019257, -0.998127, -0.058073,
		0.718101, -0.026608, 0.695431,
		28.308590, 35.341698, 33.311577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668165, 34.789871, 33.197330>,  <27.805920, 35.360325, 32.824776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668165, 34.789871, 33.197330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890919, 35.007633, 33.448250>,  <28.024570, 35.138290, 33.598801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890919, 35.007633, 33.448250>,  <27.668165, 34.789871, 33.197330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890919, 35.007633, 33.448250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701011, -0.097024, 0.706520,
		0.445496, -0.833193, 0.327602,
		0.556882, 0.544404, 0.627301,
		28.057983, 35.170956, 33.636440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469294, 34.512573, 33.855442>,  <27.668165, 34.789871, 33.197330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469294, 34.512573, 33.855442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649162, 34.858349, 33.945370>,  <27.757084, 35.065815, 33.999325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649162, 34.858349, 33.945370>,  <27.469294, 34.512573, 33.855442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649162, 34.858349, 33.945370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650795, 0.144697, 0.745338,
		0.611769, -0.481466, 0.627638,
		0.449672, 0.864438, 0.224815,
		27.784063, 35.117680, 34.012814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631790, 34.442905, 34.549061>,  <27.469294, 34.512573, 33.855442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631790, 34.442905, 34.549061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624350, 34.828339, 34.442352>,  <27.619884, 35.059597, 34.378326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624350, 34.828339, 34.442352>,  <27.631790, 34.442905, 34.549061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624350, 34.828339, 34.442352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499318, 0.222212, 0.837438,
		0.866219, 0.148782, 0.477000,
		-0.018601, 0.963580, -0.266774,
		27.618769, 35.117413, 34.362320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482904, 34.674286, 35.191933>,  <27.631790, 34.442905, 34.549061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482904, 34.674286, 35.191933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581051, 34.973141, 34.944843>,  <27.639938, 35.152454, 34.796589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581051, 34.973141, 34.944843>,  <27.482904, 34.674286, 35.191933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581051, 34.973141, 34.944843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863107, 0.458499, 0.211718,
		0.441409, 0.481216, 0.757357,
		0.245365, 0.747135, -0.617726,
		27.654661, 35.197281, 34.759525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362192, 35.359127, 35.575920>,  <27.482904, 34.674286, 35.191933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362192, 35.359127, 35.575920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309235, 35.435734, 35.186913>,  <27.277460, 35.481697, 34.953506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309235, 35.435734, 35.186913>,  <27.362192, 35.359127, 35.575920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309235, 35.435734, 35.186913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792297, 0.569118, 0.219933,
		0.595599, 0.799642, 0.076389,
		-0.132394, 0.191515, -0.972519,
		27.269516, 35.493187, 34.895157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090508, 36.062267, 35.622154>,  <27.362192, 35.359127, 35.575920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090508, 36.062267, 35.622154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985956, 35.896027, 35.273682>,  <26.923225, 35.796284, 35.064598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985956, 35.896027, 35.273682>,  <27.090508, 36.062267, 35.622154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985956, 35.896027, 35.273682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929323, 0.352262, 0.110773,
		0.260847, 0.838562, -0.478301,
		-0.261378, -0.415601, -0.871182,
		26.907543, 35.771347, 35.012325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859156, 35.997246, 35.305592>,  <27.090508, 36.062267, 35.622154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859156, 35.997246, 35.305592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195919, 36.212337, 35.323666>,  <28.397976, 36.341393, 35.334511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195919, 36.212337, 35.323666>,  <27.859156, 35.997246, 35.305592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195919, 36.212337, 35.323666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051861, -0.002716, 0.998651,
		0.537126, -0.843113, 0.025601,
		0.841906, 0.537729, 0.045184,
		28.448490, 36.373657, 35.337219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260460, 35.758659, 35.758553>,  <27.859156, 35.997246, 35.305592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260460, 35.758659, 35.758553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369936, 36.142914, 35.777657>,  <28.435621, 36.373466, 35.789120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369936, 36.142914, 35.777657>,  <28.260460, 35.758659, 35.758553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369936, 36.142914, 35.777657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020688, -0.055521, 0.998243,
		0.961595, -0.272222, -0.035069,
		0.273691, 0.960632, 0.047757,
		28.452044, 36.431103, 35.791985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465443, 35.807205, 36.373676>,  <28.260460, 35.758659, 35.758553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465443, 35.807205, 36.373676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505457, 36.193989, 36.279884>,  <28.529467, 36.426060, 36.223610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505457, 36.193989, 36.279884>,  <28.465443, 35.807205, 36.373676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505457, 36.193989, 36.279884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213088, 0.209370, 0.954336,
		0.971898, -0.145434, -0.185103,
		0.100038, 0.966961, -0.234476,
		28.535469, 36.484077, 36.209541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100508, 36.107796, 36.507259>,  <28.465443, 35.807205, 36.373676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100508, 36.107796, 36.507259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860622, 36.427807, 36.514107>,  <28.716690, 36.619816, 36.518215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860622, 36.427807, 36.514107>,  <29.100508, 36.107796, 36.507259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860622, 36.427807, 36.514107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465788, 0.331602, 0.820415,
		0.650679, 0.499991, -0.571511,
		-0.599715, 0.800030, 0.017123,
		28.680708, 36.667816, 36.519245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497597, 36.707222, 36.395214>,  <29.100508, 36.107796, 36.507259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497597, 36.707222, 36.395214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189524, 36.734402, 36.648891>,  <29.004679, 36.750710, 36.801098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189524, 36.734402, 36.648891>,  <29.497597, 36.707222, 36.395214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189524, 36.734402, 36.648891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609315, 0.372321, 0.700080,
		-0.188550, 0.925613, -0.328161,
		-0.770184, 0.067954, 0.634191,
		28.958467, 36.754787, 36.839149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419054, 37.375549, 36.621368>,  <29.497597, 36.707222, 36.395214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419054, 37.375549, 36.621368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288553, 37.153774, 36.927612>,  <29.210253, 37.020710, 37.111359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288553, 37.153774, 36.927612>,  <29.419054, 37.375549, 36.621368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288553, 37.153774, 36.927612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630979, 0.475343, 0.613119,
		-0.703863, 0.683115, 0.194757,
		-0.326254, -0.554440, 0.765608,
		29.190678, 36.987442, 37.157295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093494, 37.455177, 36.437538>,  <29.419054, 37.375549, 36.621368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093494, 37.455177, 36.437538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175709, 37.071182, 36.361458>,  <30.225037, 36.840786, 36.315811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175709, 37.071182, 36.361458>,  <30.093494, 37.455177, 36.437538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175709, 37.071182, 36.361458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859447, 0.084102, 0.504260,
		-0.468088, -0.267109, 0.842346,
		0.205536, -0.959990, -0.190198,
		30.237370, 36.783184, 36.304398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309511, 37.237041, 37.065948>,  <30.093494, 37.455177, 36.437538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309511, 37.237041, 37.065948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458660, 36.997749, 36.782234>,  <30.548149, 36.854172, 36.612007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458660, 36.997749, 36.782234>,  <30.309511, 37.237041, 37.065948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458660, 36.997749, 36.782234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787304, -0.200548, 0.583037,
		-0.491039, -0.775819, 0.396214,
		0.372871, -0.598235, -0.709283,
		30.570522, 36.818279, 36.569450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522285, 36.729652, 37.459461>,  <30.309511, 37.237041, 37.065948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522285, 36.729652, 37.459461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731195, 36.720669, 37.118469>,  <30.856541, 36.715279, 36.913876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731195, 36.720669, 37.118469>,  <30.522285, 36.729652, 37.459461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731195, 36.720669, 37.118469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843831, -0.130804, 0.520422,
		-0.123197, -0.991154, -0.049362,
		0.522275, -0.022461, -0.852481,
		30.887878, 36.713932, 36.862724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927067, 36.103333, 37.462688>,  <30.522285, 36.729652, 37.459461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927067, 36.103333, 37.462688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102222, 36.377522, 37.230003>,  <31.207315, 36.542034, 37.090393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102222, 36.377522, 37.230003>,  <30.927067, 36.103333, 37.462688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102222, 36.377522, 37.230003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804335, -0.009652, 0.594097,
		0.401621, -0.728038, -0.555573,
		0.437888, 0.685469, -0.581710,
		31.233589, 36.583160, 37.055489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598227, 35.805939, 37.440891>,  <30.927067, 36.103333, 37.462688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598227, 35.805939, 37.440891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632793, 36.189121, 37.331451>,  <31.653534, 36.419029, 37.265789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632793, 36.189121, 37.331451>,  <31.598227, 35.805939, 37.440891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632793, 36.189121, 37.331451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769054, 0.110436, 0.629572,
		0.633316, -0.264819, -0.727174,
		0.086416, 0.957953, -0.273601,
		31.658718, 36.476509, 37.249371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282715, 35.905220, 37.240524>,  <31.598227, 35.805939, 37.440891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282715, 35.905220, 37.240524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114613, 36.247025, 37.362637>,  <32.013752, 36.452106, 37.435902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114613, 36.247025, 37.362637>,  <32.282715, 35.905220, 37.240524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114613, 36.247025, 37.362637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735845, 0.124078, 0.665685,
		0.530956, 0.504398, -0.680932,
		-0.420259, 0.854510, 0.305279,
		31.988535, 36.503376, 37.454220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857151, 35.827442, 37.759514>,  <32.282715, 35.905220, 37.240524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857151, 35.827442, 37.759514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976238, 36.204357, 37.820774>,  <33.047691, 36.430508, 37.857529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976238, 36.204357, 37.820774>,  <32.857151, 35.827442, 37.759514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976238, 36.204357, 37.820774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850680, 0.334662, -0.405395,
		-0.433253, -0.009589, 0.901221,
		0.297717, 0.942289, 0.153151,
		33.065552, 36.487045, 37.866718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326992, 36.200874, 38.070755>,  <32.857151, 35.827442, 37.759514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326992, 36.200874, 38.070755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557198, 36.444668, 37.852650>,  <32.695320, 36.590942, 37.721786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557198, 36.444668, 37.852650>,  <32.326992, 36.200874, 38.070755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557198, 36.444668, 37.852650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794534, 0.258849, -0.549284,
		-0.193637, 0.749353, 0.633226,
		0.575517, 0.609481, -0.545264,
		32.729855, 36.627514, 37.689072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022152, 36.926506, 37.997715>,  <32.326992, 36.200874, 38.070755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022152, 36.926506, 37.997715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242981, 36.805725, 37.686832>,  <32.375477, 36.733257, 37.500305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242981, 36.805725, 37.686832>,  <32.022152, 36.926506, 37.997715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242981, 36.805725, 37.686832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739025, 0.254413, -0.623792,
		0.386085, 0.918749, -0.082697,
		0.552069, -0.301952, -0.777204,
		32.408600, 36.715141, 37.453671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054081, 37.503819, 37.523041>,  <32.022152, 36.926506, 37.997715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054081, 37.503819, 37.523041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128323, 37.186268, 37.291416>,  <32.172867, 36.995739, 37.152439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128323, 37.186268, 37.291416>,  <32.054081, 37.503819, 37.523041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128323, 37.186268, 37.291416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841360, 0.176030, -0.511006,
		0.507607, 0.582046, -0.635262,
		0.185604, -0.793874, -0.579064,
		32.184002, 36.948105, 37.117699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762205, 37.712292, 36.817211>,  <32.054081, 37.503819, 37.523041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762205, 37.712292, 36.817211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791655, 37.314163, 36.842262>,  <31.809324, 37.075287, 36.857292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791655, 37.314163, 36.842262>,  <31.762205, 37.712292, 36.817211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791655, 37.314163, 36.842262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762239, -0.096655, -0.640039,
		0.643095, -0.000612, -0.765786,
		0.073625, -0.995318, 0.062624,
		31.813742, 37.015568, 36.861050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823458, 37.353130, 36.178234>,  <31.762205, 37.712292, 36.817211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823458, 37.353130, 36.178234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659416, 37.098595, 36.439583>,  <31.560991, 36.945873, 36.596390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659416, 37.098595, 36.439583>,  <31.823458, 37.353130, 36.178234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659416, 37.098595, 36.439583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729657, -0.200886, -0.653640,
		0.547189, -0.744794, -0.381924,
		-0.410104, -0.636338, 0.653367,
		31.536385, 36.907692, 36.635593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603354, 36.735882, 35.768955>,  <31.823458, 37.353130, 36.178234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603354, 36.735882, 35.768955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380545, 36.739124, 36.101139>,  <31.246861, 36.741070, 36.300449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.380545, 36.739124, 36.101139>,  <31.603354, 36.735882, 35.768955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380545, 36.739124, 36.101139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810507, -0.223387, -0.541457,
		0.181125, -0.974696, 0.131001,
		-0.557020, 0.008106, 0.830459,
		31.213438, 36.741558, 36.350277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216417, 36.096695, 35.799091>,  <31.603354, 36.735882, 35.768955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216417, 36.096695, 35.799091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014648, 36.330196, 36.053581>,  <30.893587, 36.470299, 36.206276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.014648, 36.330196, 36.053581>,  <31.216417, 36.096695, 35.799091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014648, 36.330196, 36.053581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861192, -0.286808, -0.419629,
		-0.062486, -0.759586, 0.647399,
		-0.504424, 0.583756, 0.636228,
		30.863321, 36.505322, 36.244450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888084, 36.064880, 36.102345>,  <31.216417, 36.096695, 35.799091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888084, 36.064880, 36.102345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045197, 35.721722, 36.234848>,  <32.139465, 35.515827, 36.314350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045197, 35.721722, 36.234848>,  <31.888084, 36.064880, 36.102345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045197, 35.721722, 36.234848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831262, -0.177132, 0.526905,
		-0.393354, -0.482322, -0.782712,
		0.392781, -0.857898, 0.331260,
		32.163033, 35.464352, 36.334225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596016, 35.938465, 36.423466>,  <31.888084, 36.064880, 36.102345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596016, 35.938465, 36.423466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451923, 36.251232, 36.626968>,  <32.365467, 36.438892, 36.749069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451923, 36.251232, 36.626968>,  <32.596016, 35.938465, 36.423466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451923, 36.251232, 36.626968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776616, -0.050772, 0.627925,
		0.516817, 0.621308, -0.588962,
		-0.360232, 0.781920, 0.508758,
		32.343853, 36.485809, 36.779594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114769, 36.476440, 36.421028>,  <32.596016, 35.938465, 36.423466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114769, 36.476440, 36.421028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871376, 36.494503, 36.737942>,  <32.725342, 36.505341, 36.928089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871376, 36.494503, 36.737942>,  <33.114769, 36.476440, 36.421028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871376, 36.494503, 36.737942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792523, -0.016695, 0.609613,
		0.040757, 0.998840, -0.025632,
		-0.608478, 0.045160, 0.792285,
		32.688831, 36.508053, 36.975628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283939, 37.080944, 36.748089>,  <33.114769, 36.476440, 36.421028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283939, 37.080944, 36.748089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150837, 36.788124, 36.985870>,  <33.070976, 36.612431, 37.128540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150837, 36.788124, 36.985870>,  <33.283939, 37.080944, 36.748089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150837, 36.788124, 36.985870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824181, 0.080563, 0.560567,
		-0.458255, 0.676467, 0.576536,
		-0.332758, -0.732053, 0.594450,
		33.051010, 36.568508, 37.164204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959179, 36.890419, 36.956512>,  <33.283939, 37.080944, 36.748089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959179, 36.890419, 36.956512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152836, 37.091480, 36.670033>,  <34.269032, 37.212116, 36.498142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152836, 37.091480, 36.670033>,  <33.959179, 36.890419, 36.956512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152836, 37.091480, 36.670033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451859, 0.844563, 0.287293,
		0.749287, 0.184532, 0.636017,
		0.484142, 0.502654, -0.716202,
		34.298077, 37.242275, 36.455173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308891, 37.471405, 37.267422>,  <33.959179, 36.890419, 36.956512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308891, 37.471405, 37.267422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198586, 37.517395, 36.885693>,  <34.132404, 37.544991, 36.656654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198586, 37.517395, 36.885693>,  <34.308891, 37.471405, 37.267422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198586, 37.517395, 36.885693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476269, 0.846040, 0.239551,
		0.834939, 0.520575, -0.178546,
		-0.275761, 0.114975, -0.954325,
		34.115856, 37.551888, 36.599396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512962, 38.133583, 36.983475>,  <34.308891, 37.471405, 37.267422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512962, 38.133583, 36.983475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170567, 38.038555, 36.799801>,  <33.965130, 37.981541, 36.689598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170567, 38.038555, 36.799801>,  <34.512962, 38.133583, 36.983475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170567, 38.038555, 36.799801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383686, 0.887202, 0.256235,
		0.346517, 0.395517, -0.850584,
		-0.855985, -0.237568, -0.459185,
		33.913773, 37.967285, 36.662045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377777, 38.773495, 36.535576>,  <34.512962, 38.133583, 36.983475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377777, 38.773495, 36.535576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056087, 38.556255, 36.632130>,  <33.863075, 38.425911, 36.690063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056087, 38.556255, 36.632130>,  <34.377777, 38.773495, 36.535576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056087, 38.556255, 36.632130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520480, 0.839669, 0.155102,
		-0.286918, -0.000899, -0.957955,
		-0.804225, -0.543098, 0.241384,
		33.814819, 38.393326, 36.704544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883274, 38.880920, 36.197395>,  <34.377777, 38.773495, 36.535576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883274, 38.880920, 36.197395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700745, 38.752167, 36.529217>,  <33.591228, 38.674915, 36.728310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700745, 38.752167, 36.529217>,  <33.883274, 38.880920, 36.197395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700745, 38.752167, 36.529217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461116, 0.882873, 0.088927,
		-0.761015, -0.341941, -0.551301,
		-0.456320, -0.321888, 0.829554,
		33.563847, 38.655602, 36.778084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060249, 38.866314, 36.066902>,  <33.883274, 38.880920, 36.197395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060249, 38.866314, 36.066902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172577, 38.932594, 36.445042>,  <33.239971, 38.972363, 36.671925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172577, 38.932594, 36.445042>,  <33.060249, 38.866314, 36.066902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172577, 38.932594, 36.445042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468134, 0.883516, -0.015801,
		-0.837850, -0.438114, 0.325675,
		0.280816, 0.165698, 0.945350,
		33.256821, 38.982304, 36.728645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446945, 38.843880, 36.647224>,  <33.060249, 38.866314, 36.066902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446945, 38.843880, 36.647224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763248, 39.082661, 36.701416>,  <32.953030, 39.225929, 36.733929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763248, 39.082661, 36.701416>,  <32.446945, 38.843880, 36.647224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763248, 39.082661, 36.701416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611501, 0.780373, 0.130704,
		-0.027699, -0.186199, 0.982122,
		0.790758, 0.596948, 0.135477,
		33.000477, 39.261745, 36.742058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264389, 39.157890, 37.285217>,  <32.446945, 38.843880, 36.647224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264389, 39.157890, 37.285217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504955, 39.325394, 37.013058>,  <32.649296, 39.425896, 36.849762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504955, 39.325394, 37.013058>,  <32.264389, 39.157890, 37.285217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504955, 39.325394, 37.013058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731265, 0.631547, -0.257682,
		0.321797, 0.652526, 0.686044,
		0.601413, 0.418759, -0.680399,
		32.685379, 39.451023, 36.808937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326302, 39.830055, 37.494488>,  <32.264389, 39.157890, 37.285217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326302, 39.830055, 37.494488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392330, 39.822662, 37.100044>,  <32.431946, 39.818226, 36.863377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392330, 39.822662, 37.100044>,  <32.326302, 39.830055, 37.494488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392330, 39.822662, 37.100044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735813, 0.663468, -0.135606,
		0.656759, 0.747976, 0.095917,
		0.165068, -0.018484, -0.986109,
		32.441849, 39.817116, 36.804211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193352, 40.515453, 37.846458>,  <32.326302, 39.830055, 37.494488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193352, 40.515453, 37.846458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548271, 40.699928, 37.847084>,  <32.761223, 40.810612, 37.847458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548271, 40.699928, 37.847084>,  <32.193352, 40.515453, 37.846458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548271, 40.699928, 37.847084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460581, -0.886295, 0.048443,
		0.023726, -0.042264, -0.998825,
		0.887301, 0.461189, 0.001562,
		32.814461, 40.838284, 37.847553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672871, 40.520378, 37.257874>,  <32.193352, 40.515453, 37.846458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672871, 40.520378, 37.257874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865726, 40.504288, 37.607941>,  <32.981438, 40.494633, 37.817982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865726, 40.504288, 37.607941>,  <32.672871, 40.520378, 37.257874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865726, 40.504288, 37.607941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299002, -0.931413, -0.207528,
		0.823494, 0.361735, -0.437042,
		0.482136, -0.040222, 0.875172,
		33.010368, 40.492222, 37.870491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479248, 40.403946, 37.157185>,  <32.672871, 40.520378, 37.257874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479248, 40.403946, 37.157185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290058, 40.228416, 37.462791>,  <33.176544, 40.123096, 37.646156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290058, 40.228416, 37.462791>,  <33.479248, 40.403946, 37.157185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290058, 40.228416, 37.462791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196691, -0.897848, -0.393931,
		0.858841, -0.036044, 0.510973,
		-0.472974, -0.438828, 0.764019,
		33.148167, 40.096767, 37.691998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946751, 39.913616, 37.433571>,  <33.479248, 40.403946, 37.157185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946751, 39.913616, 37.433571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568012, 39.808399, 37.507641>,  <33.340771, 39.745270, 37.552082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568012, 39.808399, 37.507641>,  <33.946751, 39.913616, 37.433571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568012, 39.808399, 37.507641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148604, -0.868204, -0.473433,
		0.285301, -0.420751, 0.861146,
		-0.946848, -0.263041, 0.185174,
		33.283958, 39.729488, 37.563194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901581, 39.209579, 37.814659>,  <33.946751, 39.913616, 37.433571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901581, 39.209579, 37.814659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576740, 39.264324, 37.587761>,  <33.381836, 39.297173, 37.451622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576740, 39.264324, 37.587761>,  <33.901581, 39.209579, 37.814659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576740, 39.264324, 37.587761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035379, -0.958766, -0.281985,
		-0.582448, -0.249068, 0.773770,
		-0.812098, 0.136866, -0.567243,
		33.333111, 39.305386, 37.417587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538029, 38.496437, 37.812599>,  <33.901581, 39.209579, 37.814659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538029, 38.496437, 37.812599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373745, 38.681591, 37.498386>,  <33.275173, 38.792683, 37.309860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373745, 38.681591, 37.498386>,  <33.538029, 38.496437, 37.812599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373745, 38.681591, 37.498386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043877, -0.870584, -0.490059,
		-0.910709, -0.166806, 0.377868,
		-0.410711, 0.462881, -0.785530,
		33.250530, 38.820454, 37.262726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029301, 37.993000, 37.583572>,  <33.538029, 38.496437, 37.812599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029301, 37.993000, 37.583572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133434, 38.202244, 37.258961>,  <33.195915, 38.327789, 37.064194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133434, 38.202244, 37.258961>,  <33.029301, 37.993000, 37.583572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133434, 38.202244, 37.258961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238463, -0.849310, -0.470965,
		-0.935606, -0.070909, -0.345851,
		0.260339, 0.523110, -0.811529,
		33.211536, 38.359177, 37.015503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745197, 37.666931, 36.972630>,  <33.029301, 37.993000, 37.583572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745197, 37.666931, 36.972630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065941, 37.881531, 36.867420>,  <33.258389, 38.010292, 36.804295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065941, 37.881531, 36.867420>,  <32.745197, 37.666931, 36.972630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065941, 37.881531, 36.867420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323351, -0.759808, -0.564035,
		-0.502453, 0.367230, -0.782741,
		0.801864, 0.536501, -0.263023,
		33.306499, 38.042480, 36.788513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781651, 37.636227, 36.227627>,  <32.745197, 37.666931, 36.972630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781651, 37.636227, 36.227627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139969, 37.718040, 36.385471>,  <33.354961, 37.767128, 36.480179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139969, 37.718040, 36.385471>,  <32.781651, 37.636227, 36.227627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139969, 37.718040, 36.385471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395267, -0.772613, -0.496824,
		0.203264, 0.601029, -0.772948,
		0.895794, 0.204535, 0.394611,
		33.408707, 37.779400, 36.503853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203465, 37.872147, 35.754513>,  <32.781651, 37.636227, 36.227627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203465, 37.872147, 35.754513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372566, 37.663460, 36.050915>,  <33.474026, 37.538246, 36.228756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372566, 37.663460, 36.050915>,  <33.203465, 37.872147, 35.754513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372566, 37.663460, 36.050915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333431, -0.670771, -0.662488,
		0.842678, 0.527143, -0.109612,
		0.422750, -0.521716, 0.741009,
		33.499390, 37.506947, 36.273216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973461, 37.759869, 35.524841>,  <33.203465, 37.872147, 35.754513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973461, 37.759869, 35.524841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816635, 37.483467, 35.767757>,  <33.722538, 37.317627, 35.913506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816635, 37.483467, 35.767757>,  <33.973461, 37.759869, 35.524841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816635, 37.483467, 35.767757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287927, -0.719149, -0.632395,
		0.873716, -0.073087, 0.480914,
		-0.392069, -0.691002, 0.607288,
		33.699013, 37.276165, 35.949944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367760, 38.166222, 35.009800>,  <33.973461, 37.759869, 35.524841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367760, 38.166222, 35.009800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486458, 38.315563, 34.658218>,  <34.557678, 38.405167, 34.447269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486458, 38.315563, 34.658218>,  <34.367760, 38.166222, 35.009800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486458, 38.315563, 34.658218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098753, -0.903476, -0.417108,
		-0.949837, 0.210573, -0.231233,
		0.296745, 0.373349, -0.878950,
		34.575481, 38.427567, 34.394535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969555, 37.834080, 34.575825>,  <34.367760, 38.166222, 35.009800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969555, 37.834080, 34.575825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269810, 37.982819, 34.357365>,  <34.449963, 38.072060, 34.226288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269810, 37.982819, 34.357365>,  <33.969555, 37.834080, 34.575825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269810, 37.982819, 34.357365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028702, -0.844172, -0.535304,
		-0.660093, 0.386143, -0.644338,
		0.750636, 0.371844, -0.546149,
		34.494999, 38.094372, 34.193520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666218, 37.751659, 33.871445>,  <33.969555, 37.834080, 34.575825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666218, 37.751659, 33.871445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065041, 37.723694, 33.858845>,  <34.304333, 37.706917, 33.851284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065041, 37.723694, 33.858845>,  <33.666218, 37.751659, 33.871445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065041, 37.723694, 33.858845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070709, -0.679324, -0.730424,
		0.029665, 0.730501, -0.682267,
		0.997056, -0.069910, -0.031501,
		34.364159, 37.702721, 33.849396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685291, 37.512444, 33.172810>,  <33.666218, 37.751659, 33.871445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685291, 37.512444, 33.172810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053356, 37.474724, 33.324818>,  <34.274193, 37.452091, 33.416023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053356, 37.474724, 33.324818>,  <33.685291, 37.512444, 33.172810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053356, 37.474724, 33.324818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249585, -0.606561, -0.754845,
		0.301688, 0.789425, -0.534596,
		0.920158, -0.094300, 0.380021,
		34.329403, 37.446434, 33.438824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043903, 37.474674, 32.641033>,  <33.685291, 37.512444, 33.172810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043903, 37.474674, 32.641033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280998, 37.298695, 32.910881>,  <34.423256, 37.193108, 33.072788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.280998, 37.298695, 32.910881>,  <34.043903, 37.474674, 32.641033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280998, 37.298695, 32.910881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204851, -0.727718, -0.654570,
		0.778910, 0.526183, -0.341220,
		0.592736, -0.439952, 0.674616,
		34.458820, 37.166710, 33.113266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726814, 37.310543, 32.330982>,  <34.043903, 37.474674, 32.641033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726814, 37.310543, 32.330982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696259, 37.065323, 32.645519>,  <34.677925, 36.918190, 32.834244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696259, 37.065323, 32.645519>,  <34.726814, 37.310543, 32.330982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696259, 37.065323, 32.645519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297437, -0.766753, -0.568878,
		0.951681, 0.190433, 0.240913,
		-0.076388, -0.613046, 0.786345,
		34.673344, 36.881409, 32.881424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393467, 36.968300, 32.414463>,  <34.726814, 37.310543, 32.330982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393467, 36.968300, 32.414463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124451, 36.738758, 32.601391>,  <34.963039, 36.601032, 32.713547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124451, 36.738758, 32.601391>,  <35.393467, 36.968300, 32.414463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124451, 36.738758, 32.601391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413224, -0.815038, -0.406152,
		0.613950, -0.080048, 0.785275,
		-0.672541, -0.573852, 0.467315,
		34.922688, 36.566601, 32.741585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778942, 36.421303, 32.753445>,  <35.393467, 36.968300, 32.414463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778942, 36.421303, 32.753445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404518, 36.280605, 32.756744>,  <35.179863, 36.196186, 32.758724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404518, 36.280605, 32.756744>,  <35.778942, 36.421303, 32.753445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404518, 36.280605, 32.756744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330393, -0.886829, -0.323071,
		0.120956, -0.299688, 0.946339,
		-0.936061, -0.351741, 0.008252,
		35.123699, 36.175083, 32.759220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767471, 35.673077, 33.041157>,  <35.778942, 36.421303, 32.753445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767471, 35.673077, 33.041157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430344, 35.719559, 32.830959>,  <35.228065, 35.747448, 32.704842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430344, 35.719559, 32.830959>,  <35.767471, 35.673077, 33.041157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430344, 35.719559, 32.830959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143393, -0.892627, -0.427383,
		-0.518736, -0.435560, 0.735663,
		-0.842824, 0.116210, -0.525494,
		35.177498, 35.754421, 32.673309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536240, 35.046989, 32.988285>,  <35.767471, 35.673077, 33.041157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536240, 35.046989, 32.988285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325401, 35.221733, 32.696716>,  <35.198898, 35.326580, 32.521774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325401, 35.221733, 32.696716>,  <35.536240, 35.046989, 32.988285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325401, 35.221733, 32.696716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141704, -0.800559, -0.582258,
		-0.837908, -0.410197, 0.360068,
		-0.527096, 0.436856, -0.728921,
		35.167271, 35.352791, 32.478039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098034, 34.461124, 32.775822>,  <35.536240, 35.046989, 32.988285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098034, 34.461124, 32.775822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098129, 34.737804, 32.486946>,  <35.098186, 34.903812, 32.313622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098129, 34.737804, 32.486946>,  <35.098034, 34.461124, 32.775822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098129, 34.737804, 32.486946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110856, -0.717754, -0.687415,
		-0.993836, -0.079894, -0.076851,
		0.000239, 0.691697, -0.722187,
		35.098202, 34.945312, 32.270290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623734, 34.236027, 32.243595>,  <35.098034, 34.461124, 32.775822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623734, 34.236027, 32.243595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864120, 34.495831, 32.057278>,  <35.008354, 34.651714, 31.945486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864120, 34.495831, 32.057278>,  <34.623734, 34.236027, 32.243595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864120, 34.495831, 32.057278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116652, -0.647813, -0.752815,
		-0.790714, 0.398083, -0.465083,
		0.600970, 0.649514, -0.465798,
		35.044411, 34.690685, 31.917538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326954, 34.261192, 31.594978>,  <34.623734, 34.236027, 32.243595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326954, 34.261192, 31.594978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699009, 34.406021, 31.570499>,  <34.922241, 34.492920, 31.555811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699009, 34.406021, 31.570499>,  <34.326954, 34.261192, 31.594978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699009, 34.406021, 31.570499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115573, -0.446840, -0.887117,
		-0.348547, 0.818069, -0.457469,
		0.930139, 0.362073, -0.061198,
		34.978050, 34.514645, 31.552139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306496, 34.655533, 30.974194>,  <34.326954, 34.261192, 31.594978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306496, 34.655533, 30.974194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677505, 34.533436, 31.060480>,  <34.900112, 34.460178, 31.112251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677505, 34.533436, 31.060480>,  <34.306496, 34.655533, 30.974194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677505, 34.533436, 31.060480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088657, -0.380993, -0.920318,
		0.363106, 0.872738, -0.326317,
		0.927520, -0.305243, 0.215715,
		34.955761, 34.441864, 31.125195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706177, 34.952301, 30.530996>,  <34.306496, 34.655533, 30.974194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706177, 34.952301, 30.530996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898567, 34.612537, 30.617874>,  <35.014000, 34.408680, 30.670000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898567, 34.612537, 30.617874>,  <34.706177, 34.952301, 30.530996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898567, 34.612537, 30.617874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140760, -0.169701, -0.975391,
		0.865360, 0.499712, 0.037941,
		0.480976, -0.849406, 0.217192,
		35.042862, 34.357716, 30.683031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229038, 34.860939, 30.101471>,  <34.706177, 34.952301, 30.530996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229038, 34.860939, 30.101471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220425, 34.489105, 30.248659>,  <35.215256, 34.266003, 30.336971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220425, 34.489105, 30.248659>,  <35.229038, 34.860939, 30.101471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220425, 34.489105, 30.248659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214999, -0.363750, -0.906345,
		0.976377, 0.059595, 0.207694,
		-0.021535, -0.929588, 0.367970,
		35.213963, 34.210228, 30.359051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856236, 34.559296, 29.745886>,  <35.229038, 34.860939, 30.101471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856236, 34.559296, 29.745886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644043, 34.253021, 29.891388>,  <35.516727, 34.069256, 29.978689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644043, 34.253021, 29.891388>,  <35.856236, 34.559296, 29.745886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644043, 34.253021, 29.891388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096933, -0.481089, -0.871296,
		0.842135, -0.426949, 0.329430,
		-0.530484, -0.765682, 0.363756,
		35.484898, 34.023315, 30.000515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152817, 33.955841, 29.480259>,  <35.856236, 34.559296, 29.745886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152817, 33.955841, 29.480259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800034, 33.807766, 29.596956>,  <35.588364, 33.718922, 29.666975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.800034, 33.807766, 29.596956>,  <36.152817, 33.955841, 29.480259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800034, 33.807766, 29.596956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020415, -0.588396, -0.808315,
		0.470886, -0.718856, 0.511383,
		-0.881958, -0.370185, 0.291743,
		35.535446, 33.696712, 29.684479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231667, 33.318661, 29.350843>,  <36.152817, 33.955841, 29.480259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231667, 33.318661, 29.350843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833664, 33.355373, 29.366573>,  <35.594864, 33.377399, 29.376011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833664, 33.355373, 29.366573>,  <36.231667, 33.318661, 29.350843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833664, 33.355373, 29.366573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094005, -0.728279, -0.678803,
		-0.033664, -0.679107, 0.733267,
		-0.995003, 0.091782, 0.039323,
		35.535164, 33.382908, 29.378370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983494, 32.632809, 29.364258>,  <36.231667, 33.318661, 29.350843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983494, 32.632809, 29.364258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656216, 32.837185, 29.258810>,  <35.459846, 32.959808, 29.195541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656216, 32.837185, 29.258810>,  <35.983494, 32.632809, 29.364258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656216, 32.837185, 29.258810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173573, -0.656641, -0.733958,
		-0.548108, -0.554767, 0.625948,
		-0.818199, 0.510936, -0.263617,
		35.410755, 32.990467, 29.179726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378498, 32.233284, 29.377254>,  <35.983494, 32.632809, 29.364258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378498, 32.233284, 29.377254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262596, 32.530964, 29.136522>,  <35.193054, 32.709572, 28.992083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262596, 32.530964, 29.136522>,  <35.378498, 32.233284, 29.377254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262596, 32.530964, 29.136522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105705, -0.649845, -0.752681,
		-0.951244, -0.154480, 0.266965,
		-0.289759, 0.744203, -0.601832,
		35.175667, 32.754223, 28.955973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749207, 32.041859, 29.100018>,  <35.378498, 32.233284, 29.377254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749207, 32.041859, 29.100018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880455, 32.319527, 28.843748>,  <34.959206, 32.486126, 28.689987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880455, 32.319527, 28.843748>,  <34.749207, 32.041859, 29.100018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880455, 32.319527, 28.843748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347316, -0.542064, -0.765205,
		-0.878469, 0.473597, 0.063234,
		0.328122, 0.694171, -0.640674,
		34.978893, 32.527779, 28.651546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267830, 31.989109, 28.663568>,  <34.749207, 32.041859, 29.100018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267830, 31.989109, 28.663568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558872, 32.183075, 28.469479>,  <34.733498, 32.299454, 28.353025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558872, 32.183075, 28.469479>,  <34.267830, 31.989109, 28.663568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558872, 32.183075, 28.469479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210983, -0.514860, -0.830906,
		-0.652741, 0.706950, -0.272308,
		0.727609, 0.484914, -0.485225,
		34.777157, 32.328548, 28.323912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025330, 32.209957, 28.026918>,  <34.267830, 31.989109, 28.663568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025330, 32.209957, 28.026918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418056, 32.167324, 27.964090>,  <34.653694, 32.141743, 27.926394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418056, 32.167324, 27.964090>,  <34.025330, 32.209957, 28.026918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418056, 32.167324, 27.964090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189592, -0.591125, -0.783981,
		-0.009288, 0.799507, -0.600585,
		0.981819, -0.106584, -0.157071,
		34.712601, 32.135349, 27.916969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005299, 31.933058, 27.311977>,  <34.025330, 32.209957, 28.026918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005299, 31.933058, 27.311977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398632, 31.931219, 27.384678>,  <34.634632, 31.930117, 27.428299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398632, 31.931219, 27.384678>,  <34.005299, 31.933058, 27.311977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398632, 31.931219, 27.384678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148576, -0.555861, -0.817890,
		0.104787, 0.831263, -0.545914,
		0.983334, -0.004594, 0.181753,
		34.693630, 31.929840, 27.439203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399071, 32.286144, 26.767788>,  <34.005299, 31.933058, 27.311977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399071, 32.286144, 26.767788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664780, 32.030663, 26.923124>,  <34.824203, 31.877375, 27.016327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664780, 32.030663, 26.923124>,  <34.399071, 32.286144, 26.767788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664780, 32.030663, 26.923124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103568, -0.435871, -0.894030,
		0.740285, 0.634095, -0.223386,
		0.664268, -0.638702, 0.388340,
		34.864059, 31.839052, 27.039627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897942, 32.214680, 26.310654>,  <34.399071, 32.286144, 26.767788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897942, 32.214680, 26.310654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968060, 31.908098, 26.557821>,  <35.010132, 31.724150, 26.706121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968060, 31.908098, 26.557821>,  <34.897942, 32.214680, 26.310654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968060, 31.908098, 26.557821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226690, -0.579349, -0.782922,
		0.958062, 0.277320, 0.072188,
		0.175298, -0.766452, 0.617917,
		35.020649, 31.678162, 26.743196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538803, 31.931599, 26.131117>,  <34.897942, 32.214680, 26.310654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538803, 31.931599, 26.131117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344730, 31.645180, 26.331863>,  <35.228287, 31.473328, 26.452311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344730, 31.645180, 26.331863>,  <35.538803, 31.931599, 26.131117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344730, 31.645180, 26.331863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370801, -0.688271, -0.623530,
		0.791898, -0.116435, 0.599450,
		-0.485184, -0.716049, 0.501866,
		35.199177, 31.430365, 26.482424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022129, 31.328596, 26.285271>,  <35.538803, 31.931599, 26.131117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022129, 31.328596, 26.285271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643764, 31.203260, 26.318914>,  <35.416748, 31.128059, 26.339102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643764, 31.203260, 26.318914>,  <36.022129, 31.328596, 26.285271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643764, 31.203260, 26.318914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176975, -0.715633, -0.675684,
		0.271910, -0.624251, 0.732377,
		-0.945910, -0.313338, 0.084111,
		35.359993, 31.109259, 26.344147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043316, 30.626392, 26.409611>,  <36.022129, 31.328596, 26.285271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043316, 30.626392, 26.409611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672569, 30.693613, 26.275337>,  <35.450123, 30.733946, 26.194773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672569, 30.693613, 26.275337>,  <36.043316, 30.626392, 26.409611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672569, 30.693613, 26.275337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147750, -0.658730, -0.737729,
		-0.345099, -0.733371, 0.585724,
		-0.926864, 0.168049, -0.335683,
		35.394508, 30.744028, 26.174633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634403, 29.921103, 26.316681>,  <36.043316, 30.626392, 26.409611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634403, 29.921103, 26.316681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467075, 30.196522, 26.079731>,  <35.366680, 30.361774, 25.937561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467075, 30.196522, 26.079731>,  <35.634403, 29.921103, 26.316681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467075, 30.196522, 26.079731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104557, -0.611342, -0.784429,
		-0.902264, -0.390076, 0.183741,
		-0.418315, 0.688550, -0.592377,
		35.341579, 30.403088, 25.902018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113113, 29.602583, 26.012564>,  <35.634403, 29.921103, 26.316681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113113, 29.602583, 26.012564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222824, 29.906252, 25.776451>,  <35.288651, 30.088453, 25.634783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222824, 29.906252, 25.776451>,  <35.113113, 29.602583, 26.012564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222824, 29.906252, 25.776451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261425, -0.649567, -0.713947,
		-0.925435, 0.041505, -0.376627,
		0.274277, 0.759171, -0.590281,
		35.305107, 30.134003, 25.599367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791027, 29.503235, 25.298655>,  <35.113113, 29.602583, 26.012564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791027, 29.503235, 25.298655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122353, 29.724426, 25.262630>,  <35.321148, 29.857141, 25.241016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122353, 29.724426, 25.262630>,  <34.791027, 29.503235, 25.298655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122353, 29.724426, 25.262630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282814, -0.551447, -0.784807,
		-0.483646, 0.624596, -0.613161,
		0.828313, 0.552980, -0.090060,
		35.370846, 29.890320, 25.235613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809135, 29.495018, 24.622593>,  <34.791027, 29.503235, 25.298655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809135, 29.495018, 24.622593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160301, 29.659958, 24.719938>,  <35.371002, 29.758921, 24.778345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160301, 29.659958, 24.719938>,  <34.809135, 29.495018, 24.622593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160301, 29.659958, 24.719938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431451, -0.460880, -0.775525,
		-0.207625, 0.785849, -0.582524,
		0.877919, 0.412349, 0.243365,
		35.423676, 29.783663, 24.792948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081818, 30.039513, 24.084005>,  <34.809135, 29.495018, 24.622593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081818, 30.039513, 24.084005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417427, 29.934622, 24.274700>,  <35.618793, 29.871687, 24.389118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417427, 29.934622, 24.274700>,  <35.081818, 30.039513, 24.084005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417427, 29.934622, 24.274700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371231, -0.364685, -0.853928,
		0.397783, 0.893444, -0.208632,
		0.839021, -0.262228, 0.476739,
		35.669132, 29.855953, 24.417723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740543, 30.450134, 23.769991>,  <35.081818, 30.039513, 24.084005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740543, 30.450134, 23.769991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879131, 30.124289, 23.956051>,  <35.962284, 29.928782, 24.067686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879131, 30.124289, 23.956051>,  <35.740543, 30.450134, 23.769991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879131, 30.124289, 23.956051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476424, -0.274341, -0.835319,
		0.808073, 0.511017, 0.293052,
		0.346466, -0.814616, 0.465148,
		35.983070, 29.879904, 24.095594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410976, 30.379202, 23.571243>,  <35.740543, 30.450134, 23.769991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410976, 30.379202, 23.571243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318523, 30.009769, 23.693602>,  <36.263050, 29.788111, 23.767017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318523, 30.009769, 23.693602>,  <36.410976, 30.379202, 23.571243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318523, 30.009769, 23.693602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394273, -0.376354, -0.838395,
		0.889452, -0.073176, 0.451133,
		-0.231136, -0.923582, 0.305898,
		36.249184, 29.732695, 23.785372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917583, 29.971905, 23.309511>,  <36.410976, 30.379202, 23.571243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917583, 29.971905, 23.309511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622322, 29.719908, 23.406042>,  <36.445164, 29.568710, 23.463961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622322, 29.719908, 23.406042>,  <36.917583, 29.971905, 23.309511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622322, 29.719908, 23.406042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292082, -0.620891, -0.727449,
		0.608127, -0.466481, 0.642322,
		-0.738153, -0.629992, 0.241330,
		36.400875, 29.530910, 23.478441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285290, 29.364956, 23.329144>,  <36.917583, 29.971905, 23.309511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285290, 29.364956, 23.329144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904381, 29.257332, 23.271484>,  <36.675835, 29.192757, 23.236889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904381, 29.257332, 23.271484>,  <37.285290, 29.364956, 23.329144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904381, 29.257332, 23.271484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283444, -0.604205, -0.744712,
		0.113277, -0.750028, 0.651633,
		-0.952275, -0.269060, -0.144148,
		36.618698, 29.176615, 23.228239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245831, 28.646919, 23.262520>,  <37.285290, 29.364956, 23.329144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245831, 28.646919, 23.262520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925354, 28.781313, 23.064445>,  <36.733070, 28.861950, 22.945601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925354, 28.781313, 23.064445>,  <37.245831, 28.646919, 23.262520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925354, 28.781313, 23.064445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322456, -0.454691, -0.830228,
		-0.504101, -0.824845, 0.255953,
		-0.801189, 0.335985, -0.495186,
		36.684998, 28.882109, 22.915890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067844, 28.140041, 22.796757>,  <37.245831, 28.646919, 23.262520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067844, 28.140041, 22.796757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856030, 28.443007, 22.643961>,  <36.728939, 28.624784, 22.552284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856030, 28.443007, 22.643961>,  <37.067844, 28.140041, 22.796757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856030, 28.443007, 22.643961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341558, -0.221816, -0.913310,
		-0.776483, -0.614106, -0.141240,
		-0.529540, 0.757411, -0.381989,
		36.697166, 28.670229, 22.529364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802025, 27.835768, 22.243839>,  <37.067844, 28.140041, 22.796757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802025, 27.835768, 22.243839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737755, 28.222231, 22.163115>,  <36.699192, 28.454109, 22.114679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.737755, 28.222231, 22.163115>,  <36.802025, 27.835768, 22.243839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737755, 28.222231, 22.163115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195356, -0.169292, -0.966011,
		-0.967482, -0.194635, -0.161544,
		-0.160672, 0.966156, -0.201810,
		36.689552, 28.512077, 22.102571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264153, 27.752195, 21.699186>,  <36.802025, 27.835768, 22.243839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264153, 27.752195, 21.699186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468170, 28.095596, 21.677916>,  <36.590580, 28.301638, 21.665154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468170, 28.095596, 21.677916>,  <36.264153, 27.752195, 21.699186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468170, 28.095596, 21.677916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139886, -0.143789, -0.979672,
		-0.848696, 0.492239, -0.193432,
		0.510046, 0.858502, -0.053175,
		36.621185, 28.353148, 21.661963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084038, 28.304152, 21.191206>,  <36.264153, 27.752195, 21.699186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084038, 28.304152, 21.191206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472881, 28.383213, 21.241692>,  <36.706188, 28.430649, 21.271982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472881, 28.383213, 21.241692>,  <36.084038, 28.304152, 21.191206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472881, 28.383213, 21.241692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118630, 0.049801, -0.991689,
		-0.202295, 0.979006, 0.024965,
		0.972113, 0.197652, 0.126214,
		36.764515, 28.442509, 21.279556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406796, 28.984596, 20.980484>,  <36.084038, 28.304152, 21.191206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406796, 28.984596, 20.980484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636471, 28.660925, 20.930618>,  <36.774277, 28.466722, 20.900700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636471, 28.660925, 20.930618>,  <36.406796, 28.984596, 20.980484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636471, 28.660925, 20.930618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255560, 0.321797, -0.911666,
		0.777815, 0.491610, 0.391565,
		0.574189, -0.809177, -0.124662,
		36.808727, 28.418173, 20.893219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162960, 29.125603, 20.731943>,  <36.406796, 28.984596, 20.980484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162960, 29.125603, 20.731943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024506, 28.772856, 20.603884>,  <36.941433, 28.561207, 20.527048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024506, 28.772856, 20.603884>,  <37.162960, 29.125603, 20.731943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024506, 28.772856, 20.603884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320915, 0.209367, -0.923677,
		0.881591, -0.422461, 0.210535,
		-0.346138, -0.881869, -0.320150,
		36.920666, 28.508295, 20.507839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545357, 28.846230, 20.161438>,  <37.162960, 29.125603, 20.731943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545357, 28.846230, 20.161438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207008, 28.634769, 20.133081>,  <37.003998, 28.507893, 20.116068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207008, 28.634769, 20.133081>,  <37.545357, 28.846230, 20.161438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207008, 28.634769, 20.133081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076208, 0.011762, -0.997023,
		0.527911, -0.848758, 0.030338,
		-0.845874, -0.528651, -0.070891,
		36.953247, 28.476173, 20.111814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619724, 28.364538, 19.507124>,  <37.545357, 28.846230, 20.161438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619724, 28.364538, 19.507124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233204, 28.465908, 19.525143>,  <37.001289, 28.526730, 19.535954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233204, 28.465908, 19.525143>,  <37.619724, 28.364538, 19.507124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233204, 28.465908, 19.525143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014615, 0.120715, -0.992580,
		-0.256983, -0.959794, -0.112944,
		-0.966305, 0.253425, 0.045049,
		36.943314, 28.541935, 19.538658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057072, 28.916456, 19.493465>,  <37.619724, 28.364538, 19.507124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057072, 28.916456, 19.493465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027180, 29.218971, 19.233482>,  <38.009247, 29.400480, 19.077494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027180, 29.218971, 19.233482>,  <38.057072, 28.916456, 19.493465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027180, 29.218971, 19.233482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007431, 0.652183, 0.758026,
		0.997176, 0.051816, -0.054356,
		-0.074728, 0.756289, -0.649956,
		38.004761, 29.445858, 19.038496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553909, 29.452486, 19.655643>,  <38.057072, 28.916456, 19.493465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553909, 29.452486, 19.655643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234875, 29.610172, 19.473017>,  <38.043453, 29.704784, 19.363440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234875, 29.610172, 19.473017>,  <38.553909, 29.452486, 19.655643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234875, 29.610172, 19.473017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091274, 0.669312, 0.737354,
		0.596264, 0.629774, -0.497850,
		-0.797583, 0.394216, -0.456569,
		37.995602, 29.728437, 19.336046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521786, 30.272881, 19.659849>,  <38.553909, 29.452486, 19.655643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521786, 30.272881, 19.659849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134258, 30.220215, 19.575884>,  <37.901741, 30.188616, 19.525505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134258, 30.220215, 19.575884>,  <38.521786, 30.272881, 19.659849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134258, 30.220215, 19.575884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247706, 0.536548, 0.806696,
		0.006418, 0.833535, -0.552429,
		-0.968814, -0.131663, -0.209915,
		37.843613, 30.180716, 19.512909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335537, 30.879082, 19.662544>,  <38.521786, 30.272881, 19.659849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335537, 30.879082, 19.662544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009434, 30.659672, 19.736820>,  <37.813774, 30.528027, 19.781385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009434, 30.659672, 19.736820>,  <38.335537, 30.879082, 19.662544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009434, 30.659672, 19.736820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266934, 0.640498, 0.720076,
		-0.513913, 0.537478, -0.668588,
		-0.815254, -0.548525, 0.185689,
		37.764858, 30.495113, 19.792526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661835, 31.284241, 19.492464>,  <38.335537, 30.879082, 19.662544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661835, 31.284241, 19.492464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652546, 31.015884, 19.788940>,  <37.646973, 30.854870, 19.966825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652546, 31.015884, 19.788940>,  <37.661835, 31.284241, 19.492464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652546, 31.015884, 19.788940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235310, 0.724230, 0.648167,
		-0.971643, -0.159356, -0.174688,
		-0.023225, -0.670892, 0.741191,
		37.645580, 30.814617, 20.011297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626923, 31.637817, 20.102175>,  <37.661835, 31.284241, 19.492464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626923, 31.637817, 20.102175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607311, 31.280256, 20.280403>,  <37.595543, 31.065720, 20.387341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607311, 31.280256, 20.280403>,  <37.626923, 31.637817, 20.102175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607311, 31.280256, 20.280403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077042, 0.448165, 0.890625,
		-0.995821, 0.009342, -0.090842,
		-0.049032, -0.893902, 0.445572,
		37.592602, 31.012085, 20.414074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018627, 31.661444, 20.564747>,  <37.626923, 31.637817, 20.102175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018627, 31.661444, 20.564747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252682, 31.384911, 20.734301>,  <37.393116, 31.218990, 20.836033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252682, 31.384911, 20.734301>,  <37.018627, 31.661444, 20.564747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252682, 31.384911, 20.734301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352537, 0.253876, 0.900702,
		-0.730298, -0.676467, -0.095168,
		0.585135, -0.691331, 0.423884,
		37.428223, 31.177511, 20.861465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537613, 31.417841, 21.139515>,  <37.018627, 31.661444, 20.564747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537613, 31.417841, 21.139515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913155, 31.310360, 21.225628>,  <37.138481, 31.245871, 21.277296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913155, 31.310360, 21.225628>,  <36.537613, 31.417841, 21.139515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913155, 31.310360, 21.225628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156001, 0.225423, 0.961690,
		-0.306939, -0.936474, 0.169722,
		0.938857, -0.268703, 0.215282,
		37.194813, 31.229750, 21.290213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414242, 30.989582, 21.703341>,  <36.537613, 31.417841, 21.139515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414242, 30.989582, 21.703341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801434, 31.088238, 21.722036>,  <37.033749, 31.147430, 21.733253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801434, 31.088238, 21.722036>,  <36.414242, 30.989582, 21.703341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801434, 31.088238, 21.722036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083849, 0.142183, 0.986283,
		0.236612, -0.958620, 0.158311,
		0.967979, 0.246640, 0.046738,
		37.091827, 31.162230, 21.736057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533024, 30.786549, 22.416094>,  <36.414242, 30.989582, 21.703341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533024, 30.786549, 22.416094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863407, 30.986242, 22.311354>,  <37.061638, 31.106058, 22.248510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863407, 30.986242, 22.311354>,  <36.533024, 30.786549, 22.416094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863407, 30.986242, 22.311354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018599, 0.440103, 0.897754,
		0.563431, -0.746374, 0.354219,
		0.825953, 0.499235, -0.261850,
		37.111195, 31.136013, 22.232800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106529, 30.642702, 22.864618>,  <36.533024, 30.786549, 22.416094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106529, 30.642702, 22.864618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179348, 31.006668, 22.715534>,  <37.223038, 31.225048, 22.626083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179348, 31.006668, 22.715534>,  <37.106529, 30.642702, 22.864618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179348, 31.006668, 22.715534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205596, 0.335443, 0.919352,
		0.961556, -0.243991, -0.126009,
		0.182045, 0.909916, -0.372710,
		37.233963, 31.279642, 22.603722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706909, 30.880285, 23.144400>,  <37.106529, 30.642702, 22.864618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706909, 30.880285, 23.144400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494003, 31.193441, 23.015541>,  <37.366261, 31.381336, 22.938227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494003, 31.193441, 23.015541>,  <37.706909, 30.880285, 23.144400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494003, 31.193441, 23.015541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139340, 0.456353, 0.878821,
		0.835034, 0.422875, -0.351987,
		-0.532262, 0.782891, -0.322147,
		37.334324, 31.428308, 22.918898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060642, 31.449884, 23.460451>,  <37.706909, 30.880285, 23.144400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060642, 31.449884, 23.460451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693832, 31.595852, 23.396070>,  <37.473747, 31.683432, 23.357443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693832, 31.595852, 23.396070>,  <38.060642, 31.449884, 23.460451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693832, 31.595852, 23.396070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099981, 0.600997, 0.792973,
		0.386101, 0.711082, -0.587613,
		-0.917022, 0.364917, -0.160951,
		37.418724, 31.705328, 23.347786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112358, 32.238083, 23.442163>,  <38.060642, 31.449884, 23.460451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112358, 32.238083, 23.442163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725426, 32.168648, 23.516066>,  <37.493267, 32.126987, 23.560406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725426, 32.168648, 23.516066>,  <38.112358, 32.238083, 23.442163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725426, 32.168648, 23.516066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011394, 0.698286, 0.715728,
		-0.253250, 0.694453, -0.673498,
		-0.967334, -0.173584, 0.184754,
		37.435226, 32.116573, 23.571491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786926, 32.878094, 23.599392>,  <38.112358, 32.238083, 23.442163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786926, 32.878094, 23.599392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516197, 32.626644, 23.752617>,  <37.353760, 32.475773, 23.844551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516197, 32.626644, 23.752617>,  <37.786926, 32.878094, 23.599392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516197, 32.626644, 23.752617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146789, 0.625163, 0.766567,
		-0.721359, 0.462604, -0.515402,
		-0.676827, -0.628625, 0.383062,
		37.313148, 32.438057, 23.867535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170387, 33.238800, 23.725647>,  <37.786926, 32.878094, 23.599392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170387, 33.238800, 23.725647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122181, 32.910172, 23.948536>,  <37.093258, 32.712994, 24.082270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122181, 32.910172, 23.948536>,  <37.170387, 33.238800, 23.725647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122181, 32.910172, 23.948536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146714, 0.569890, 0.808517,
		-0.981809, 0.015691, -0.189219,
		-0.120520, -0.821571, 0.557221,
		37.086025, 32.663700, 24.115702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529099, 33.297466, 24.039732>,  <37.170387, 33.238800, 23.725647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529099, 33.297466, 24.039732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692551, 33.028805, 24.286924>,  <36.790623, 32.867607, 24.435240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692551, 33.028805, 24.286924>,  <36.529099, 33.297466, 24.039732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692551, 33.028805, 24.286924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347035, 0.511898, 0.785829,
		-0.844149, -0.535576, -0.023909,
		0.408632, -0.671654, 0.617982,
		36.815140, 32.827309, 24.472319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014133, 33.220619, 24.656544>,  <36.529099, 33.297466, 24.039732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014133, 33.220619, 24.656544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356125, 33.065895, 24.794754>,  <36.561321, 32.973061, 24.877680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356125, 33.065895, 24.794754>,  <36.014133, 33.220619, 24.656544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356125, 33.065895, 24.794754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132069, 0.481861, 0.866238,
		-0.501565, -0.786249, 0.360895,
		0.854980, -0.386811, 0.345524,
		36.612617, 32.949852, 24.898411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908638, 32.861423, 25.339117>,  <36.014133, 33.220619, 24.656544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908638, 32.861423, 25.339117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288040, 32.987919, 25.331812>,  <36.515682, 33.063816, 25.327429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288040, 32.987919, 25.331812>,  <35.908638, 32.861423, 25.339117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288040, 32.987919, 25.331812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069409, 0.263745, 0.962092,
		0.309069, -0.911280, 0.272113,
		0.948504, 0.316240, -0.018265,
		36.572590, 33.082790, 25.326332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148411, 32.815014, 26.045227>,  <35.908638, 32.861423, 25.339117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148411, 32.815014, 26.045227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422859, 33.057938, 25.885017>,  <36.587528, 33.203690, 25.788891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422859, 33.057938, 25.885017>,  <36.148411, 32.815014, 26.045227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422859, 33.057938, 25.885017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032500, 0.524420, 0.850839,
		0.726764, -0.596794, 0.340077,
		0.686119, 0.607307, -0.400525,
		36.628696, 33.240131, 25.764860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743526, 32.749714, 26.449532>,  <36.148411, 32.815014, 26.045227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743526, 32.749714, 26.449532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732288, 33.110023, 26.276184>,  <36.725548, 33.326210, 26.172176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732288, 33.110023, 26.276184>,  <36.743526, 32.749714, 26.449532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732288, 33.110023, 26.276184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070972, 0.434243, 0.897995,
		0.997083, -0.005530, -0.076130,
		-0.028093, 0.900779, -0.433369,
		36.723862, 33.380257, 26.146173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211224, 33.224590, 26.873764>,  <36.743526, 32.749714, 26.449532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211224, 33.224590, 26.873764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013229, 33.499718, 26.661388>,  <36.894432, 33.664795, 26.533962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013229, 33.499718, 26.661388>,  <37.211224, 33.224590, 26.873764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013229, 33.499718, 26.661388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166007, 0.674652, 0.719226,
		0.852896, 0.267867, -0.448125,
		-0.494985, 0.687817, -0.530940,
		36.864735, 33.706062, 26.502106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463951, 33.862732, 26.983751>,  <37.211224, 33.224590, 26.873764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463951, 33.862732, 26.983751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123795, 34.013824, 26.837238>,  <36.919701, 34.104481, 26.749331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123795, 34.013824, 26.837238>,  <37.463951, 33.862732, 26.983751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123795, 34.013824, 26.837238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108007, 0.806641, 0.581089,
		0.514953, 0.454589, -0.726755,
		-0.850387, 0.377728, -0.366283,
		36.868679, 34.127144, 26.727354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564896, 34.643803, 26.908371>,  <37.463951, 33.862732, 26.983751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564896, 34.643803, 26.908371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168320, 34.592628, 26.897978>,  <36.930374, 34.561924, 26.891743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.168320, 34.592628, 26.897978>,  <37.564896, 34.643803, 26.908371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168320, 34.592628, 26.897978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126330, 0.890079, 0.437949,
		-0.032903, 0.437484, -0.898624,
		-0.991442, -0.127933, -0.025981,
		36.870888, 34.554249, 26.890182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312939, 35.266697, 26.771280>,  <37.564896, 34.643803, 26.908371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312939, 35.266697, 26.771280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002419, 35.091049, 26.952185>,  <36.816109, 34.985661, 27.060726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002419, 35.091049, 26.952185>,  <37.312939, 35.266697, 26.771280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002419, 35.091049, 26.952185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130065, 0.813592, 0.566702,
		-0.616804, 0.381106, -0.688703,
		-0.776296, -0.439120, 0.452259,
		36.769531, 34.959312, 27.087862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699421, 35.646347, 26.676418>,  <37.312939, 35.266697, 26.771280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699421, 35.646347, 26.676418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628696, 35.460041, 27.023245>,  <36.586262, 35.348259, 27.231340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628696, 35.460041, 27.023245>,  <36.699421, 35.646347, 26.676418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628696, 35.460041, 27.023245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067762, 0.884616, 0.461370,
		-0.981910, 0.022820, -0.187969,
		-0.176809, -0.465761, 0.867067,
		36.575653, 35.320312, 27.283365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188046, 36.112709, 26.933937>,  <36.699421, 35.646347, 26.676418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188046, 36.112709, 26.933937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320553, 35.911507, 27.253248>,  <36.400055, 35.790783, 27.444834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320553, 35.911507, 27.253248>,  <36.188046, 36.112709, 26.933937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320553, 35.911507, 27.253248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216571, 0.782923, 0.583206,
		-0.918347, -0.366079, 0.150417,
		0.331265, -0.503009, 0.798277,
		36.419933, 35.760605, 27.492731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590282, 36.171349, 27.418396>,  <36.188046, 36.112709, 26.933937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590282, 36.171349, 27.418396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914211, 36.078396, 27.633873>,  <36.108566, 36.022625, 27.763159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914211, 36.078396, 27.633873>,  <35.590282, 36.171349, 27.418396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914211, 36.078396, 27.633873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180691, 0.774785, 0.605854,
		-0.558160, -0.587970, 0.585448,
		0.809820, -0.232378, 0.538695,
		36.157158, 36.008682, 27.795481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415913, 36.194839, 28.162399>,  <35.590282, 36.171349, 27.418396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415913, 36.194839, 28.162399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815899, 36.191792, 28.161137>,  <36.055889, 36.189964, 28.160379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815899, 36.191792, 28.161137>,  <35.415913, 36.194839, 28.162399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815899, 36.191792, 28.161137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006333, 0.464512, 0.885544,
		-0.005280, -0.885534, 0.464545,
		0.999966, -0.007618, -0.003155,
		36.115891, 36.189507, 28.160191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605740, 35.959808, 28.814465>,  <35.415913, 36.194839, 28.162399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605740, 35.959808, 28.814465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935658, 36.160557, 28.710278>,  <36.133610, 36.281006, 28.647764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935658, 36.160557, 28.710278>,  <35.605740, 35.959808, 28.814465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935658, 36.160557, 28.710278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057177, 0.384264, 0.921451,
		0.562537, -0.774899, 0.288243,
		0.824793, 0.501869, -0.260469,
		36.183094, 36.311119, 28.632137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137058, 35.873844, 29.402887>,  <35.605740, 35.959808, 28.814465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137058, 35.873844, 29.402887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236862, 36.201656, 29.196541>,  <36.296745, 36.398342, 29.072733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236862, 36.201656, 29.196541>,  <36.137058, 35.873844, 29.402887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236862, 36.201656, 29.196541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116759, 0.503368, 0.856147,
		0.961306, -0.273853, 0.029910,
		0.249514, 0.819527, -0.515866,
		36.311718, 36.447514, 29.041780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674313, 36.227562, 29.693972>,  <36.137058, 35.873844, 29.402887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674313, 36.227562, 29.693972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527588, 36.537693, 29.488323>,  <36.439552, 36.723770, 29.364933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527588, 36.537693, 29.488323>,  <36.674313, 36.227562, 29.693972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527588, 36.537693, 29.488323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020450, 0.545791, 0.837672,
		0.930072, 0.317778, -0.184345,
		-0.366808, 0.775325, -0.514123,
		36.417545, 36.770290, 29.334085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039913, 36.762035, 29.853443>,  <36.674313, 36.227562, 29.693972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039913, 36.762035, 29.853443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703049, 36.936470, 29.726582>,  <36.500931, 37.041130, 29.650465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703049, 36.936470, 29.726582>,  <37.039913, 36.762035, 29.853443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703049, 36.936470, 29.726582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048777, 0.647373, 0.760611,
		0.537011, 0.625089, -0.566466,
		-0.842164, 0.436087, -0.317156,
		36.450401, 37.067295, 29.631435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173466, 37.417110, 29.840710>,  <37.039913, 36.762035, 29.853443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173466, 37.417110, 29.840710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774071, 37.404816, 29.858927>,  <36.534431, 37.397438, 29.869858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.774071, 37.404816, 29.858927>,  <37.173466, 37.417110, 29.840710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774071, 37.404816, 29.858927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015611, 0.636020, 0.771515,
		-0.052680, 0.771060, -0.634579,
		-0.998489, -0.030737, 0.045542,
		36.474525, 37.395596, 29.872589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976955, 38.164131, 29.854176>,  <37.173466, 37.417110, 29.840710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976955, 38.164131, 29.854176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685493, 37.951031, 30.026329>,  <36.510616, 37.823170, 30.129622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685493, 37.951031, 30.026329>,  <36.976955, 38.164131, 29.854176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685493, 37.951031, 30.026329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186497, 0.759007, 0.623800,
		-0.658996, 0.374273, -0.652414,
		-0.728658, -0.532755, 0.430382,
		36.466896, 37.791203, 30.155443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645401, 38.632614, 30.169373>,  <36.976955, 38.164131, 29.854176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645401, 38.632614, 30.169373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429806, 38.332821, 30.323135>,  <36.300449, 38.152946, 30.415392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429806, 38.332821, 30.323135>,  <36.645401, 38.632614, 30.169373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429806, 38.332821, 30.323135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253597, 0.579584, 0.774449,
		-0.803232, 0.319935, -0.502455,
		-0.538988, -0.749483, 0.384405,
		36.268108, 38.107975, 30.438457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017349, 38.962612, 30.421467>,  <36.645401, 38.632614, 30.169373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017349, 38.962612, 30.421467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015553, 38.599133, 30.588436>,  <36.014473, 38.381042, 30.688618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015553, 38.599133, 30.588436>,  <36.017349, 38.962612, 30.421467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015553, 38.599133, 30.588436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258966, 0.404245, 0.877224,
		-0.965876, -0.104157, -0.237139,
		-0.004493, -0.908701, 0.417424,
		36.014206, 38.326523, 30.713663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355324, 38.820168, 30.658106>,  <36.017349, 38.962612, 30.421467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355324, 38.820168, 30.658106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608532, 38.606609, 30.882334>,  <35.760456, 38.478474, 31.016870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608532, 38.606609, 30.882334>,  <35.355324, 38.820168, 30.658106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608532, 38.606609, 30.882334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227495, 0.563854, 0.793923,
		-0.739955, -0.630095, 0.235471,
		0.633019, -0.533898, 0.560570,
		35.798439, 38.446442, 31.050505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098042, 38.525635, 31.311600>,  <35.355324, 38.820168, 30.658106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098042, 38.525635, 31.311600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483761, 38.495201, 31.413061>,  <35.715191, 38.476940, 31.473938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483761, 38.495201, 31.413061>,  <35.098042, 38.525635, 31.311600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483761, 38.495201, 31.413061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152509, 0.623497, 0.766806,
		-0.216494, -0.778115, 0.589633,
		0.964298, -0.076085, 0.253653,
		35.773052, 38.472374, 31.489157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223404, 38.350075, 32.024658>,  <35.098042, 38.525635, 31.311600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223404, 38.350075, 32.024658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574032, 38.517445, 31.929544>,  <35.784409, 38.617867, 31.872477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574032, 38.517445, 31.929544>,  <35.223404, 38.350075, 32.024658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574032, 38.517445, 31.929544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035066, 0.548289, 0.835553,
		0.479988, -0.724087, 0.495288,
		0.876574, 0.418423, -0.237782,
		35.837006, 38.642971, 31.858210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483459, 38.475422, 32.672104>,  <35.223404, 38.350075, 32.024658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483459, 38.475422, 32.672104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674416, 38.706104, 32.406925>,  <35.788990, 38.844513, 32.247818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674416, 38.706104, 32.406925>,  <35.483459, 38.475422, 32.672104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674416, 38.706104, 32.406925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072155, 0.777657, 0.624535,
		0.875722, -0.250314, 0.412860,
		0.477393, 0.576709, -0.662950,
		35.817635, 38.879116, 32.208042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951679, 38.740704, 33.037003>,  <35.483459, 38.475422, 32.672104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951679, 38.740704, 33.037003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909874, 38.990501, 32.727402>,  <35.884789, 39.140381, 32.541641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909874, 38.990501, 32.727402>,  <35.951679, 38.740704, 33.037003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909874, 38.990501, 32.727402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137910, 0.761644, 0.633150,
		0.984915, 0.172917, 0.006521,
		-0.104516, 0.624498, -0.774001,
		35.878521, 39.177853, 32.495201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395176, 39.261292, 33.164795>,  <35.951679, 38.740704, 33.037003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395176, 39.261292, 33.164795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146011, 39.407085, 32.887917>,  <35.996513, 39.494560, 32.721790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146011, 39.407085, 32.887917>,  <36.395176, 39.261292, 33.164795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146011, 39.407085, 32.887917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103097, 0.838863, 0.534490,
		0.775466, 0.404305, -0.484964,
		-0.622915, 0.364481, -0.692193,
		35.959137, 39.516430, 32.680260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653896, 39.933945, 32.988777>,  <36.395176, 39.261292, 33.164795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653896, 39.933945, 32.988777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263779, 39.903442, 32.905846>,  <36.029709, 39.885143, 32.856087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.263779, 39.903442, 32.905846>,  <36.653896, 39.933945, 32.988777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263779, 39.903442, 32.905846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182655, 0.806226, 0.562705,
		0.124247, 0.586673, -0.800235,
		-0.975295, -0.076252, -0.207330,
		35.971191, 39.880566, 32.843647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288353, 39.757790, 32.729740>,  <36.653896, 39.933945, 32.988777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288353, 39.757790, 32.729740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649940, 39.860279, 32.592812>,  <37.866894, 39.921772, 32.510654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649940, 39.860279, 32.592812>,  <37.288353, 39.757790, 32.729740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649940, 39.860279, 32.592812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038578, -0.846181, -0.531497,
		-0.425846, 0.467253, -0.774810,
		0.903973, 0.256226, -0.342317,
		37.921131, 39.937145, 32.490116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290173, 39.622452, 31.947556>,  <37.288353, 39.757790, 32.729740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290173, 39.622452, 31.947556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675808, 39.679028, 32.037468>,  <37.907188, 39.712975, 32.091415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.675808, 39.679028, 32.037468>,  <37.290173, 39.622452, 31.947556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675808, 39.679028, 32.037468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256686, -0.713453, -0.651995,
		0.068152, 0.686280, -0.724138,
		0.964089, 0.141441, 0.224781,
		37.965034, 39.721458, 32.104900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619099, 39.747929, 31.291943>,  <37.290173, 39.622452, 31.947556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619099, 39.747929, 31.291943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873642, 39.590672, 31.557421>,  <38.026367, 39.496319, 31.716707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873642, 39.590672, 31.557421>,  <37.619099, 39.747929, 31.291943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873642, 39.590672, 31.557421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363113, -0.606436, -0.707379,
		0.680585, 0.691143, -0.243157,
		0.636359, -0.393138, 0.663694,
		38.064548, 39.472729, 31.756529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116169, 39.647743, 30.878119>,  <37.619099, 39.747929, 31.291943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116169, 39.647743, 30.878119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188770, 39.395481, 31.179934>,  <38.232330, 39.244122, 31.361023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188770, 39.395481, 31.179934>,  <38.116169, 39.647743, 30.878119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188770, 39.395481, 31.179934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448478, -0.629762, -0.634246,
		0.875172, 0.453509, 0.168535,
		0.181499, -0.630658, 0.754538,
		38.243221, 39.206284, 31.406296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839485, 39.496078, 30.801323>,  <38.116169, 39.647743, 30.878119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839485, 39.496078, 30.801323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704193, 39.181732, 31.008402>,  <38.623016, 38.993122, 31.132648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704193, 39.181732, 31.008402>,  <38.839485, 39.496078, 30.801323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704193, 39.181732, 31.008402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412411, -0.618261, -0.669082,
		0.845883, -0.012799, 0.533215,
		-0.338230, -0.785869, 0.517698,
		38.602726, 38.945972, 31.163712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399391, 39.030525, 30.780136>,  <38.839485, 39.496078, 30.801323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399391, 39.030525, 30.780136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091209, 38.802883, 30.895041>,  <38.906300, 38.666298, 30.963984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091209, 38.802883, 30.895041>,  <39.399391, 39.030525, 30.780136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091209, 38.802883, 30.895041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366910, -0.764358, -0.530221,
		0.521320, -0.303114, 0.797714,
		-0.770457, -0.569104, 0.287259,
		38.860073, 38.632153, 30.981218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669807, 38.452946, 30.962538>,  <39.399391, 39.030525, 30.780136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669807, 38.452946, 30.962538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292164, 38.384937, 30.849583>,  <39.065578, 38.344131, 30.781809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.292164, 38.384937, 30.849583>,  <39.669807, 38.452946, 30.962538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292164, 38.384937, 30.849583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301341, -0.792382, -0.530400,
		-0.133581, -0.585853, 0.799333,
		-0.944113, -0.170020, -0.282388,
		39.008930, 38.333931, 30.764866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734196, 37.761143, 30.864744>,  <39.669807, 38.452946, 30.962538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734196, 37.761143, 30.864744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394196, 37.878948, 30.690037>,  <39.190197, 37.949631, 30.585213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394196, 37.878948, 30.690037>,  <39.734196, 37.761143, 30.864744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394196, 37.878948, 30.690037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090311, -0.735376, -0.671615,
		-0.518986, -0.610317, 0.598471,
		-0.849998, 0.294510, -0.436768,
		39.139194, 37.967300, 30.559006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300255, 37.188568, 30.740868>,  <39.734196, 37.761143, 30.864744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300255, 37.188568, 30.740868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156082, 37.456322, 30.481020>,  <39.069576, 37.616974, 30.325111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156082, 37.456322, 30.481020>,  <39.300255, 37.188568, 30.740868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156082, 37.456322, 30.481020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150769, -0.729083, -0.667613,
		-0.920519, -0.142688, 0.363710,
		-0.360435, 0.669387, -0.649621,
		39.047951, 37.657139, 30.286133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822712, 36.926735, 30.275692>,  <39.300255, 37.188568, 30.740868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822712, 36.926735, 30.275692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899994, 37.245880, 30.047276>,  <38.946365, 37.437366, 29.910227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899994, 37.245880, 30.047276>,  <38.822712, 36.926735, 30.275692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899994, 37.245880, 30.047276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073665, -0.592159, -0.802447,
		-0.978389, 0.112974, -0.173184,
		0.193208, 0.797863, -0.571039,
		38.957958, 37.485237, 29.875963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412380, 36.810188, 29.814535>,  <38.822712, 36.926735, 30.275692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412380, 36.810188, 29.814535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709846, 37.026424, 29.657198>,  <38.888329, 37.156166, 29.562796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709846, 37.026424, 29.657198>,  <38.412380, 36.810188, 29.814535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709846, 37.026424, 29.657198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056651, -0.535287, -0.842768,
		-0.666142, 0.649025, -0.367453,
		0.743670, 0.540587, -0.393345,
		38.932949, 37.188599, 29.539194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239044, 36.971745, 29.197195>,  <38.412380, 36.810188, 29.814535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239044, 36.971745, 29.197195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638630, 36.985718, 29.185577>,  <38.878384, 36.994102, 29.178608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638630, 36.985718, 29.185577>,  <38.239044, 36.971745, 29.197195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638630, 36.985718, 29.185577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000060, -0.640324, -0.768105,
		-0.045428, 0.767310, -0.639665,
		0.998968, 0.034932, -0.029043,
		38.938320, 36.996197, 29.176865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443089, 37.340843, 28.605881>,  <38.239044, 36.971745, 29.197195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443089, 37.340843, 28.605881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776787, 37.145901, 28.709042>,  <38.977005, 37.028934, 28.770939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.776787, 37.145901, 28.709042>,  <38.443089, 37.340843, 28.605881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776787, 37.145901, 28.709042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056160, -0.390197, -0.919017,
		0.548522, 0.781172, -0.298151,
		0.834248, -0.487357, 0.257902,
		39.027061, 36.999695, 28.786413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001675, 37.518406, 28.093185>,  <38.443089, 37.340843, 28.605881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001675, 37.518406, 28.093185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088604, 37.167595, 28.264572>,  <39.140762, 36.957108, 28.367405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088604, 37.167595, 28.264572>,  <39.001675, 37.518406, 28.093185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088604, 37.167595, 28.264572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134294, -0.407921, -0.903087,
		0.966818, 0.253802, 0.029130,
		0.217322, -0.877032, 0.428469,
		39.153801, 36.904484, 28.393112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636703, 37.249039, 27.782393>,  <39.001675, 37.518406, 28.093185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636703, 37.249039, 27.782393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510967, 36.917175, 27.966936>,  <39.435524, 36.718056, 28.077662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510967, 36.917175, 27.966936>,  <39.636703, 37.249039, 27.782393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510967, 36.917175, 27.966936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095757, -0.511225, -0.854096,
		0.944468, -0.224299, 0.240145,
		-0.314341, -0.829662, 0.461357,
		39.416664, 36.668278, 28.105343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169754, 36.680454, 27.608068>,  <39.636703, 37.249039, 27.782393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169754, 36.680454, 27.608068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835213, 36.495388, 27.725685>,  <39.634487, 36.384346, 27.796255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835213, 36.495388, 27.725685>,  <40.169754, 36.680454, 27.608068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835213, 36.495388, 27.725685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218457, -0.773232, -0.595307,
		0.502790, -0.433649, 0.747764,
		-0.836348, -0.462668, 0.294040,
		39.584309, 36.356586, 27.813896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362892, 35.961197, 27.810518>,  <40.169754, 36.680454, 27.608068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362892, 35.961197, 27.810518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968773, 35.939808, 27.745611>,  <39.732300, 35.926975, 27.706667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968773, 35.939808, 27.745611>,  <40.362892, 35.961197, 27.810518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968773, 35.939808, 27.745611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140565, -0.793575, -0.592013,
		-0.097115, -0.606118, 0.789424,
		-0.985297, -0.053471, -0.162267,
		39.673183, 35.923767, 27.696932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153343, 35.252911, 27.874842>,  <40.362892, 35.961197, 27.810518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153343, 35.252911, 27.874842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851921, 35.433537, 27.683743>,  <39.671066, 35.541912, 27.569082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851921, 35.433537, 27.683743>,  <40.153343, 35.252911, 27.874842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851921, 35.433537, 27.683743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080682, -0.784779, -0.614501,
		-0.652413, -0.424516, 0.627808,
		-0.753556, 0.451561, -0.477749,
		39.625854, 35.569004, 27.540417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562267, 34.755230, 27.827070>,  <40.153343, 35.252911, 27.874842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562267, 34.755230, 27.827070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498138, 35.035450, 27.548923>,  <39.459663, 35.203583, 27.382036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.498138, 35.035450, 27.548923>,  <39.562267, 34.755230, 27.827070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498138, 35.035450, 27.548923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103560, -0.688651, -0.717659,
		-0.981618, -0.187067, 0.037856,
		-0.160320, 0.700547, -0.695365,
		39.450043, 35.245613, 27.340315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039017, 34.444298, 27.356493>,  <39.562267, 34.755230, 27.827070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039017, 34.444298, 27.356493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251751, 34.728374, 27.171976>,  <39.379391, 34.898819, 27.061266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251751, 34.728374, 27.171976>,  <39.039017, 34.444298, 27.356493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251751, 34.728374, 27.171976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196706, -0.633413, -0.748394,
		-0.823688, 0.307281, -0.476568,
		0.531832, 0.710187, -0.461291,
		39.411301, 34.941429, 27.033588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815689, 34.485561, 26.724398>,  <39.039017, 34.444298, 27.356493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815689, 34.485561, 26.724398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178940, 34.647522, 26.681757>,  <39.396889, 34.744698, 26.656174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178940, 34.647522, 26.681757>,  <38.815689, 34.485561, 26.724398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178940, 34.647522, 26.681757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205970, -0.653667, -0.728214,
		-0.364539, 0.639352, -0.677009,
		0.908123, 0.404906, -0.106599,
		39.451378, 34.768993, 26.649776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869747, 34.718952, 26.048763>,  <38.815689, 34.485561, 26.724398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869747, 34.718952, 26.048763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216148, 34.610123, 26.216579>,  <39.423988, 34.544823, 26.317268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216148, 34.610123, 26.216579>,  <38.869747, 34.718952, 26.048763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216148, 34.610123, 26.216579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142613, -0.669776, -0.728740,
		0.479270, 0.690923, -0.541226,
		0.866003, -0.272078, 0.419538,
		39.475948, 34.528500, 26.342442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320950, 34.635563, 25.490305>,  <38.869747, 34.718952, 26.048763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320950, 34.635563, 25.490305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419834, 34.416000, 25.809702>,  <39.479164, 34.284264, 26.001341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419834, 34.416000, 25.809702>,  <39.320950, 34.635563, 25.490305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419834, 34.416000, 25.809702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030107, -0.828025, -0.559882,
		0.968494, 0.114367, -0.221221,
		0.247209, -0.548903, 0.798495,
		39.493996, 34.251331, 26.049250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825016, 34.140667, 25.223269>,  <39.320950, 34.635563, 25.490305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825016, 34.140667, 25.223269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681499, 33.979118, 25.559877>,  <39.595390, 33.882191, 25.761843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681499, 33.979118, 25.559877>,  <39.825016, 34.140667, 25.223269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681499, 33.979118, 25.559877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030015, -0.896092, -0.442853,
		0.932936, -0.184149, 0.309385,
		-0.358788, -0.403867, 0.841524,
		39.573864, 33.857960, 25.812334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100128, 33.484196, 25.208181>,  <39.825016, 34.140667, 25.223269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100128, 33.484196, 25.208181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813065, 33.441822, 25.483500>,  <39.640827, 33.416397, 25.648691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.813065, 33.441822, 25.483500>,  <40.100128, 33.484196, 25.208181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813065, 33.441822, 25.483500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079231, -0.969525, -0.231826,
		0.691877, -0.220906, 0.687391,
		-0.717655, -0.105932, 0.688295,
		39.597767, 33.410042, 25.689987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309677, 32.846416, 25.529776>,  <40.100128, 33.484196, 25.208181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309677, 32.846416, 25.529776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919197, 32.918907, 25.577438>,  <39.684910, 32.962402, 25.606035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919197, 32.918907, 25.577438>,  <40.309677, 32.846416, 25.529776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919197, 32.918907, 25.577438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210031, -0.926972, -0.310823,
		0.054126, -0.328450, 0.942969,
		-0.976195, 0.181229, 0.119158,
		39.626339, 32.973274, 25.613186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153580, 32.414967, 26.040886>,  <40.309677, 32.846416, 25.529776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153580, 32.414967, 26.040886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807148, 32.496651, 25.858366>,  <39.599289, 32.545662, 25.748854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.807148, 32.496651, 25.858366>,  <40.153580, 32.414967, 26.040886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807148, 32.496651, 25.858366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144738, -0.976100, -0.162109,
		-0.478500, -0.074355, 0.874934,
		-0.866076, 0.204206, -0.456302,
		39.547325, 32.557911, 25.721476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673634, 31.884380, 26.215792>,  <40.153580, 32.414967, 26.040886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673634, 31.884380, 26.215792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500137, 32.026695, 25.884665>,  <39.396042, 32.112083, 25.685987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500137, 32.026695, 25.884665>,  <39.673634, 31.884380, 26.215792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500137, 32.026695, 25.884665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031419, -0.924153, -0.380729,
		-0.900490, -0.139128, 0.412021,
		-0.433741, 0.355788, -0.827819,
		39.370014, 32.133430, 25.636318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144100, 31.446041, 26.118755>,  <39.673634, 31.884380, 26.215792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144100, 31.446041, 26.118755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195312, 31.622572, 25.763489>,  <39.226040, 31.728491, 25.550329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.195312, 31.622572, 25.763489>,  <39.144100, 31.446041, 26.118755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195312, 31.622572, 25.763489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204534, -0.864534, -0.459070,
		-0.970450, 0.240436, -0.020422,
		0.128032, 0.441328, -0.888165,
		39.233723, 31.754971, 25.497040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592060, 31.367441, 25.727989>,  <39.144100, 31.446041, 26.118755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592060, 31.367441, 25.727989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887024, 31.416122, 25.462233>,  <39.064003, 31.445332, 25.302778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887024, 31.416122, 25.462233>,  <38.592060, 31.367441, 25.727989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887024, 31.416122, 25.462233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250734, -0.864030, -0.436560,
		-0.627187, 0.488508, -0.606627,
		0.737407, 0.121703, -0.664394,
		39.108246, 31.452633, 25.262915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280975, 31.327309, 25.129782>,  <38.592060, 31.367441, 25.727989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280975, 31.327309, 25.129782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668041, 31.266756, 25.049078>,  <38.900280, 31.230425, 25.000656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668041, 31.266756, 25.049078>,  <38.280975, 31.327309, 25.129782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668041, 31.266756, 25.049078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235397, -0.829339, -0.506739,
		-0.090615, 0.537847, -0.838158,
		0.967666, -0.151381, -0.201758,
		38.958340, 31.221342, 24.988550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260254, 31.128170, 24.416910>,  <38.280975, 31.327309, 25.129782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260254, 31.128170, 24.416910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620132, 31.010849, 24.546227>,  <38.836060, 30.940456, 24.623816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620132, 31.010849, 24.546227>,  <38.260254, 31.128170, 24.416910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620132, 31.010849, 24.546227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181545, -0.924949, -0.333932,
		0.396970, 0.241747, -0.885422,
		0.899698, -0.293305, 0.323289,
		38.890041, 30.922857, 24.643213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315685, 30.526354, 23.930519>,  <38.260254, 31.128170, 24.416910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315685, 30.526354, 23.930519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624863, 30.485380, 24.180981>,  <38.810368, 30.460796, 24.331257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624863, 30.485380, 24.180981>,  <38.315685, 30.526354, 23.930519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624863, 30.485380, 24.180981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034271, -0.978701, -0.202412,
		0.633549, 0.177912, -0.752969,
		0.772943, -0.102433, 0.626152,
		38.856747, 30.454651, 24.368826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949810, 30.231064, 23.590319>,  <38.315685, 30.526354, 23.930519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949810, 30.231064, 23.590319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929184, 30.130737, 23.976982>,  <38.916809, 30.070541, 24.208981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929184, 30.130737, 23.976982>,  <38.949810, 30.231064, 23.590319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929184, 30.130737, 23.976982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073546, -0.966274, -0.246792,
		0.995958, 0.058368, 0.068275,
		-0.051567, -0.250816, 0.966660,
		38.913715, 30.055492, 24.266981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562855, 29.788219, 23.803751>,  <38.949810, 30.231064, 23.590319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562855, 29.788219, 23.803751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287868, 29.699081, 24.080223>,  <39.122875, 29.645599, 24.246107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287868, 29.699081, 24.080223>,  <39.562855, 29.788219, 23.803751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287868, 29.699081, 24.080223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081989, -0.921854, -0.378765,
		0.721574, -0.317057, 0.615472,
		-0.687465, -0.222845, 0.691181,
		39.081631, 29.632227, 24.287577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689068, 29.084463, 23.901684>,  <39.562855, 29.788219, 23.803751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689068, 29.084463, 23.901684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328651, 29.165375, 24.055157>,  <39.112404, 29.213923, 24.147240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328651, 29.165375, 24.055157>,  <39.689068, 29.084463, 23.901684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328651, 29.165375, 24.055157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334788, -0.886759, -0.318710,
		0.275764, -0.415622, 0.866725,
		-0.901039, 0.202281, 0.383681,
		39.058338, 29.226059, 24.170261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540157, 28.495104, 24.278866>,  <39.689068, 29.084463, 23.901684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540157, 28.495104, 24.278866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179714, 28.652470, 24.205944>,  <38.963448, 28.746889, 24.162191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179714, 28.652470, 24.205944>,  <39.540157, 28.495104, 24.278866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179714, 28.652470, 24.205944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309085, -0.877677, -0.366265,
		-0.304096, -0.273696, 0.912478,
		-0.901106, 0.393412, -0.182302,
		38.909382, 28.770493, 24.151253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991764, 27.877192, 24.478363>,  <39.540157, 28.495104, 24.278866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991764, 27.877192, 24.478363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340500, 27.712662, 24.584723>,  <40.549744, 27.613943, 24.648539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.340500, 27.712662, 24.584723>,  <39.991764, 27.877192, 24.478363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340500, 27.712662, 24.584723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258096, 0.847220, 0.464333,
		-0.416266, -0.336198, 0.844804,
		0.871842, -0.411326, 0.265898,
		40.602051, 27.589264, 24.664492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052555, 27.875044, 25.189499>,  <39.991764, 27.877192, 24.478363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052555, 27.875044, 25.189499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436150, 27.864429, 25.076620>,  <40.666306, 27.858061, 25.008892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436150, 27.864429, 25.076620>,  <40.052555, 27.875044, 25.189499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436150, 27.864429, 25.076620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164507, 0.862871, 0.477904,
		0.230818, -0.504728, 0.831849,
		0.958990, -0.026536, -0.282197,
		40.723846, 27.856468, 24.991961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387840, 28.181684, 25.705318>,  <40.052555, 27.875044, 25.189499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387840, 28.181684, 25.705318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664768, 28.178724, 25.416698>,  <40.830925, 28.176949, 25.243526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664768, 28.178724, 25.416698>,  <40.387840, 28.181684, 25.705318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664768, 28.178724, 25.416698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433635, 0.803516, 0.407826,
		0.576759, -0.595237, 0.559502,
		0.692322, -0.007403, -0.721550,
		40.872463, 28.176504, 25.200233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080673, 28.135908, 26.052456>,  <40.387840, 28.181684, 25.705318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080673, 28.135908, 26.052456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107334, 28.305168, 25.691013>,  <41.123329, 28.406725, 25.474148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107334, 28.305168, 25.691013>,  <41.080673, 28.135908, 26.052456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107334, 28.305168, 25.691013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511999, 0.762791, 0.394976,
		0.856396, -0.488971, -0.165811,
		0.066653, 0.423151, -0.903604,
		41.127331, 28.432114, 25.419931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787998, 28.316818, 25.992695>,  <41.080673, 28.135908, 26.052456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787998, 28.316818, 25.992695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600361, 28.543495, 25.721750>,  <41.487778, 28.679501, 25.559183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600361, 28.543495, 25.721750>,  <41.787998, 28.316818, 25.992695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600361, 28.543495, 25.721750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356537, 0.823219, 0.441806,
		0.807983, -0.034257, -0.588210,
		-0.469090, 0.566690, -0.677360,
		41.459633, 28.713503, 25.518541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255325, 28.811443, 25.797680>,  <41.787998, 28.316818, 25.992695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255325, 28.811443, 25.797680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919075, 28.965078, 25.644934>,  <41.717323, 29.057261, 25.553286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919075, 28.965078, 25.644934>,  <42.255325, 28.811443, 25.797680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919075, 28.965078, 25.644934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352298, 0.923278, 0.153115,
		0.411377, -0.005817, -0.911447,
		-0.840628, 0.384089, -0.381865,
		41.666885, 29.080305, 25.530375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436691, 29.368582, 25.340069>,  <42.255325, 28.811443, 25.797680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436691, 29.368582, 25.340069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052074, 29.440516, 25.423111>,  <41.821304, 29.483675, 25.472937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.052074, 29.440516, 25.423111>,  <42.436691, 29.368582, 25.340069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.052074, 29.440516, 25.423111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235810, 0.928062, 0.288261,
		-0.140833, 0.326131, -0.934775,
		-0.961540, 0.179832, 0.207607,
		41.763611, 29.494465, 25.485394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358704, 29.999985, 25.018166>,  <42.436691, 29.368582, 25.340069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358704, 29.999985, 25.018166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042744, 29.974375, 25.262119>,  <41.853168, 29.959009, 25.408491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042744, 29.974375, 25.262119>,  <42.358704, 29.999985, 25.018166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042744, 29.974375, 25.262119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091193, 0.971213, 0.220065,
		-0.606415, 0.229446, -0.761324,
		-0.789901, -0.064023, 0.609883,
		41.805775, 29.955168, 25.445084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974163, 30.603132, 24.824514>,  <42.358704, 29.999985, 25.018166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974163, 30.603132, 24.824514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856632, 30.476147, 25.185154>,  <41.786114, 30.399956, 25.401537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856632, 30.476147, 25.185154>,  <41.974163, 30.603132, 24.824514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856632, 30.476147, 25.185154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068346, 0.947800, 0.311455,
		-0.953411, 0.029895, -0.300190,
		-0.293831, -0.317462, 0.901599,
		41.768482, 30.380909, 25.455633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426735, 31.037994, 25.000391>,  <41.974163, 30.603132, 24.824514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426735, 31.037994, 25.000391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538185, 30.887140, 25.353693>,  <41.605053, 30.796627, 25.565674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.538185, 30.887140, 25.353693>,  <41.426735, 31.037994, 25.000391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538185, 30.887140, 25.353693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146436, 0.892237, 0.427166,
		-0.949171, -0.248358, 0.193371,
		0.278622, -0.377137, 0.883254,
		41.621773, 30.774000, 25.618670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967846, 31.371536, 25.545908>,  <41.426735, 31.037994, 25.000391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967846, 31.371536, 25.545908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278328, 31.211960, 25.741194>,  <41.464619, 31.116215, 25.858366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278328, 31.211960, 25.741194>,  <40.967846, 31.371536, 25.545908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278328, 31.211960, 25.741194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040314, 0.741363, 0.669892,
		-0.629192, -0.539655, 0.559366,
		0.776204, -0.398941, 0.488215,
		41.511189, 31.092278, 25.887659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766884, 31.359728, 26.301514>,  <40.967846, 31.371536, 25.545908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766884, 31.359728, 26.301514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163822, 31.364740, 26.252378>,  <41.401985, 31.367748, 26.222897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163822, 31.364740, 26.252378>,  <40.766884, 31.359728, 26.301514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163822, 31.364740, 26.252378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071137, 0.755118, 0.651718,
		0.100926, -0.655469, 0.748448,
		0.992347, 0.012533, -0.122839,
		41.461525, 31.368500, 26.215527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007893, 31.485920, 26.956640>,  <40.766884, 31.359728, 26.301514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007893, 31.485920, 26.956640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306599, 31.564716, 26.702541>,  <41.485821, 31.611994, 26.550081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.306599, 31.564716, 26.702541>,  <41.007893, 31.485920, 26.956640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.306599, 31.564716, 26.702541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350213, 0.695524, 0.627373,
		0.565419, -0.690970, 0.450401,
		0.746761, 0.196992, -0.635249,
		41.530628, 31.623814, 26.511967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506561, 31.603500, 27.392523>,  <41.007893, 31.485920, 26.956640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506561, 31.603500, 27.392523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636311, 31.784138, 27.060055>,  <41.714161, 31.892519, 26.860575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636311, 31.784138, 27.060055>,  <41.506561, 31.603500, 27.392523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636311, 31.784138, 27.060055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220752, 0.818281, 0.530740,
		0.919809, -0.355643, 0.165741,
		0.324376, 0.451592, -0.831171,
		41.733624, 31.919615, 26.810703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124401, 31.963364, 27.505228>,  <41.506561, 31.603500, 27.392523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124401, 31.963364, 27.505228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965885, 32.155037, 27.191965>,  <41.870773, 32.270042, 27.004007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965885, 32.155037, 27.191965>,  <42.124401, 31.963364, 27.505228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965885, 32.155037, 27.191965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248854, 0.877126, 0.410757,
		0.883755, -0.032111, -0.466847,
		-0.396294, 0.479185, -0.783156,
		41.846996, 32.298794, 26.957018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630039, 32.589161, 27.452177>,  <42.124401, 31.963364, 27.505228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630039, 32.589161, 27.452177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303131, 32.688419, 27.244141>,  <42.106987, 32.747974, 27.119318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303131, 32.688419, 27.244141>,  <42.630039, 32.589161, 27.452177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303131, 32.688419, 27.244141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054660, 0.931850, 0.358704,
		0.573656, 0.264730, -0.775137,
		-0.817271, 0.248142, -0.520091,
		42.057949, 32.762863, 27.088114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.687386, 33.139614, 27.106153>,  <42.630039, 32.589161, 27.452177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.687386, 33.139614, 27.106153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288738, 33.140701, 27.138998>,  <42.049549, 33.141354, 27.158705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288738, 33.140701, 27.138998>,  <42.687386, 33.139614, 27.106153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288738, 33.140701, 27.138998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021644, 0.972829, 0.230510,
		-0.079252, 0.231508, -0.969600,
		-0.996619, 0.002718, 0.082109,
		41.989754, 33.141518, 27.163631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465599, 33.749527, 26.939062>,  <42.687386, 33.139614, 27.106153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465599, 33.749527, 26.939062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111897, 33.638744, 27.089468>,  <41.899673, 33.572273, 27.179710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111897, 33.638744, 27.089468>,  <42.465599, 33.749527, 26.939062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111897, 33.638744, 27.089468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136508, 0.923285, 0.359042,
		-0.446607, 0.266156, -0.854227,
		-0.884256, -0.276959, 0.376013,
		41.846619, 33.555656, 27.202272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074684, 34.282238, 26.805765>,  <42.465599, 33.749527, 26.939062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074684, 34.282238, 26.805765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859787, 34.097626, 27.088142>,  <41.730846, 33.986858, 27.257568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859787, 34.097626, 27.088142>,  <42.074684, 34.282238, 26.805765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859787, 34.097626, 27.088142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247522, 0.886416, 0.391150,
		-0.806287, 0.035408, -0.590464,
		-0.537247, -0.461532, 0.705941,
		41.698612, 33.959167, 27.299925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514133, 34.685825, 26.877533>,  <42.074684, 34.282238, 26.805765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514133, 34.685825, 26.877533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568913, 34.487801, 27.220732>,  <41.601780, 34.368984, 27.426651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568913, 34.487801, 27.220732>,  <41.514133, 34.685825, 26.877533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568913, 34.487801, 27.220732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113507, 0.852611, 0.510069,
		-0.984054, -0.167239, 0.060567,
		0.136943, -0.495061, 0.857999,
		41.609997, 34.339283, 27.478130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000259, 34.964916, 27.357204>,  <41.514133, 34.685825, 26.877533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000259, 34.964916, 27.357204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264244, 34.786858, 27.599293>,  <41.422634, 34.680023, 27.744545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264244, 34.786858, 27.599293>,  <41.000259, 34.964916, 27.357204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264244, 34.786858, 27.599293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047260, 0.779371, 0.624777,
		-0.749811, -0.440932, 0.493318,
		0.659962, -0.445151, 0.605219,
		41.462234, 34.653313, 27.780859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722809, 34.843945, 28.040112>,  <41.000259, 34.964916, 27.357204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722809, 34.843945, 28.040112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113766, 34.845615, 28.124662>,  <41.348339, 34.846619, 28.175394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113766, 34.845615, 28.124662>,  <40.722809, 34.843945, 28.040112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113766, 34.845615, 28.124662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141086, 0.757501, 0.637406,
		-0.157458, -0.652821, 0.740967,
		0.977395, 0.004176, 0.211379,
		41.406982, 34.846867, 28.188076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757534, 34.923107, 28.813389>,  <40.722809, 34.843945, 28.040112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757534, 34.923107, 28.813389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126980, 34.990669, 28.675749>,  <41.348648, 35.031204, 28.593164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126980, 34.990669, 28.675749>,  <40.757534, 34.923107, 28.813389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126980, 34.990669, 28.675749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094756, 0.769225, 0.631913,
		0.371421, -0.616251, 0.694465,
		0.923617, 0.168901, -0.344100,
		41.404064, 35.041340, 28.572519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117760, 35.179195, 29.454576>,  <40.757534, 34.923107, 28.813389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117760, 35.179195, 29.454576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352451, 35.306725, 29.156824>,  <41.493267, 35.383244, 28.978172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352451, 35.306725, 29.156824>,  <41.117760, 35.179195, 29.454576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352451, 35.306725, 29.156824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325145, 0.749128, 0.577138,
		0.741642, -0.580654, 0.335869,
		0.586726, 0.318824, -0.744381,
		41.528469, 35.402370, 28.933510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728779, 35.324749, 29.763687>,  <41.117760, 35.179195, 29.454576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728779, 35.324749, 29.763687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734425, 35.543442, 29.428812>,  <41.737812, 35.674660, 29.227886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734425, 35.543442, 29.428812>,  <41.728779, 35.324749, 29.763687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734425, 35.543442, 29.428812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177256, 0.822642, 0.540223,
		0.984064, -0.156021, -0.085301,
		0.014114, 0.546734, -0.837187,
		41.738659, 35.707462, 29.177656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281578, 35.763874, 29.810469>,  <41.728779, 35.324749, 29.763687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281578, 35.763874, 29.810469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030910, 35.922848, 29.542339>,  <41.880508, 36.018230, 29.381462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030910, 35.922848, 29.542339>,  <42.281578, 35.763874, 29.810469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030910, 35.922848, 29.542339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158814, 0.907256, 0.389441,
		0.762932, 0.137593, -0.631667,
		-0.626668, 0.397435, -0.670323,
		41.842911, 36.042080, 29.341242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496784, 36.398346, 29.767193>,  <42.281578, 35.763874, 29.810469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496784, 36.398346, 29.767193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153606, 36.481277, 29.579172>,  <41.947701, 36.531036, 29.466360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153606, 36.481277, 29.579172>,  <42.496784, 36.398346, 29.767193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153606, 36.481277, 29.579172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107455, 0.967135, 0.230442,
		0.502379, 0.147197, -0.852026,
		-0.857944, 0.207324, -0.470051,
		41.896225, 36.543476, 29.438156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600636, 36.967251, 29.344019>,  <42.496784, 36.398346, 29.767193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600636, 36.967251, 29.344019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207069, 36.962933, 29.415333>,  <41.970928, 36.960342, 29.458120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.207069, 36.962933, 29.415333>,  <42.600636, 36.967251, 29.344019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207069, 36.962933, 29.415333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061157, 0.917481, 0.393050,
		-0.167814, 0.397633, -0.902068,
		-0.983920, -0.010792, 0.178284,
		41.911892, 36.959694, 29.468819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317074, 37.682240, 29.070177>,  <42.600636, 36.967251, 29.344019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317074, 37.682240, 29.070177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064110, 37.533600, 29.342051>,  <41.912331, 37.444416, 29.505175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.064110, 37.533600, 29.342051>,  <42.317074, 37.682240, 29.070177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.064110, 37.533600, 29.342051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089442, 0.836528, 0.540574,
		-0.769453, 0.402657, -0.495792,
		-0.632410, -0.371602, 0.679684,
		41.874386, 37.422119, 29.545956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900303, 38.176155, 29.092922>,  <42.317074, 37.682240, 29.070177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900303, 38.176155, 29.092922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.813351, 37.951832, 29.412481>,  <41.761177, 37.817238, 29.604218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.813351, 37.951832, 29.412481>,  <41.900303, 38.176155, 29.092922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813351, 37.951832, 29.412481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082962, 0.804893, 0.587592,
		-0.972554, 0.194011, -0.128444,
		-0.217383, -0.560809, 0.798898,
		41.748135, 37.783588, 29.652151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320534, 38.544098, 29.437027>,  <41.900303, 38.176155, 29.092922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320534, 38.544098, 29.437027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488094, 38.308414, 29.713390>,  <41.588631, 38.167004, 29.879208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488094, 38.308414, 29.713390>,  <41.320534, 38.544098, 29.437027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488094, 38.308414, 29.713390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019825, 0.754769, 0.655691,
		-0.907816, -0.288366, 0.304492,
		0.418900, -0.589210, 0.690908,
		41.613766, 38.131653, 29.920662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891655, 38.619740, 30.011580>,  <41.320534, 38.544098, 29.437027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891655, 38.619740, 30.011580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223049, 38.476337, 30.183666>,  <41.421886, 38.390297, 30.286919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223049, 38.476337, 30.183666>,  <40.891655, 38.619740, 30.011580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223049, 38.476337, 30.183666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170180, 0.570726, 0.803312,
		-0.533528, -0.738746, 0.411827,
		0.828484, -0.358505, 0.430219,
		41.471596, 38.368786, 30.312733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762302, 38.395985, 30.711582>,  <40.891655, 38.619740, 30.011580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762302, 38.395985, 30.711582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158176, 38.451633, 30.697895>,  <41.395702, 38.485023, 30.689682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158176, 38.451633, 30.697895>,  <40.762302, 38.395985, 30.711582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158176, 38.451633, 30.697895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053221, 0.578772, 0.813751,
		0.133013, -0.803535, 0.580206,
		0.989684, 0.139119, -0.034219,
		41.455082, 38.493370, 30.687630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117958, 38.272110, 31.443214>,  <40.762302, 38.395985, 30.711582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117958, 38.272110, 31.443214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368309, 38.519978, 31.253778>,  <41.518520, 38.668697, 31.140118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368309, 38.519978, 31.253778>,  <41.117958, 38.272110, 31.443214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368309, 38.519978, 31.253778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123346, 0.520940, 0.844635,
		0.770105, -0.587054, 0.249611,
		0.625878, 0.619669, -0.473589,
		41.556072, 38.705879, 31.111702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815590, 38.283482, 31.803625>,  <41.117958, 38.272110, 31.443214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815590, 38.283482, 31.803625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743607, 38.621567, 31.602337>,  <41.700417, 38.824417, 31.481564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743607, 38.621567, 31.602337>,  <41.815590, 38.283482, 31.803625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743607, 38.621567, 31.602337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098416, 0.524474, 0.845720,
		0.978739, 0.102670, -0.177566,
		-0.179959, 0.845214, -0.503218,
		41.689617, 38.875130, 31.451372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069359, 38.709179, 32.215332>,  <41.815590, 38.283482, 31.803625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069359, 38.709179, 32.215332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890419, 38.978916, 31.980339>,  <41.783054, 39.140759, 31.839342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890419, 38.978916, 31.980339>,  <42.069359, 38.709179, 32.215332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890419, 38.978916, 31.980339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021093, 0.664649, 0.746858,
		0.894111, 0.321715, -0.311554,
		-0.447349, 0.674345, -0.587484,
		41.756214, 39.181221, 31.804094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.307007, 39.279873, 32.452976>,  <42.069359, 38.709179, 32.215332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.307007, 39.279873, 32.452976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037945, 39.456329, 32.215343>,  <41.876507, 39.562202, 32.072762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037945, 39.456329, 32.215343>,  <42.307007, 39.279873, 32.452976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037945, 39.456329, 32.215343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057213, 0.769453, 0.636135,
		0.737744, 0.461887, -0.492335,
		-0.672651, 0.441137, -0.594086,
		41.836151, 39.588669, 32.037117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553398, 39.968250, 32.377693>,  <42.307007, 39.279873, 32.452976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553398, 39.968250, 32.377693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155552, 39.966656, 32.336269>,  <41.916843, 39.965698, 32.311417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155552, 39.966656, 32.336269>,  <42.553398, 39.968250, 32.377693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155552, 39.966656, 32.336269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078126, 0.685400, 0.723964,
		0.068088, 0.728156, -0.682021,
		-0.994616, -0.003990, -0.103555,
		41.857166, 39.965458, 32.305202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344860, 40.635315, 32.276333>,  <42.553398, 39.968250, 32.377693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.344860, 40.635315, 32.276333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014572, 40.442158, 32.392956>,  <41.816399, 40.326263, 32.462929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014572, 40.442158, 32.392956>,  <42.344860, 40.635315, 32.276333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014572, 40.442158, 32.392956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081568, 0.613655, 0.785349,
		-0.558154, 0.624695, -0.546095,
		-0.825718, -0.482890, 0.291559,
		41.766857, 40.297291, 32.480423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980476, 41.115288, 32.593369>,  <42.344860, 40.635315, 32.276333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980476, 41.115288, 32.593369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795094, 40.791958, 32.738598>,  <41.683865, 40.597961, 32.825733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795094, 40.791958, 32.738598>,  <41.980476, 41.115288, 32.593369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795094, 40.791958, 32.738598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128528, 0.466720, 0.875016,
		-0.876748, 0.358869, -0.320197,
		-0.463459, -0.808323, 0.363071,
		41.656055, 40.549461, 32.847519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320545, 41.348850, 32.716251>,  <41.980476, 41.115288, 32.593369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320545, 41.348850, 32.716251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431320, 41.044689, 32.951229>,  <41.497784, 40.862194, 33.092216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431320, 41.044689, 32.951229>,  <41.320545, 41.348850, 32.716251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431320, 41.044689, 32.951229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119279, 0.579424, 0.806251,
		-0.953456, -0.293350, 0.069763,
		0.276936, -0.760404, 0.587446,
		41.514400, 40.816566, 33.127464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830158, 41.156555, 33.229881>,  <41.320545, 41.348850, 32.716251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830158, 41.156555, 33.229881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173668, 41.033695, 33.393917>,  <41.379772, 40.959980, 33.492340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173668, 41.033695, 33.393917>,  <40.830158, 41.156555, 33.229881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173668, 41.033695, 33.393917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200976, 0.534317, 0.821045,
		-0.471300, -0.787507, 0.397126,
		0.858769, -0.307145, 0.410093,
		41.431297, 40.941551, 33.516945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742565, 40.944286, 33.946217>,  <40.830158, 41.156555, 33.229881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742565, 40.944286, 33.946217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124321, 41.060764, 33.919842>,  <41.353374, 41.130653, 33.904018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124321, 41.060764, 33.919842>,  <40.742565, 40.944286, 33.946217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124321, 41.060764, 33.919842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106647, 0.538759, 0.835683,
		0.278871, -0.790534, 0.545240,
		0.954388, 0.291196, -0.065936,
		41.410637, 41.148125, 33.900063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988518, 40.808403, 34.563496>,  <40.742565, 40.944286, 33.946217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988518, 40.808403, 34.563496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247650, 41.078316, 34.422085>,  <41.403130, 41.240261, 34.337238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.247650, 41.078316, 34.422085>,  <40.988518, 40.808403, 34.563496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247650, 41.078316, 34.422085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140882, 0.562206, 0.814909,
		0.748640, -0.478120, 0.459281,
		0.647835, 0.674778, -0.353531,
		41.442001, 41.280750, 34.316025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544518, 40.986782, 35.132847>,  <40.988518, 40.808403, 34.563496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544518, 40.986782, 35.132847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530796, 41.292316, 34.875050>,  <41.522564, 41.475636, 34.720371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530796, 41.292316, 34.875050>,  <41.544518, 40.986782, 35.132847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530796, 41.292316, 34.875050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034099, 0.645396, 0.763087,
		0.998830, 0.004199, -0.048185,
		-0.034303, 0.763837, -0.644497,
		41.520504, 41.521469, 34.681702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882664, 41.551277, 35.469631>,  <41.544518, 40.986782, 35.132847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882664, 41.551277, 35.469631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706097, 41.748817, 35.169964>,  <41.600155, 41.867344, 34.990162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706097, 41.748817, 35.169964>,  <41.882664, 41.551277, 35.469631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706097, 41.748817, 35.169964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140755, 0.862690, 0.485752,
		0.886193, 0.108970, -0.450319,
		-0.441417, 0.493854, -0.749172,
		41.573673, 41.896973, 34.945213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312866, 42.190578, 35.232479>,  <41.882664, 41.551277, 35.469631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312866, 42.190578, 35.232479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.948059, 42.286934, 35.099689>,  <41.729176, 42.344746, 35.020016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.948059, 42.286934, 35.099689>,  <42.312866, 42.190578, 35.232479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948059, 42.286934, 35.099689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049455, 0.868049, 0.494009,
		0.407168, 0.434125, -0.803585,
		-0.912013, 0.240886, -0.331972,
		41.674454, 42.359200, 35.000099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.371037, 42.895622, 35.157558>,  <42.312866, 42.190578, 35.232479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.371037, 42.895622, 35.157558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976234, 42.832150, 35.167690>,  <41.739353, 42.794064, 35.173767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976234, 42.832150, 35.167690>,  <42.371037, 42.895622, 35.157558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976234, 42.832150, 35.167690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137294, 0.914638, 0.380246,
		-0.083503, 0.371828, -0.924538,
		-0.987004, -0.158685, 0.025325,
		41.680134, 42.784546, 35.175289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984535, 43.470112, 34.847675>,  <42.371037, 42.895622, 35.157558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984535, 43.470112, 34.847675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723202, 43.298878, 35.097443>,  <41.566402, 43.196136, 35.247303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723202, 43.298878, 35.097443>,  <41.984535, 43.470112, 34.847675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723202, 43.298878, 35.097443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253563, 0.900875, 0.352320,
		-0.713346, 0.071853, -0.697119,
		-0.653333, -0.428089, 0.624417,
		41.527203, 43.170452, 35.284767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428074, 43.928978, 34.918396>,  <41.984535, 43.470112, 34.847675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428074, 43.928978, 34.918396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406048, 43.709599, 35.252144>,  <41.392834, 43.577969, 35.452393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406048, 43.709599, 35.252144>,  <41.428074, 43.928978, 34.918396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406048, 43.709599, 35.252144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290742, 0.808232, 0.512084,
		-0.955216, -0.214387, -0.203965,
		-0.055067, -0.548452, 0.834367,
		41.389526, 43.545063, 35.502453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939835, 44.289883, 35.382271>,  <41.428074, 43.928978, 34.918396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939835, 44.289883, 35.382271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102741, 44.014275, 35.622066>,  <41.200485, 43.848907, 35.765945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102741, 44.014275, 35.622066>,  <40.939835, 44.289883, 35.382271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102741, 44.014275, 35.622066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022396, 0.648658, 0.760750,
		-0.913036, -0.323252, 0.248743,
		0.407263, -0.689022, 0.599488,
		41.224918, 43.807568, 35.801914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594471, 44.377743, 36.022373>,  <40.939835, 44.289883, 35.382271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594471, 44.377743, 36.022373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929474, 44.189308, 36.133125>,  <41.130474, 44.076248, 36.199577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929474, 44.189308, 36.133125>,  <40.594471, 44.377743, 36.022373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929474, 44.189308, 36.133125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092391, 0.621496, 0.777951,
		-0.538558, -0.625959, 0.564032,
		0.837508, -0.471083, 0.276878,
		41.180725, 44.047985, 36.216190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531952, 44.162567, 36.709194>,  <40.594471, 44.377743, 36.022373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531952, 44.162567, 36.709194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920052, 44.194855, 36.617897>,  <41.152912, 44.214226, 36.563118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920052, 44.194855, 36.617897>,  <40.531952, 44.162567, 36.709194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920052, 44.194855, 36.617897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126437, 0.635055, 0.762049,
		0.206460, -0.768239, 0.605957,
		0.970252, 0.080717, -0.228247,
		41.211128, 44.219070, 36.549423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842949, 44.267830, 37.373299>,  <40.531952, 44.162567, 36.709194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842949, 44.267830, 37.373299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122589, 44.388245, 37.113876>,  <41.290375, 44.460495, 36.958221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122589, 44.388245, 37.113876>,  <40.842949, 44.267830, 37.373299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122589, 44.388245, 37.113876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148624, 0.826057, 0.543636,
		0.699404, -0.476449, 0.532757,
		0.699103, 0.301041, -0.648559,
		41.332321, 44.478558, 36.919308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386917, 44.465118, 37.750069>,  <40.842949, 44.267830, 37.373299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386917, 44.465118, 37.750069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434708, 44.651604, 37.399441>,  <41.463383, 44.763493, 37.189064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434708, 44.651604, 37.399441>,  <41.386917, 44.465118, 37.750069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434708, 44.651604, 37.399441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311931, 0.820561, 0.478936,
		0.942563, -0.330649, -0.047391,
		0.119473, 0.466210, -0.876570,
		41.470551, 44.791466, 37.136471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048840, 44.852184, 37.836143>,  <41.386917, 44.465118, 37.750069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048840, 44.852184, 37.836143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888107, 45.008698, 37.504982>,  <41.791668, 45.102604, 37.306286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888107, 45.008698, 37.504982>,  <42.048840, 44.852184, 37.836143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888107, 45.008698, 37.504982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322577, 0.906642, 0.271928,
		0.857014, -0.157792, -0.490540,
		-0.401836, 0.391283, -0.827904,
		41.767555, 45.126083, 37.256611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484676, 45.284077, 37.611305>,  <42.048840, 44.852184, 37.836143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484676, 45.284077, 37.611305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146149, 45.431801, 37.457760>,  <41.943031, 45.520435, 37.365635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146149, 45.431801, 37.457760>,  <42.484676, 45.284077, 37.611305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146149, 45.431801, 37.457760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280968, 0.921735, 0.267324,
		0.452543, 0.118390, -0.883849,
		-0.846323, 0.369309, -0.383861,
		41.892250, 45.542595, 37.342602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707619, 45.874706, 37.331818>,  <42.484676, 45.284077, 37.611305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707619, 45.874706, 37.331818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311142, 45.904507, 37.375618>,  <42.073257, 45.922386, 37.401897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311142, 45.904507, 37.375618>,  <42.707619, 45.874706, 37.331818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311142, 45.904507, 37.375618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109961, 0.923761, 0.366843,
		-0.073821, 0.375652, -0.923816,
		-0.991191, 0.074503, 0.109500,
		42.013786, 45.926857, 37.408466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603432, 46.526848, 37.193241>,  <42.707619, 45.874706, 37.331818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603432, 46.526848, 37.193241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268841, 46.418320, 37.383686>,  <42.068085, 46.353203, 37.497955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268841, 46.418320, 37.383686>,  <42.603432, 46.526848, 37.193241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268841, 46.418320, 37.383686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116131, 0.936863, 0.329850,
		-0.535549, 0.220622, -0.815177,
		-0.836481, -0.271318, 0.476115,
		42.017895, 46.336926, 37.526520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.136475, 47.027283, 37.071236>,  <42.603432, 46.526848, 37.193241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.136475, 47.027283, 37.071236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001541, 46.857430, 37.407307>,  <41.920582, 46.755516, 37.608948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001541, 46.857430, 37.407307>,  <42.136475, 47.027283, 37.071236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001541, 46.857430, 37.407307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026355, 0.887877, 0.459325,
		-0.941016, 0.177089, -0.288320,
		-0.337334, -0.424633, 0.840174,
		41.900341, 46.730038, 37.659359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579185, 47.321507, 37.415794>,  <42.136475, 47.027283, 37.071236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579185, 47.321507, 37.415794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326115, 47.208179, 37.704086>,  <41.174271, 47.140182, 37.877060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326115, 47.208179, 37.704086>,  <41.579185, 47.321507, 37.415794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326115, 47.208179, 37.704086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552994, 0.486249, 0.676579,
		-0.542141, 0.826615, -0.150966,
		-0.632677, -0.283317, 0.720729,
		41.136311, 47.123184, 37.920303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104210, 47.844788, 37.644814>,  <41.579185, 47.321507, 37.415794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104210, 47.844788, 37.644814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197586, 47.578835, 37.928627>,  <41.253613, 47.419262, 38.098915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197586, 47.578835, 37.928627>,  <41.104210, 47.844788, 37.644814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197586, 47.578835, 37.928627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560407, 0.688312, 0.460621,
		-0.794639, 0.290102, 0.533282,
		0.233437, -0.664882, 0.709535,
		41.267616, 47.379372, 38.141487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089806, 48.218685, 38.294899>,  <41.104210, 47.844788, 37.644814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089806, 48.218685, 38.294899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336845, 47.905888, 38.261303>,  <41.485069, 47.718208, 38.241146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336845, 47.905888, 38.261303>,  <41.089806, 48.218685, 38.294899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336845, 47.905888, 38.261303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749685, 0.553043, 0.363477,
		-0.237784, -0.287453, 0.927809,
		0.617601, -0.781994, -0.083995,
		41.522125, 47.671288, 38.236103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.726238, 48.041107, 38.708797>,  <41.089806, 48.218685, 38.294899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.726238, 48.041107, 38.708797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685001, 47.789654, 39.017136>,  <41.660259, 47.638783, 39.202137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685001, 47.789654, 39.017136>,  <41.726238, 48.041107, 38.708797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685001, 47.789654, 39.017136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049993, -0.777265, -0.627184,
		0.993415, -0.026122, 0.111558,
		-0.103094, -0.628630, 0.770841,
		41.654072, 47.601063, 39.248386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205299, 47.449707, 38.625927>,  <41.726238, 48.041107, 38.708797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205299, 47.449707, 38.625927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903687, 47.320717, 38.854820>,  <41.722721, 47.243320, 38.992157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.903687, 47.320717, 38.854820>,  <42.205299, 47.449707, 38.625927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903687, 47.320717, 38.854820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068612, -0.827752, -0.556883,
		0.653248, -0.459168, 0.602023,
		-0.754029, -0.322477, 0.572232,
		41.677479, 47.223972, 39.026489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423939, 46.738808, 38.965343>,  <42.205299, 47.449707, 38.625927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423939, 46.738808, 38.965343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051315, 46.845634, 38.866661>,  <41.827740, 46.909733, 38.807449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051315, 46.845634, 38.866661>,  <42.423939, 46.738808, 38.965343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051315, 46.845634, 38.866661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032914, -0.737712, -0.674313,
		-0.362088, -0.620045, 0.696015,
		-0.931562, 0.267069, -0.246709,
		41.771847, 46.925755, 38.792648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039848, 46.172638, 38.951393>,  <42.423939, 46.738808, 38.965343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039848, 46.172638, 38.951393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883701, 46.438862, 38.696949>,  <41.790012, 46.598598, 38.544281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.883701, 46.438862, 38.696949>,  <42.039848, 46.172638, 38.951393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883701, 46.438862, 38.696949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101239, -0.717775, -0.688875,
		-0.915077, -0.204513, 0.347575,
		-0.390365, 0.665562, -0.636115,
		41.766590, 46.638531, 38.506115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423870, 45.957691, 38.655151>,  <42.039848, 46.172638, 38.951393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423870, 45.957691, 38.655151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569481, 46.204155, 38.375774>,  <41.656849, 46.352036, 38.208149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569481, 46.204155, 38.375774>,  <41.423870, 45.957691, 38.655151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569481, 46.204155, 38.375774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088348, -0.723674, -0.684464,
		-0.927187, 0.310872, -0.209003,
		0.364031, 0.616161, -0.698446,
		41.678692, 46.389004, 38.166241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903915, 45.939987, 38.140476>,  <41.423870, 45.957691, 38.655151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903915, 45.939987, 38.140476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241249, 46.054077, 37.958294>,  <41.443649, 46.122532, 37.848984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.241249, 46.054077, 37.958294>,  <40.903915, 45.939987, 38.140476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241249, 46.054077, 37.958294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145345, -0.694874, -0.704291,
		-0.517365, 0.660148, -0.544553,
		0.843332, 0.285227, -0.455452,
		41.494247, 46.139645, 37.821659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750202, 46.238800, 37.407379>,  <40.903915, 45.939987, 38.140476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750202, 46.238800, 37.407379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124779, 46.100891, 37.433304>,  <41.349525, 46.018147, 37.448856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124779, 46.100891, 37.433304>,  <40.750202, 46.238800, 37.407379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124779, 46.100891, 37.433304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206654, -0.691426, -0.692261,
		0.283484, 0.634872, -0.718731,
		0.936446, -0.344774, 0.064810,
		41.405712, 45.997459, 37.452747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663841, 45.776577, 36.933514>,  <40.750202, 46.238800, 37.407379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663841, 45.776577, 36.933514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054470, 45.755070, 37.016853>,  <41.288849, 45.742165, 37.066856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054470, 45.755070, 37.016853>,  <40.663841, 45.776577, 36.933514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054470, 45.755070, 37.016853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105362, -0.724748, -0.680910,
		0.187612, 0.686912, -0.702106,
		0.976576, -0.053771, 0.208346,
		41.347443, 45.738937, 37.079357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143280, 45.753941, 36.290619>,  <40.663841, 45.776577, 36.933514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143280, 45.753941, 36.290619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332363, 45.570488, 36.591606>,  <41.445812, 45.460415, 36.772198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332363, 45.570488, 36.591606>,  <41.143280, 45.753941, 36.290619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332363, 45.570488, 36.591606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105276, -0.818384, -0.564946,
		0.874907, 0.346273, -0.338576,
		0.472711, -0.458631, 0.752464,
		41.474174, 45.432899, 36.817345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017323, 45.162766, 36.077732>,  <41.143280, 45.753941, 36.290619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017323, 45.162766, 36.077732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120674, 45.163712, 35.691315>,  <41.182686, 45.164280, 35.459465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120674, 45.163712, 35.691315>,  <41.017323, 45.162766, 36.077732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120674, 45.163712, 35.691315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608089, -0.777427, 0.160735,
		-0.750646, -0.628969, -0.202309,
		0.258378, 0.002367, -0.966041,
		41.198189, 45.164421, 35.401501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754013, 45.363556, 35.992157>,  <41.017323, 45.162766, 36.077732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754013, 45.363556, 35.992157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687668, 45.179417, 36.341000>,  <41.647861, 45.068935, 36.550304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687668, 45.179417, 36.341000>,  <41.754013, 45.363556, 35.992157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687668, 45.179417, 36.341000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023339, -0.885941, -0.463210,
		0.985873, -0.056476, 0.157690,
		-0.165864, -0.460346, 0.872107,
		41.637909, 45.041313, 36.602631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211575, 44.787895, 36.044346>,  <41.754013, 45.363556, 35.992157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211575, 44.787895, 36.044346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952908, 44.682930, 36.330830>,  <41.797707, 44.619949, 36.502720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.952908, 44.682930, 36.330830>,  <42.211575, 44.787895, 36.044346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.952908, 44.682930, 36.330830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028626, -0.929948, -0.366575,
		0.762231, -0.257556, 0.593859,
		-0.646672, -0.262415, 0.716208,
		41.758907, 44.604206, 36.545692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421021, 44.117004, 36.306301>,  <42.211575, 44.787895, 36.044346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421021, 44.117004, 36.306301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027599, 44.167850, 36.357616>,  <41.791546, 44.198357, 36.388405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027599, 44.167850, 36.357616>,  <42.421021, 44.117004, 36.306301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027599, 44.167850, 36.357616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169474, -0.895071, -0.412464,
		0.062394, -0.427424, 0.901896,
		-0.983557, 0.127113, 0.128285,
		41.732533, 44.205986, 36.396103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271309, 43.495274, 36.581505>,  <42.421021, 44.117004, 36.306301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271309, 43.495274, 36.581505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919052, 43.657608, 36.483723>,  <41.707699, 43.755009, 36.425053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919052, 43.657608, 36.483723>,  <42.271309, 43.495274, 36.581505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919052, 43.657608, 36.483723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245339, -0.832043, -0.497508,
		-0.405303, -0.378154, 0.832303,
		-0.880646, 0.405838, -0.244453,
		41.654858, 43.779358, 36.410385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752464, 42.942249, 36.625587>,  <42.271309, 43.495274, 36.581505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752464, 42.942249, 36.625587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584862, 43.195808, 36.365551>,  <41.484303, 43.347942, 36.209530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584862, 43.195808, 36.365551>,  <41.752464, 42.942249, 36.625587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584862, 43.195808, 36.365551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336820, -0.773397, -0.537038,
		-0.843202, -0.006057, 0.537563,
		-0.419002, 0.633893, -0.650090,
		41.459160, 43.385975, 36.170525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920231, 42.899868, 36.576649>,  <41.752464, 42.942249, 36.625587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920231, 42.899868, 36.576649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047878, 43.058289, 36.232254>,  <41.124466, 43.153343, 36.025616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047878, 43.058289, 36.232254>,  <40.920231, 42.899868, 36.576649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047878, 43.058289, 36.232254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430667, -0.748666, -0.504009,
		-0.844208, 0.531640, -0.068349,
		0.319122, 0.396053, -0.860990,
		41.143616, 43.177105, 35.973957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514343, 42.691181, 35.988266>,  <40.920231, 42.899868, 36.576649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514343, 42.691181, 35.988266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821465, 42.836697, 35.777313>,  <41.005737, 42.924007, 35.650742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821465, 42.836697, 35.777313>,  <40.514343, 42.691181, 35.988266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821465, 42.836697, 35.777313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111853, -0.734401, -0.669436,
		-0.630843, 0.572986, -0.523186,
		0.767806, 0.363789, -0.527382,
		41.051807, 42.945835, 35.619099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345978, 42.652058, 35.205395>,  <40.514343, 42.691181, 35.988266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345978, 42.652058, 35.205395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745838, 42.660480, 35.211876>,  <40.985752, 42.665535, 35.215763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.745838, 42.660480, 35.211876>,  <40.345978, 42.652058, 35.205395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745838, 42.660480, 35.211876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026491, -0.742245, -0.669605,
		-0.002076, 0.669798, -0.742541,
		0.999647, 0.021061, 0.016203,
		41.045731, 42.666798, 35.216736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567482, 42.645935, 34.481895>,  <40.345978, 42.652058, 35.205395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567482, 42.645935, 34.481895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895103, 42.531071, 34.680565>,  <41.091679, 42.462151, 34.799767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.895103, 42.531071, 34.680565>,  <40.567482, 42.645935, 34.481895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.895103, 42.531071, 34.680565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243621, -0.609703, -0.754262,
		0.519417, 0.738783, -0.429424,
		0.819057, -0.287160, 0.496673,
		41.140820, 42.444923, 34.829567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049278, 42.586987, 33.975307>,  <40.567482, 42.645935, 34.481895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049278, 42.586987, 33.975307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208691, 42.371872, 34.272484>,  <41.304337, 42.242805, 34.450790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208691, 42.371872, 34.272484>,  <41.049278, 42.586987, 33.975307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208691, 42.371872, 34.272484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393355, -0.631543, -0.668151,
		0.828520, 0.558519, -0.040150,
		0.398531, -0.537783, 0.742942,
		41.328251, 42.210537, 34.495365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675056, 42.440491, 33.693947>,  <41.049278, 42.586987, 33.975307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675056, 42.440491, 33.693947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623047, 42.185036, 33.997326>,  <41.591839, 42.031761, 34.179352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623047, 42.185036, 33.997326>,  <41.675056, 42.440491, 33.693947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623047, 42.185036, 33.997326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610988, -0.654054, -0.445990,
		0.780888, 0.405409, 0.475245,
		-0.130028, -0.638637, 0.758443,
		41.584038, 41.993446, 34.224857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379013, 42.081673, 33.844246>,  <41.675056, 42.440491, 33.693947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379013, 42.081673, 33.844246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080608, 41.849709, 33.975193>,  <41.901566, 41.710529, 34.053761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.080608, 41.849709, 33.975193>,  <42.379013, 42.081673, 33.844246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080608, 41.849709, 33.975193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334726, -0.751523, -0.568482,
		0.575694, -0.314515, 0.754756,
		-0.746013, -0.579908, 0.327370,
		41.856804, 41.675735, 34.073402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651005, 41.427120, 33.972507>,  <42.379013, 42.081673, 33.844246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651005, 41.427120, 33.972507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262756, 41.344143, 33.923740>,  <42.029808, 41.294357, 33.894482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262756, 41.344143, 33.923740>,  <42.651005, 41.427120, 33.972507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262756, 41.344143, 33.923740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239531, -0.784996, -0.571320,
		0.022815, -0.583737, 0.811622,
		-0.970621, -0.207443, -0.121913,
		41.971569, 41.281910, 33.887165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625614, 40.786694, 33.947205>,  <42.651005, 41.427120, 33.972507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625614, 40.786694, 33.947205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263069, 40.871635, 33.801102>,  <42.045544, 40.922600, 33.713440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.263069, 40.871635, 33.801102>,  <42.625614, 40.786694, 33.947205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263069, 40.871635, 33.801102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133173, -0.676852, -0.723973,
		-0.400964, -0.704824, 0.585193,
		-0.906363, 0.212355, -0.365257,
		41.991161, 40.935341, 33.691525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234341, 40.076740, 33.733418>,  <42.625614, 40.786694, 33.947205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.234341, 40.076740, 33.733418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081944, 40.374577, 33.514172>,  <41.990505, 40.553276, 33.382626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081944, 40.374577, 33.514172>,  <42.234341, 40.076740, 33.733418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081944, 40.374577, 33.514172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153431, -0.533692, -0.831644,
		-0.911758, -0.400950, 0.089091,
		-0.380994, 0.744589, -0.548116,
		41.967644, 40.597954, 33.349735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471951, 40.078999, 34.399040>,  <42.234341, 40.076740, 33.733418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471951, 40.078999, 34.399040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333797, 40.032017, 34.771473>,  <42.250904, 40.003826, 34.994934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333797, 40.032017, 34.771473>,  <42.471951, 40.078999, 34.399040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333797, 40.032017, 34.771473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936015, 0.114708, -0.332744,
		-0.067719, -0.986431, -0.149560,
		-0.345384, -0.117457, 0.931082,
		42.230183, 39.996780, 35.050797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907688, 39.615280, 34.498314>,  <42.471951, 40.078999, 34.399040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907688, 39.615280, 34.498314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853867, 39.862164, 34.808399>,  <41.821575, 40.010292, 34.994450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853867, 39.862164, 34.808399>,  <41.907688, 39.615280, 34.498314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853867, 39.862164, 34.808399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983387, 0.013024, -0.181053,
		-0.121843, -0.786694, 0.605200,
		-0.134551, 0.617205, 0.775212,
		41.813499, 40.047325, 35.040962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169258, 38.890873, 34.573563>,  <41.907688, 39.615280, 34.498314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169258, 38.890873, 34.573563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408657, 39.168797, 34.414040>,  <42.552296, 39.335552, 34.318325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408657, 39.168797, 34.414040>,  <42.169258, 38.890873, 34.573563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408657, 39.168797, 34.414040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743721, 0.666919, 0.045807,
		0.297800, 0.269186, 0.915890,
		0.598494, 0.694808, -0.398808,
		42.588203, 39.377239, 34.294395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535454, 39.055614, 35.085365>,  <42.169258, 38.890873, 34.573563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535454, 39.055614, 35.085365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623878, 39.084869, 35.474373>,  <42.676933, 39.102421, 35.707775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623878, 39.084869, 35.474373>,  <42.535454, 39.055614, 35.085365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623878, 39.084869, 35.474373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038404, -0.995758, 0.083613,
		0.974504, -0.055832, -0.217311,
		0.221057, 0.073136, 0.972515,
		42.690197, 39.106812, 35.766129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175552, 38.680931, 35.250519>,  <42.535454, 39.055614, 35.085365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175552, 38.680931, 35.250519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913723, 38.710114, 35.551506>,  <42.756626, 38.727623, 35.732098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913723, 38.710114, 35.551506>,  <43.175552, 38.680931, 35.250519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913723, 38.710114, 35.551506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172233, -0.954766, 0.242399,
		0.736119, 0.288268, 0.612398,
		-0.654572, 0.072959, 0.752471,
		42.717350, 38.732002, 35.777248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412083, 38.459579, 35.941303>,  <43.175552, 38.680931, 35.250519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412083, 38.459579, 35.941303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020344, 38.391155, 35.898193>,  <42.785301, 38.350101, 35.872326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020344, 38.391155, 35.898193>,  <43.412083, 38.459579, 35.941303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020344, 38.391155, 35.898193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160826, -0.982160, 0.097455,
		-0.122523, 0.078109, 0.989387,
		-0.979348, -0.171060, -0.107775,
		42.726540, 38.339836, 35.865860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166634, 38.089867, 36.455521>,  <43.412083, 38.459579, 35.941303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166634, 38.089867, 36.455521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936287, 37.980438, 36.147354>,  <42.798080, 37.914783, 35.962456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936287, 37.980438, 36.147354>,  <43.166634, 38.089867, 36.455521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936287, 37.980438, 36.147354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478411, -0.876919, -0.046211,
		-0.662951, -0.395187, 0.635865,
		-0.575864, -0.273569, -0.770416,
		42.763527, 37.898369, 35.916229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.088047, 37.384018, 36.594437>,  <43.166634, 38.089867, 36.455521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.088047, 37.384018, 36.594437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037273, 37.472260, 36.207611>,  <43.006809, 37.525204, 35.975513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037273, 37.472260, 36.207611>,  <43.088047, 37.384018, 36.594437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037273, 37.472260, 36.207611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410687, -0.875774, -0.253686,
		-0.902897, -0.429364, 0.020567,
		-0.126936, 0.220606, -0.967068,
		42.999191, 37.538441, 35.917492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819508, 36.794876, 36.260857>,  <43.088047, 37.384018, 36.594437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819508, 36.794876, 36.260857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008968, 37.012119, 35.983528>,  <43.122643, 37.142464, 35.817131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008968, 37.012119, 35.983528>,  <42.819508, 36.794876, 36.260857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008968, 37.012119, 35.983528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492569, -0.815948, -0.302662,
		-0.730090, -0.198151, -0.653991,
		0.473650, 0.543106, -0.693319,
		43.151062, 37.175053, 35.775532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978981, 36.278862, 35.797153>,  <42.819508, 36.794876, 36.260857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978981, 36.278862, 35.797153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229439, 36.580170, 35.716637>,  <43.379715, 36.760956, 35.668327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229439, 36.580170, 35.716637>,  <42.978981, 36.278862, 35.797153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229439, 36.580170, 35.716637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681740, -0.654200, -0.327496,
		-0.378380, 0.067831, -0.923162,
		0.626147, 0.753274, -0.201293,
		43.417282, 36.806152, 35.656250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140446, 36.312252, 35.112991>,  <42.978981, 36.278862, 35.797153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140446, 36.312252, 35.112991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444054, 36.502010, 35.291359>,  <43.626217, 36.615868, 35.398380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444054, 36.502010, 35.291359>,  <43.140446, 36.312252, 35.112991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444054, 36.502010, 35.291359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651015, -0.562125, -0.510094,
		0.008672, 0.677466, -0.735503,
		0.759016, 0.474399, 0.445915,
		43.671757, 36.644329, 35.425133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671337, 36.422535, 34.647373>,  <43.140446, 36.312252, 35.112991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671337, 36.422535, 34.647373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.884007, 36.440472, 34.985680>,  <44.011608, 36.451233, 35.188663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.884007, 36.440472, 34.985680>,  <43.671337, 36.422535, 34.647373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884007, 36.440472, 34.985680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698141, -0.588562, -0.407668,
		0.479504, 0.807207, -0.344226,
		0.531671, 0.044840, 0.845763,
		44.043507, 36.453922, 35.239410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356930, 36.144203, 34.294960>,  <43.671337, 36.422535, 34.647373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356930, 36.144203, 34.294960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652584, 36.032207, 34.049919>,  <44.829979, 35.965008, 33.902897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652584, 36.032207, 34.049919>,  <44.356930, 36.144203, 34.294960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652584, 36.032207, 34.049919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017527, 0.917192, -0.398061,
		0.673325, 0.283486, 0.682840,
		0.739139, -0.279992, -0.612599,
		44.874325, 35.948208, 33.866138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738323, 36.645679, 34.191418>,  <44.356930, 36.144203, 34.294960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738323, 36.645679, 34.191418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.800858, 36.406006, 33.877338>,  <44.838379, 36.262203, 33.688889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.800858, 36.406006, 33.877338>,  <44.738323, 36.645679, 34.191418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800858, 36.406006, 33.877338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132849, 0.774996, -0.617844,
		0.978728, 0.200907, 0.041562,
		0.156340, -0.599180, -0.785201,
		44.847759, 36.226254, 33.641777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386532, 36.835285, 33.756104>,  <44.738323, 36.645679, 34.191418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386532, 36.835285, 33.756104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100140, 36.656052, 33.541965>,  <44.928303, 36.548512, 33.413483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100140, 36.656052, 33.541965>,  <45.386532, 36.835285, 33.756104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.100140, 36.656052, 33.541965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014738, 0.756963, -0.653292,
		0.697960, -0.475637, -0.535370,
		-0.715985, -0.448081, -0.535340,
		44.885345, 36.521626, 33.381363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.799656, 36.144344, 33.867283>,  <45.386532, 36.835285, 33.756104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.799656, 36.144344, 33.867283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174549, 36.233807, 33.760269>,  <46.399487, 36.287483, 33.696060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.174549, 36.233807, 33.760269>,  <45.799656, 36.144344, 33.867283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.174549, 36.233807, 33.760269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259027, 0.067129, 0.963535,
		0.233458, -0.972354, 0.004983,
		0.937231, 0.223654, -0.267537,
		46.455719, 36.300903, 33.680008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.264435, 35.644276, 34.168217>,  <45.799656, 36.144344, 33.867283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.264435, 35.644276, 34.168217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.434586, 36.000546, 34.104027>,  <46.536674, 36.214310, 34.065514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.434586, 36.000546, 34.104027>,  <46.264435, 35.644276, 34.168217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.434586, 36.000546, 34.104027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205546, 0.077599, 0.975566,
		0.881366, -0.447966, -0.150066,
		0.425375, 0.890677, -0.160471,
		46.562199, 36.267750, 34.055885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.629391, 35.571930, 34.729221>,  <46.264435, 35.644276, 34.168217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.629391, 35.571930, 34.729221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.715542, 35.953659, 34.646397>,  <46.767231, 36.182697, 34.596703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.715542, 35.953659, 34.646397>,  <46.629391, 35.571930, 34.729221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.715542, 35.953659, 34.646397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443881, 0.093198, 0.891226,
		0.869817, -0.283863, -0.403534,
		0.215377, 0.954325, -0.207067,
		46.780155, 36.239956, 34.584278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.315968, 35.691994, 35.031475>,  <46.629391, 35.571930, 34.729221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.315968, 35.691994, 35.031475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.175392, 36.054810, 34.938721>,  <47.091045, 36.272499, 34.883068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.175392, 36.054810, 34.938721>,  <47.315968, 35.691994, 35.031475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.175392, 36.054810, 34.938721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443197, 0.379362, 0.812195,
		0.824661, 0.182668, -0.535320,
		-0.351442, 0.907037, -0.231887,
		47.069958, 36.326920, 34.869156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.544334, 34.924744, 35.278770>,  <47.315968, 35.691994, 35.031475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.544334, 34.924744, 35.278770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.639290, 34.998737, 34.897316>,  <47.696262, 35.043133, 34.668442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.639290, 34.998737, 34.897316>,  <47.544334, 34.924744, 35.278770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.639290, 34.998737, 34.897316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695691, 0.717536, -0.033995,
		0.677981, 0.671508, 0.299028,
		0.237392, 0.184983, -0.953638,
		47.710506, 35.054234, 34.611225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.222008, 30.019773, 30.438568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.907871, 30.129900, 30.216780>,  <37.719391, 30.195976, 30.083706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.907871, 30.129900, 30.216780>,  <38.222008, 30.019773, 30.438568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907871, 30.129900, 30.216780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219766, 0.713337, 0.665471,
		0.578740, 0.644477, -0.499709,
		-0.785342, 0.275316, -0.554471,
		37.672268, 30.212494, 30.050438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308372, 30.762966, 30.188391>,  <38.222008, 30.019773, 30.438568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308372, 30.762966, 30.188391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.919765, 30.673405, 30.219446>,  <37.686604, 30.619667, 30.238079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.919765, 30.673405, 30.219446>,  <38.308372, 30.762966, 30.188391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919765, 30.673405, 30.219446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148663, 0.830949, 0.536119,
		-0.184555, 0.509304, -0.840564,
		-0.971514, -0.223905, 0.077641,
		37.628311, 30.606234, 30.242739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884914, 31.323158, 29.856674>,  <38.308372, 30.762966, 30.188391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884914, 31.323158, 29.856674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677311, 31.130135, 30.138884>,  <37.552750, 31.014320, 30.308208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677311, 31.130135, 30.138884>,  <37.884914, 31.323158, 29.856674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677311, 31.130135, 30.138884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381999, 0.869333, 0.313587,
		-0.764658, -0.106753, -0.635532,
		-0.519013, -0.482559, 0.705523,
		37.521606, 30.985367, 30.350540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330997, 31.722626, 30.007837>,  <37.884914, 31.323158, 29.856674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330997, 31.722626, 30.007837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.343182, 31.492458, 30.334753>,  <37.350494, 31.354359, 30.530903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.343182, 31.492458, 30.334753>,  <37.330997, 31.722626, 30.007837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343182, 31.492458, 30.334753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136423, 0.807626, 0.573698,
		-0.990182, -0.128975, -0.053896,
		0.030465, -0.575419, 0.817291,
		37.352322, 31.319832, 30.579941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879604, 32.059978, 30.506847>,  <37.330997, 31.722626, 30.007837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879604, 32.059978, 30.506847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.068913, 31.800827, 30.745600>,  <37.182499, 31.645336, 30.888851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.068913, 31.800827, 30.745600>,  <36.879604, 32.059978, 30.506847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068913, 31.800827, 30.745600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265613, 0.541082, 0.797922,
		-0.839917, -0.536175, 0.083995,
		0.473274, -0.647878, 0.596880,
		37.210896, 31.606464, 30.924664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375687, 31.854218, 30.951639>,  <36.879604, 32.059978, 30.506847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375687, 31.854218, 30.951639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732861, 31.815470, 31.127495>,  <36.947166, 31.792221, 31.233009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732861, 31.815470, 31.127495>,  <36.375687, 31.854218, 30.951639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732861, 31.815470, 31.127495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294462, 0.613024, 0.733139,
		-0.340527, -0.784103, 0.518868,
		0.892936, -0.096867, 0.439640,
		37.000740, 31.786409, 31.259386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193073, 31.815100, 31.583643>,  <36.375687, 31.854218, 30.951639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193073, 31.815100, 31.583643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.581974, 31.908569, 31.587999>,  <36.815315, 31.964651, 31.590614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.581974, 31.908569, 31.587999>,  <36.193073, 31.815100, 31.583643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581974, 31.908569, 31.587999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150401, 0.588751, 0.794199,
		0.179172, -0.773801, 0.607560,
		0.972254, 0.233676, 0.010893,
		36.873650, 31.978672, 31.591267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352604, 31.795750, 32.317879>,  <36.193073, 31.815100, 31.583643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352604, 31.795750, 32.317879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635059, 32.011169, 32.133995>,  <36.804531, 32.140423, 32.023666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635059, 32.011169, 32.133995>,  <36.352604, 31.795750, 32.317879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635059, 32.011169, 32.133995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093172, 0.714267, 0.693643,
		0.701916, -0.446977, 0.554550,
		0.706140, 0.538548, -0.459710,
		36.846901, 32.172733, 31.996082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471474, 32.261673, 32.844093>,  <36.352604, 31.795750, 32.317879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471474, 32.261673, 32.844093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.674805, 32.414230, 32.535255>,  <36.796803, 32.505764, 32.349953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.674805, 32.414230, 32.535255>,  <36.471474, 32.261673, 32.844093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674805, 32.414230, 32.535255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063474, 0.877547, 0.475271,
		0.858817, -0.290606, 0.421880,
		0.508336, 0.381393, -0.772097,
		36.827305, 32.528648, 32.303627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041893, 32.640892, 33.102352>,  <36.471474, 32.261673, 32.844093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041893, 32.640892, 33.102352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.984184, 32.796879, 32.738567>,  <36.949558, 32.890469, 32.520298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.984184, 32.796879, 32.738567>,  <37.041893, 32.640892, 33.102352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984184, 32.796879, 32.738567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254960, 0.902692, 0.346617,
		0.956129, -0.181869, -0.229655,
		-0.144269, 0.389963, -0.909459,
		36.940903, 32.913868, 32.465729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693096, 33.026154, 32.844994>,  <37.041893, 32.640892, 33.102352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693096, 33.026154, 32.844994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368458, 33.192867, 32.681232>,  <37.173676, 33.292896, 32.582977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368458, 33.192867, 32.681232>,  <37.693096, 33.026154, 32.844994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368458, 33.192867, 32.681232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383490, 0.908708, 0.164880,
		0.440744, -0.023185, -0.897333,
		-0.811591, 0.416788, -0.409399,
		37.124981, 33.317905, 32.558414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932671, 33.444466, 32.283249>,  <37.693096, 33.026154, 32.844994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932671, 33.444466, 32.283249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.581203, 33.604332, 32.387718>,  <37.370323, 33.700253, 32.450397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.581203, 33.604332, 32.387718>,  <37.932671, 33.444466, 32.283249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581203, 33.604332, 32.387718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447804, 0.879604, 0.160524,
		-0.165570, 0.258000, -0.951852,
		-0.878668, 0.399665, 0.261169,
		37.317604, 33.724232, 32.466068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830154, 34.068542, 31.940294>,  <37.932671, 33.444466, 32.283249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830154, 34.068542, 31.940294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.623875, 34.060795, 32.282913>,  <37.500107, 34.056149, 32.488483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.623875, 34.060795, 32.282913>,  <37.830154, 34.068542, 31.940294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623875, 34.060795, 32.282913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328154, 0.919042, 0.218350,
		-0.791433, 0.393683, -0.467597,
		-0.515702, -0.019365, 0.856549,
		37.469166, 34.054985, 32.539879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802631, 34.754025, 32.026993>,  <37.830154, 34.068542, 31.940294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802631, 34.754025, 32.026993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.684834, 34.619587, 32.384834>,  <37.614155, 34.538925, 32.599541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.684834, 34.619587, 32.384834>,  <37.802631, 34.754025, 32.026993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684834, 34.619587, 32.384834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375042, 0.820373, 0.431662,
		-0.878988, 0.462635, -0.115543,
		-0.294490, -0.336092, 0.894605,
		37.596485, 34.518761, 32.653217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318905, 35.241001, 32.272655>,  <37.802631, 34.754025, 32.026993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318905, 35.241001, 32.272655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.469753, 35.062080, 32.597050>,  <37.560265, 34.954727, 32.791687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.469753, 35.062080, 32.597050>,  <37.318905, 35.241001, 32.272655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469753, 35.062080, 32.597050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199396, 0.894319, 0.400544,
		-0.904443, 0.010652, 0.426461,
		0.377125, -0.447304, 0.810985,
		37.582890, 34.927891, 32.840343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143185, 35.689960, 32.753578>,  <37.318905, 35.241001, 32.272655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143185, 35.689960, 32.753578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.385349, 35.444084, 32.955818>,  <37.530647, 35.296558, 33.077164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.385349, 35.444084, 32.955818>,  <37.143185, 35.689960, 32.753578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385349, 35.444084, 32.955818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233401, 0.744430, 0.625579,
		-0.760924, -0.260722, 0.594154,
		0.605408, -0.614694, 0.505601,
		37.566971, 35.259678, 33.107498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946301, 35.780407, 33.457592>,  <37.143185, 35.689960, 32.753578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946301, 35.780407, 33.457592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.325485, 35.653744, 33.470844>,  <37.552998, 35.577747, 33.478794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.325485, 35.653744, 33.470844>,  <36.946301, 35.780407, 33.457592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325485, 35.653744, 33.470844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243279, 0.787523, 0.566237,
		-0.205392, -0.528711, 0.823577,
		0.947961, -0.316660, 0.033127,
		37.609875, 35.558746, 33.480782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099598, 35.974552, 34.141109>,  <36.946301, 35.780407, 33.457592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099598, 35.974552, 34.141109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.451744, 35.877827, 33.977901>,  <37.663033, 35.819790, 33.879978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.451744, 35.877827, 33.977901>,  <37.099598, 35.974552, 34.141109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451744, 35.877827, 33.977901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464285, 0.615176, 0.637179,
		0.096925, -0.750389, 0.653851,
		0.880366, -0.241815, -0.408020,
		37.715855, 35.805283, 33.855495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592823, 35.955139, 34.721882>,  <37.099598, 35.974552, 34.141109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592823, 35.955139, 34.721882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.798904, 36.003540, 34.382488>,  <37.922554, 36.032581, 34.178852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.798904, 36.003540, 34.382488>,  <37.592823, 35.955139, 34.721882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798904, 36.003540, 34.382488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456815, 0.798872, 0.391311,
		0.725180, -0.589204, 0.356304,
		0.515203, 0.121006, -0.848483,
		37.953465, 36.039841, 34.127945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308464, 36.073887, 34.933506>,  <37.592823, 35.955139, 34.721882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308464, 36.073887, 34.933506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.254513, 36.241993, 34.574577>,  <38.222141, 36.342857, 34.359219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.254513, 36.241993, 34.574577>,  <38.308464, 36.073887, 34.933506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254513, 36.241993, 34.574577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385963, 0.856353, 0.343063,
		0.912601, -0.300060, -0.277710,
		-0.134878, 0.420265, -0.897321,
		38.214050, 36.368073, 34.305382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952747, 36.343533, 34.750683>,  <38.308464, 36.073887, 34.933506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952747, 36.343533, 34.750683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.662754, 36.534870, 34.552456>,  <38.488758, 36.649673, 34.433517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.662754, 36.534870, 34.552456>,  <38.952747, 36.343533, 34.750683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662754, 36.534870, 34.552456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391458, 0.878158, 0.274952,
		0.566709, 0.005341, -0.823901,
		-0.724984, 0.478340, -0.495569,
		38.445259, 36.678371, 34.403786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335670, 36.985409, 34.647362>,  <38.952747, 36.343533, 34.750683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335670, 36.985409, 34.647362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.948765, 37.037689, 34.560356>,  <38.716621, 37.069057, 34.508152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.948765, 37.037689, 34.560356>,  <39.335670, 36.985409, 34.647362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948765, 37.037689, 34.560356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116624, 0.990232, 0.076419,
		0.225374, 0.048551, -0.973062,
		-0.967267, 0.130706, -0.217511,
		38.658585, 37.076900, 34.495102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645454, 37.505554, 34.316162>,  <39.335670, 36.985409, 34.647362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645454, 37.505554, 34.316162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.009125, 37.637886, 34.215012>,  <40.227329, 37.717285, 34.154324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.009125, 37.637886, 34.215012>,  <39.645454, 37.505554, 34.316162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009125, 37.637886, 34.215012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106378, -0.402591, -0.909178,
		-0.402592, 0.853504, -0.330834,
		0.909178, 0.330834, -0.252874,
		40.281879, 37.737137, 34.139149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635963, 37.951302, 33.666603>,  <39.645454, 37.505554, 34.316162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635963, 37.951302, 33.666603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.993389, 37.774147, 33.695980>,  <40.207844, 37.667854, 33.713604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.993389, 37.774147, 33.695980>,  <39.635963, 37.951302, 33.666603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993389, 37.774147, 33.695980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120587, -0.394360, -0.911010,
		0.432435, 0.805191, -0.405793,
		0.893565, -0.442886, 0.073439,
		40.261459, 37.641281, 33.718014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877766, 37.996014, 33.000370>,  <39.635963, 37.951302, 33.666603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877766, 37.996014, 33.000370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.119652, 37.722881, 33.164352>,  <40.264782, 37.559002, 33.262741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.119652, 37.722881, 33.164352>,  <39.877766, 37.996014, 33.000370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119652, 37.722881, 33.164352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032570, -0.535505, -0.843904,
		0.795776, 0.496969, -0.346068,
		0.604715, -0.682829, 0.409956,
		40.301067, 37.518032, 33.287338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343349, 37.872570, 32.539589>,  <39.877766, 37.996014, 33.000370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343349, 37.872570, 32.539589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.404415, 37.538643, 32.751163>,  <40.441055, 37.338287, 32.878109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.404415, 37.538643, 32.751163>,  <40.343349, 37.872570, 32.539589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404415, 37.538643, 32.751163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045868, -0.528648, -0.847601,
		0.987213, 0.153657, -0.042413,
		0.152662, -0.834818, 0.528937,
		40.450214, 37.288197, 32.909843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875134, 37.481728, 32.175289>,  <40.343349, 37.872570, 32.539589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875134, 37.481728, 32.175289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.672966, 37.225960, 32.407043>,  <40.551666, 37.072498, 32.546097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.672966, 37.225960, 32.407043>,  <40.875134, 37.481728, 32.175289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672966, 37.225960, 32.407043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115409, -0.715524, -0.688989,
		0.855120, -0.281364, 0.435436,
		-0.505421, -0.639422, 0.579387,
		40.521339, 37.034134, 32.580860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290306, 36.967472, 32.097446>,  <40.875134, 37.481728, 32.175289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290306, 36.967472, 32.097446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.934464, 36.836739, 32.225063>,  <40.720959, 36.758301, 32.301636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.934464, 36.836739, 32.225063>,  <41.290306, 36.967472, 32.097446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934464, 36.836739, 32.225063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077495, -0.796416, -0.599764,
		0.450114, -0.508827, 0.733821,
		-0.889602, -0.326829, 0.319046,
		40.667583, 36.738689, 32.320778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404198, 36.214802, 32.112206>,  <41.290306, 36.967472, 32.097446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404198, 36.214802, 32.112206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.007278, 36.263748, 32.119835>,  <40.769127, 36.293118, 32.124413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.007278, 36.263748, 32.119835>,  <41.404198, 36.214802, 32.112206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007278, 36.263748, 32.119835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108728, -0.787000, -0.607297,
		-0.059300, -0.604696, 0.794246,
		-0.992301, 0.122369, 0.019078,
		40.709587, 36.300461, 32.125557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153431, 35.580402, 32.238998>,  <41.404198, 36.214802, 32.112206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153431, 35.580402, 32.238998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.847881, 35.786808, 32.083961>,  <40.664551, 35.910652, 31.990940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.847881, 35.786808, 32.083961>,  <41.153431, 35.580402, 32.238998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847881, 35.786808, 32.083961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165379, -0.737031, -0.655313,
		-0.623817, -0.436477, 0.648337,
		-0.763874, 0.516017, -0.387588,
		40.618721, 35.941612, 31.967686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556366, 35.138580, 32.212036>,  <41.153431, 35.580402, 32.238998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556366, 35.138580, 32.212036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.489449, 35.425995, 31.942009>,  <40.449299, 35.598446, 31.779993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.489449, 35.425995, 31.942009>,  <40.556366, 35.138580, 32.212036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489449, 35.425995, 31.942009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349160, -0.683520, -0.641006,
		-0.922008, 0.128468, 0.365235,
		-0.167297, 0.718538, -0.675066,
		40.439259, 35.641556, 31.739489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869572, 34.938900, 31.813921>,  <40.556366, 35.138580, 32.212036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869572, 34.938900, 31.813921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.036568, 35.205650, 31.567028>,  <40.136765, 35.365700, 31.418892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.036568, 35.205650, 31.567028>,  <39.869572, 34.938900, 31.813921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036568, 35.205650, 31.567028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290631, -0.545583, -0.786049,
		-0.860949, 0.507556, -0.033961,
		0.417493, 0.666878, -0.617231,
		40.161816, 35.405712, 31.381859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378258, 35.038971, 31.226868>,  <39.869572, 34.938900, 31.813921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378258, 35.038971, 31.226868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.744740, 35.156647, 31.118046>,  <39.964630, 35.227253, 31.052752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.744740, 35.156647, 31.118046>,  <39.378258, 35.038971, 31.226868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744740, 35.156647, 31.118046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065494, -0.559874, -0.825985,
		-0.395313, 0.774593, -0.493694,
		0.916209, 0.294189, -0.272057,
		40.019604, 35.244904, 31.036428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364082, 35.302959, 30.454544>,  <39.378258, 35.038971, 31.226868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364082, 35.302959, 30.454544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.729362, 35.165253, 30.541761>,  <39.948532, 35.082630, 30.594091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.729362, 35.165253, 30.541761>,  <39.364082, 35.302959, 30.454544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729362, 35.165253, 30.541761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118060, -0.735630, -0.667016,
		0.390027, 0.583380, -0.712423,
		0.913203, -0.344263, 0.218042,
		40.003323, 35.061974, 30.607174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779442, 35.019558, 29.776693>,  <39.364082, 35.302959, 30.454544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779442, 35.019558, 29.776693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.935043, 34.862274, 30.109936>,  <40.028404, 34.767906, 30.309881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.935043, 34.862274, 30.109936>,  <39.779442, 35.019558, 29.776693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935043, 34.862274, 30.109936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169862, -0.858215, -0.484370,
		0.905442, 0.329933, -0.267054,
		0.389000, -0.393207, 0.833107,
		40.051743, 34.744312, 30.359867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305286, 34.575542, 29.573673>,  <39.779442, 35.019558, 29.776693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305286, 34.575542, 29.573673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.188038, 34.433304, 29.928669>,  <40.117691, 34.347961, 30.141666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.188038, 34.433304, 29.928669>,  <40.305286, 34.575542, 29.573673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188038, 34.433304, 29.928669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005366, -0.927634, -0.373453,
		0.956061, -0.114228, 0.269997,
		-0.293117, -0.355595, 0.887488,
		40.100101, 34.326626, 30.194916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729271, 33.961498, 29.659643>,  <40.305286, 34.575542, 29.573673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729271, 33.961498, 29.659643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.422180, 33.914391, 29.911587>,  <40.237926, 33.886127, 30.062752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.422180, 33.914391, 29.911587>,  <40.729271, 33.961498, 29.659643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422180, 33.914391, 29.911587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065448, -0.963412, -0.259910,
		0.637422, -0.240764, 0.731933,
		-0.767731, -0.117769, 0.629858,
		40.191860, 33.879059, 30.100544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977810, 33.293163, 30.031874>,  <40.729271, 33.961498, 29.659643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977810, 33.293163, 30.031874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.590149, 33.378952, 30.080458>,  <40.357552, 33.430428, 30.109608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.590149, 33.378952, 30.080458>,  <40.977810, 33.293163, 30.031874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590149, 33.378952, 30.080458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237728, -0.943507, -0.230825,
		0.065090, -0.252578, 0.965385,
		-0.969148, 0.214475, 0.121458,
		40.299404, 33.443295, 30.116896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716610, 32.957611, 30.563520>,  <40.977810, 33.293163, 30.031874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716610, 32.957611, 30.563520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.377151, 33.017406, 30.360559>,  <40.173477, 33.053284, 30.238783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.377151, 33.017406, 30.360559>,  <40.716610, 32.957611, 30.563520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377151, 33.017406, 30.360559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072890, -0.983133, -0.167737,
		-0.523921, -0.105364, 0.845225,
		-0.848642, 0.149489, -0.507404,
		40.122559, 33.062252, 30.208338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247932, 32.474590, 30.795986>,  <40.716610, 32.957611, 30.563520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247932, 32.474590, 30.795986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.124725, 32.585369, 30.431913>,  <40.050800, 32.651836, 30.213470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.124725, 32.585369, 30.431913>,  <40.247932, 32.474590, 30.795986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124725, 32.585369, 30.431913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025410, -0.953957, -0.298864,
		-0.951041, -0.115183, 0.286801,
		-0.308020, 0.276945, -0.910179,
		40.032322, 32.668453, 30.158859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.565083, 32.151081, 30.666931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.637714, 32.225765, 30.280735>,  <39.681293, 32.270576, 30.049017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.637714, 32.225765, 30.280735>,  <39.565083, 32.151081, 30.666931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637714, 32.225765, 30.280735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135702, -0.967660, -0.212649,
		-0.973968, 0.169632, -0.150372,
		0.181581, 0.186708, -0.965489,
		39.692188, 32.281776, 29.991089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266998, 31.614172, 30.357893>,  <39.565083, 32.151081, 30.666931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266998, 31.614172, 30.357893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.473564, 31.752890, 30.044703>,  <39.597504, 31.836121, 29.856789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.473564, 31.752890, 30.044703>,  <39.266998, 31.614172, 30.357893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473564, 31.752890, 30.044703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145318, -0.865578, -0.479226,
		-0.843918, 0.361260, -0.396602,
		0.516415, 0.346795, -0.782974,
		39.628490, 31.856928, 29.809811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824196, 31.427347, 29.809311>,  <39.266998, 31.614172, 30.357893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824196, 31.427347, 29.809311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.204296, 31.462919, 29.689907>,  <39.432358, 31.484262, 29.618265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.204296, 31.462919, 29.689907>,  <38.824196, 31.427347, 29.809311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204296, 31.462919, 29.689907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103767, -0.813239, -0.572603,
		-0.293679, 0.575094, -0.763557,
		0.950255, 0.088930, -0.298507,
		39.489372, 31.489597, 29.600355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743942, 31.262880, 29.186729>,  <38.824196, 31.427347, 29.809311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743942, 31.262880, 29.186729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.133396, 31.216293, 29.265184>,  <39.367069, 31.188341, 29.312258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.133396, 31.216293, 29.265184>,  <38.743942, 31.262880, 29.186729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133396, 31.216293, 29.265184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002766, -0.853742, -0.520688,
		0.228097, 0.507503, -0.830911,
		0.973635, -0.116469, 0.196140,
		39.425488, 31.181353, 29.324026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991570, 30.985643, 28.647568>,  <38.743942, 31.262880, 29.186729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991570, 30.985643, 28.647568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.267017, 30.873178, 28.914927>,  <39.432285, 30.805700, 29.075342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.267017, 30.873178, 28.914927>,  <38.991570, 30.985643, 28.647568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267017, 30.873178, 28.914927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069800, -0.891786, -0.447042,
		0.721756, 0.354495, -0.594476,
		0.688619, -0.281161, 0.668395,
		39.473602, 30.788830, 29.115446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617920, 30.743986, 28.162857>,  <38.991570, 30.985643, 28.647568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617920, 30.743986, 28.162857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.672146, 30.592997, 28.529274>,  <39.704681, 30.502403, 28.749125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.672146, 30.592997, 28.529274>,  <39.617920, 30.743986, 28.162857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672146, 30.592997, 28.529274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039993, -0.925910, -0.375620,
		0.989961, 0.014286, -0.140618,
		0.135565, -0.377473, 0.916044,
		39.712814, 30.479755, 28.804087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269470, 30.310289, 28.195084>,  <39.617920, 30.743986, 28.162857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269470, 30.310289, 28.195084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.043884, 30.160555, 28.489517>,  <39.908535, 30.070715, 28.666178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.043884, 30.160555, 28.489517>,  <40.269470, 30.310289, 28.195084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043884, 30.160555, 28.489517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099056, -0.915587, -0.389728,
		0.819839, -0.146878, 0.553435,
		-0.563960, -0.374336, 0.736085,
		39.874695, 30.048254, 28.710342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622528, 29.670080, 28.408199>,  <40.269470, 30.310289, 28.195084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622528, 29.670080, 28.408199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.247849, 29.640862, 28.545172>,  <40.023041, 29.623329, 28.627356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.247849, 29.640862, 28.545172>,  <40.622528, 29.670080, 28.408199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247849, 29.640862, 28.545172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013521, -0.984812, -0.173096,
		0.349873, -0.157509, 0.923461,
		-0.936700, -0.073048, 0.342429,
		39.966839, 29.618948, 28.647900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446575, 29.071541, 29.018415>,  <40.622528, 29.670080, 28.408199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446575, 29.071541, 29.018415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.130291, 29.141479, 28.783741>,  <39.940521, 29.183443, 28.642937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.130291, 29.141479, 28.783741>,  <40.446575, 29.071541, 29.018415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130291, 29.141479, 28.783741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004457, -0.959964, -0.280088,
		-0.612172, -0.218854, 0.759834,
		-0.790712, 0.174849, -0.586688,
		39.893078, 29.193933, 28.607735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021572, 28.533508, 29.111923>,  <40.446575, 29.071541, 29.018415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021572, 28.533508, 29.111923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.886471, 28.655050, 28.755587>,  <39.805412, 28.727976, 28.541784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.886471, 28.655050, 28.755587>,  <40.021572, 28.533508, 29.111923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886471, 28.655050, 28.755587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100413, -0.952690, -0.286879,
		-0.935864, -0.007441, 0.352282,
		-0.337750, 0.303853, -0.890841,
		39.785145, 28.746206, 28.488335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372265, 28.081137, 28.903643>,  <40.021572, 28.533508, 29.111923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372265, 28.081137, 28.903643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.481796, 28.237104, 28.551966>,  <39.547516, 28.330685, 28.340960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.481796, 28.237104, 28.551966>,  <39.372265, 28.081137, 28.903643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481796, 28.237104, 28.551966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179352, -0.877396, -0.444982,
		-0.944907, 0.279535, -0.170325,
		0.273830, 0.389919, -0.879193,
		39.563946, 28.354080, 28.288208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917919, 27.881308, 28.543447>,  <39.372265, 28.081137, 28.903643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917919, 27.881308, 28.543447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.216209, 27.964754, 28.290346>,  <39.395184, 28.014822, 28.138485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.216209, 27.964754, 28.290346>,  <38.917919, 27.881308, 28.543447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216209, 27.964754, 28.290346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224558, -0.815448, -0.533497,
		-0.627274, 0.539930, -0.561251,
		0.745722, 0.208616, -0.632755,
		39.439926, 28.027338, 28.100519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636280, 27.511747, 27.805370>,  <38.917919, 27.881308, 28.543447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636280, 27.511747, 27.805370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.025360, 27.594652, 27.763626>,  <39.258808, 27.644396, 27.738579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.025360, 27.594652, 27.763626>,  <38.636280, 27.511747, 27.805370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025360, 27.594652, 27.763626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064768, -0.674342, -0.735573,
		-0.222831, 0.708735, -0.669358,
		0.972703, 0.207262, -0.104361,
		39.317169, 27.656830, 27.732317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788044, 27.677658, 27.132601>,  <38.636280, 27.511747, 27.805370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788044, 27.677658, 27.132601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.137394, 27.550694, 27.280365>,  <39.347004, 27.474514, 27.369024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.137394, 27.550694, 27.280365>,  <38.788044, 27.677658, 27.132601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137394, 27.550694, 27.280365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127817, -0.582514, -0.802708,
		0.469978, 0.748282, -0.468182,
		0.873375, -0.317413, 0.369412,
		39.399406, 27.455469, 27.391190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272587, 27.738119, 26.627131>,  <38.788044, 27.677658, 27.132601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272587, 27.738119, 26.627131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.444767, 27.467665, 26.866314>,  <39.548077, 27.305391, 27.009823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.444767, 27.467665, 26.866314>,  <39.272587, 27.738119, 26.627131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444767, 27.467665, 26.866314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088641, -0.627605, -0.773469,
		0.898251, 0.385943, -0.210219,
		0.430450, -0.676136, 0.597958,
		39.573902, 27.264824, 27.045702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966129, 27.646389, 26.376410>,  <39.272587, 27.738119, 26.627131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966129, 27.646389, 26.376410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.865559, 27.331305, 26.601370>,  <39.805218, 27.142254, 26.736345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.865559, 27.331305, 26.601370>,  <39.966129, 27.646389, 26.376410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865559, 27.331305, 26.601370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240055, -0.613661, -0.752193,
		0.937635, -0.054114, 0.343384,
		-0.251426, -0.787713, 0.562399,
		39.790131, 27.094990, 26.770090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469891, 27.123198, 26.392361>,  <39.966129, 27.646389, 26.376410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469891, 27.123198, 26.392361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.186241, 26.876064, 26.528255>,  <40.016052, 26.727785, 26.609793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.186241, 26.876064, 26.528255>,  <40.469891, 27.123198, 26.392361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186241, 26.876064, 26.528255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225957, -0.655564, -0.720541,
		0.667894, -0.434189, 0.604482,
		-0.709127, -0.617832, 0.339739,
		39.973503, 26.690716, 26.630177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729263, 26.536953, 26.628077>,  <40.469891, 27.123198, 26.392361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729263, 26.536953, 26.628077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.352226, 26.424116, 26.556591>,  <40.126003, 26.356415, 26.513700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.352226, 26.424116, 26.556591>,  <40.729263, 26.536953, 26.628077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352226, 26.424116, 26.556591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332331, -0.739994, -0.584779,
		0.032715, -0.610601, 0.791262,
		-0.942595, -0.282092, -0.178713,
		40.069447, 26.339489, 26.502977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686203, 25.772739, 26.544353>,  <40.729263, 26.536953, 26.628077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686203, 25.772739, 26.544353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.319645, 25.864321, 26.413019>,  <40.099712, 25.919270, 26.334219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.319645, 25.864321, 26.413019>,  <40.686203, 25.772739, 26.544353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319645, 25.864321, 26.413019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159542, -0.543375, -0.824191,
		-0.367109, -0.807666, 0.461418,
		-0.916394, 0.228952, -0.328335,
		40.044727, 25.933006, 26.314518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234669, 25.109755, 26.380117>,  <40.686203, 25.772739, 26.544353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234669, 25.109755, 26.380117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.112217, 25.426477, 26.168713>,  <40.038746, 25.616512, 26.041870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.112217, 25.426477, 26.168713>,  <40.234669, 25.109755, 26.380117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112217, 25.426477, 26.168713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168221, -0.501437, -0.848683,
		-0.937010, -0.348711, 0.020305,
		-0.306126, 0.791809, -0.528512,
		40.020378, 25.664021, 26.010159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754932, 24.923502, 25.933224>,  <40.234669, 25.109755, 26.380117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754932, 24.923502, 25.933224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.889027, 25.263371, 25.770411>,  <39.969482, 25.467291, 25.672722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.889027, 25.263371, 25.770411>,  <39.754932, 24.923502, 25.933224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889027, 25.263371, 25.770411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075813, -0.454962, -0.887278,
		-0.939080, 0.266586, -0.216935,
		0.335233, 0.849671, -0.407035,
		39.989597, 25.518272, 25.648300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352036, 25.026304, 25.172848>,  <39.754932, 24.923502, 25.933224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352036, 25.026304, 25.172848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.694313, 25.233242, 25.168079>,  <39.899681, 25.357405, 25.165218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.694313, 25.233242, 25.168079>,  <39.352036, 25.026304, 25.172848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694313, 25.233242, 25.168079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217289, -0.380111, -0.899056,
		-0.469653, 0.766727, -0.437672,
		0.855694, 0.517345, -0.011919,
		39.951019, 25.388445, 25.164503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300858, 25.639452, 24.601652>,  <39.352036, 25.026304, 25.172848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300858, 25.639452, 24.601652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.641018, 25.448093, 24.689251>,  <39.845116, 25.333279, 24.741810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.641018, 25.448093, 24.689251>,  <39.300858, 25.639452, 24.601652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641018, 25.448093, 24.689251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014670, -0.394513, -0.918773,
		0.525933, 0.784537, -0.328476,
		0.850399, -0.478394, 0.218996,
		39.896137, 25.304575, 24.754950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721703, 26.004343, 24.343792>,  <39.300858, 25.639452, 24.601652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721703, 26.004343, 24.343792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.891396, 26.343180, 24.471828>,  <38.993210, 26.546482, 24.548651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.891396, 26.343180, 24.471828>,  <38.721703, 26.004343, 24.343792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891396, 26.343180, 24.471828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829292, 0.221445, 0.513066,
		0.363733, -0.483108, 0.796432,
		0.424233, 0.847094, 0.320091,
		39.018665, 26.597307, 24.567856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526115, 25.758293, 23.570162>,  <38.721703, 26.004343, 24.343792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526115, 25.758293, 23.570162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.126606, 25.774590, 23.558928>,  <37.886902, 25.784367, 23.552187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.126606, 25.774590, 23.558928>,  <38.526115, 25.758293, 23.570162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126606, 25.774590, 23.558928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010344, 0.726948, 0.686614,
		0.048390, 0.685483, -0.726479,
		-0.998775, 0.040740, -0.028087,
		37.826973, 25.786812, 23.550501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285263, 26.409142, 23.425156>,  <38.526115, 25.758293, 23.570162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285263, 26.409142, 23.425156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974449, 26.251642, 23.621597>,  <37.787960, 26.157143, 23.739462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.974449, 26.251642, 23.621597>,  <38.285263, 26.409142, 23.425156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974449, 26.251642, 23.621597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003481, 0.782876, 0.622168,
		-0.629450, 0.481736, -0.609691,
		-0.777033, -0.393746, 0.491104,
		37.741341, 26.133518, 23.768929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813747, 26.952850, 23.541058>,  <38.285263, 26.409142, 23.425156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813747, 26.952850, 23.541058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.687885, 26.694704, 23.819479>,  <37.612370, 26.539816, 23.986532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.687885, 26.694704, 23.819479>,  <37.813747, 26.952850, 23.541058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.687885, 26.694704, 23.819479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057915, 0.744989, 0.664558,
		-0.947437, 0.168795, -0.271792,
		-0.314656, -0.645368, 0.696055,
		37.593487, 26.501093, 24.028296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214401, 27.256279, 23.804260>,  <37.813747, 26.952850, 23.541058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214401, 27.256279, 23.804260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303329, 26.996414, 24.095057>,  <37.356686, 26.840496, 24.269535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303329, 26.996414, 24.095057>,  <37.214401, 27.256279, 23.804260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303329, 26.996414, 24.095057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239827, 0.686300, 0.686641,
		-0.945018, -0.327003, -0.003231,
		0.222316, -0.649662, 0.726990,
		37.370026, 26.801516, 24.313154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661610, 27.337389, 24.371716>,  <37.214401, 27.256279, 23.804260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661610, 27.337389, 24.371716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961441, 27.151096, 24.559851>,  <37.141342, 27.039320, 24.672731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961441, 27.151096, 24.559851>,  <36.661610, 27.337389, 24.371716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961441, 27.151096, 24.559851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200151, 0.517829, 0.831740,
		-0.630925, -0.717596, 0.294938,
		0.749582, -0.465734, 0.470339,
		37.186317, 27.011375, 24.700953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400982, 27.254890, 25.089161>,  <36.661610, 27.337389, 24.371716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400982, 27.254890, 25.089161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800346, 27.232481, 25.091835>,  <37.039963, 27.219036, 25.093439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.800346, 27.232481, 25.091835>,  <36.400982, 27.254890, 25.089161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800346, 27.232481, 25.091835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029522, 0.619738, 0.784254,
		-0.048079, -0.782807, 0.620405,
		0.998407, -0.056022, 0.006687,
		37.099869, 27.215675, 25.093842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690994, 27.218489, 25.878397>,  <36.400982, 27.254890, 25.089161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690994, 27.218489, 25.878397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.000500, 27.318010, 25.645370>,  <37.186203, 27.377724, 25.505554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.000500, 27.318010, 25.645370>,  <36.690994, 27.218489, 25.878397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000500, 27.318010, 25.645370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216976, 0.759920, 0.612733,
		0.595154, -0.600515, 0.534016,
		0.773765, 0.248802, -0.582567,
		37.232628, 27.392651, 25.470600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223995, 27.249153, 26.356087>,  <36.690994, 27.218489, 25.878397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223995, 27.249153, 26.356087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329632, 27.460926, 26.033607>,  <37.393013, 27.587990, 25.840120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329632, 27.460926, 26.033607>,  <37.223995, 27.249153, 26.356087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329632, 27.460926, 26.033607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295320, 0.751341, 0.590147,
		0.918174, -0.393937, 0.042067,
		0.264088, 0.529435, -0.806199,
		37.408859, 27.619757, 25.791748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859657, 27.518999, 26.445665>,  <37.223995, 27.249153, 26.356087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859657, 27.518999, 26.445665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.741341, 27.762890, 26.151524>,  <37.670353, 27.909224, 25.975039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.741341, 27.762890, 26.151524>,  <37.859657, 27.518999, 26.445665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741341, 27.762890, 26.151524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266260, 0.791915, 0.549524,
		0.917395, -0.033251, -0.396586,
		-0.295790, 0.609726, -0.735352,
		37.652603, 27.945808, 25.930918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429214, 27.985569, 26.297693>,  <37.859657, 27.518999, 26.445665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429214, 27.985569, 26.297693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.098701, 28.177229, 26.179251>,  <37.900394, 28.292225, 26.108185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.098701, 28.177229, 26.179251>,  <38.429214, 27.985569, 26.297693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098701, 28.177229, 26.179251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193270, 0.734962, 0.649983,
		0.529066, 0.479838, -0.699889,
		-0.826278, 0.479151, -0.296105,
		37.850819, 28.320974, 26.090420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623920, 28.608240, 26.138054>,  <38.429214, 27.985569, 26.297693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623920, 28.608240, 26.138054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.228069, 28.649384, 26.178150>,  <37.990559, 28.674068, 26.202208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.228069, 28.649384, 26.178150>,  <38.623920, 28.608240, 26.138054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228069, 28.649384, 26.178150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142740, 0.781630, 0.607190,
		-0.015897, 0.615204, -0.788208,
		-0.989632, 0.102856, 0.100240,
		37.931179, 28.680241, 26.208221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484940, 29.327547, 26.272377>,  <38.623920, 28.608240, 26.138054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484940, 29.327547, 26.272377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.152962, 29.160793, 26.420645>,  <37.953773, 29.060741, 26.509605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.152962, 29.160793, 26.420645>,  <38.484940, 29.327547, 26.272377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152962, 29.160793, 26.420645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053485, 0.601941, 0.796747,
		-0.555272, 0.681083, -0.477283,
		-0.829947, -0.416884, 0.370669,
		37.903976, 29.035728, 26.531845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277065, 29.752390, 26.895506>,  <38.484940, 29.327547, 26.272377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277065, 29.752390, 26.895506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016747, 29.453806, 26.951027>,  <37.860558, 29.274656, 26.984339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016747, 29.453806, 26.951027>,  <38.277065, 29.752390, 26.895506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016747, 29.453806, 26.951027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174863, 0.325255, 0.929318,
		-0.738845, 0.580523, -0.342202,
		-0.650793, -0.746460, 0.138801,
		37.821510, 29.229868, 26.992668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618511, 29.990000, 27.124535>,  <38.277065, 29.752390, 26.895506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618511, 29.990000, 27.124535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.639889, 29.613876, 27.258976>,  <37.652714, 29.388203, 27.339642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.639889, 29.613876, 27.258976>,  <37.618511, 29.990000, 27.124535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639889, 29.613876, 27.258976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040924, 0.334239, 0.941599,
		-0.997732, -0.064078, -0.020618,
		0.053445, -0.940307, 0.336103,
		37.655922, 29.331783, 27.359808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199001, 29.985144, 27.664234>,  <37.618511, 29.990000, 27.124535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199001, 29.985144, 27.664234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.402950, 29.653715, 27.756754>,  <37.525318, 29.454859, 27.812265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.402950, 29.653715, 27.756754>,  <37.199001, 29.985144, 27.664234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402950, 29.653715, 27.756754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142430, 0.183853, 0.972580,
		-0.848377, -0.528837, -0.024272,
		0.509874, -0.828571, 0.231299,
		37.555912, 29.405144, 27.826143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881561, 29.747881, 28.189779>,  <37.199001, 29.985144, 27.664234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881561, 29.747881, 28.189779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.213772, 29.530043, 28.236502>,  <37.413097, 29.399340, 28.264534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.213772, 29.530043, 28.236502>,  <36.881561, 29.747881, 28.189779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213772, 29.530043, 28.236502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094472, 0.068934, 0.993138,
		-0.548910, -0.835861, 0.005803,
		0.830526, -0.544595, 0.116804,
		37.462929, 29.366665, 28.271544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746281, 29.056326, 28.696901>,  <36.881561, 29.747881, 28.189779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746281, 29.056326, 28.696901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.101082, 29.238432, 28.666027>,  <37.313961, 29.347696, 28.647503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.101082, 29.238432, 28.666027>,  <36.746281, 29.056326, 28.696901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101082, 29.238432, 28.666027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043032, 0.247919, 0.967825,
		0.459753, -0.855143, 0.239496,
		0.887003, 0.455266, -0.077183,
		37.367184, 29.375011, 28.642872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972790, 28.904053, 29.324476>,  <36.746281, 29.056326, 28.696901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972790, 28.904053, 29.324476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.203476, 29.195669, 29.177019>,  <37.341888, 29.370640, 29.088545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.203476, 29.195669, 29.177019>,  <36.972790, 28.904053, 29.324476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203476, 29.195669, 29.177019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122168, 0.369207, 0.921283,
		0.807760, -0.576353, 0.123861,
		0.576714, 0.729043, -0.368642,
		37.376492, 29.414383, 29.066427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343159, 28.972004, 29.834303>,  <36.972790, 28.904053, 29.324476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343159, 28.972004, 29.834303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.377033, 29.306669, 29.617851>,  <37.397358, 29.507469, 29.487980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.377033, 29.306669, 29.617851>,  <37.343159, 28.972004, 29.834303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377033, 29.306669, 29.617851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093954, 0.533957, 0.840275,
		0.991968, -0.121999, -0.033390,
		0.084684, 0.836664, -0.541131,
		37.402439, 29.557669, 29.455511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942810, 29.305759, 30.175652>,  <37.343159, 28.972004, 29.834303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942810, 29.305759, 30.175652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.724026, 29.573603, 29.974670>,  <37.592754, 29.734308, 29.854082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.724026, 29.573603, 29.974670>,  <37.942810, 29.305759, 30.175652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724026, 29.573603, 29.974670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046966, 0.623790, 0.780180,
		0.835839, 0.403131, -0.372638,
		-0.546962, 0.669606, -0.502454,
		37.559937, 29.774485, 29.823935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.272095, 34.919659, 30.679712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.881351, 34.990444, 30.631672>,  <40.646904, 35.032913, 30.602848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.881351, 34.990444, 30.631672>,  <41.272095, 34.919659, 30.679712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881351, 34.990444, 30.631672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084006, 0.833919, 0.545457,
		0.196679, 0.522747, -0.829490,
		-0.976863, 0.176962, -0.120101,
		40.588291, 35.043533, 30.595642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158157, 35.666458, 30.556515>,  <41.272095, 34.919659, 30.679712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158157, 35.666458, 30.556515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.807308, 35.543175, 30.703844>,  <40.596798, 35.469204, 30.792242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.807308, 35.543175, 30.703844>,  <41.158157, 35.666458, 30.556515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807308, 35.543175, 30.703844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025442, 0.795655, 0.605215,
		-0.479594, 0.521477, -0.705728,
		-0.877122, -0.308212, 0.368324,
		40.544170, 35.450710, 30.814341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801704, 36.329655, 30.729013>,  <41.158157, 35.666458, 30.556515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801704, 36.329655, 30.729013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.629669, 36.026543, 30.925297>,  <40.526447, 35.844677, 31.043068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.629669, 36.026543, 30.925297>,  <40.801704, 36.329655, 30.729013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629669, 36.026543, 30.925297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284170, 0.629555, 0.723124,
		-0.856896, 0.171563, -0.486103,
		-0.430090, -0.757777, 0.490710,
		40.500641, 35.799210, 31.072510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141117, 36.582008, 30.896154>,  <40.801704, 36.329655, 30.729013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141117, 36.582008, 30.896154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.210365, 36.283028, 31.152700>,  <40.251915, 36.103638, 31.306627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.210365, 36.283028, 31.152700>,  <40.141117, 36.582008, 30.896154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210365, 36.283028, 31.152700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016600, 0.648889, 0.760702,
		-0.984761, -0.142338, 0.099927,
		0.173119, -0.747451, 0.641363,
		40.262302, 36.058792, 31.345110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650940, 36.631538, 31.394629>,  <40.141117, 36.582008, 30.896154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650940, 36.631538, 31.394629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.934418, 36.414585, 31.575108>,  <40.104504, 36.284412, 31.683395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.934418, 36.414585, 31.575108>,  <39.650940, 36.631538, 31.394629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934418, 36.414585, 31.575108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044940, 0.603525, 0.796077,
		-0.704084, -0.584451, 0.403339,
		0.708693, -0.542379, 0.451197,
		40.147026, 36.251873, 31.710466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413456, 36.474049, 32.071148>,  <39.650940, 36.631538, 31.394629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413456, 36.474049, 32.071148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.810062, 36.425816, 32.090572>,  <40.048027, 36.396877, 32.102226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.810062, 36.425816, 32.090572>,  <39.413456, 36.474049, 32.071148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810062, 36.425816, 32.090572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019868, 0.509741, 0.860099,
		-0.128463, -0.851836, 0.507811,
		0.991516, -0.120580, 0.048558,
		40.107517, 36.389641, 32.105141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513363, 36.231590, 32.779099>,  <39.413456, 36.474049, 32.071148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513363, 36.231590, 32.779099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.863544, 36.374302, 32.648693>,  <40.073654, 36.459927, 32.570450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.863544, 36.374302, 32.648693>,  <39.513363, 36.231590, 32.779099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863544, 36.374302, 32.648693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048106, 0.606892, 0.793327,
		0.480895, -0.710207, 0.514146,
		0.875457, 0.356773, -0.326016,
		40.126183, 36.481335, 32.550888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958282, 36.137283, 33.288006>,  <39.513363, 36.231590, 32.779099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958282, 36.137283, 33.288006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.104729, 36.435772, 33.065617>,  <40.192596, 36.614864, 32.932182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.104729, 36.435772, 33.065617>,  <39.958282, 36.137283, 33.288006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104729, 36.435772, 33.065617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168154, 0.534568, 0.828228,
		0.915250, -0.396717, 0.070233,
		0.366116, 0.746226, -0.555973,
		40.214565, 36.659641, 32.898823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524540, 36.256008, 33.648293>,  <39.958282, 36.137283, 33.288006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524540, 36.256008, 33.648293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.471035, 36.579609, 33.419338>,  <40.438931, 36.773769, 33.281967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.471035, 36.579609, 33.419338>,  <40.524540, 36.256008, 33.648293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471035, 36.579609, 33.419338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336326, 0.580357, 0.741667,
		0.932197, -0.093300, -0.349719,
		-0.133764, 0.809000, -0.572386,
		40.430904, 36.822308, 33.247623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097916, 36.622879, 33.803604>,  <40.524540, 36.256008, 33.648293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097916, 36.622879, 33.803604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.864994, 36.903809, 33.639816>,  <40.725243, 37.072365, 33.541542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.864994, 36.903809, 33.639816>,  <41.097916, 36.622879, 33.803604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864994, 36.903809, 33.639816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322491, 0.661897, 0.676678,
		0.746272, 0.261982, -0.611917,
		-0.582304, 0.702324, -0.409468,
		40.690304, 37.114506, 33.516975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458065, 37.215664, 33.931988>,  <41.097916, 36.622879, 33.803604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458065, 37.215664, 33.931988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.085587, 37.341000, 33.857487>,  <40.862099, 37.416203, 33.812786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.085587, 37.341000, 33.857487>,  <41.458065, 37.215664, 33.931988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085587, 37.341000, 33.857487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190549, 0.854025, 0.484079,
		0.310749, 0.415281, -0.854972,
		-0.931196, 0.313341, -0.186256,
		40.806229, 37.435001, 33.801609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469017, 37.993587, 33.760990>,  <41.458065, 37.215664, 33.931988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469017, 37.993587, 33.760990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.119205, 37.892632, 33.926636>,  <40.909317, 37.832058, 34.026024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.119205, 37.892632, 33.926636>,  <41.469017, 37.993587, 33.760990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119205, 37.892632, 33.926636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142795, 0.682044, 0.717235,
		-0.463466, 0.686380, -0.560431,
		-0.874534, -0.252387, 0.414115,
		40.856846, 37.816914, 34.050869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705975, 38.578800, 34.016483>,  <41.469017, 37.993587, 33.760990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705975, 38.578800, 34.016483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.330849, 38.494823, 33.905895>,  <41.105774, 38.444439, 33.839542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.330849, 38.494823, 33.905895>,  <41.705975, 38.578800, 34.016483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330849, 38.494823, 33.905895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211982, 0.977007, -0.022847,
		0.274909, 0.037180, -0.960751,
		-0.937811, -0.209943, -0.276470,
		41.049507, 38.431839, 33.822956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464741, 38.947594, 33.433475>,  <41.705975, 38.578800, 34.016483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464741, 38.947594, 33.433475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.155247, 38.839039, 33.662449>,  <40.969551, 38.773907, 33.799835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.155247, 38.839039, 33.662449>,  <41.464741, 38.947594, 33.433475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155247, 38.839039, 33.662449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362588, 0.930667, -0.048879,
		-0.519483, -0.245378, -0.818491,
		-0.773736, -0.271383, 0.572437,
		40.923126, 38.757626, 33.834179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578644, 39.618217, 33.767841>,  <41.464741, 38.947594, 33.433475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578644, 39.618217, 33.767841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.490715, 39.977341, 33.615204>,  <41.437958, 40.192814, 33.523621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.490715, 39.977341, 33.615204>,  <41.578644, 39.618217, 33.767841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490715, 39.977341, 33.615204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111947, -0.411794, -0.904375,
		-0.969096, -0.156080, 0.191027,
		-0.219818, 0.897811, -0.381595,
		41.424770, 40.246685, 33.500725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937813, 39.611507, 33.317764>,  <41.578644, 39.618217, 33.767841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937813, 39.611507, 33.317764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.159935, 39.910851, 33.172661>,  <41.293209, 40.090458, 33.085598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.159935, 39.910851, 33.172661>,  <40.937813, 39.611507, 33.317764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159935, 39.910851, 33.172661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015551, -0.445457, -0.895168,
		-0.831502, 0.491449, -0.259002,
		0.555304, 0.748362, -0.362756,
		41.326527, 40.135361, 33.063835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637909, 39.646080, 32.627487>,  <40.937813, 39.611507, 33.317764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637909, 39.646080, 32.627487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.970085, 39.867596, 32.603230>,  <41.169392, 40.000504, 32.588673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.970085, 39.867596, 32.603230>,  <40.637909, 39.646080, 32.627487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970085, 39.867596, 32.603230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295981, -0.530812, -0.794124,
		-0.471971, 0.641526, -0.604721,
		0.830445, 0.553790, -0.060649,
		41.219219, 40.033733, 32.585033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565243, 39.962353, 32.020023>,  <40.637909, 39.646080, 32.627487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565243, 39.962353, 32.020023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.951397, 39.944660, 32.122837>,  <41.183090, 39.934044, 32.184525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.951397, 39.944660, 32.122837>,  <40.565243, 39.962353, 32.020023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951397, 39.944660, 32.122837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200679, -0.503495, -0.840369,
		0.166583, 0.862865, -0.477194,
		0.965390, -0.044229, 0.257033,
		41.241013, 39.931393, 32.199947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783375, 39.895344, 31.378889>,  <40.565243, 39.962353, 32.020023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783375, 39.895344, 31.378889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.122478, 39.822338, 31.578087>,  <41.325939, 39.778534, 31.697605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.122478, 39.822338, 31.578087>,  <40.783375, 39.895344, 31.378889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122478, 39.822338, 31.578087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395226, -0.408766, -0.822622,
		0.353704, 0.894203, -0.274399,
		0.847756, -0.182515, 0.497994,
		41.376804, 39.767582, 31.727486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394974, 40.069656, 30.941101>,  <40.783375, 39.895344, 31.378889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394974, 40.069656, 30.941101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.507259, 39.805351, 31.219551>,  <41.574631, 39.646767, 31.386621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.507259, 39.805351, 31.219551>,  <41.394974, 40.069656, 30.941101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507259, 39.805351, 31.219551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293354, -0.631511, -0.717730,
		0.913861, 0.405690, 0.016561,
		0.280717, -0.660764, 0.696124,
		41.591476, 39.607121, 31.428389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081028, 39.924103, 30.843678>,  <41.394974, 40.069656, 30.941101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081028, 39.924103, 30.843678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.918339, 39.609356, 31.029327>,  <41.820724, 39.420506, 31.140718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.918339, 39.609356, 31.029327>,  <42.081028, 39.924103, 30.843678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918339, 39.609356, 31.029327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329105, -0.600137, -0.729058,
		0.852213, -0.143779, 0.503052,
		-0.406723, -0.786870, 0.464126,
		41.796322, 39.373295, 31.168566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.473518, 39.421692, 30.559528>,  <42.081028, 39.924103, 30.843678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.473518, 39.421692, 30.559528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.180531, 39.206871, 30.726892>,  <42.004738, 39.077980, 30.827311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.180531, 39.206871, 30.726892>,  <42.473518, 39.421692, 30.559528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180531, 39.206871, 30.726892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157169, -0.731378, -0.663615,
		0.662411, -0.420315, 0.620118,
		-0.732468, -0.537050, 0.418412,
		41.960789, 39.045757, 30.852417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780212, 38.614422, 30.638651>,  <42.473518, 39.421692, 30.559528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780212, 38.614422, 30.638651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.382942, 38.596714, 30.681801>,  <42.144581, 38.586090, 30.707691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.382942, 38.596714, 30.681801>,  <42.780212, 38.614422, 30.638651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382942, 38.596714, 30.681801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013557, -0.875030, -0.483880,
		0.115812, -0.482041, 0.868460,
		-0.993179, -0.044265, 0.107874,
		42.084988, 38.583435, 30.714163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631203, 38.011127, 30.851728>,  <42.780212, 38.614422, 30.638651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631203, 38.011127, 30.851728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.282322, 38.119656, 30.688931>,  <42.072994, 38.184772, 30.591251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.282322, 38.119656, 30.688931>,  <42.631203, 38.011127, 30.851728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282322, 38.119656, 30.688931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072070, -0.894259, -0.441708,
		-0.483802, -0.355928, 0.799531,
		-0.872205, 0.271322, -0.406993,
		42.020660, 38.201054, 30.566832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213516, 37.465714, 30.838951>,  <42.631203, 38.011127, 30.851728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213516, 37.465714, 30.838951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.018070, 37.670914, 30.556652>,  <41.900803, 37.794033, 30.387272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.018070, 37.670914, 30.556652>,  <42.213516, 37.465714, 30.838951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018070, 37.670914, 30.556652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170131, -0.849374, -0.499618,
		-0.855746, -0.124057, 0.502304,
		-0.488625, 0.513004, -0.705743,
		41.871487, 37.824814, 30.344927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513401, 37.190441, 30.789894>,  <42.213516, 37.465714, 30.838951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513401, 37.190441, 30.789894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.588821, 37.385918, 30.449158>,  <41.634071, 37.503204, 30.244715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.588821, 37.385918, 30.449158>,  <41.513401, 37.190441, 30.789894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588821, 37.385918, 30.449158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304978, -0.795377, -0.523798,
		-0.933509, 0.358554, -0.000928,
		0.188548, 0.488687, -0.851842,
		41.645386, 37.532524, 30.193605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955013, 37.010117, 30.355232>,  <41.513401, 37.190441, 30.789894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955013, 37.010117, 30.355232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.249077, 37.123894, 30.109098>,  <41.425514, 37.192162, 29.961418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.249077, 37.123894, 30.109098>,  <40.955013, 37.010117, 30.355232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249077, 37.123894, 30.109098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200767, -0.775633, -0.598403,
		-0.647484, 0.563459, -0.513106,
		0.735158, 0.284442, -0.615334,
		41.469624, 37.209225, 29.924498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590088, 37.018398, 29.731880>,  <40.955013, 37.010117, 30.355232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590088, 37.018398, 29.731880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.984825, 36.983040, 29.677715>,  <41.221668, 36.961826, 29.645216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.984825, 36.983040, 29.677715>,  <40.590088, 37.018398, 29.731880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984825, 36.983040, 29.677715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152506, -0.787215, -0.597524,
		-0.053777, 0.610311, -0.790335,
		0.986838, -0.088397, -0.135410,
		41.280876, 36.956520, 29.637093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233582, 37.242119, 29.166777>,  <40.590088, 37.018398, 29.731880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233582, 37.242119, 29.166777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.841217, 37.164909, 29.176233>,  <39.605797, 37.118584, 29.181908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.841217, 37.164909, 29.176233>,  <40.233582, 37.242119, 29.166777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841217, 37.164909, 29.176233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156308, 0.854924, 0.494645,
		-0.115687, 0.481507, -0.868774,
		-0.980910, -0.193021, 0.023640,
		39.546944, 37.107002, 29.183325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949162, 37.858292, 29.066206>,  <40.233582, 37.242119, 29.166777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949162, 37.858292, 29.066206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.632648, 37.664154, 29.214970>,  <39.442741, 37.547672, 29.304228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.632648, 37.664154, 29.214970>,  <39.949162, 37.858292, 29.066206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632648, 37.664154, 29.214970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229675, 0.799620, 0.554848,
		-0.566679, 0.353622, -0.744195,
		-0.791280, -0.485344, 0.371910,
		39.395264, 37.518551, 29.326542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395412, 38.409584, 29.098598>,  <39.949162, 37.858292, 29.066206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395412, 38.409584, 29.098598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.270260, 38.125641, 29.351011>,  <39.195168, 37.955273, 29.502459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.270260, 38.125641, 29.351011>,  <39.395412, 38.409584, 29.098598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270260, 38.125641, 29.351011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312963, 0.704338, 0.637151,
		-0.896748, 0.001865, -0.442537,
		-0.312884, -0.709862, 0.631030,
		39.176395, 37.912682, 29.540321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696747, 38.517418, 29.407032>,  <39.395412, 38.409584, 29.098598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696747, 38.517418, 29.407032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.815910, 38.237312, 29.666534>,  <38.887409, 38.069248, 29.822235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.815910, 38.237312, 29.666534>,  <38.696747, 38.517418, 29.407032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815910, 38.237312, 29.666534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282893, 0.584323, 0.760617,
		-0.911715, -0.410121, -0.024027,
		0.297905, -0.700262, 0.648756,
		38.905281, 38.027233, 29.861162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132542, 38.276360, 29.887650>,  <38.696747, 38.517418, 29.407032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132542, 38.276360, 29.887650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.449177, 38.184822, 30.114283>,  <38.639160, 38.129898, 30.250261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.449177, 38.184822, 30.114283>,  <38.132542, 38.276360, 29.887650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449177, 38.184822, 30.114283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473592, 0.356152, 0.805523,
		-0.386129, -0.905972, 0.173547,
		0.791591, -0.228845, 0.566581,
		38.686653, 38.116169, 30.284258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769291, 38.070583, 30.493902>,  <38.132542, 38.276360, 29.887650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769291, 38.070583, 30.493902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.143631, 38.177589, 30.585653>,  <38.368237, 38.241795, 30.640705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.143631, 38.177589, 30.585653>,  <37.769291, 38.070583, 30.493902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143631, 38.177589, 30.585653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330986, 0.443876, 0.832720,
		0.120952, -0.855224, 0.503947,
		0.935852, 0.267519, 0.229380,
		38.424385, 38.257847, 30.654467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809193, 37.891026, 31.247225>,  <37.769291, 38.070583, 30.493902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809193, 37.891026, 31.247225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.135799, 38.110447, 31.175234>,  <38.331764, 38.242100, 31.132038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.135799, 38.110447, 31.175234>,  <37.809193, 37.891026, 31.247225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135799, 38.110447, 31.175234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123345, 0.470302, 0.873843,
		0.563998, -0.691304, 0.451669,
		0.816512, 0.548557, -0.179981,
		38.380753, 38.275013, 31.121241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197941, 37.974480, 31.868675>,  <37.809193, 37.891026, 31.247225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197941, 37.974480, 31.868675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.297150, 38.287884, 31.640783>,  <38.356674, 38.475925, 31.504047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.297150, 38.287884, 31.640783>,  <38.197941, 37.974480, 31.868675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297150, 38.287884, 31.640783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041091, 0.596085, 0.801869,
		0.967882, -0.175472, 0.180038,
		0.248024, 0.783512, -0.569730,
		38.371555, 38.522938, 31.469864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606102, 38.364731, 32.352703>,  <38.197941, 37.974480, 31.868675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606102, 38.364731, 32.352703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.480381, 38.612671, 32.065094>,  <38.404949, 38.761436, 31.892529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.480381, 38.612671, 32.065094>,  <38.606102, 38.364731, 32.352703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480381, 38.612671, 32.065094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088303, 0.735035, 0.672254,
		0.945207, 0.274783, -0.176288,
		-0.314302, 0.619853, -0.719025,
		38.386089, 38.798626, 31.849386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738010, 38.898388, 32.714027>,  <38.606102, 38.364731, 32.352703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738010, 38.898388, 32.714027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.545986, 39.078712, 32.413013>,  <38.430771, 39.186909, 32.232407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.545986, 39.078712, 32.413013>,  <38.738010, 38.898388, 32.714027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545986, 39.078712, 32.413013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130342, 0.811669, 0.569389,
		0.867498, 0.371428, -0.330891,
		-0.480062, 0.450815, -0.752534,
		38.401966, 39.213959, 32.187252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183239, 39.536446, 32.549683>,  <38.738010, 38.898388, 32.714027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183239, 39.536446, 32.549683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.806618, 39.587097, 32.424820>,  <38.580643, 39.617489, 32.349903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.806618, 39.587097, 32.424820>,  <39.183239, 39.536446, 32.549683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806618, 39.587097, 32.424820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051599, 0.861511, 0.505111,
		0.332883, 0.491697, -0.804626,
		-0.941555, 0.126625, -0.312153,
		38.524151, 39.625084, 32.331173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133808, 40.206779, 32.206341>,  <39.183239, 39.536446, 32.549683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133808, 40.206779, 32.206341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.764618, 40.118961, 32.332779>,  <38.543102, 40.066273, 32.408642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.764618, 40.118961, 32.332779>,  <39.133808, 40.206779, 32.206341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764618, 40.118961, 32.332779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112034, 0.939031, 0.325069,
		-0.368188, 0.264618, -0.891300,
		-0.922977, -0.219542, 0.316094,
		38.487724, 40.053101, 32.427608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.547184, 35.334538, 26.546288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182816, 35.169510, 26.547077>,  <39.964195, 35.070496, 26.547552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182816, 35.169510, 26.547077>,  <40.547184, 35.334538, 26.546288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182816, 35.169510, 26.547077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330327, 0.732197, 0.595628,
		-0.247183, 0.541920, -0.803258,
		-0.910925, -0.412567, 0.001976,
		39.909538, 35.045738, 26.547670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915104, 35.823277, 26.247923>,  <40.547184, 35.334538, 26.546288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915104, 35.823277, 26.247923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763237, 35.568691, 26.516481>,  <39.672115, 35.415939, 26.677616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763237, 35.568691, 26.516481>,  <39.915104, 35.823277, 26.247923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763237, 35.568691, 26.516481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460706, 0.759420, 0.459381,
		-0.802249, -0.134904, -0.581547,
		-0.379666, -0.636461, 0.671396,
		39.649338, 35.377754, 26.717899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350384, 36.188732, 26.499775>,  <39.915104, 35.823277, 26.247923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350384, 36.188732, 26.499775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380436, 35.891491, 26.765753>,  <39.398468, 35.713146, 26.925341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380436, 35.891491, 26.765753>,  <39.350384, 36.188732, 26.499775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380436, 35.891491, 26.765753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354712, 0.603301, 0.714288,
		-0.931952, -0.289526, -0.218264,
		0.075126, -0.743103, 0.664946,
		39.402973, 35.668560, 26.965237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779591, 36.232315, 26.823730>,  <39.350384, 36.188732, 26.499775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779591, 36.232315, 26.823730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031044, 36.036800, 27.065689>,  <39.181915, 35.919491, 27.210865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031044, 36.036800, 27.065689>,  <38.779591, 36.232315, 26.823730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031044, 36.036800, 27.065689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238531, 0.619131, 0.748184,
		-0.740215, -0.614623, 0.272617,
		0.628637, -0.488790, 0.604897,
		39.219635, 35.890163, 27.247158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385509, 35.940952, 27.427090>,  <38.779591, 36.232315, 26.823730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385509, 35.940952, 27.427090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773884, 35.917225, 27.519833>,  <39.006908, 35.902988, 27.575480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773884, 35.917225, 27.519833>,  <38.385509, 35.940952, 27.427090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773884, 35.917225, 27.519833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164792, 0.536832, 0.827439,
		-0.173555, -0.841601, 0.511456,
		0.970939, -0.059322, 0.231859,
		39.065166, 35.899429, 27.589390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513935, 35.733337, 28.119347>,  <38.385509, 35.940952, 27.427090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513935, 35.733337, 28.119347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842075, 35.940296, 28.021915>,  <39.038960, 36.064472, 27.963457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842075, 35.940296, 28.021915>,  <38.513935, 35.733337, 28.119347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842075, 35.940296, 28.021915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079736, 0.525266, 0.847194,
		0.566278, -0.675572, 0.472156,
		0.820348, 0.517395, -0.243580,
		39.088181, 36.095516, 27.948841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953899, 35.585476, 28.677773>,  <38.513935, 35.733337, 28.119347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953899, 35.585476, 28.677773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091351, 35.918819, 28.504597>,  <39.173820, 36.118824, 28.400690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091351, 35.918819, 28.504597>,  <38.953899, 35.585476, 28.677773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091351, 35.918819, 28.504597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169911, 0.398234, 0.901410,
		0.923606, -0.383314, -0.004750,
		0.343631, 0.833355, -0.432941,
		39.194439, 36.168827, 28.374714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550533, 35.873055, 29.051018>,  <38.953899, 35.585476, 28.677773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550533, 35.873055, 29.051018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423027, 36.188160, 28.840181>,  <39.346523, 36.377224, 28.713678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423027, 36.188160, 28.840181>,  <39.550533, 35.873055, 29.051018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423027, 36.188160, 28.840181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260095, 0.607453, 0.750568,
		0.911451, 0.102158, -0.398524,
		-0.318761, 0.787759, -0.527093,
		39.327400, 36.424488, 28.682053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094460, 36.415478, 29.174932>,  <39.550533, 35.873055, 29.051018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094460, 36.415478, 29.174932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759300, 36.597767, 29.054773>,  <39.558205, 36.707138, 28.982677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759300, 36.597767, 29.054773>,  <40.094460, 36.415478, 29.174932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759300, 36.597767, 29.054773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101894, 0.671289, 0.734159,
		0.536225, 0.584545, -0.608910,
		-0.837902, 0.455718, -0.300400,
		39.507931, 36.734482, 28.964653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753132, 36.807152, 28.933853>,  <40.094460, 36.415478, 29.174932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753132, 36.807152, 28.933853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107845, 36.718273, 29.095961>,  <41.320675, 36.664944, 29.193226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107845, 36.718273, 29.095961>,  <40.753132, 36.807152, 28.933853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107845, 36.718273, 29.095961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045412, -0.830721, -0.554834,
		0.459949, 0.510422, -0.726578,
		0.886783, -0.222200, 0.405269,
		41.373878, 36.651611, 29.217541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212440, 36.691883, 28.400829>,  <40.753132, 36.807152, 28.933853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212440, 36.691883, 28.400829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400677, 36.512234, 28.704628>,  <41.513618, 36.404442, 28.886908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400677, 36.512234, 28.704628>,  <41.212440, 36.691883, 28.400829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400677, 36.512234, 28.704628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197266, -0.785422, -0.586685,
		0.860020, 0.425909, -0.281013,
		0.470587, -0.449126, 0.759495,
		41.541855, 36.377495, 28.932476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747234, 36.390121, 28.054579>,  <41.212440, 36.691883, 28.400829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747234, 36.390121, 28.054579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706768, 36.189503, 28.398258>,  <41.682487, 36.069134, 28.604465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706768, 36.189503, 28.398258>,  <41.747234, 36.390121, 28.054579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706768, 36.189503, 28.398258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109805, -0.863981, -0.491406,
		0.988792, 0.044633, 0.142474,
		-0.101162, -0.501543, 0.859198,
		41.676418, 36.039040, 28.656017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183762, 35.897709, 27.918795>,  <41.747234, 36.390121, 28.054579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183762, 35.897709, 27.918795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987820, 35.748741, 28.234097>,  <41.870255, 35.659359, 28.423277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987820, 35.748741, 28.234097>,  <42.183762, 35.897709, 27.918795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987820, 35.748741, 28.234097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136211, -0.925755, -0.352738,
		0.861096, -0.065423, 0.504215,
		-0.489857, -0.372421, 0.788253,
		41.840862, 35.637016, 28.470572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668301, 35.317924, 28.199261>,  <42.183762, 35.897709, 27.918795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668301, 35.317924, 28.199261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290882, 35.257053, 28.316944>,  <42.064430, 35.220531, 28.387554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290882, 35.257053, 28.316944>,  <42.668301, 35.317924, 28.199261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290882, 35.257053, 28.316944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077712, -0.965125, -0.249990,
		0.321992, -0.213013, 0.922468,
		-0.943547, -0.152182, 0.294209,
		42.007816, 35.211399, 28.405207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674839, 34.705467, 28.487534>,  <42.668301, 35.317924, 28.199261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674839, 34.705467, 28.487534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289314, 34.755371, 28.393301>,  <42.057999, 34.785313, 28.336761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289314, 34.755371, 28.393301>,  <42.674839, 34.705467, 28.487534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289314, 34.755371, 28.393301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030368, -0.929363, -0.367915,
		-0.264839, -0.347448, 0.899522,
		-0.963814, 0.124755, -0.235580,
		42.000172, 34.792797, 28.322626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306652, 34.071964, 28.585320>,  <42.674839, 34.705467, 28.487534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306652, 34.071964, 28.585320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057610, 34.253593, 28.330389>,  <41.908184, 34.362572, 28.177431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057610, 34.253593, 28.330389>,  <42.306652, 34.071964, 28.585320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057610, 34.253593, 28.330389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277888, -0.889645, -0.362366,
		-0.731533, -0.048507, 0.680079,
		-0.622606, 0.454068, -0.637325,
		41.870827, 34.389812, 28.139191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826817, 33.654819, 28.627089>,  <42.306652, 34.071964, 28.585320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826817, 33.654819, 28.627089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797428, 33.855778, 28.282484>,  <41.779797, 33.976353, 28.075722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797428, 33.855778, 28.282484>,  <41.826817, 33.654819, 28.627089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797428, 33.855778, 28.282484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306823, -0.833334, -0.459797,
		-0.948927, 0.230550, 0.215373,
		-0.073471, 0.502395, -0.861511,
		41.775387, 34.006496, 28.024031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218266, 33.255787, 28.339634>,  <41.826817, 33.654819, 28.627089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218266, 33.255787, 28.339634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352043, 33.482391, 28.038380>,  <41.432312, 33.618355, 27.857628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352043, 33.482391, 28.038380>,  <41.218266, 33.255787, 28.339634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352043, 33.482391, 28.038380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099549, -0.773447, -0.625995,
		-0.937142, 0.284335, -0.202281,
		0.334446, 0.566510, -0.753135,
		41.452377, 33.652344, 27.812439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877857, 32.961319, 27.774151>,  <41.218266, 33.255787, 28.339634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877857, 32.961319, 27.774151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159126, 33.179855, 27.592134>,  <41.327888, 33.310978, 27.482924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159126, 33.179855, 27.592134>,  <40.877857, 32.961319, 27.774151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159126, 33.179855, 27.592134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079755, -0.696555, -0.713057,
		-0.706532, 0.465110, -0.533372,
		0.703173, 0.546337, -0.455043,
		41.370079, 33.343758, 27.455622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702797, 33.097393, 27.147289>,  <40.877857, 32.961319, 27.774151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702797, 33.097393, 27.147289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102428, 33.114483, 27.145737>,  <41.342209, 33.124737, 27.144806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102428, 33.114483, 27.145737>,  <40.702797, 33.097393, 27.147289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102428, 33.114483, 27.145737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028144, -0.720995, -0.692369,
		-0.032379, 0.691622, -0.721533,
		0.999079, 0.042725, -0.003880,
		41.402153, 33.127300, 27.144573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961880, 33.099438, 26.479574>,  <40.702797, 33.097393, 27.147289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961880, 33.099438, 26.479574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290760, 32.981419, 26.674278>,  <41.488087, 32.910606, 26.791101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290760, 32.981419, 26.674278>,  <40.961880, 33.099438, 26.479574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290760, 32.981419, 26.674278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064274, -0.801568, -0.594439,
		0.565562, 0.520033, -0.640083,
		0.822198, -0.295051, 0.486761,
		41.537418, 32.892902, 26.820307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447132, 32.822670, 25.877186>,  <40.961880, 33.099438, 26.479574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447132, 32.822670, 25.877186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556126, 32.672237, 26.231432>,  <41.621521, 32.581978, 26.443979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556126, 32.672237, 26.231432>,  <41.447132, 32.822670, 25.877186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556126, 32.672237, 26.231432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142458, -0.894529, -0.423702,
		0.951555, 0.241615, -0.190170,
		0.272485, -0.376084, 0.885614,
		41.637871, 32.559414, 26.497116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983719, 32.444927, 25.617767>,  <41.447132, 32.822670, 25.877186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983719, 32.444927, 25.617767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910370, 32.289246, 25.978853>,  <41.866360, 32.195835, 26.195505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.910370, 32.289246, 25.978853>,  <41.983719, 32.444927, 25.617767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910370, 32.289246, 25.978853> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204773, -0.913266, -0.352155,
		0.961479, 0.120275, 0.247169,
		-0.183376, -0.389203, 0.902715,
		41.855358, 32.172485, 26.249668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.278793, 30.797161, 27.106745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.569336, 30.971558, 26.894211>,  <34.743660, 31.076195, 26.766691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.569336, 30.971558, 26.894211>,  <34.278793, 30.797161, 27.106745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569336, 30.971558, 26.894211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265778, 0.534751, 0.802124,
		0.633852, -0.723846, 0.272543,
		0.726357, 0.435992, -0.531335,
		34.787243, 31.102354, 26.734810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886814, 30.713701, 27.530256>,  <34.278793, 30.797161, 27.106745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886814, 30.713701, 27.530256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.919289, 31.012262, 27.266047>,  <34.938774, 31.191399, 27.107521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.919289, 31.012262, 27.266047>,  <34.886814, 30.713701, 27.530256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919289, 31.012262, 27.266047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225409, 0.631795, 0.741638,
		0.970876, -0.209096, -0.116955,
		0.081182, 0.746401, -0.660526,
		34.943642, 31.236183, 27.067888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563370, 31.025045, 27.712030>,  <34.886814, 30.713701, 27.530256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563370, 31.025045, 27.712030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.330296, 31.281858, 27.512722>,  <35.190453, 31.435946, 27.393137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.330296, 31.281858, 27.512722>,  <35.563370, 31.025045, 27.712030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330296, 31.281858, 27.512722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257663, 0.727421, 0.635978,
		0.770772, 0.242188, -0.589284,
		-0.582684, 0.642031, -0.498272,
		35.155491, 31.474468, 27.363239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949604, 31.659355, 27.562595>,  <35.563370, 31.025045, 27.712030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949604, 31.659355, 27.562595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.564014, 31.764927, 27.549318>,  <35.332661, 31.828270, 27.541351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.564014, 31.764927, 27.549318>,  <35.949604, 31.659355, 27.562595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564014, 31.764927, 27.549318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191310, 0.774556, 0.602880,
		0.184829, 0.574808, -0.797141,
		-0.963970, 0.263931, -0.033194,
		35.274822, 31.844107, 27.539360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950443, 32.373371, 27.752865>,  <35.949604, 31.659355, 27.562595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950443, 32.373371, 27.752865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.561249, 32.286964, 27.785460>,  <35.327732, 32.235119, 27.805016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.561249, 32.286964, 27.785460>,  <35.950443, 32.373371, 27.752865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561249, 32.286964, 27.785460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137520, 0.825753, 0.547010,
		-0.185451, 0.521025, -0.833151,
		-0.972983, -0.216019, 0.081485,
		35.269352, 32.222160, 27.809906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614403, 32.905994, 27.527725>,  <35.950443, 32.373371, 27.752865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614403, 32.905994, 27.527725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.379902, 32.718220, 27.791828>,  <35.239201, 32.605556, 27.950291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.379902, 32.718220, 27.791828>,  <35.614403, 32.905994, 27.527725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379902, 32.718220, 27.791828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008077, 0.818349, 0.574665,
		-0.810089, 0.331565, -0.483549,
		-0.586251, -0.469436, 0.660258,
		35.204025, 32.577389, 27.989906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348614, 33.470348, 27.865528>,  <35.614403, 32.905994, 27.527725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348614, 33.470348, 27.865528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.244591, 33.173439, 28.112556>,  <35.182175, 32.995293, 28.260775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.244591, 33.173439, 28.112556>,  <35.348614, 33.470348, 27.865528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244591, 33.173439, 28.112556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058689, 0.650547, 0.757195,
		-0.963807, 0.160671, -0.212745,
		-0.260060, -0.742276, 0.617572,
		35.166573, 32.950756, 28.297829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756992, 33.718842, 28.229343>,  <35.348614, 33.470348, 27.865528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756992, 33.718842, 28.229343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.905437, 33.428780, 28.461353>,  <34.994503, 33.254742, 28.600559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.905437, 33.428780, 28.461353>,  <34.756992, 33.718842, 28.229343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905437, 33.428780, 28.461353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193613, 0.550479, 0.812088,
		-0.908179, -0.413677, 0.063890,
		0.371112, -0.725151, 0.580027,
		35.016769, 33.211235, 28.635361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531811, 33.974922, 28.791710>,  <34.756992, 33.718842, 28.229343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531811, 33.974922, 28.791710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.763992, 33.668987, 28.903490>,  <34.903301, 33.485424, 28.970558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.763992, 33.668987, 28.903490>,  <34.531811, 33.974922, 28.791710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763992, 33.668987, 28.903490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057740, 0.380975, 0.922781,
		-0.812242, -0.519498, 0.265301,
		0.580456, -0.764840, 0.279448,
		34.938129, 33.439537, 28.987324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219116, 33.551006, 29.350407>,  <34.531811, 33.974922, 28.791710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219116, 33.551006, 29.350407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.617668, 33.519215, 29.362526>,  <34.856800, 33.500141, 29.369799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.617668, 33.519215, 29.362526>,  <34.219116, 33.551006, 29.350407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617668, 33.519215, 29.362526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009192, 0.253529, 0.967284,
		-0.084558, -0.964057, 0.251879,
		0.996376, -0.079477, 0.030299,
		34.916580, 33.495373, 29.371616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346779, 33.254395, 30.002909>,  <34.219116, 33.551006, 29.350407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346779, 33.254395, 30.002909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.701935, 33.406048, 29.898668>,  <34.915028, 33.497040, 29.836124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.701935, 33.406048, 29.898668>,  <34.346779, 33.254395, 30.002909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701935, 33.406048, 29.898668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115945, 0.363757, 0.924249,
		0.445214, -0.850843, 0.279016,
		0.887886, 0.379138, -0.260601,
		34.968300, 33.519791, 29.820488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895439, 32.931812, 30.436110>,  <34.346779, 33.254395, 30.002909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895439, 32.931812, 30.436110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.067478, 33.272659, 30.316841>,  <35.170700, 33.477169, 30.245279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.067478, 33.272659, 30.316841>,  <34.895439, 32.931812, 30.436110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067478, 33.272659, 30.316841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173705, 0.245998, 0.953578,
		0.885915, -0.461923, -0.042215,
		0.430095, 0.852122, -0.298172,
		35.196507, 33.528297, 30.227390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169960, 33.152962, 31.044443>,  <34.895439, 32.931812, 30.436110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169960, 33.152962, 31.044443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.232151, 33.466976, 30.804596>,  <35.269466, 33.655384, 30.660686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.232151, 33.466976, 30.804596>,  <35.169960, 33.152962, 31.044443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232151, 33.466976, 30.804596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085725, 0.593988, 0.799893,
		0.984113, -0.175768, 0.025055,
		0.155478, 0.785037, -0.599619,
		35.278793, 33.702488, 30.624710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854851, 33.403709, 31.244696>,  <35.169960, 33.152962, 31.044443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854851, 33.403709, 31.244696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.623604, 33.687290, 31.083117>,  <35.484856, 33.857437, 30.986170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.623604, 33.687290, 31.083117>,  <35.854851, 33.403709, 31.244696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623604, 33.687290, 31.083117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079881, 0.541857, 0.836666,
		0.812034, 0.451424, -0.369889,
		-0.578118, 0.708948, -0.403947,
		35.450169, 33.899975, 30.961933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677338, 33.542721, 31.432266>,  <35.854851, 33.403709, 31.244696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677338, 33.542721, 31.432266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.749046, 33.320984, 31.757366>,  <36.792072, 33.187943, 31.952427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.749046, 33.320984, 31.757366>,  <36.677338, 33.542721, 31.432266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749046, 33.320984, 31.757366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327873, -0.745238, -0.580621,
		0.927556, 0.370570, 0.048151,
		0.179277, -0.554345, 0.812749,
		36.802830, 33.154678, 32.001190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241924, 33.133057, 31.239426>,  <36.677338, 33.542721, 31.432266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241924, 33.133057, 31.239426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.141113, 32.956326, 31.583813>,  <37.080627, 32.850288, 31.790445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.141113, 32.956326, 31.583813>,  <37.241924, 33.133057, 31.239426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141113, 32.956326, 31.583813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325180, -0.876622, -0.354671,
		0.911448, 0.190582, 0.364610,
		-0.252032, -0.441828, 0.860969,
		37.065502, 32.823776, 31.842104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815739, 32.773212, 31.440588>,  <37.241924, 33.133057, 31.239426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815739, 32.773212, 31.440588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.506416, 32.581108, 31.606167>,  <37.320824, 32.465847, 31.705515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.506416, 32.581108, 31.606167>,  <37.815739, 32.773212, 31.440588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506416, 32.581108, 31.606167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249451, -0.830678, -0.497743,
		0.582903, -0.281647, 0.762167,
		-0.773304, -0.480259, 0.413948,
		37.274426, 32.437031, 31.730350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110413, 32.205658, 31.556435>,  <37.815739, 32.773212, 31.440588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110413, 32.205658, 31.556435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725498, 32.106453, 31.601160>,  <37.494549, 32.046928, 31.627995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725498, 32.106453, 31.601160>,  <38.110413, 32.205658, 31.556435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725498, 32.106453, 31.601160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178027, -0.884844, -0.430532,
		0.205714, -0.394388, 0.895623,
		-0.962283, -0.248012, 0.111813,
		37.436813, 32.032051, 31.634705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076683, 31.495939, 31.826155>,  <38.110413, 32.205658, 31.556435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076683, 31.495939, 31.826155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.746197, 31.609076, 31.631275>,  <37.547905, 31.676956, 31.514347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.746197, 31.609076, 31.631275>,  <38.076683, 31.495939, 31.826155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746197, 31.609076, 31.631275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069644, -0.806912, -0.586552,
		-0.559026, -0.518552, 0.646989,
		-0.826220, 0.282839, -0.487199,
		37.498329, 31.693928, 31.485115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816582, 30.807978, 31.677706>,  <38.076683, 31.495939, 31.826155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816582, 30.807978, 31.677706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.620449, 31.058752, 31.435541>,  <37.502769, 31.209217, 31.290243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.620449, 31.058752, 31.435541>,  <37.816582, 30.807978, 31.677706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620449, 31.058752, 31.435541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128711, -0.739125, -0.661157,
		-0.861977, -0.246265, 0.443112,
		-0.490335, 0.626936, -0.605412,
		37.473347, 31.246832, 31.253918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209789, 30.499102, 31.556469>,  <37.816582, 30.807978, 31.677706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209789, 30.499102, 31.556469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.263508, 30.753553, 31.252546>,  <37.295738, 30.906225, 31.070192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.263508, 30.753553, 31.252546>,  <37.209789, 30.499102, 31.556469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263508, 30.753553, 31.252546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209720, -0.731137, -0.649197,
		-0.968494, 0.246533, 0.035217,
		0.134301, 0.636129, -0.759805,
		37.303799, 30.944391, 31.024605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678558, 30.288809, 31.088909>,  <37.209789, 30.499102, 31.556469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678558, 30.288809, 31.088909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.950562, 30.500128, 30.885544>,  <37.113766, 30.626919, 30.763525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.950562, 30.500128, 30.885544>,  <36.678558, 30.288809, 31.088909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950562, 30.500128, 30.885544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049582, -0.658698, -0.750773,
		-0.731523, 0.535742, -0.421728,
		0.680012, 0.528297, -0.508415,
		37.154564, 30.658617, 30.733019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431068, 30.174051, 30.373989>,  <36.678558, 30.288809, 31.088909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431068, 30.174051, 30.373989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.792408, 30.334337, 30.312809>,  <37.009212, 30.430508, 30.276100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.792408, 30.334337, 30.312809>,  <36.431068, 30.174051, 30.373989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792408, 30.334337, 30.312809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130142, -0.595869, -0.792466,
		-0.408691, 0.695966, -0.590426,
		0.903346, 0.400713, -0.152952,
		37.063412, 30.454552, 30.266924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453266, 30.401741, 29.649961>,  <36.431068, 30.174051, 30.373989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453266, 30.401741, 29.649961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.829807, 30.336199, 29.767954>,  <37.055733, 30.296873, 29.838749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.829807, 30.336199, 29.767954>,  <36.453266, 30.401741, 29.649961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829807, 30.336199, 29.767954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205385, -0.415372, -0.886162,
		0.267727, 0.894772, -0.357358,
		0.941350, -0.163854, 0.294979,
		37.112213, 30.287043, 29.856447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944195, 30.708973, 29.159685>,  <36.453266, 30.401741, 29.649961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944195, 30.708973, 29.159685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.151176, 30.427135, 29.353916>,  <37.275368, 30.258034, 29.470455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.151176, 30.427135, 29.353916>,  <36.944195, 30.708973, 29.159685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151176, 30.427135, 29.353916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229235, -0.432575, -0.871969,
		0.824433, 0.562518, -0.062322,
		0.517458, -0.704593, 0.485578,
		37.306416, 30.215757, 29.499590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498524, 30.674568, 28.761908>,  <36.944195, 30.708973, 29.159685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498524, 30.674568, 28.761908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.478603, 30.341516, 28.982544>,  <37.466652, 30.141685, 29.114925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.478603, 30.341516, 28.982544>,  <37.498524, 30.674568, 28.761908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478603, 30.341516, 28.982544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259138, -0.544135, -0.797975,
		0.964555, 0.103196, 0.242866,
		-0.049804, -0.832627, 0.551590,
		37.463661, 30.091728, 29.148022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154861, 30.422304, 28.720991>,  <37.498524, 30.674568, 28.761908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154861, 30.422304, 28.720991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.922760, 30.107292, 28.804041>,  <37.783501, 29.918285, 28.853870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.922760, 30.107292, 28.804041>,  <38.154861, 30.422304, 28.720991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922760, 30.107292, 28.804041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225970, -0.400596, -0.887953,
		0.782463, -0.468316, 0.410404,
		-0.580249, -0.787529, 0.207626,
		37.748684, 29.871033, 28.866329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548363, 29.873087, 28.531712>,  <38.154861, 30.422304, 28.720991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548363, 29.873087, 28.531712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.185856, 29.710281, 28.577354>,  <37.968353, 29.612598, 28.604740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.185856, 29.710281, 28.577354>,  <38.548363, 29.873087, 28.531712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185856, 29.710281, 28.577354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165675, -0.590357, -0.789956,
		0.388887, -0.697006, 0.602453,
		-0.906266, -0.407015, 0.114106,
		37.913975, 29.588177, 28.611586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691898, 29.563671, 29.145918>,  <38.548363, 29.873087, 28.531712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691898, 29.563671, 29.145918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.070942, 29.546940, 29.019243>,  <39.298367, 29.536901, 28.943239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.070942, 29.546940, 29.019243>,  <38.691898, 29.563671, 29.145918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070942, 29.546940, 29.019243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165811, 0.911777, 0.375725,
		0.273032, -0.408550, 0.870942,
		0.947608, -0.041827, -0.316687,
		39.355225, 29.534391, 28.924236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144260, 29.716156, 29.735060>,  <38.691898, 29.563671, 29.145918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144260, 29.716156, 29.735060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.328476, 29.810518, 29.392773>,  <39.439007, 29.867136, 29.187401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.328476, 29.810518, 29.392773>,  <39.144260, 29.716156, 29.735060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328476, 29.810518, 29.392773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108909, 0.941736, 0.318232,
		0.880930, -0.239755, 0.408019,
		0.460544, 0.235904, -0.855716,
		39.466640, 29.881289, 29.136059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876221, 29.976910, 30.035166>,  <39.144260, 29.716156, 29.735060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876221, 29.976910, 30.035166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.834106, 30.112621, 29.661255>,  <39.808838, 30.194048, 29.436909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.834106, 30.112621, 29.661255>,  <39.876221, 29.976910, 30.035166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834106, 30.112621, 29.661255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284500, 0.910987, 0.298600,
		0.952877, -0.234507, -0.192436,
		-0.105283, 0.339277, -0.934776,
		39.802521, 30.214405, 29.380821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378731, 30.448763, 29.951004>,  <39.876221, 29.976910, 30.035166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378731, 30.448763, 29.951004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.107441, 30.558464, 29.678299>,  <39.944668, 30.624285, 29.514677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.107441, 30.558464, 29.678299>,  <40.378731, 30.448763, 29.951004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107441, 30.558464, 29.678299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162362, 0.960745, 0.224961,
		0.716696, 0.041881, -0.696128,
		-0.678223, 0.274253, -0.681762,
		39.903973, 30.640739, 29.473770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701660, 30.789446, 29.432217>,  <40.378731, 30.448763, 29.951004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701660, 30.789446, 29.432217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.329628, 30.935966, 29.443356>,  <40.106407, 31.023878, 29.450039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.329628, 30.935966, 29.443356>,  <40.701660, 30.789446, 29.432217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329628, 30.935966, 29.443356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366627, 0.930338, 0.007472,
		-0.023168, 0.017158, -0.999584,
		-0.930079, 0.366302, 0.027845,
		40.050606, 31.045856, 29.451710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737492, 31.472994, 29.145985>,  <40.701660, 30.789446, 29.432217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737492, 31.472994, 29.145985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.363483, 31.492214, 29.286514>,  <40.139080, 31.503746, 29.370832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.363483, 31.492214, 29.286514>,  <40.737492, 31.472994, 29.145985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363483, 31.492214, 29.286514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150479, 0.950909, 0.270422,
		-0.321084, 0.305717, -0.896349,
		-0.935019, 0.048053, 0.351326,
		40.082977, 31.506630, 29.391912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583862, 32.121956, 28.899723>,  <40.737492, 31.472994, 29.145985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583862, 32.121956, 28.899723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.303211, 32.036079, 29.171497>,  <40.134823, 31.984554, 29.334562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.303211, 32.036079, 29.171497>,  <40.583862, 32.121956, 28.899723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303211, 32.036079, 29.171497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044206, 0.964809, 0.259211,
		-0.711175, 0.151833, -0.686423,
		-0.701624, -0.214688, 0.679436,
		40.092724, 31.971672, 29.375328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153252, 32.751495, 28.916756>,  <40.583862, 32.121956, 28.899723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153252, 32.751495, 28.916756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.992302, 32.588760, 29.244799>,  <39.895733, 32.491119, 29.441626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.992302, 32.588760, 29.244799>,  <40.153252, 32.751495, 28.916756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992302, 32.588760, 29.244799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228620, 0.912099, 0.340305,
		-0.886471, -0.050565, -0.460013,
		-0.402370, -0.406839, 0.820110,
		39.871590, 32.466709, 29.490831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653278, 33.148090, 29.049974>,  <40.153252, 32.751495, 28.916756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653278, 33.148090, 29.049974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.750935, 32.965195, 29.392046>,  <39.809528, 32.855457, 29.597288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.750935, 32.965195, 29.392046>,  <39.653278, 33.148090, 29.049974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750935, 32.965195, 29.392046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159908, 0.850809, 0.500553,
		-0.956465, -0.258955, 0.134600,
		0.244140, -0.457238, 0.855178,
		39.824177, 32.828022, 29.648600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054440, 33.283558, 29.525909>,  <39.653278, 33.148090, 29.049974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054440, 33.283558, 29.525909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.399021, 33.208054, 29.714491>,  <39.605770, 33.162750, 29.827641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.399021, 33.208054, 29.714491>,  <39.054440, 33.283558, 29.525909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399021, 33.208054, 29.714491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077905, 0.868246, 0.489979,
		-0.501826, -0.458823, 0.733248,
		0.861453, -0.188760, 0.471454,
		39.657455, 33.151424, 29.855927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031151, 33.710072, 30.169281>,  <39.054440, 33.283558, 29.525909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031151, 33.710072, 30.169281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.424515, 33.638142, 30.159683>,  <39.660534, 33.594982, 30.153925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.424515, 33.638142, 30.159683>,  <39.031151, 33.710072, 30.169281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424515, 33.638142, 30.159683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168625, 0.857246, 0.486513,
		-0.066917, -0.482486, 0.873344,
		0.983406, -0.179824, -0.023995,
		39.719536, 33.584194, 30.152485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164421, 33.801170, 30.856308>,  <39.031151, 33.710072, 30.169281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164421, 33.801170, 30.856308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.491032, 33.813797, 30.625732>,  <39.687000, 33.821373, 30.487387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.491032, 33.813797, 30.625732>,  <39.164421, 33.801170, 30.856308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491032, 33.813797, 30.625732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347535, 0.770429, 0.534471,
		0.460978, -0.636744, 0.618107,
		0.816529, 0.031565, -0.576441,
		39.735989, 33.823265, 30.452801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630630, 33.933819, 31.356041>,  <39.164421, 33.801170, 30.856308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630630, 33.933819, 31.356041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.765930, 34.059719, 31.001297>,  <39.847111, 34.135262, 30.788450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.765930, 34.059719, 31.001297>,  <39.630630, 33.933819, 31.356041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765930, 34.059719, 31.001297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226127, 0.887610, 0.401266,
		0.913486, -0.336269, 0.229057,
		0.338247, 0.314755, -0.886859,
		39.867405, 34.154144, 30.735239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362640, 34.161121, 31.466789>,  <39.630630, 33.933819, 31.356041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362640, 34.161121, 31.466789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.221996, 34.341183, 31.138466>,  <40.137608, 34.449219, 30.941471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.221996, 34.341183, 31.138466>,  <40.362640, 34.161121, 31.466789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221996, 34.341183, 31.138466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236890, 0.891045, 0.387196,
		0.905677, -0.058298, -0.419942,
		-0.351615, 0.450155, -0.820809,
		40.116512, 34.476231, 30.892223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.562592, 31.925844, 25.777327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.276947, 31.827900, 26.039650>,  <42.105560, 31.769133, 26.197044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.276947, 31.827900, 26.039650>,  <42.562592, 31.925844, 25.777327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276947, 31.827900, 26.039650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052717, -0.952980, -0.298414,
		0.698041, -0.178530, 0.693445,
		-0.714115, -0.244861, 0.655807,
		42.062714, 31.754442, 26.236393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759331, 31.274580, 26.143122>,  <42.562592, 31.925844, 25.777327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759331, 31.274580, 26.143122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.363659, 31.283422, 26.201141>,  <42.126255, 31.288729, 26.235952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.363659, 31.283422, 26.201141>,  <42.759331, 31.274580, 26.143122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363659, 31.283422, 26.201141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066554, -0.948637, -0.309288,
		0.130761, -0.315594, 0.939841,
		-0.989177, 0.022107, 0.145049,
		42.066906, 31.290054, 26.244656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672337, 30.692776, 26.520138>,  <42.759331, 31.274580, 26.143122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672337, 30.692776, 26.520138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.332512, 30.803022, 26.340237>,  <42.128616, 30.869169, 26.232296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.332512, 30.803022, 26.340237>,  <42.672337, 30.692776, 26.520138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332512, 30.803022, 26.340237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219362, -0.960013, -0.173942,
		-0.479710, -0.049116, 0.876051,
		-0.849563, 0.275615, -0.449754,
		42.077644, 30.885706, 26.205311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114288, 30.264561, 26.734499>,  <42.672337, 30.692776, 26.520138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114288, 30.264561, 26.734499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.969810, 30.420692, 26.395754>,  <41.883125, 30.514372, 26.192507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.969810, 30.420692, 26.395754>,  <42.114288, 30.264561, 26.734499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969810, 30.420692, 26.395754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466127, -0.862146, -0.198568,
		-0.807629, 0.323025, 0.493347,
		-0.361194, 0.390331, -0.846864,
		41.861454, 30.537792, 26.141695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491352, 29.987799, 26.656759>,  <42.114288, 30.264561, 26.734499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491352, 29.987799, 26.656759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.580494, 30.106371, 26.285282>,  <41.633980, 30.177515, 26.062397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.580494, 30.106371, 26.285282>,  <41.491352, 29.987799, 26.656759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580494, 30.106371, 26.285282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410951, -0.835299, -0.365233,
		-0.884001, 0.463038, -0.064328,
		0.222850, 0.296431, -0.928691,
		41.647350, 30.195301, 26.006676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803463, 29.870407, 26.356590>,  <41.491352, 29.987799, 26.656759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803463, 29.870407, 26.356590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.097858, 29.891121, 26.086588>,  <41.274498, 29.903549, 25.924585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.097858, 29.891121, 26.086588>,  <40.803463, 29.870407, 26.356590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097858, 29.891121, 26.086588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282087, -0.882932, -0.375310,
		-0.615422, 0.466636, -0.635223,
		0.735991, 0.051786, -0.675007,
		41.318657, 29.906656, 25.884087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523556, 29.809956, 25.676706>,  <40.803463, 29.870407, 26.356590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523556, 29.809956, 25.676706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.904049, 29.694349, 25.633589>,  <41.132347, 29.624985, 25.607718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.904049, 29.694349, 25.633589>,  <40.523556, 29.809956, 25.676706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904049, 29.694349, 25.633589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308120, -0.873724, -0.376389,
		0.014601, 0.391248, -0.920169,
		0.951235, -0.289018, -0.107794,
		41.189419, 29.607643, 25.601250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523182, 29.481915, 25.081360>,  <40.523556, 29.809956, 25.676706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523182, 29.481915, 25.081360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.862251, 29.359642, 25.254797>,  <41.065693, 29.286280, 25.358860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.862251, 29.359642, 25.254797>,  <40.523182, 29.481915, 25.081360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862251, 29.359642, 25.254797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099440, -0.894377, -0.436121,
		0.521111, 0.326573, -0.788539,
		0.847676, -0.305679, 0.433595,
		41.116554, 29.267939, 25.384876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971649, 29.275112, 24.520920>,  <40.523182, 29.481915, 25.081360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971649, 29.275112, 24.520920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.055023, 29.090441, 24.865805>,  <41.105045, 28.979637, 25.072735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.055023, 29.090441, 24.865805>,  <40.971649, 29.275112, 24.520920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055023, 29.090441, 24.865805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044875, -0.876130, -0.479982,
		0.977007, 0.138735, -0.161896,
		0.208432, -0.461680, 0.862211,
		41.117554, 28.951937, 25.124468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579922, 28.935604, 24.367901>,  <40.971649, 29.275112, 24.520920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579922, 28.935604, 24.367901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.403496, 28.772230, 24.687561>,  <41.297642, 28.674206, 24.879356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.403496, 28.772230, 24.687561>,  <41.579922, 28.935604, 24.367901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403496, 28.772230, 24.687561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053269, -0.900787, -0.430980,
		0.895892, -0.147521, 0.419064,
		-0.441066, -0.408435, 0.799150,
		41.271175, 28.649700, 24.927305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796223, 28.292631, 24.287231>,  <41.579922, 28.935604, 24.367901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796223, 28.292631, 24.287231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.513485, 28.250734, 24.567060>,  <41.343842, 28.225595, 24.734957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.513485, 28.250734, 24.567060>,  <41.796223, 28.292631, 24.287231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513485, 28.250734, 24.567060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172693, -0.933499, -0.314256,
		0.685966, -0.342941, 0.641750,
		-0.706844, -0.104743, 0.699572,
		41.301434, 28.219311, 24.776932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909893, 27.621981, 24.427490>,  <41.796223, 28.292631, 24.287231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909893, 27.621981, 24.427490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.555744, 27.704304, 24.594229>,  <41.343254, 27.753698, 24.694273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.555744, 27.704304, 24.594229>,  <41.909893, 27.621981, 24.427490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555744, 27.704304, 24.594229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273018, -0.955938, -0.107906,
		0.376272, -0.209344, 0.902549,
		-0.885370, 0.205810, 0.416848,
		41.290134, 27.766047, 24.719282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706627, 26.949507, 24.870817>,  <41.909893, 27.621981, 24.427490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706627, 26.949507, 24.870817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.361206, 27.148310, 24.836742>,  <41.153954, 27.267591, 24.816298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.361206, 27.148310, 24.836742>,  <41.706627, 26.949507, 24.870817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361206, 27.148310, 24.836742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501713, -0.829895, 0.244045,
		0.050596, 0.253486, 0.966015,
		-0.863553, 0.497010, -0.085188,
		41.102139, 27.297413, 24.811186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186378, 26.798889, 25.407175>,  <41.706627, 26.949507, 24.870817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186378, 26.798889, 25.407175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.961823, 26.933363, 25.104698>,  <40.827091, 27.014048, 24.923212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.961823, 26.933363, 25.104698>,  <41.186378, 26.798889, 25.407175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961823, 26.933363, 25.104698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605826, -0.789439, 0.098793,
		-0.563753, 0.513581, 0.646851,
		-0.561388, 0.336185, -0.756190,
		40.793407, 27.034218, 24.877842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910831, 26.141556, 25.247570>,  <41.186378, 26.798889, 25.407175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910831, 26.141556, 25.247570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.583279, 25.934580, 25.148220>,  <40.386745, 25.810394, 25.088610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.583279, 25.934580, 25.148220>,  <40.910831, 26.141556, 25.247570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583279, 25.934580, 25.148220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522957, 0.494301, 0.694394,
		-0.236536, 0.698515, -0.675372,
		-0.818881, -0.517440, -0.248373,
		40.337616, 25.779348, 25.073708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282658, 26.572508, 24.990473>,  <40.910831, 26.141556, 25.247570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282658, 26.572508, 24.990473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.178471, 26.245544, 25.195997>,  <40.115959, 26.049366, 25.319311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.178471, 26.245544, 25.195997>,  <40.282658, 26.572508, 24.990473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178471, 26.245544, 25.195997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289848, 0.573836, 0.765963,
		-0.920946, 0.050585, -0.386392,
		-0.260472, -0.817406, 0.513811,
		40.100330, 26.000322, 25.350140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634224, 26.675701, 25.300035>,  <40.282658, 26.572508, 24.990473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634224, 26.675701, 25.300035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.774277, 26.375706, 25.524508>,  <39.858307, 26.195707, 25.659191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.774277, 26.375706, 25.524508>,  <39.634224, 26.675701, 25.300035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774277, 26.375706, 25.524508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356430, 0.447359, 0.820261,
		-0.866236, -0.487221, -0.110684,
		0.350133, -0.749990, 0.561179,
		39.879318, 26.150709, 25.692862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030125, 26.509258, 25.751482>,  <39.634224, 26.675701, 25.300035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030125, 26.509258, 25.751482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.351948, 26.337749, 25.915844>,  <39.545040, 26.234844, 26.014462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.351948, 26.337749, 25.915844>,  <39.030125, 26.509258, 25.751482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351948, 26.337749, 25.915844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306934, 0.292111, 0.905794,
		-0.508411, -0.854883, 0.103414,
		0.804556, -0.428774, 0.410905,
		39.593315, 26.209118, 26.039116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842609, 26.083979, 26.229063>,  <39.030125, 26.509258, 25.751482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842609, 26.083979, 26.229063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.226013, 26.152634, 26.320107>,  <39.456055, 26.193827, 26.374733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.226013, 26.152634, 26.320107>,  <38.842609, 26.083979, 26.229063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226013, 26.152634, 26.320107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282728, 0.470283, 0.836001,
		0.036447, -0.865665, 0.499296,
		0.958507, 0.171635, 0.227608,
		39.513565, 26.204124, 26.388390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963749, 26.015715, 27.045307>,  <38.842609, 26.083979, 26.229063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963749, 26.015715, 27.045307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.290092, 26.205770, 26.913481>,  <39.485897, 26.319805, 26.834385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.290092, 26.205770, 26.913481>,  <38.963749, 26.015715, 27.045307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290092, 26.205770, 26.913481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036510, 0.526475, 0.849406,
		0.577100, -0.705027, 0.412180,
		0.815857, 0.475143, -0.329569,
		39.534851, 26.348312, 26.814610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475136, 26.067425, 27.539188>,  <38.963749, 26.015715, 27.045307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475136, 26.067425, 27.539188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.602089, 26.371813, 27.312845>,  <39.678261, 26.554445, 27.177040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.602089, 26.371813, 27.312845>,  <39.475136, 26.067425, 27.539188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602089, 26.371813, 27.312845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084948, 0.571494, 0.816198,
		0.944485, -0.307115, 0.116739,
		0.317383, 0.760970, -0.565856,
		39.697304, 26.600103, 27.143089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141312, 26.445814, 27.825788>,  <39.475136, 26.067425, 27.539188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141312, 26.445814, 27.825788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.962776, 26.701105, 27.574886>,  <39.855656, 26.854279, 27.424345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.962776, 26.701105, 27.574886>,  <40.141312, 26.445814, 27.825788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962776, 26.701105, 27.574886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038960, 0.686426, 0.726155,
		0.894015, 0.348550, -0.281515,
		-0.446340, 0.638226, -0.627254,
		39.828873, 26.892572, 27.386709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556328, 27.027094, 27.818913>,  <40.141312, 26.445814, 27.825788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556328, 27.027094, 27.818913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.199604, 27.163221, 27.699675>,  <39.985569, 27.244898, 27.628132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.199604, 27.163221, 27.699675>,  <40.556328, 27.027094, 27.818913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199604, 27.163221, 27.699675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105374, 0.797028, 0.594678,
		0.439973, 0.498927, -0.746657,
		-0.891807, 0.340320, -0.298097,
		39.932060, 27.265318, 27.610245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579887, 27.718401, 27.597425>,  <40.556328, 27.027094, 27.818913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579887, 27.718401, 27.597425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.184143, 27.705458, 27.654156>,  <39.946697, 27.697691, 27.688194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.184143, 27.705458, 27.654156>,  <40.579887, 27.718401, 27.597425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184143, 27.705458, 27.654156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029992, 0.908622, 0.416541,
		-0.142343, 0.416364, -0.897986,
		-0.989363, -0.032359, 0.141824,
		39.887333, 27.695749, 27.696703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330578, 28.295235, 27.222185>,  <40.579887, 27.718401, 27.597425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330578, 28.295235, 27.222185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.016476, 28.226217, 27.460041>,  <39.828014, 28.184807, 27.602755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.016476, 28.226217, 27.460041>,  <40.330578, 28.295235, 27.222185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016476, 28.226217, 27.460041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115353, 0.902803, 0.414295,
		-0.608327, 0.393923, -0.689031,
		-0.785259, -0.172544, 0.594640,
		39.780899, 28.174454, 27.638433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912296, 28.861923, 27.111652>,  <40.330578, 28.295235, 27.222185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912296, 28.861923, 27.111652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.791412, 28.717978, 27.464733>,  <39.718884, 28.631611, 27.676582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.791412, 28.717978, 27.464733>,  <39.912296, 28.861923, 27.111652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791412, 28.717978, 27.464733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136506, 0.900121, 0.413700,
		-0.943416, 0.245519, -0.222903,
		-0.302211, -0.359864, 0.882704,
		39.700748, 28.610018, 27.729544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592434, 29.439619, 27.432428>,  <39.912296, 28.861923, 27.111652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592434, 29.439619, 27.432428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.641781, 29.197798, 27.747210>,  <39.671391, 29.052706, 27.936079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.641781, 29.197798, 27.747210>,  <39.592434, 29.439619, 27.432428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641781, 29.197798, 27.747210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043892, 0.788911, 0.612937,
		-0.991390, -0.110156, 0.070790,
		0.123366, -0.604553, 0.786954,
		39.678791, 29.016432, 27.983295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906502, 29.463860, 27.897875>,  <39.592434, 29.439619, 27.432428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906502, 29.463860, 27.897875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.243130, 29.383459, 28.098415>,  <39.445107, 29.335218, 28.218740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.243130, 29.383459, 28.098415>,  <38.906502, 29.463860, 27.897875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243130, 29.383459, 28.098415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143058, 0.812092, 0.565722,
		-0.520857, -0.547818, 0.654678,
		0.841572, -0.201003, 0.501353,
		39.495602, 29.323158, 28.248821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655499, 28.939846, 28.437210>,  <38.906502, 29.463860, 27.897875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655499, 28.939846, 28.437210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.264786, 29.006863, 28.383795>,  <38.030357, 29.047073, 28.351746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.264786, 29.006863, 28.383795>,  <38.655499, 28.939846, 28.437210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264786, 29.006863, 28.383795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082942, -0.278974, -0.956710,
		-0.197543, -0.945570, 0.258600,
		-0.976779, 0.167543, -0.133537,
		37.971752, 29.057125, 28.343733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258179, 28.343819, 28.095028>,  <38.655499, 28.939846, 28.437210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258179, 28.343819, 28.095028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.045437, 28.670649, 28.006021>,  <37.917789, 28.866747, 27.952618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.045437, 28.670649, 28.006021>,  <38.258179, 28.343819, 28.095028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045437, 28.670649, 28.006021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124453, -0.335326, -0.933846,
		-0.837638, -0.468981, 0.280034,
		-0.531858, 0.817076, -0.222515,
		37.885880, 28.915771, 27.939266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706230, 28.107971, 27.776817>,  <38.258179, 28.343819, 28.095028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706230, 28.107971, 27.776817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.710732, 28.487774, 27.651398>,  <37.713432, 28.715656, 27.576147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.710732, 28.487774, 27.651398>,  <37.706230, 28.107971, 27.776817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710732, 28.487774, 27.651398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131649, -0.309431, -0.941765,
		-0.991232, 0.051874, 0.121521,
		0.011251, 0.949506, -0.313547,
		37.714108, 28.772625, 27.557333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186195, 28.138407, 27.337109>,  <37.706230, 28.107971, 27.776817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186195, 28.138407, 27.337109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.363155, 28.477787, 27.220892>,  <37.469334, 28.681416, 27.151161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.363155, 28.477787, 27.220892>,  <37.186195, 28.138407, 27.337109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363155, 28.477787, 27.220892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213050, -0.215264, -0.953033,
		-0.871142, 0.483525, 0.085528,
		0.442404, 0.848449, -0.290541,
		37.495876, 28.732321, 27.133730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710239, 28.463284, 26.864225>,  <37.186195, 28.138407, 27.337109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710239, 28.463284, 26.864225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.073956, 28.607460, 26.781017>,  <37.292187, 28.693966, 26.731092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.073956, 28.607460, 26.781017>,  <36.710239, 28.463284, 26.864225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073956, 28.607460, 26.781017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203603, -0.050656, -0.977742,
		-0.362956, 0.931405, 0.027326,
		0.909290, 0.360441, -0.208022,
		37.346741, 28.715593, 26.718611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606506, 28.802963, 26.187788>,  <36.710239, 28.463284, 26.864225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606506, 28.802963, 26.187788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.003082, 28.763285, 26.221743>,  <37.241028, 28.739477, 26.242115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.003082, 28.763285, 26.221743>,  <36.606506, 28.802963, 26.187788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003082, 28.763285, 26.221743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023730, -0.502429, -0.864293,
		0.128383, 0.858909, -0.495775,
		0.991441, -0.099195, 0.084885,
		37.300514, 28.733526, 26.247208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844097, 28.860804, 25.564262>,  <36.606506, 28.802963, 26.187788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844097, 28.860804, 25.564262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.138504, 28.683331, 25.768780>,  <37.315147, 28.576847, 25.891489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.138504, 28.683331, 25.768780>,  <36.844097, 28.860804, 25.564262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138504, 28.683331, 25.768780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026519, -0.773594, -0.633127,
		0.676440, 0.452435, -0.581147,
		0.736020, -0.443684, 0.511291,
		37.359310, 28.550226, 25.922167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687420, 29.414644, 25.103151>,  <36.844097, 28.860804, 25.564262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687420, 29.414644, 25.103151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.372696, 29.530989, 24.885406>,  <36.183861, 29.600796, 24.754759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.372696, 29.530989, 24.885406>,  <36.687420, 29.414644, 25.103151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372696, 29.530989, 24.885406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363296, 0.494753, 0.789453,
		0.498948, 0.818913, -0.283607,
		-0.786808, 0.290863, -0.544364,
		36.136654, 29.618248, 24.722097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627811, 30.183563, 25.160023>,  <36.687420, 29.414644, 25.103151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627811, 30.183563, 25.160023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.266922, 30.050360, 25.050402>,  <36.050388, 29.970438, 24.984629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.266922, 30.050360, 25.050402>,  <36.627811, 30.183563, 25.160023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266922, 30.050360, 25.050402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430665, 0.661876, 0.613554,
		-0.022930, 0.671585, -0.740573,
		-0.902221, -0.333007, -0.274051,
		35.996254, 29.950457, 24.968185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244873, 30.809950, 25.031780>,  <36.627811, 30.183563, 25.160023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244873, 30.809950, 25.031780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.968647, 30.526937, 25.091814>,  <35.802914, 30.357130, 25.127834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.968647, 30.526937, 25.091814>,  <36.244873, 30.809950, 25.031780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968647, 30.526937, 25.091814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510669, 0.623911, 0.591568,
		-0.512192, 0.331870, -0.792162,
		-0.690563, -0.707529, 0.150087,
		35.761478, 30.314678, 25.136841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578621, 31.156918, 24.869764>,  <36.244873, 30.809950, 25.031780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578621, 31.156918, 24.869764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.473152, 30.838923, 25.088293>,  <35.409870, 30.648125, 25.219410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.473152, 30.838923, 25.088293>,  <35.578621, 31.156918, 24.869764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473152, 30.838923, 25.088293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563762, 0.586572, 0.581469,
		-0.782718, -0.154677, -0.602849,
		-0.263674, -0.794990, 0.546322,
		35.394051, 30.600426, 25.252190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843628, 31.285564, 25.085953>,  <35.578621, 31.156918, 24.869764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843628, 31.285564, 25.085953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.002193, 31.014326, 25.333515>,  <35.097332, 30.851583, 25.482052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.002193, 31.014326, 25.333515>,  <34.843628, 31.285564, 25.085953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002193, 31.014326, 25.333515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556538, 0.358655, 0.749421,
		-0.730152, -0.641526, -0.235209,
		0.396414, -0.678094, 0.618906,
		35.121117, 30.810898, 25.519188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271751, 31.008179, 25.495102>,  <34.843628, 31.285564, 25.085953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271751, 31.008179, 25.495102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.606602, 30.938637, 25.702560>,  <34.807510, 30.896912, 25.827036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.606602, 30.938637, 25.702560>,  <34.271751, 31.008179, 25.495102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606602, 30.938637, 25.702560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453266, 0.310310, 0.835618,
		-0.306219, -0.934602, 0.180965,
		0.837126, -0.173857, 0.518647,
		34.857738, 30.886480, 25.858154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037117, 30.785166, 26.163719>,  <34.271751, 31.008179, 25.495102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037117, 30.785166, 26.163719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.417801, 30.895061, 26.218525>,  <34.646210, 30.960999, 26.251410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.417801, 30.895061, 26.218525>,  <34.037117, 30.785166, 26.163719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417801, 30.895061, 26.218525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229518, 0.340294, 0.911878,
		0.203901, -0.899288, 0.386917,
		0.951707, 0.274737, 0.137016,
		34.703312, 30.977484, 26.259630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.075859, 28.850134, 24.051624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.975906, 28.555321, 24.302809>,  <36.915936, 28.378433, 24.453520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.975906, 28.555321, 24.302809>,  <37.075859, 28.850134, 24.051624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975906, 28.555321, 24.302809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894693, -0.072233, -0.440802,
		0.370246, -0.671983, -0.641371,
		-0.249883, -0.737035, 0.627963,
		36.900940, 28.334209, 24.491198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715702, 29.199430, 23.993944>,  <37.075859, 28.850134, 24.051624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715702, 29.199430, 23.993944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.081593, 29.070179, 24.090994>,  <38.301125, 28.992628, 24.149223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.081593, 29.070179, 24.090994>,  <37.715702, 29.199430, 23.993944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081593, 29.070179, 24.090994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203197, 0.886833, 0.415016,
		-0.349271, -0.330325, 0.876867,
		0.914724, -0.323129, 0.242624,
		38.356010, 28.973240, 24.163782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835419, 29.445412, 24.590658>,  <37.715702, 29.199430, 23.993944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835419, 29.445412, 24.590658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.208241, 29.378345, 24.462187>,  <38.431934, 29.338106, 24.385103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.208241, 29.378345, 24.462187>,  <37.835419, 29.445412, 24.590658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208241, 29.378345, 24.462187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328760, 0.763937, 0.555263,
		0.152264, -0.623129, 0.767155,
		0.932058, -0.167663, -0.321180,
		38.487858, 29.328047, 24.365833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265568, 29.426529, 25.247284>,  <37.835419, 29.445412, 24.590658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265568, 29.426529, 25.247284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.510406, 29.488182, 24.937038>,  <38.657310, 29.525175, 24.750891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.510406, 29.488182, 24.937038>,  <38.265568, 29.426529, 25.247284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510406, 29.488182, 24.937038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449486, 0.739150, 0.501616,
		0.650610, -0.655667, 0.383154,
		0.612102, 0.154134, -0.775612,
		38.694038, 29.534422, 24.704355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905178, 29.679026, 25.498594>,  <38.265568, 29.426529, 25.247284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905178, 29.679026, 25.498594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.887238, 29.800262, 25.117832>,  <38.876472, 29.873005, 24.889376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.887238, 29.800262, 25.117832>,  <38.905178, 29.679026, 25.498594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887238, 29.800262, 25.117832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512028, 0.825161, 0.238613,
		0.857797, -0.476701, -0.192199,
		-0.044847, 0.303093, -0.951905,
		38.873783, 29.891190, 24.832260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621548, 29.939041, 25.242270>,  <38.905178, 29.679026, 25.498594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621548, 29.939041, 25.242270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.348206, 30.116127, 25.010052>,  <39.184200, 30.222378, 24.870720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.348206, 30.116127, 25.010052>,  <39.621548, 29.939041, 25.242270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348206, 30.116127, 25.010052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471565, 0.874695, 0.111957,
		0.557367, -0.197259, -0.806493,
		-0.683351, 0.442715, -0.580547,
		39.143200, 30.248941, 24.835888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052090, 30.426903, 24.967842>,  <39.621548, 29.939041, 25.242270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052090, 30.426903, 24.967842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.702595, 30.588921, 24.860126>,  <39.492897, 30.686131, 24.795498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.702595, 30.588921, 24.860126>,  <40.052090, 30.426903, 24.967842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702595, 30.588921, 24.860126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366798, 0.912304, 0.182101,
		0.319431, 0.060335, -0.945687,
		-0.873741, 0.405045, -0.269288,
		39.440472, 30.710434, 24.779341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234997, 31.067841, 24.684013>,  <40.052090, 30.426903, 24.967842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234997, 31.067841, 24.684013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.845306, 31.109007, 24.764307>,  <39.611492, 31.133707, 24.812483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.845306, 31.109007, 24.764307>,  <40.234997, 31.067841, 24.684013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845306, 31.109007, 24.764307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136372, 0.977542, 0.160666,
		-0.179691, 0.183900, -0.966381,
		-0.974225, 0.102917, 0.200735,
		39.553040, 31.139881, 24.824528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035168, 31.700253, 24.407660>,  <40.234997, 31.067841, 24.684013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035168, 31.700253, 24.407660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.741859, 31.630861, 24.670633>,  <39.565876, 31.589226, 24.828417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.741859, 31.630861, 24.670633>,  <40.035168, 31.700253, 24.407660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741859, 31.630861, 24.670633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029659, 0.957824, 0.285821,
		-0.679290, 0.229083, -0.697199,
		-0.733271, -0.173477, 0.657434,
		39.521877, 31.578817, 24.867863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641014, 32.354443, 24.398315>,  <40.035168, 31.700253, 24.407660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641014, 32.354443, 24.398315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.489281, 32.174782, 24.721888>,  <39.398239, 32.066986, 24.916031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.489281, 32.174782, 24.721888>,  <39.641014, 32.354443, 24.398315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489281, 32.174782, 24.721888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083585, 0.887332, 0.453493,
		-0.921477, 0.104411, -0.374137,
		-0.379334, -0.449155, 0.808929,
		39.375481, 32.040035, 24.964565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916718, 32.660488, 24.541204>,  <39.641014, 32.354443, 24.398315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916718, 32.660488, 24.541204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.062489, 32.488750, 24.871744>,  <39.149952, 32.385708, 25.070068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.062489, 32.488750, 24.871744>,  <38.916718, 32.660488, 24.541204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062489, 32.488750, 24.871744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103426, 0.863225, 0.494111,
		-0.925469, -0.265536, 0.270182,
		0.364432, -0.429341, 0.826351,
		39.171818, 32.359947, 25.119650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468494, 32.869743, 25.081882>,  <38.916718, 32.660488, 24.541204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468494, 32.869743, 25.081882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.800556, 32.760674, 25.276407>,  <38.999794, 32.695232, 25.393122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.800556, 32.760674, 25.276407>,  <38.468494, 32.869743, 25.081882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800556, 32.760674, 25.276407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092846, 0.927678, 0.361652,
		-0.549755, -0.255073, 0.795429,
		0.830150, -0.272673, 0.486314,
		39.049603, 32.678871, 25.422302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768673, 32.634819, 25.336210>,  <38.468494, 32.869743, 25.081882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768673, 32.634819, 25.336210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.395084, 32.701874, 25.209970>,  <37.170933, 32.742107, 25.134226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.395084, 32.701874, 25.209970>,  <37.768673, 32.634819, 25.336210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395084, 32.701874, 25.209970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114556, -0.696094, -0.708753,
		-0.338500, -0.698105, 0.630925,
		-0.933967, 0.167636, -0.315600,
		37.114895, 32.752163, 25.115290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369179, 31.973898, 25.278582>,  <37.768673, 32.634819, 25.336210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369179, 31.973898, 25.278582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.189663, 32.235466, 25.034950>,  <37.081951, 32.392406, 24.888771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.189663, 32.235466, 25.034950>,  <37.369179, 31.973898, 25.278582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189663, 32.235466, 25.034950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040921, -0.665819, -0.744991,
		-0.892698, -0.359271, 0.272056,
		-0.448793, 0.653919, -0.609077,
		37.055023, 32.431641, 24.852228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806351, 31.659714, 24.917500>,  <37.369179, 31.973898, 25.278582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806351, 31.659714, 24.917500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.903641, 31.961456, 24.673601>,  <36.962013, 32.142502, 24.527262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.903641, 31.961456, 24.673601>,  <36.806351, 31.659714, 24.917500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903641, 31.961456, 24.673601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033039, -0.634703, -0.772050,
		-0.969408, 0.167633, -0.179296,
		0.243221, 0.754355, -0.609748,
		36.976608, 32.187763, 24.490677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459019, 31.567062, 24.311995>,  <36.806351, 31.659714, 24.917500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459019, 31.567062, 24.311995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.723827, 31.831305, 24.170385>,  <36.882713, 31.989849, 24.085421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.723827, 31.831305, 24.170385>,  <36.459019, 31.567062, 24.311995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723827, 31.831305, 24.170385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056894, -0.515285, -0.855128,
		-0.747324, 0.545969, -0.378713,
		0.662019, 0.660605, -0.354023,
		36.922432, 32.029488, 24.064178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191799, 31.929251, 23.737778>,  <36.459019, 31.567062, 24.311995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191799, 31.929251, 23.737778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.587910, 31.965357, 23.695425>,  <36.825577, 31.987020, 23.670013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.587910, 31.965357, 23.695425>,  <36.191799, 31.929251, 23.737778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587910, 31.965357, 23.695425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068624, -0.345117, -0.936048,
		-0.121036, 0.934209, -0.335566,
		0.990273, 0.090267, -0.105881,
		36.884991, 31.992437, 23.663660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253696, 32.221760, 23.117186>,  <36.191799, 31.929251, 23.737778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253696, 32.221760, 23.117186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.604511, 32.044003, 23.190207>,  <36.814999, 31.937347, 23.234018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.604511, 32.044003, 23.190207>,  <36.253696, 32.221760, 23.117186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604511, 32.044003, 23.190207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042145, -0.307344, -0.950665,
		0.478577, 0.841458, -0.250822,
		0.877033, -0.444395, 0.182551,
		36.867622, 31.910685, 23.244972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615582, 32.449894, 22.666668>,  <36.253696, 32.221760, 23.117186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615582, 32.449894, 22.666668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.826561, 32.118122, 22.740255>,  <36.953148, 31.919060, 22.784409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.826561, 32.118122, 22.740255>,  <36.615582, 32.449894, 22.666668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826561, 32.118122, 22.740255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141617, -0.127676, -0.981653,
		0.837700, 0.543826, 0.050119,
		0.527450, -0.829429, 0.183970,
		36.984795, 31.869293, 22.795446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111584, 32.354713, 22.034079>,  <36.615582, 32.449894, 22.666668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111584, 32.354713, 22.034079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.214931, 32.028927, 22.241884>,  <37.276939, 31.833456, 22.366568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.214931, 32.028927, 22.241884>,  <37.111584, 32.354713, 22.034079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214931, 32.028927, 22.241884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362174, -0.416885, -0.833689,
		0.895587, 0.403552, 0.187268,
		0.258368, -0.814464, 0.519513,
		37.292442, 31.784588, 22.397738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928810, 32.105171, 22.050940>,  <37.111584, 32.354713, 22.034079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928810, 32.105171, 22.050940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.699139, 31.780993, 22.097424>,  <37.561337, 31.586487, 22.125315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.699139, 31.780993, 22.097424>,  <37.928810, 32.105171, 22.050940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699139, 31.780993, 22.097424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351589, -0.372257, -0.858959,
		0.739396, -0.452336, 0.498684,
		-0.574176, -0.810442, 0.116210,
		37.526886, 31.537859, 22.132286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338341, 31.465107, 21.980726>,  <37.928810, 32.105171, 22.050940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338341, 31.465107, 21.980726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.967323, 31.338406, 21.901394>,  <37.744713, 31.262384, 21.853794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.967323, 31.338406, 21.901394>,  <38.338341, 31.465107, 21.980726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967323, 31.338406, 21.901394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320462, -0.401064, -0.858168,
		0.192284, -0.859543, 0.473511,
		-0.927540, -0.316754, -0.198333,
		37.689060, 31.243380, 21.841894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430656, 30.826868, 21.594961>,  <38.338341, 31.465107, 21.980726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430656, 30.826868, 21.594961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.049469, 30.919399, 21.516638>,  <37.820755, 30.974918, 21.469645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.049469, 30.919399, 21.516638>,  <38.430656, 30.826868, 21.594961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049469, 30.919399, 21.516638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058000, -0.494933, -0.866993,
		-0.297468, -0.837574, 0.458238,
		-0.952968, 0.231325, -0.195807,
		37.763580, 30.988796, 21.457895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134640, 30.217003, 21.390543>,  <38.430656, 30.826868, 21.594961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134640, 30.217003, 21.390543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.892017, 30.496826, 21.239435>,  <37.746445, 30.664721, 21.148769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.892017, 30.496826, 21.239435>,  <38.134640, 30.217003, 21.390543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892017, 30.496826, 21.239435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052292, -0.439026, -0.896951,
		-0.793323, -0.563801, 0.229710,
		-0.606551, 0.699560, -0.377771,
		37.710052, 30.706694, 21.126104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600067, 29.821318, 20.925911>,  <38.134640, 30.217003, 21.390543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600067, 29.821318, 20.925911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.643070, 30.191065, 20.779497>,  <37.668873, 30.412914, 20.691648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.643070, 30.191065, 20.779497>,  <37.600067, 29.821318, 20.925911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643070, 30.191065, 20.779497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156172, -0.379300, -0.911999,
		-0.981861, 0.040887, -0.185140,
		0.107512, 0.924370, -0.366034,
		37.675323, 30.468376, 20.669687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343487, 29.439938, 21.584763>,  <37.600067, 29.821318, 20.925911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343487, 29.439938, 21.584763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.105137, 29.120499, 21.618641>,  <36.962128, 28.928835, 21.638968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.105137, 29.120499, 21.618641>,  <37.343487, 29.439938, 21.584763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105137, 29.120499, 21.618641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385601, 0.377030, 0.842116,
		-0.704444, 0.469139, -0.532603,
		-0.595878, -0.798597, 0.084696,
		36.926373, 28.880920, 21.644051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664822, 29.751863, 21.809330>,  <37.343487, 29.439938, 21.584763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664822, 29.751863, 21.809330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.631962, 29.362684, 21.895699>,  <36.612247, 29.129177, 21.947519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.631962, 29.362684, 21.895699>,  <36.664822, 29.751863, 21.809330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631962, 29.362684, 21.895699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369025, 0.230948, 0.900268,
		-0.925782, -0.005723, -0.378015,
		-0.082150, -0.972949, 0.215920,
		36.607315, 29.070799, 21.960474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965351, 29.634914, 21.969244>,  <36.664822, 29.751863, 21.809330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965351, 29.634914, 21.969244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.185402, 29.343241, 22.132048>,  <36.317432, 29.168236, 22.229729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.185402, 29.343241, 22.132048>,  <35.965351, 29.634914, 21.969244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185402, 29.343241, 22.132048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538357, 0.062909, 0.840365,
		-0.638385, -0.681420, -0.357954,
		0.550124, -0.729184, 0.407008,
		36.350441, 29.124485, 22.254150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565254, 29.355970, 22.398966>,  <35.965351, 29.634914, 21.969244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565254, 29.355970, 22.398966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.897846, 29.198311, 22.555573>,  <36.097401, 29.103716, 22.649536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.897846, 29.198311, 22.555573>,  <35.565254, 29.355970, 22.398966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897846, 29.198311, 22.555573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396873, 0.071731, 0.915066,
		-0.388757, -0.916243, -0.096784,
		0.831481, -0.394149, 0.391518,
		36.147289, 29.080067, 22.673027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339233, 29.071152, 23.037273>,  <35.565254, 29.355970, 22.398966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339233, 29.071152, 23.037273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.732452, 29.098869, 23.105169>,  <35.968384, 29.115499, 23.145906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.732452, 29.098869, 23.105169>,  <35.339233, 29.071152, 23.037273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732452, 29.098869, 23.105169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174891, 0.076639, 0.981601,
		0.055009, -0.994648, 0.087459,
		0.983050, 0.069292, 0.169739,
		36.027367, 29.119658, 23.156092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528107, 28.627031, 23.693207>,  <35.339233, 29.071152, 23.037273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528107, 28.627031, 23.693207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.794464, 28.912987, 23.607864>,  <35.954277, 29.084560, 23.556660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.794464, 28.912987, 23.607864>,  <35.528107, 28.627031, 23.693207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794464, 28.912987, 23.607864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049128, 0.327377, 0.943616,
		0.744428, -0.617865, 0.253119,
		0.665893, 0.714889, -0.213354,
		35.994232, 29.127453, 23.543858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958370, 28.578634, 24.297354>,  <35.528107, 28.627031, 23.693207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958370, 28.578634, 24.297354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.051384, 28.938818, 24.150328>,  <36.107193, 29.154928, 24.062111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.051384, 28.938818, 24.150328>,  <35.958370, 28.578634, 24.297354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051384, 28.938818, 24.150328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106307, 0.399194, 0.910683,
		0.966761, -0.172688, 0.188551,
		0.232532, 0.900457, -0.367567,
		36.121143, 29.208956, 24.040058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456383, 28.795658, 24.740362>,  <35.958370, 28.578634, 24.297354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456383, 28.795658, 24.740362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.303886, 29.125462, 24.573105>,  <36.212391, 29.323343, 24.472750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.303886, 29.125462, 24.573105>,  <36.456383, 28.795658, 24.740362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303886, 29.125462, 24.573105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116342, 0.405920, 0.906473,
		0.917127, 0.394229, -0.058827,
		-0.381237, 0.824507, -0.418146,
		36.189514, 29.372814, 24.447660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181339, 28.641033, 24.979277>,  <36.456383, 28.795658, 24.740362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181339, 28.641033, 24.979277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.318268, 28.446814, 25.301037>,  <37.400425, 28.330282, 25.494093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.318268, 28.446814, 25.301037>,  <37.181339, 28.641033, 24.979277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318268, 28.446814, 25.301037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069335, -0.866844, -0.493735,
		0.937021, 0.113243, -0.330404,
		0.342321, -0.485548, 0.804400,
		37.420963, 28.301149, 25.542356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756092, 28.308817, 24.740086>,  <37.181339, 28.641033, 24.979277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756092, 28.308817, 24.740086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.635384, 28.091061, 25.053154>,  <37.562958, 27.960407, 25.240995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.635384, 28.091061, 25.053154>,  <37.756092, 28.308817, 24.740086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635384, 28.091061, 25.053154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035142, -0.826737, -0.561490,
		0.952732, -0.141937, 0.268617,
		-0.301772, -0.544389, 0.782671,
		37.544853, 27.927744, 25.287956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172089, 27.780382, 24.671585>,  <37.756092, 28.308817, 24.740086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172089, 27.780382, 24.671585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.883373, 27.660275, 24.921021>,  <37.710144, 27.588211, 25.070683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.883373, 27.660275, 24.921021>,  <38.172089, 27.780382, 24.671585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883373, 27.660275, 24.921021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001487, -0.901661, -0.432441,
		0.692114, -0.311203, 0.651253,
		-0.721786, -0.300267, 0.623590,
		37.666836, 27.570194, 25.108097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396072, 27.111481, 24.932177>,  <38.172089, 27.780382, 24.671585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396072, 27.111481, 24.932177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.007122, 27.163376, 25.009802>,  <37.773754, 27.194513, 25.056377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.007122, 27.163376, 25.009802>,  <38.396072, 27.111481, 24.932177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007122, 27.163376, 25.009802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189474, -0.924238, -0.331487,
		0.136352, -0.359098, 0.923286,
		-0.972372, 0.129740, 0.194061,
		37.715412, 27.202297, 25.068020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169094, 26.470243, 25.316994>,  <38.396072, 27.111481, 24.932177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169094, 26.470243, 25.316994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.850945, 26.634377, 25.138554>,  <37.660053, 26.732857, 25.031488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.850945, 26.634377, 25.138554>,  <38.169094, 26.470243, 25.316994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850945, 26.634377, 25.138554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174551, -0.859883, -0.479721,
		-0.580440, -0.303691, 0.755554,
		-0.795375, 0.410332, -0.446102,
		37.612331, 26.757477, 25.004723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640102, 25.892847, 25.190777>,  <38.169094, 26.470243, 25.316994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640102, 25.892847, 25.190777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.563629, 26.164799, 24.907591>,  <37.517746, 26.327971, 24.737680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.563629, 26.164799, 24.907591>,  <37.640102, 25.892847, 25.190777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563629, 26.164799, 24.907591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090475, -0.730402, -0.676998,
		-0.977376, -0.065378, 0.201153,
		-0.191183, 0.679881, -0.707963,
		37.506275, 26.368763, 24.695202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038353, 25.662924, 24.843065>,  <37.640102, 25.892847, 25.190777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038353, 25.662924, 24.843065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.210175, 25.919245, 24.588552>,  <37.313267, 26.073038, 24.435844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.210175, 25.919245, 24.588552>,  <37.038353, 25.662924, 24.843065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210175, 25.919245, 24.588552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157825, -0.640482, -0.751581,
		-0.889142, 0.423267, -0.173988,
		0.429555, 0.640803, -0.636281,
		37.339043, 26.111486, 24.397669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596737, 25.767052, 24.230053>,  <37.038353, 25.662924, 24.843065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596737, 25.767052, 24.230053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.959023, 25.871418, 24.096426>,  <37.176395, 25.934038, 24.016251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.959023, 25.871418, 24.096426>,  <36.596737, 25.767052, 24.230053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959023, 25.871418, 24.096426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086416, -0.657900, -0.748131,
		-0.414983, 0.706463, -0.573323,
		0.905716, 0.260917, -0.334067,
		37.230736, 25.949694, 23.996206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492527, 25.679827, 23.547607>,  <36.596737, 25.767052, 24.230053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492527, 25.679827, 23.547607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.891708, 25.683571, 23.572884>,  <37.131218, 25.685818, 23.588049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.891708, 25.683571, 23.572884>,  <36.492527, 25.679827, 23.547607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891708, 25.683571, 23.572884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053516, -0.662655, -0.747010,
		0.034882, 0.748866, -0.661802,
		0.997957, 0.009360, 0.063192,
		37.191097, 25.686378, 23.591841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.437202, 37.541924, 34.220741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801739, 37.383915, 34.267067>,  <38.020462, 37.289108, 34.294861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801739, 37.383915, 34.267067>,  <37.437202, 37.541924, 34.220741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801739, 37.383915, 34.267067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306045, -0.838330, -0.451153,
		0.275308, 0.375709, -0.884900,
		0.911341, -0.395025, 0.115815,
		38.075142, 37.265408, 34.301811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642162, 37.228325, 33.514282>,  <37.437202, 37.541924, 34.220741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642162, 37.228325, 33.514282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.884182, 37.067150, 33.788963>,  <38.029396, 36.970444, 33.953770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.884182, 37.067150, 33.788963>,  <37.642162, 37.228325, 33.514282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884182, 37.067150, 33.788963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072436, -0.886766, -0.456508,
		0.792884, 0.226469, -0.565726,
		0.605052, -0.402937, 0.686698,
		38.065697, 36.946270, 33.994972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146164, 36.767624, 33.105247>,  <37.642162, 37.228325, 33.514282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146164, 36.767624, 33.105247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.115253, 36.661873, 33.489773>,  <38.096706, 36.598423, 33.720490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.115253, 36.661873, 33.489773>,  <38.146164, 36.767624, 33.105247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115253, 36.661873, 33.489773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092014, -0.961977, -0.257166,
		0.992755, 0.068583, 0.098662,
		-0.077273, -0.264381, 0.961318,
		38.092072, 36.582558, 33.778168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728554, 36.387394, 33.170101>,  <38.146164, 36.767624, 33.105247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728554, 36.387394, 33.170101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.456512, 36.274639, 33.440804>,  <38.293289, 36.206985, 33.603226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.456512, 36.274639, 33.440804>,  <38.728554, 36.387394, 33.170101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456512, 36.274639, 33.440804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048307, -0.938347, -0.342304,
		0.731526, -0.200108, 0.651787,
		-0.680100, -0.281890, 0.676758,
		38.252483, 36.190071, 33.643829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806938, 35.680016, 33.071533>,  <38.728554, 36.387394, 33.170101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806938, 35.680016, 33.071533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.500683, 35.710209, 33.327061>,  <38.316929, 35.728325, 33.480377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.500683, 35.710209, 33.327061>,  <38.806938, 35.680016, 33.071533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500683, 35.710209, 33.327061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214066, -0.966389, -0.142368,
		0.606603, -0.245753, 0.756067,
		-0.765643, 0.075487, 0.638822,
		38.270988, 35.732857, 33.518707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839642, 35.054913, 33.470333>,  <38.806938, 35.680016, 33.071533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839642, 35.054913, 33.470333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.465672, 35.196732, 33.476196>,  <38.241291, 35.281822, 33.479713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.465672, 35.196732, 33.476196>,  <38.839642, 35.054913, 33.470333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465672, 35.196732, 33.476196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353653, -0.927577, -0.120538,
		-0.029138, -0.117878, 0.992601,
		-0.934923, 0.354549, 0.014660,
		38.185196, 35.303097, 33.480595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448219, 34.523941, 33.716187>,  <38.839642, 35.054913, 33.470333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448219, 34.523941, 33.716187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.170223, 34.755322, 33.545357>,  <38.003426, 34.894150, 33.442860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.170223, 34.755322, 33.545357>,  <38.448219, 34.523941, 33.716187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170223, 34.755322, 33.545357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495495, -0.815710, -0.298501,
		-0.521032, 0.004157, 0.853527,
		-0.694989, 0.578447, -0.427071,
		37.961727, 34.928856, 33.417236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753819, 34.360779, 33.958328>,  <38.448219, 34.523941, 33.716187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753819, 34.360779, 33.958328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.719967, 34.521183, 33.593464>,  <37.699654, 34.617424, 33.374546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.719967, 34.521183, 33.593464>,  <37.753819, 34.360779, 33.958328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719967, 34.521183, 33.593464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554586, -0.779498, -0.291234,
		-0.827811, 0.481221, 0.288364,
		-0.084631, 0.401010, -0.912156,
		37.694576, 34.641487, 33.319817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113869, 34.242729, 33.800705>,  <37.753819, 34.360779, 33.958328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113869, 34.242729, 33.800705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276230, 34.303623, 33.440247>,  <37.373646, 34.340160, 33.223972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.276230, 34.303623, 33.440247>,  <37.113869, 34.242729, 33.800705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276230, 34.303623, 33.440247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528347, -0.765470, -0.367294,
		-0.745717, 0.625205, -0.230272,
		0.405900, 0.152233, -0.901149,
		37.397999, 34.349293, 33.169903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570610, 34.188389, 33.471230>,  <37.113869, 34.242729, 33.800705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570610, 34.188389, 33.471230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.863598, 34.139084, 33.203411>,  <37.039391, 34.109501, 33.042721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.863598, 34.139084, 33.203411>,  <36.570610, 34.188389, 33.471230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863598, 34.139084, 33.203411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429334, -0.846890, -0.313768,
		-0.528355, 0.517285, -0.673244,
		0.732471, -0.123265, -0.669546,
		37.083340, 34.102104, 33.002548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141922, 34.047562, 32.924717>,  <36.570610, 34.188389, 33.471230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141922, 34.047562, 32.924717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.504745, 33.949974, 32.787476>,  <36.722439, 33.891422, 32.705132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.504745, 33.949974, 32.787476>,  <36.141922, 34.047562, 32.924717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504745, 33.949974, 32.787476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380673, -0.823347, -0.420937,
		-0.179797, 0.512426, -0.839698,
		0.907062, -0.243967, -0.343102,
		36.776863, 33.876785, 32.684544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125324, 34.088203, 32.197075>,  <36.141922, 34.047562, 32.924717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125324, 34.088203, 32.197075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.415546, 33.835499, 32.306221>,  <36.589680, 33.683876, 32.371708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.415546, 33.835499, 32.306221>,  <36.125324, 34.088203, 32.197075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415546, 33.835499, 32.306221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543001, -0.769158, -0.336966,
		0.422755, 0.096322, -0.901111,
		0.725554, -0.631758, 0.272862,
		36.633213, 33.645973, 32.388081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185455, 34.047012, 31.509270>,  <36.125324, 34.088203, 32.197075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185455, 34.047012, 31.509270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.822659, 34.163696, 31.387762>,  <35.604980, 34.233707, 31.314857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.822659, 34.163696, 31.387762>,  <36.185455, 34.047012, 31.509270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822659, 34.163696, 31.387762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017159, 0.695078, 0.718730,
		0.420806, 0.657092, -0.625422,
		-0.906988, 0.291714, -0.303768,
		35.550564, 34.251209, 31.296631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263905, 34.751568, 31.501129>,  <36.185455, 34.047012, 31.509270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263905, 34.751568, 31.501129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.867947, 34.695507, 31.509823>,  <35.630371, 34.661873, 31.515039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.867947, 34.695507, 31.509823>,  <36.263905, 34.751568, 31.501129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867947, 34.695507, 31.509823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089280, 0.734865, 0.672311,
		-0.110198, 0.663574, -0.739949,
		-0.989891, -0.140150, 0.021736,
		35.570980, 34.653461, 31.516344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993198, 35.465832, 31.367270>,  <36.263905, 34.751568, 31.501129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993198, 35.465832, 31.367270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.721836, 35.224930, 31.535580>,  <35.559017, 35.080387, 31.636566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.721836, 35.224930, 31.535580>,  <35.993198, 35.465832, 31.367270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721836, 35.224930, 31.535580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320895, 0.758110, 0.567710,
		-0.660903, 0.250112, -0.707567,
		-0.678405, -0.602256, 0.420778,
		35.518314, 35.044254, 31.661814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400970, 35.864372, 31.376135>,  <35.993198, 35.465832, 31.367270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400970, 35.864372, 31.376135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.311394, 35.574329, 31.636616>,  <35.257648, 35.400303, 31.792904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.311394, 35.574329, 31.636616>,  <35.400970, 35.864372, 31.376135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311394, 35.574329, 31.636616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431994, 0.672800, 0.600600,
		-0.873631, -0.146816, -0.463912,
		-0.223942, -0.725110, 0.651203,
		35.244209, 35.356796, 31.831976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609970, 35.956493, 31.491692>,  <35.400970, 35.864372, 31.376135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609970, 35.956493, 31.491692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.762718, 35.759930, 31.804792>,  <34.854366, 35.641991, 31.992653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.762718, 35.759930, 31.804792>,  <34.609970, 35.956493, 31.491692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762718, 35.759930, 31.804792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195734, 0.784721, 0.588133,
		-0.903253, -0.377799, 0.203473,
		0.381866, -0.491406, 0.782750,
		34.877277, 35.612507, 32.039616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095234, 35.919262, 31.990158>,  <34.609970, 35.956493, 31.491692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095234, 35.919262, 31.990158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431175, 35.872700, 32.202236>,  <34.632740, 35.844765, 32.329483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431175, 35.872700, 32.202236>,  <34.095234, 35.919262, 31.990158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431175, 35.872700, 32.202236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393844, 0.541490, 0.742749,
		-0.373553, -0.832610, 0.408924,
		0.839848, -0.116404, 0.530193,
		34.683128, 35.837780, 32.361294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892895, 35.768772, 32.694683>,  <34.095234, 35.919262, 31.990158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892895, 35.768772, 32.694683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.268566, 35.906105, 32.697975>,  <34.493969, 35.988506, 32.699951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.268566, 35.906105, 32.697975>,  <33.892895, 35.768772, 32.694683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268566, 35.906105, 32.697975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272189, 0.729514, 0.627473,
		0.209426, -0.591550, 0.778595,
		0.939177, 0.343334, 0.008234,
		34.550320, 36.009106, 32.700447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030045, 35.855629, 33.425476>,  <33.892895, 35.768772, 32.694683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030045, 35.855629, 33.425476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300198, 36.060066, 33.212822>,  <34.462288, 36.182728, 33.085228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300198, 36.060066, 33.212822>,  <34.030045, 35.855629, 33.425476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300198, 36.060066, 33.212822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011546, 0.713480, 0.700580,
		0.737378, -0.479297, 0.475971,
		0.675382, 0.511097, -0.531639,
		34.502811, 36.213394, 33.053329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540443, 36.018391, 33.830853>,  <34.030045, 35.855629, 33.425476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540443, 36.018391, 33.830853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.567005, 36.292461, 33.540714>,  <34.582943, 36.456902, 33.366631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.567005, 36.292461, 33.540714>,  <34.540443, 36.018391, 33.830853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567005, 36.292461, 33.540714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017284, 0.726053, 0.687421,
		0.997643, -0.058184, 0.036369,
		0.066402, 0.685172, -0.725348,
		34.586926, 36.498013, 33.323109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018051, 36.566868, 34.094608>,  <34.540443, 36.018391, 33.830853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018051, 36.566868, 34.094608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.876160, 36.756538, 33.772285>,  <34.791027, 36.870342, 33.578892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.876160, 36.756538, 33.772285>,  <35.018051, 36.566868, 34.094608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876160, 36.756538, 33.772285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069645, 0.846057, 0.528523,
		0.932373, 0.243602, -0.267095,
		-0.354727, 0.474179, -0.805806,
		34.769741, 36.898792, 33.530544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408951, 37.159096, 34.045471>,  <35.018051, 36.566868, 34.094608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408951, 37.159096, 34.045471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.076496, 37.245110, 33.840351>,  <34.877022, 37.296719, 33.717278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.076496, 37.245110, 33.840351>,  <35.408951, 37.159096, 34.045471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076496, 37.245110, 33.840351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009230, 0.916738, 0.399382,
		0.555989, 0.336675, -0.759951,
		-0.831138, 0.215038, -0.512804,
		34.827156, 37.309620, 33.686508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595051, 37.733398, 33.819103>,  <35.408951, 37.159096, 34.045471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595051, 37.733398, 33.819103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195194, 37.725204, 33.826080>,  <34.955280, 37.720287, 33.830269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195194, 37.725204, 33.826080>,  <35.595051, 37.733398, 33.819103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195194, 37.725204, 33.826080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013150, 0.937554, 0.347592,
		-0.023477, 0.347237, -0.937484,
		-0.999638, -0.020488, 0.017445,
		34.895302, 37.719059, 33.831314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491673, 38.280357, 33.378845>,  <35.595051, 37.733398, 33.819103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491673, 38.280357, 33.378845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.180870, 38.240482, 33.627464>,  <34.994389, 38.216557, 33.776634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.180870, 38.240482, 33.627464>,  <35.491673, 38.280357, 33.378845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180870, 38.240482, 33.627464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010748, 0.989339, 0.145234,
		-0.629397, 0.106168, -0.769797,
		-0.777010, -0.099683, 0.621546,
		34.947765, 38.210579, 33.813927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025204, 38.824844, 33.256832>,  <35.491673, 38.280357, 33.378845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025204, 38.824844, 33.256832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.939339, 38.698227, 33.626419>,  <34.887817, 38.622257, 33.848171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.939339, 38.698227, 33.626419>,  <35.025204, 38.824844, 33.256832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939339, 38.698227, 33.626419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170123, 0.943679, 0.283773,
		-0.961757, -0.096272, -0.256428,
		-0.214667, -0.316545, 0.923968,
		34.874939, 38.603264, 33.903610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065594, 39.463634, 33.756184>,  <35.025204, 38.824844, 33.256832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065594, 39.463634, 33.756184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.135353, 39.819019, 33.586372>,  <35.177208, 40.032249, 33.484486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.135353, 39.819019, 33.586372>,  <35.065594, 39.463634, 33.756184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135353, 39.819019, 33.586372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242648, -0.456618, -0.855933,
		-0.954309, 0.046265, -0.295218,
		0.174402, 0.888459, -0.424528,
		35.187675, 40.085556, 33.459015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735535, 39.586426, 33.139942>,  <35.065594, 39.463634, 33.756184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735535, 39.586426, 33.139942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.048359, 39.829769, 33.085861>,  <35.236053, 39.975777, 33.053413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.048359, 39.829769, 33.085861>,  <34.735535, 39.586426, 33.139942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048359, 39.829769, 33.085861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157164, -0.402462, -0.901845,
		-0.603062, 0.684046, -0.410361,
		0.782058, 0.608363, -0.135202,
		35.282978, 40.012280, 33.045300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764057, 39.897327, 32.441940>,  <34.735535, 39.586426, 33.139942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764057, 39.897327, 32.441940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.141106, 39.901669, 32.575417>,  <35.367336, 39.904274, 32.655502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.141106, 39.901669, 32.575417>,  <34.764057, 39.897327, 32.441940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141106, 39.901669, 32.575417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314006, -0.368404, -0.875031,
		0.113435, 0.929602, -0.350674,
		0.942620, 0.010855, 0.333691,
		35.423893, 39.904926, 32.675526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158386, 40.119244, 31.825031>,  <34.764057, 39.897327, 32.441940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158386, 40.119244, 31.825031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.385048, 39.925507, 32.091660>,  <35.521046, 39.809265, 32.251637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.385048, 39.925507, 32.091660>,  <35.158386, 40.119244, 31.825031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385048, 39.925507, 32.091660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393714, -0.551490, -0.735424,
		0.723804, 0.679168, -0.121811,
		0.566654, -0.484345, 0.666568,
		35.555046, 39.780205, 32.291630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788925, 40.005741, 31.501451>,  <35.158386, 40.119244, 31.825031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788925, 40.005741, 31.501451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.808071, 39.743977, 31.803299>,  <35.819557, 39.586918, 31.984407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.808071, 39.743977, 31.803299>,  <35.788925, 40.005741, 31.501451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808071, 39.743977, 31.803299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470339, -0.651722, -0.595012,
		0.881187, 0.383407, 0.276602,
		0.047864, -0.654414, 0.754620,
		35.822430, 39.547653, 32.029686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514015, 39.698261, 31.428047>,  <35.788925, 40.005741, 31.501451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514015, 39.698261, 31.428047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297241, 39.450283, 31.655022>,  <36.167179, 39.301498, 31.791206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297241, 39.450283, 31.655022>,  <36.514015, 39.698261, 31.428047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297241, 39.450283, 31.655022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210368, -0.753747, -0.622584,
		0.813668, -0.218028, 0.538895,
		-0.541932, -0.619943, 0.567434,
		36.134663, 39.264301, 31.825253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951561, 39.113998, 31.382423>,  <36.514015, 39.698261, 31.428047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951561, 39.113998, 31.382423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.621059, 38.965805, 31.552151>,  <36.422760, 38.876888, 31.653988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.621059, 38.965805, 31.552151>,  <36.951561, 39.113998, 31.382423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621059, 38.965805, 31.552151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024488, -0.728941, -0.684139,
		0.562766, -0.575663, 0.593217,
		-0.826253, -0.370484, 0.424320,
		36.373184, 38.854660, 31.679447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036873, 38.376038, 31.619835>,  <36.951561, 39.113998, 31.382423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036873, 38.376038, 31.619835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.644241, 38.435371, 31.571667>,  <36.408661, 38.470970, 31.542765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.644241, 38.435371, 31.571667>,  <37.036873, 38.376038, 31.619835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644241, 38.435371, 31.571667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011098, -0.673483, -0.739120,
		-0.190737, -0.724168, 0.662722,
		-0.981578, 0.148333, -0.120421,
		36.349770, 38.479870, 31.535540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707439, 37.705399, 31.557451>,  <37.036873, 38.376038, 31.619835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707439, 37.705399, 31.557451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.412540, 37.936905, 31.418028>,  <36.235600, 38.075809, 31.334373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.412540, 37.936905, 31.418028>,  <36.707439, 37.705399, 31.557451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412540, 37.936905, 31.418028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102345, -0.605622, -0.789144,
		-0.667827, -0.546121, 0.505727,
		-0.737247, 0.578770, -0.348557,
		36.191364, 38.110535, 31.313461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030521, 37.326172, 31.544491>,  <36.707439, 37.705399, 31.557451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030521, 37.326172, 31.544491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.013676, 37.611046, 31.264200>,  <36.003571, 37.781971, 31.096025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.013676, 37.611046, 31.264200>,  <36.030521, 37.326172, 31.544491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013676, 37.611046, 31.264200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125877, -0.699541, -0.703418,
		-0.991152, 0.058583, 0.119107,
		-0.042112, 0.712187, -0.700726,
		36.001041, 37.824703, 31.053982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543175, 37.142227, 31.003658>,  <36.030521, 37.326172, 31.544491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543175, 37.142227, 31.003658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.772354, 37.418018, 30.826412>,  <35.909863, 37.583492, 30.720064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.772354, 37.418018, 30.826412>,  <35.543175, 37.142227, 31.003658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772354, 37.418018, 30.826412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067256, -0.499280, -0.863827,
		-0.816827, 0.524731, -0.239691,
		0.572949, 0.689476, -0.443116,
		35.944241, 37.624863, 30.693478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299721, 37.205524, 30.416864>,  <35.543175, 37.142227, 31.003658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299721, 37.205524, 30.416864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.644905, 37.385983, 30.325857>,  <35.852016, 37.494259, 30.271254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.644905, 37.385983, 30.325857>,  <35.299721, 37.205524, 30.416864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644905, 37.385983, 30.325857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033086, -0.398867, -0.916412,
		-0.504188, 0.798354, -0.329280,
		0.862960, 0.451150, -0.227518,
		35.903793, 37.521328, 30.257601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201878, 37.536545, 29.782097>,  <35.299721, 37.205524, 30.416864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201878, 37.536545, 29.782097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.595341, 37.492531, 29.839106>,  <35.831417, 37.466122, 29.873312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.595341, 37.492531, 29.839106>,  <35.201878, 37.536545, 29.782097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595341, 37.492531, 29.839106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073232, -0.478636, -0.874954,
		0.164492, 0.871091, -0.462755,
		0.983656, -0.110034, 0.142523,
		35.890438, 37.459522, 29.881863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489544, 37.791733, 29.194918>,  <35.201878, 37.536545, 29.782097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489544, 37.791733, 29.194918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764679, 37.541153, 29.341579>,  <35.929760, 37.390804, 29.429577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764679, 37.541153, 29.341579>,  <35.489544, 37.791733, 29.194918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764679, 37.541153, 29.341579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064966, -0.449971, -0.890677,
		0.722953, 0.636460, -0.268808,
		0.687836, -0.626454, 0.366656,
		35.971031, 37.353218, 29.451576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000820, 37.670444, 28.563272>,  <35.489544, 37.791733, 29.194918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000820, 37.670444, 28.563272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.099770, 37.383541, 28.823839>,  <36.159138, 37.211399, 28.980179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.099770, 37.383541, 28.823839>,  <36.000820, 37.670444, 28.563272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099770, 37.383541, 28.823839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080877, -0.654679, -0.751568,
		0.965540, 0.238600, -0.103938,
		0.247370, -0.717263, 0.651415,
		36.173981, 37.168362, 29.019264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583336, 37.449768, 28.314987>,  <36.000820, 37.670444, 28.563272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583336, 37.449768, 28.314987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.476013, 37.155750, 28.564058>,  <36.411621, 36.979340, 28.713501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.476013, 37.155750, 28.564058>,  <36.583336, 37.449768, 28.314987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476013, 37.155750, 28.564058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089226, -0.662562, -0.743674,
		0.959193, -0.143972, 0.243354,
		-0.268305, -0.735040, 0.622678,
		36.395523, 36.935238, 28.750862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138313, 37.036324, 28.251797>,  <36.583336, 37.449768, 28.314987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138313, 37.036324, 28.251797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.831242, 36.822037, 28.392466>,  <36.646999, 36.693466, 28.476868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.831242, 36.822037, 28.392466>,  <37.138313, 37.036324, 28.251797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831242, 36.822037, 28.392466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230424, -0.742832, -0.628574,
		0.597970, -0.401511, 0.693701,
		-0.767683, -0.535713, 0.351674,
		36.600937, 36.661324, 28.497967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355095, 36.318287, 28.382713>,  <37.138313, 37.036324, 28.251797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355095, 36.318287, 28.382713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.960667, 36.277000, 28.330555>,  <36.724010, 36.252228, 28.299259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.960667, 36.277000, 28.330555>,  <37.355095, 36.318287, 28.382713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960667, 36.277000, 28.330555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157127, -0.835122, -0.527145,
		-0.054485, -0.540293, 0.839711,
		-0.986074, -0.103220, -0.130397,
		36.664845, 36.246033, 28.291435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272556, 35.611591, 28.484240>,  <37.355095, 36.318287, 28.382713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272556, 35.611591, 28.484240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933769, 35.715580, 28.298738>,  <36.730499, 35.777973, 28.187439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.933769, 35.715580, 28.298738>,  <37.272556, 35.611591, 28.484240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933769, 35.715580, 28.298738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019089, -0.886596, -0.462151,
		-0.531307, -0.382573, 0.755878,
		-0.846965, 0.259972, -0.463751,
		36.679680, 35.793571, 28.159613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730480, 35.053082, 28.531404>,  <37.272556, 35.611591, 28.484240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730480, 35.053082, 28.531404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.632301, 35.269417, 28.209597>,  <36.573395, 35.399220, 28.016512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.632301, 35.269417, 28.209597>,  <36.730480, 35.053082, 28.531404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632301, 35.269417, 28.209597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076700, -0.838136, -0.540042,
		-0.966372, -0.070844, 0.247198,
		-0.245444, 0.540841, -0.804517,
		36.558666, 35.431667, 27.968241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204388, 34.735443, 28.305140>,  <36.730480, 35.053082, 28.531404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204388, 34.735443, 28.305140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.328449, 34.928497, 27.977514>,  <36.402885, 35.044331, 27.780939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.328449, 34.928497, 27.977514>,  <36.204388, 34.735443, 28.305140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328449, 34.928497, 27.977514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094414, -0.841653, -0.531701,
		-0.945987, 0.242239, -0.215473,
		0.310152, 0.482639, -0.819064,
		36.421494, 35.073288, 27.731794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840416, 34.449196, 27.774405>,  <36.204388, 34.735443, 28.305140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840416, 34.449196, 27.774405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.145023, 34.617985, 27.577621>,  <36.327789, 34.719257, 27.459551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.145023, 34.617985, 27.577621>,  <35.840416, 34.449196, 27.774405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145023, 34.617985, 27.577621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035529, -0.730714, -0.681759,
		-0.647166, 0.536652, -0.541462,
		0.761521, 0.421974, -0.491960,
		36.373478, 34.744576, 27.430033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596474, 34.487450, 27.029245>,  <35.840416, 34.449196, 27.774405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596474, 34.487450, 27.029245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.993343, 34.511036, 26.985220>,  <36.231464, 34.525188, 26.958805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.993343, 34.511036, 26.985220>,  <35.596474, 34.487450, 27.029245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993343, 34.511036, 26.985220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050937, -0.613638, -0.787943,
		-0.114004, 0.787382, -0.605832,
		0.992174, 0.058970, -0.110064,
		36.290997, 34.528728, 26.952200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678211, 34.390854, 26.337545>,  <35.596474, 34.487450, 27.029245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678211, 34.390854, 26.337545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.054802, 34.334270, 26.459925>,  <36.280758, 34.300320, 26.533352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.054802, 34.334270, 26.459925>,  <35.678211, 34.390854, 26.337545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054802, 34.334270, 26.459925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165959, -0.595488, -0.786036,
		0.293381, 0.790812, -0.537163,
		0.941480, -0.141461, 0.305947,
		36.337246, 34.291832, 26.551708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056499, 34.394852, 25.716944>,  <35.678211, 34.390854, 26.337545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056499, 34.394852, 25.716944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.306976, 34.204441, 25.963938>,  <36.457264, 34.090195, 26.112135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.306976, 34.204441, 25.963938>,  <36.056499, 34.394852, 25.716944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306976, 34.204441, 25.963938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331578, -0.554201, -0.763490,
		0.705649, 0.682835, -0.189197,
		0.626191, -0.476022, 0.617485,
		36.494835, 34.061634, 26.149183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804688, 34.511517, 25.513975>,  <36.056499, 34.394852, 25.716944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804688, 34.511517, 25.513975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795124, 34.166084, 25.715431>,  <36.789387, 33.958824, 25.836306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795124, 34.166084, 25.715431>,  <36.804688, 34.511517, 25.513975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795124, 34.166084, 25.715431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343547, -0.480200, -0.807084,
		0.938831, 0.153729, 0.308161,
		-0.023907, -0.863583, 0.503639,
		36.787952, 33.907009, 25.866524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418316, 34.222748, 25.488897>,  <36.804688, 34.511517, 25.513975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418316, 34.222748, 25.488897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.192604, 33.900215, 25.559797>,  <37.057178, 33.706696, 25.602337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.192604, 33.900215, 25.559797>,  <37.418316, 34.222748, 25.488897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192604, 33.900215, 25.559797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447477, -0.479137, -0.755110,
		0.693798, -0.346776, 0.631182,
		-0.564277, -0.806334, 0.177250,
		37.023319, 33.658314, 25.612972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867893, 33.670464, 25.538807>,  <37.418316, 34.222748, 25.488897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867893, 33.670464, 25.538807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.512363, 33.510052, 25.450109>,  <37.299046, 33.413807, 25.396891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.512363, 33.510052, 25.450109>,  <37.867893, 33.670464, 25.538807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512363, 33.510052, 25.450109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412094, -0.487843, -0.769537,
		0.200429, -0.775362, 0.598867,
		-0.888823, -0.401027, -0.221745,
		37.245716, 33.389744, 25.383587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331169, 33.137737, 25.845320>,  <37.867893, 33.670464, 25.538807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331169, 33.137737, 25.845320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.725182, 33.097561, 25.789284>,  <38.961590, 33.073456, 25.755663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.725182, 33.097561, 25.789284>,  <38.331169, 33.137737, 25.845320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725182, 33.097561, 25.789284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161730, 0.819685, 0.549509,
		0.059636, -0.563940, 0.823659,
		0.985031, -0.100439, -0.140089,
		39.020691, 33.067429, 25.747257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627350, 33.163280, 26.457178>,  <38.331169, 33.137737, 25.845320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627350, 33.163280, 26.457178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.921703, 33.252068, 26.201302>,  <39.098316, 33.305340, 26.047775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.921703, 33.252068, 26.201302>,  <38.627350, 33.163280, 26.457178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921703, 33.252068, 26.201302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324059, 0.714063, 0.620564,
		0.594526, -0.663961, 0.453536,
		0.735884, 0.221969, -0.639691,
		39.142467, 33.318657, 26.009394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110954, 33.394569, 26.868212>,  <38.627350, 33.163280, 26.457178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110954, 33.394569, 26.868212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.274628, 33.527679, 26.528370>,  <39.372833, 33.607544, 26.324465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.274628, 33.527679, 26.528370>,  <39.110954, 33.394569, 26.868212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274628, 33.527679, 26.528370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466937, 0.723601, 0.508303,
		0.783926, -0.604701, 0.140700,
		0.409182, 0.332774, -0.849607,
		39.397381, 33.627510, 26.273487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908127, 33.416805, 26.932957>,  <39.110954, 33.394569, 26.868212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908127, 33.416805, 26.932957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.774307, 33.702236, 26.686745>,  <39.694016, 33.873497, 26.539017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.774307, 33.702236, 26.686745>,  <39.908127, 33.416805, 26.932957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774307, 33.702236, 26.686745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512251, 0.685945, 0.516796,
		0.790997, -0.142413, -0.595015,
		-0.334549, 0.713581, -0.615532,
		39.673943, 33.916309, 26.502085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448528, 33.831314, 26.895649>,  <39.908127, 33.416805, 26.932957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448528, 33.831314, 26.895649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.134876, 34.038929, 26.759565>,  <39.946686, 34.163498, 26.677916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.134876, 34.038929, 26.759565>,  <40.448528, 33.831314, 26.895649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134876, 34.038929, 26.759565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293436, 0.793131, 0.533702,
		0.546838, 0.318664, -0.774223,
		-0.784132, 0.519034, -0.340207,
		39.899635, 34.194641, 26.657503>
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
